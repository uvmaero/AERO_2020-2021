/**
 * Copyright 2020, George Spearing, UVM AERO
 * Dash Left 
 * Temperature LEDs
 * Battery SOC LED
 * LCD Screen
 */

#include <Arduino.h>
#include <mcp_can.h>

// CAN Setup
#define PIN_SPI_CAN_CS 5 // CAN SPI Chip
#define CAN_INT 2 // interrupt pin
MCP_CAN CAN(PIN_SPI_CAN_CS); // set CS Pin
#define DAQ_CAN_INTERVAL 100 // time in ms
uint16_t lastSendDaqMessage = millis();

// CAN Address
#define ID_BASE 0x76
#define ID_DASH_SELF_TEST 0x72 // SAME AS DASH RIGHT

// CAN Address Inputs
// Battery Temp
// Motor Temp
// RineHart Temp
// Battery Voltage



// Temperature Sampling

// Battery SOC Calculation

// LCD Screen output

void setup() {
  // put your setup code here, to run once:
}

void loop() {
  // put your main code here, to run repeatedly:
}