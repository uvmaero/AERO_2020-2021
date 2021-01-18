/**
 * Copyright 2020, George Spearing, UVM AERO
 * PedalBoard CS5
 * Brake Pressure Sensor, Accelerator Position 
 */

#include <Arduino.h>
#include <EEPROM.h>
#include <mcp_can.h>
#include <SPI.h>

// CAN initilization
#define PIN_SPI_CAN_CS 5
#define PIN_CAN_INT 2
MCP_CAN CAN(PIN_SPI_CAN_CS); // set CS Pin

#define PIN_SPI_ADC_CS 9

// EEPROM address values values
#define EEPROM_BASE         0 // BASE VALUE
#define TORQUE_EEPROM       EEPROM_BASE + sizeof(bool) // max torque stored at base
#define PEDAL0_MIN_EEPROM   TORQUE_EEPROM + sizeof(uint16_t)
#define PEDAL0_MAX_EEPROM   PEDAL0_MIN_EEPROM + sizeof(uint16_t)
#define PEDAL1_MIN_EEPROM   PEDAL0_MAX_EEPROM + sizeof(uint16_t)
#define PEDAL1_MAX_EEPROM   PEDAL1_MIN_EEPROM + sizeof(uint16_t)

// CAN Address
#define ID_PEDAL_BASE         0x30
#define ID_PEDAL_DATA         ID_PEDAL_BASE + 1 // 0X32
#define ID_PEDAL_SET_EEPROM   ID_PEDAL_BASE + 2 // 0X33

#define ID_RINEHART_COMMAND 0xC0 // send for torque commands

#define ID_DASH_RIGHT_DATA 0x74 // Dash vehicle data

// Input Pins
#define PIN_STEER   A0
#define PIN_BRAKE1  A1
#define PIN_BRAKE0  A2
#define PIN_ACC1    A3
#define PIN_ACC0    A4

// default settings
#define PEDAL_DEADBAND 10 // lower limit for '0' value
#define ACC_MAX_SKEW 10 // acc pedal difference limit
// following vlaues based on testing. Can be updated using ID_PEDAL_SET_EEPROM id
uint16_t pedal0_min = 90; // analog read min
uint16_t pedal0_max = 430; // analog read max
uint16_t pedal1_min = 190; // analog read min
uint16_t pedal1_max = 870; // analog read max
uint16_t max_torque = 50; // hard coded default, can be updated over can

#define BRAKE_THRESHOLD 500 // amount of pressure change for brake
uint16_t front_brake_pressure = 0, rear_brake_pressue = 0;
bool breakTrip = false;

int16_t commanded_torque = 0; // value to send to rinehart. SIGNED!!

// acc raw ADC values from sensors
uint16_t pedal0 = 0, pedal1 = 0, brake0 = 0, brake1 = 0, steer = 0;
// mapped values
uint8_t pedal0_mapped, pedal1_mapped, brake0_mapped, brake1_mapped, steer_mapped;

#define DAQ_INTERVAL 100 // time in ms
uint16_t lastSendDaqMessage = millis();

// default values (updated from DASH)
uint8_t ready_to_drive = 0; // from DASH precharge / start value
uint8_t last_RTD = 0; // placeholder, see if state changed (If )
uint8_t direction = 0; // from DASH direction switch (CS5 runs in "reverse")
uint8_t lastDirection = 0; // placeholder, see if direction changed
uint8_t coast_regen_torque = 10; // from DASH pot
uint8_t brake_regen_torque = 10; // from DASH pot

// function declarations
void sampleACC();
void setEERPOM();
void filterCAN(unsigned long canID, unsigned char buf[8]);
void sendRinehartCommand();

