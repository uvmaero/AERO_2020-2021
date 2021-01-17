/**
 * Copyright 2020, George Spearing, UVM AERO
 * Dash Right
 * Fault LEDs, Start button, cooling switch, direction
 * coast / regen pots for rinehart
 * Precharge
 */

#include <Arduino.h>
#include <mcp_can.h>

// CAN Setup
#define PIN_SPI_CAN_CS 5 // CAN SPI Chip
#define CAN_INT 2 // interrupt pin
MCP_CAN CAN(PIN_SPI_CAN_CS); // set CS Pin
#define DAQ_CAN_INTERVAL 100 // time in ms
uint16_t lastSendDaqMessage = millis();

// CAN Addresses
#define ID_BASE             0x71
#define ID_DASH_SELF_TEST   ID_BASE +1
#define ID_DASH_STATUS      ID_BASE +2
#define ID_DASH_RIGHT_DATA  ID_BASE +3

#define ID_FAULTLATCHER 0x80 // receive faults

// Input Pins
#define PIN_COAST A0 // coast regen value
#define PIN_BRAKE A1 // brake regen value
#define PIN_DIRECTION A2 // motor direction switch
#define PIN_COOLING A3 // cooling switch value
#define PIN_RTD_BTN 8 // input "start button"
#define PIN_SENSOR_1 3 // extra digital sensor

// output pins
#define PIN_BMS_LED 4 // bms fault indicator
#define PIN_IMD_LED 6 // imd fault indicator
#define PIN_TMS_LED 7 // tms fault indicator
#define PIN_RTD_LED 9 // 'start button' LED
#define PIN_RTD_IND 10 // buzzer (low side mosfet)
// create array for fault pins
int faultLED[] = {PIN_BMS_LED, PIN_IMD_LED, PIN_TMS_LED,
                  PIN_RTD_LED, PIN_RTD_IND};

// dash Self Test Variables
#define SELFTEST_DELAY 1000 // time in ms
#define SELFTESET_POT_WORKING_THRESHOLD 50 // threshold value for pot change
#define SELFTEST_TIMEOUT 20000 // time in ms

// initialize input values
uint16_t coastRegen, brakeRegen;
bool coolEnable, rtdButton;
bool direction; // CS5 drives in 'reverse (0)'
uint8_t coast_mapped;
uint8_t brake_mapped;

// Precharge values
bool ready_to_drive = false; // ready to drive, precharge done


// send values to rinehart (direction, coast/regen)

// send cooling switch for fan

// precharge

void filterCAN(unsigned long canID, unsigned char buf[8]){
  switch(canID){
    case ID_DASH_SELF_TEST:
      selfTest();
      break;
    case ID_FAULTLATCHER:
      digitalWrite(PIN_BMS_LED, buf[0]);
      digitalWrite(PIN_TMS_LED, buf[1]);
      digitalWrite(PIN_IMD_LED, buf[2]);
  }
}

void sendDaqData(){
  // turn off interrupts
  cli();

  // sample inputs
  coastRegen = analogRead(PIN_COAST);
  brakeRegen = analogRead(PIN_BRAKE); 
  coolEnable = digitalRead(PIN_COOLING);
  direction = digitalRead(PIN_DIRECTION);
  rtdButton = digitalRead(PIN_RTD_BTN);

  coast_mapped = map(coastRegen, 0, 1024, 0, 255);
  brake_mapped = map(brakeRegen, 0, 1024, 0, 255);

  // build DAQ Message
  unsigned char bufToSend[8] = {0, 0, 0, 0, 0, 0, 0, 0};
  bufToSend[0] = coast_mapped;
  bufToSend[1] = brake_mapped;
  bufToSend[2] = coolEnable;
  bufToSend[3] = ready_to_drive;
  bufToSend[4] = direction;
  bufToSend[5] = rtdButton;

  // send message
  CAN.sendMsgBuf(ID_DASH_RIGHT_DATA, 0, 8, bufToSend);

  // update last send time
  lastSendDaqMessage = millis();

  // reenable interrupts
  sei();


}

