/**
 * Copyright 2020, George Spearing, UVM AERO
 * PedalBoard
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
#define ID_BASE         0x30
#define ID_DATA         ID_PEDAL_BASE + 1 // 0X32
#define ID_SET_EEPROM   ID_PEDAL_BASE + 2 // 0X33

#define ID_RINEHART_COMMAND 0xC0 // send for torque commands

#define ID_DASH_RIGHT_STATUS 0x73 // Dash vehicle data

// Input Pins
#define PIN_STEER   A0
#define PIN_BRAKE1  A1
#define PIN_BRAKE0  A2
#define PIN_ACC1    A3
#define PIN_ACC0    A4

// default settings
#define PEDAL_DEADBAND 10 // lower limit for '0' value
#define ACC_MAX_SKEW 10 // acc pedal difference limit
// following vlaues based on testing. Can be updated using ID_SET DEADBAND id
uint16_t pedal0_min = 90;
uint16_t pedal0_max = 430;
uint16_t pedal1_min = 190;
uint16_t pedal1_max = 870; 
uint16_t max_torque = 50; // low default

#define BRAKE_THRESHOLD 500 // amount of pressure change for brake
uint16_t front_brake_pressure = 0, rear_brake_pressue = 0;
bool breakTrip = false;

// acc raw ADC values from sensors
uint16_t pedal0 = 0, pedal1 = 0, brake0 = 0, brake1 = 0, steer = 0;
// mapped values
uint8_t pedal0_mapped, pedal1_mapped, brake0_mapped, brake1_mapped, steer_mapped;

#define DAQ_INTERVAL 100 // time in ms
uint16_t lastSendDaqMessage = millis();

// default values (updated from DASH)
uint8_t ready_to_drive = 0; // from DASH precharge / start value
uint8_t direction = 0; // from DASH direction switch (CS5 runs in "reverse")
uint16_t coast_regen_torque = 10;
uint16_t brake_regen_torque = 10;

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

// send rinehart command for torque

// set eeprom values from can message
void setEERPOM(unsigned char buf[8]){

  // update eeprom values from CAN message
  EEPROM.update(TORQUE_EEPROM, buf[0]);
  EEPROM.update(PEDAL0_MIN_EEPROM, buf[1]);
  EEPROM.update(PEDAL0_MAX_EEPROM, buf[2]);
  EEPROM.update(PEDAL1_MIN_EEPROM, buf[3]);
  EEPROM.update(PEDAL1_MAX_EEPROM, buf[4]);
  EEPROM.update(EEPROM_BASE, true);

}

void setup() {
  // get current eeprom values
  // set eeprom values to default if none exist
  bool setValue = false;
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

}

void loop() {
  // put your main code here, to run repeatedly:
}