void setup() {
  // get current eeprom values
  // set eeprom values to default if none exist
  bool setValue = false; // defaults have been set
  if(!(EEPROM.get(EEPROM_BASE, setValue))){
    EEPROM.update(TORQUE_EEPROM, max_torque);
    EEPROM.update(PEDAL0_MIN_EEPROM, pedal0_min);
    EEPROM.update(PEDAL0_MAX_EEPROM, pedal0_max);
    EEPROM.update(PEDAL1_MIN_EEPROM, pedal1_max);
    EEPROM.update(PEDAL1_MAX_EEPROM, pedal1_max);
    EEPROM.update(EEPROM_BASE, true);
  }else{
    EEPROM.get(TORQUE_EEPROM, max_torque);
    EEPROM.get(PEDAL0_MIN_EEPROM, pedal0_min);
    EEPROM.get(PEDAL0_MAX_EEPROM, pedal0_max);
    EEPROM.get(PEDAL1_MIN_EEPROM, pedal1_min);
    EEPROM.get(PEDAL1_MAX_EEPROM, pedal1_max);
  }

  // set pin modes
  pinMode(PIN_STEER, INPUT);
  pinMode(PIN_ACC0, INPUT);
  pinMode(PIN_ACC1, INPUT);
  pinMode(PIN_BRAKE0, INPUT);
  pinMode(PIN_BRAKE1, INPUT);

  cli();

  //set timer1 interrupt at 10Hz
  TCCR1A = 0;// set entire TCCR1A register to 0
  TCCR1B = 0;// same for TCCR1B
  TCNT1  = 0;//initialize counter value to 0
  // set compare match register for 10hz increments
  OCR1A = 1562.5;// = (16*10^6) / (1*10240) - 1 (must be <65536)
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  // Set CS12 and CS10 bits for 10240 prescaler
  TCCR1B |= (1 << CS12) | (1 << CS10);  
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);

  sei();

}

void loop() {
  // put your main code here, to run repeatedly:
}


// accerlator pedal sampling and comapring
void sampleACC(){
  pedal0 = analogRead(PIN_ACC0);
  pedal1 = analogRead(PIN_ACC1);

  pedal0_mapped = map(pedal0, pedal0_min, pedal0_max, 0, 255);
  pedal1_mapped = map(pedal1, pedal1_min, pedal1_max, 0, 255);

  // check skew value, map to 0 if something is wrong
  if((pedal0_mapped/2+pedal1_mapped/2) >
    (pedal0+ACC_MAX_SKEW || pedal1+ACC_MAX_SKEW)){
    pedal0_mapped = 0;
    pedal1_mapped = 0;
  }
}

// brake pressure sampling and comparing


// filter CAN messages
void filterCAN(unsigned long canID, unsigned char buf[8]){
  switch(canID){
    case ID_DASH_RIGHT_DATA: // values for rinehart command message
        coast_regen_torque = buf[0];
        brake_regen_torque = buf[1];
        ready_to_drive = buf[3];
        direction = buf[4];
      break;
  
    case ID_PEDAL_SET_EEPROM: // set pedal values and torque limit over can
      max_torque = buf[0];
      pedal0_min = buf[1];
      pedal0_max = buf[2];
      pedal1_min = buf[3];
      pedal1_max = buf[4];
      setEERPOM(); // change occured, update EEPROM values
      break;
  }
}

// set eeprom values from can message
void setEERPOM(){

  // update eeprom values from CAN message
  EEPROM.update(TORQUE_EEPROM, max_torque);
  EEPROM.update(PEDAL0_MIN_EEPROM, pedal0_min);
  EEPROM.update(PEDAL0_MAX_EEPROM, pedal0_max);
  EEPROM.update(PEDAL1_MIN_EEPROM, pedal1_min);
  EEPROM.update(PEDAL1_MAX_EEPROM, pedal1_max);
  EEPROM.update(EEPROM_BASE, true);

}

// create and send Data CAN Message
void sendRinehartCommand(){
  // turn off interrupts
  cli();

  // build DAQ Message
  unsigned char bufToSend[8] = {0, 0, 0, 0, 0, 0, 0, 0};
  bufToSend[0] = commanded_torque && 0xFF; // LSB
  bufToSend[1] = commanded_torque >> 8; // MSB
  bufToSend[2] = 0; // speed command not used
  bufToSend[3] = 0; // speed command not used
  bufToSend[4] = direction; // "0" for reverse, "1" for forward, CS5 is normally "reverse"
  bufToSend[5] = ready_to_drive; // inverter enable 
  bufToSend[6] = max_torque*10 && 0xFF; // LSB
  bufToSend[7] = max_torque*10 >> 8; // MSB

  // send message
  CAN.sendMsgBuf(ID_RINEHART_COMMAND, 0, 8, bufToSend);

  // reenable interrupts
  sei();

}


//timer1 interrupt 10Hz
// send rinehart command for torque
ISR(TIMER1_COMPA_vect){

  cli();
  // switch directions, disable inverter
  if (direction != lastDirection){
    lastDirection = direction; // save new direction
    ready_to_drive = false; // disable interter
    direction = ~direction; // set to old direction 
    sendRinehartCommand(); // send data (dsiable inverter w/ old direction)
    ready_to_drive = true; // turn inverter back on
    direction = lastDirection; // update to current direction
  }

  sendRinehartCommand(); // send command values to rinehart

  sei();
  
}