void selfTest(){
  // turn off interrupts
  cli();

  // Turn off LEDs
  for(int i=0; i<sizeof(faultLED); i++){
    digitalWrite(i, LOW); // turn off
  }

  // turn on one-by-one
  for(int i=0; i<sizeof(faultLED); i++){
    digitalWrite(i, HIGH); // turn on
    delay(SELFTEST_DELAY);
    digitalWrite(i, LOW); // turn off
  }

  // test buttons / inputs
  bool coastKnobWorking = false, brakeKnobWorking = false, 
  coolingSwitchWorking = false, directionSwitchWorking = false,
  rtdBtnWorking = false;
  
  // only continue once all switches / buttons / knobs have been tested

  uint16_t coastKnobInitialValue = analogRead(PIN_COAST);
  uint16_t brakeKnobInitialValue = analogRead(PIN_BRAKE);
  bool coolingSwitchInitialValue = digitalRead(PIN_COOLING);
  bool directionSwitchInitialValue = digitalRead(PIN_DIRECTION);
  bool rtdButtonInitialValue = digitalRead(PIN_RTD_BTN);

  // Turn on leds for switch / pot test
  for(int i=0; i<sizeof(faultLED); i++){
    digitalWrite(i, HIGH);
  }

  while(!coastKnobWorking || !brakeKnobWorking || 
  !coolingSwitchWorking || !directionSwitchWorking || !rtdBtnWorking){

    // check rtd button
    if(rtdButtonInitialValue != digitalRead(PIN_RTD_BTN)){
      rtdBtnWorking = true;
      digitalWrite(PIN_RTD_IND, LOW);
    }

    // check cooling
    if(coolingSwitchInitialValue != digitalRead(PIN_COOLING)){
      coolingSwitchWorking = true;
      digitalWrite(PIN_BMS_LED, LOW);
    }

    // check direction
    if(directionSwitchInitialValue != digitalRead(PIN_DIRECTION)){
      directionSwitchWorking = true;
      digitalWrite(PIN_IMD_LED, LOW);
    }

    // check pots, both have to change for led to turn off. 
    if(abs(coastKnobInitialValue-analogRead(PIN_COAST))> SELFTESET_POT_WORKING_THRESHOLD &&
      abs(brakeKnobInitialValue-analogRead(PIN_BRAKE)) > SELFTESET_POT_WORKING_THRESHOLD){
      coastKnobWorking = true;
      brakeKnobWorking = true;
      digitalWrite(PIN_TMS_LED, LOW);
    }

    // delay in while loop
    delay(0.005); // check every 5 miliseconds

  }

  // reenable interrupts
  sei();

}

void setup() {
  pinMode(PIN_COAST, INPUT);
  pinMode(PIN_BRAKE, INPUT);
  pinMode(PIN_DIRECTION, INPUT);
  pinMode(PIN_COOLING, INPUT);
  pinMode(PIN_RTD_BTN, INPUT);
  pinMode(PIN_SENSOR_1, INPUT);

  pinMode(PIN_BMS_LED, OUTPUT);
  pinMode(PIN_IMD_LED, OUTPUT);
  pinMode(PIN_TMS_LED, OUTPUT);
  pinMode(PIN_RTD_LED, OUTPUT);
  pinMode(PIN_RTD_IND, OUTPUT);

  // Initialize CAN
  // IF USING CAN INTERRUPT PIN, UNCOMMENT THIS:
  // pinMode(CAN_INT, INPUT);
  CAN.begin(MCP_ANY, CAN_500KBPS, MCP_16MHZ);
  CAN.setMode(MCP_NORMAL);


}

void loop() {

  // initialize CAN buffers
  unsigned long id; 
  unsigned char len = 0; 
  unsigned char buf[8];

  // read CANbus for incomming messages
  if(CAN_MSGAVAIL == CAN.checkReceive()){
    CAN.readMsgBuf(&id, &len, buf);
    filterCAN(id, buf);
  }
  
}

// interrupts

// precharge interrupt