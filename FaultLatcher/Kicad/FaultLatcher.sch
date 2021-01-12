EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Relay:G5V-2 K1
U 1 1 5FC690B0
P 3600 1725
F 0 "K1" V 4367 1725 50  0000 C CNN
F 1 "G5V-2" V 4276 1725 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 4250 1675 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 3600 1725 50  0001 C CNN
	1    3600 1725
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x14 J2
U 1 1 5FC79949
P 10750 2050
F 0 "J2" H 10668 2867 50  0000 C CNN
F 1 "Conn_01x14" H 10668 2776 50  0000 C CNN
F 2 "" H 10750 2050 50  0001 C CNN
F 3 "~" H 10750 2050 50  0001 C CNN
	1    10750 2050
	1    0    0    -1  
$EndComp
Text Label 10050 1450 0    50   ~ 0
LOOP_IN
Text Label 10050 1650 0    50   ~ 0
CANH
Text Label 10050 2150 0    50   ~ 0
CANH
Text Label 10050 1750 0    50   ~ 0
CANL
Text Label 10050 2250 0    50   ~ 0
CANL
Text Label 10050 2350 0    50   ~ 0
BMS_FAULT
Text Label 10050 2450 0    50   ~ 0
TMS1_FAULT
Text Label 10050 2550 0    50   ~ 0
TMS1_FAULT
Text Label 10050 2650 0    50   ~ 0
IMD_FAULT
$Comp
L power:GND #PWR0101
U 1 1 5FC80ED2
P 9875 2750
F 0 "#PWR0101" H 9875 2500 50  0001 C CNN
F 1 "GND" H 9880 2577 50  0000 C CNN
F 2 "" H 9875 2750 50  0001 C CNN
F 3 "" H 9875 2750 50  0001 C CNN
	1    9875 2750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FC81702
P 9875 2050
F 0 "#PWR0102" H 9875 1800 50  0001 C CNN
F 1 "GND" H 9880 1877 50  0000 C CNN
F 2 "" H 9875 2050 50  0001 C CNN
F 3 "" H 9875 2050 50  0001 C CNN
	1    9875 2050
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 5FC81F77
P 9875 1950
F 0 "#PWR0103" H 9875 1800 50  0001 C CNN
F 1 "+12V" H 9890 2123 50  0000 C CNN
F 2 "" H 9875 1950 50  0001 C CNN
F 3 "" H 9875 1950 50  0001 C CNN
	1    9875 1950
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5FC82305
P 9875 1550
F 0 "#PWR0104" H 9875 1400 50  0001 C CNN
F 1 "+12V" H 9890 1723 50  0000 C CNN
F 2 "" H 9875 1550 50  0001 C CNN
F 3 "" H 9875 1550 50  0001 C CNN
	1    9875 1550
	-1   0    0    -1  
$EndComp
Text Label 10050 1850 0    50   ~ 0
LOOP_OUT
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5FC87C4F
P 1625 5500
F 0 "U1" H 1125 3925 50  0000 C CNN
F 1 "ATmega328P-AU" H 1100 4025 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1625 5500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1625 5500 50  0001 C CNN
	1    1625 5500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 5FCCDF6F
P 2900 2675
F 0 "Q1" H 3105 2721 50  0000 L CNN
F 1 "2N7002" H 3105 2630 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 2600 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 2900 2675 50  0001 L CNN
	1    2900 2675
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5FCEA282
P 3575 2675
F 0 "D1" H 3575 2458 50  0000 C CNN
F 1 "1N4148" H 3575 2549 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3575 2500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3575 2675 50  0001 C CNN
	1    3575 2675
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FCEB427
P 3100 3125
F 0 "SW1" V 3146 3077 50  0000 R CNN
F 1 "SW_Push" V 3055 3077 50  0000 R CNN
F 2 "" H 3100 3325 50  0001 C CNN
F 3 "~" H 3100 3325 50  0001 C CNN
	1    3100 3125
	0    -1   -1   0   
$EndComp
$Comp
L Relay:G5V-2 K2
U 1 1 5FCEEBA3
P 5050 1725
F 0 "K2" V 5817 1725 50  0000 C CNN
F 1 "G5V-2" V 5726 1725 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 5700 1675 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 5050 1725 50  0001 C CNN
	1    5050 1725
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7002 Q2
U 1 1 5FCEEBAD
P 4350 2675
F 0 "Q2" H 4650 2600 50  0000 L CNN
F 1 "2N7002" H 4525 2500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4550 2600 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 4350 2675 50  0001 L CNN
	1    4350 2675
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5FCEEBB7
P 5025 2675
F 0 "D2" H 5025 2458 50  0000 C CNN
F 1 "1N4148" H 5025 2549 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5025 2500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5025 2675 50  0001 C CNN
	1    5025 2675
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5FCEEBC1
P 4550 3125
F 0 "SW2" V 4596 3077 50  0000 R CNN
F 1 "SW_Push" V 4505 3077 50  0000 R CNN
F 2 "" H 4550 3325 50  0001 C CNN
F 3 "~" H 4550 3325 50  0001 C CNN
	1    4550 3125
	0    -1   -1   0   
$EndComp
$Comp
L Relay:G5V-2 K3
U 1 1 5FCFC6A6
P 6575 1725
F 0 "K3" V 7342 1725 50  0000 C CNN
F 1 "G5V-2" V 7251 1725 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 7225 1675 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 6575 1725 50  0001 C CNN
	1    6575 1725
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7002 Q3
U 1 1 5FCFC6B0
P 5875 2675
F 0 "Q3" H 6175 2700 50  0000 L CNN
F 1 "2N7002" H 6075 2600 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6075 2600 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 5875 2675 50  0001 L CNN
	1    5875 2675
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5FCFC6BA
P 6550 2675
F 0 "D3" H 6550 2458 50  0000 C CNN
F 1 "1N4148" H 6550 2549 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6550 2500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6550 2675 50  0001 C CNN
	1    6550 2675
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5FCFC6C4
P 6075 3125
F 0 "SW3" V 6121 3077 50  0000 R CNN
F 1 "SW_Push" V 6030 3077 50  0000 R CNN
F 2 "" H 6075 3325 50  0001 C CNN
F 3 "~" H 6075 3325 50  0001 C CNN
	1    6075 3125
	0    -1   -1   0   
$EndComp
$Comp
L Relay:G5V-2 K4
U 1 1 5FD103A0
P 8325 1725
F 0 "K4" V 9092 1725 50  0000 C CNN
F 1 "G5V-2" V 9001 1725 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 8975 1675 50  0001 L CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_2.pdf" H 8325 1725 50  0001 C CNN
	1    8325 1725
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7002 Q4
U 1 1 5FD103AA
P 7625 2675
F 0 "Q4" H 7950 2700 50  0000 L CNN
F 1 "2N7002" H 7875 2600 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7825 2600 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7625 2675 50  0001 L CNN
	1    7625 2675
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5FD103B4
P 8300 2675
F 0 "D4" H 8300 2458 50  0000 C CNN
F 1 "1N4148" H 8300 2549 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8300 2500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8300 2675 50  0001 C CNN
	1    8300 2675
	-1   0    0    1   
$EndComp
Text Label 9100 1725 2    50   ~ 0
IMD_FAULT
Wire Wire Line
	9100 1725 8625 1725
Text Label 2900 1225 0    50   ~ 0
LOOP_IN
Text Label 9100 1325 2    50   ~ 0
LOOP_OUT
Wire Wire Line
	9100 1325 8625 1325
Wire Wire Line
	6875 1325 7225 1325
Wire Wire Line
	7225 1325 7225 1225
Wire Wire Line
	7225 1225 8025 1225
Wire Wire Line
	5350 1325 5700 1325
Wire Wire Line
	5700 1325 5700 1225
Wire Wire Line
	5700 1225 6275 1225
Wire Wire Line
	4300 1225 4750 1225
Wire Wire Line
	4300 1325 3900 1325
Wire Wire Line
	4300 1225 4300 1325
Wire Wire Line
	3100 2925 3100 2675
Wire Wire Line
	3100 2675 3100 2125
Wire Wire Line
	3100 2125 3300 2125
Connection ~ 3100 2675
Wire Wire Line
	4550 2925 4550 2675
Wire Wire Line
	4550 2675 4550 2125
Wire Wire Line
	4550 2125 4750 2125
Connection ~ 4550 2675
Wire Wire Line
	6075 2925 6075 2675
Wire Wire Line
	6075 2675 6075 2125
Wire Wire Line
	6075 2125 6275 2125
Connection ~ 6075 2675
Wire Wire Line
	6875 2125 6875 2675
Wire Wire Line
	6875 2675 6700 2675
Wire Wire Line
	6400 2675 6075 2675
Wire Wire Line
	5350 2125 5350 2675
Wire Wire Line
	5350 2675 5175 2675
Wire Wire Line
	4875 2675 4550 2675
Wire Wire Line
	3900 2125 3900 2675
Wire Wire Line
	3900 2675 3725 2675
Wire Wire Line
	3425 2675 3100 2675
Wire Wire Line
	3100 3325 4250 3325
Connection ~ 4550 3325
Wire Wire Line
	4550 3325 5775 3325
Connection ~ 6075 3325
Wire Wire Line
	6075 3325 7525 3325
Wire Wire Line
	3100 3325 2800 3325
Wire Wire Line
	2800 3325 2800 2875
Connection ~ 3100 3325
Wire Wire Line
	4250 2875 4250 3325
Connection ~ 4250 3325
Wire Wire Line
	4250 3325 4550 3325
Wire Wire Line
	5775 2875 5775 3325
Connection ~ 5775 3325
Wire Wire Line
	5775 3325 6075 3325
Wire Wire Line
	7525 2875 7525 3325
Connection ~ 7525 3325
$Comp
L power:+12V #PWR0105
U 1 1 5FE1F907
P 4050 2125
F 0 "#PWR0105" H 4050 1975 50  0001 C CNN
F 1 "+12V" H 4065 2298 50  0000 C CNN
F 2 "" H 4050 2125 50  0001 C CNN
F 3 "" H 4050 2125 50  0001 C CNN
	1    4050 2125
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0106
U 1 1 5FE20000
P 5525 2125
F 0 "#PWR0106" H 5525 1975 50  0001 C CNN
F 1 "+12V" H 5540 2298 50  0000 C CNN
F 2 "" H 5525 2125 50  0001 C CNN
F 3 "" H 5525 2125 50  0001 C CNN
	1    5525 2125
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5FE20786
P 7050 2125
F 0 "#PWR0107" H 7050 1975 50  0001 C CNN
F 1 "+12V" H 7065 2298 50  0000 C CNN
F 2 "" H 7050 2125 50  0001 C CNN
F 3 "" H 7050 2125 50  0001 C CNN
	1    7050 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2125 6875 2125
Connection ~ 6875 2125
Wire Wire Line
	5525 2125 5350 2125
Connection ~ 5350 2125
Wire Wire Line
	4050 2125 3900 2125
Connection ~ 3900 2125
$Comp
L power:GND #PWR0108
U 1 1 5FE2A8B9
P 2800 3325
F 0 "#PWR0108" H 2800 3075 50  0001 C CNN
F 1 "GND" H 2805 3152 50  0000 C CNN
F 2 "" H 2800 3325 50  0001 C CNN
F 3 "" H 2800 3325 50  0001 C CNN
	1    2800 3325
	1    0    0    -1  
$EndComp
Connection ~ 2800 3325
Wire Wire Line
	6275 1625 6075 1625
Wire Wire Line
	6075 1625 6075 2125
Connection ~ 6075 2125
Wire Wire Line
	4750 1625 4550 1625
Wire Wire Line
	4550 1625 4550 2125
Connection ~ 4550 2125
Wire Wire Line
	3300 1625 3100 1625
Wire Wire Line
	3100 1625 3100 2125
Connection ~ 3100 2125
Text Notes 6250 875  0    50   ~ 0
TMS2\nLOW Clear, Floating Fault
Text Notes 8000 875  0    50   ~ 0
IMD\nHIGH Clear, LOW Fault\n
Text Notes 4675 850  0    50   ~ 0
TMS1\nLOW Clear, Floating Fault
Text Notes 3125 850  0    50   ~ 0
BMS\nLOW Clear, Floating Fault
Wire Wire Line
	2900 1225 3300 1225
Text Label 4325 1725 2    50   ~ 0
BMS_FAULT
Wire Wire Line
	4325 1725 3900 1725
Text Label 5850 1725 2    50   ~ 0
TMS1_FAULT
Wire Wire Line
	5850 1725 5350 1725
Text Label 7350 1725 2    50   ~ 0
TMS2_FAULT
Wire Wire Line
	7350 1725 6875 1725
Text Label 2450 2475 0    50   ~ 0
BMS_IND
Wire Wire Line
	2450 2475 2800 2475
Text Label 4400 2475 2    50   ~ 0
TMS1_IND
Wire Wire Line
	4400 2475 4250 2475
Text Label 5950 2475 2    50   ~ 0
TMS2_IND
Wire Wire Line
	5950 2475 5775 2475
Text Label 7675 2475 2    50   ~ 0
IMD_IND
Wire Wire Line
	7675 2475 7525 2475
Wire Wire Line
	10050 1450 10550 1450
Wire Wire Line
	9875 1550 10550 1550
Wire Wire Line
	10050 1650 10550 1650
Wire Wire Line
	10050 1750 10550 1750
Wire Wire Line
	10050 1850 10550 1850
Wire Wire Line
	9875 1950 10550 1950
Wire Wire Line
	9875 2050 10550 2050
Wire Wire Line
	10050 2150 10550 2150
Wire Wire Line
	10050 2250 10550 2250
Wire Wire Line
	10050 2350 10550 2350
Wire Wire Line
	10050 2450 10550 2450
Wire Wire Line
	10050 2550 10550 2550
Wire Wire Line
	10050 2650 10550 2650
Wire Wire Line
	9875 2750 10550 2750
$Comp
L Interface_CAN_LIN:MCP2515-xSO U?
U 1 1 5FFB2C7F
P 5475 5450
F 0 "U?" H 5950 6350 50  0000 C CNN
F 1 "MCP2515-xSO" H 5975 6250 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 5475 4550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 5575 4650 50  0001 C CNN
	1    5475 5450
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U?
U 1 1 5FFB36A3
P 7575 5050
F 0 "U?" H 8000 5550 50  0000 C CNN
F 1 "MCP2551-I-SN" H 7950 5450 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7575 4550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 7575 5050 50  0001 C CNN
	1    7575 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FFE12A7
P 5475 4175
F 0 "#PWR?" H 5475 4025 50  0001 C CNN
F 1 "+5V" H 5490 4348 50  0000 C CNN
F 2 "" H 5475 4175 50  0001 C CNN
F 3 "" H 5475 4175 50  0001 C CNN
	1    5475 4175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFE3631
P 5475 6250
F 0 "#PWR?" H 5475 6000 50  0001 C CNN
F 1 "GND" H 5480 6077 50  0000 C CNN
F 2 "" H 5475 6250 50  0001 C CNN
F 3 "" H 5475 6250 50  0001 C CNN
	1    5475 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FFE4285
P 6500 6050
F 0 "#PWR?" H 6500 5900 50  0001 C CNN
F 1 "+5V" H 6515 6223 50  0000 C CNN
F 2 "" H 6500 6050 50  0001 C CNN
F 3 "" H 6500 6050 50  0001 C CNN
	1    6500 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FFE48EC
P 5000 4325
F 0 "C?" H 5115 4371 50  0000 L CNN
F 1 "0.1u" H 5115 4280 50  0000 L CNN
F 2 "" H 5038 4175 50  0001 C CNN
F 3 "~" H 5000 4325 50  0001 C CNN
	1    5000 4325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFE4FF1
P 5000 4475
F 0 "#PWR?" H 5000 4225 50  0001 C CNN
F 1 "GND" H 5005 4302 50  0000 C CNN
F 2 "" H 5000 4475 50  0001 C CNN
F 3 "" H 5000 4475 50  0001 C CNN
	1    5000 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 4175 5475 4650
Wire Wire Line
	5000 4175 5475 4175
Connection ~ 5475 4175
$Comp
L Device:R R?
U 1 1 5FFEAB2D
P 6300 6050
F 0 "R?" V 6200 6050 50  0000 C CNN
F 1 "10K" V 6300 6050 50  0000 C CNN
F 2 "" V 6230 6050 50  0001 C CNN
F 3 "~" H 6300 6050 50  0001 C CNN
	1    6300 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 6050 6075 6050
Wire Wire Line
	6450 6050 6500 6050
Wire Wire Line
	6075 4850 6575 4850
Wire Wire Line
	6575 4850 6675 4950
Wire Wire Line
	6675 4950 7075 4950
Wire Wire Line
	6575 4950 6700 4850
Wire Wire Line
	6075 4950 6575 4950
Wire Wire Line
	6700 4850 7075 4850
Text Label 6175 4850 0    50   ~ 0
RXCAN
Text Label 6175 4950 0    50   ~ 0
TXCAN
Text Label 6425 5450 2    50   ~ 0
CAN_INT
Wire Wire Line
	6425 5450 6075 5450
Wire Wire Line
	4525 5050 4875 5050
$Comp
L power:+5V #PWR?
U 1 1 60014BB2
P 7575 4175
F 0 "#PWR?" H 7575 4025 50  0001 C CNN
F 1 "+5V" H 7590 4348 50  0000 C CNN
F 2 "" H 7575 4175 50  0001 C CNN
F 3 "" H 7575 4175 50  0001 C CNN
	1    7575 4175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60014BBC
P 7100 4325
F 0 "C?" H 7215 4371 50  0000 L CNN
F 1 "0.1u" H 7215 4280 50  0000 L CNN
F 2 "" H 7138 4175 50  0001 C CNN
F 3 "~" H 7100 4325 50  0001 C CNN
	1    7100 4325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60014BC6
P 7100 4475
F 0 "#PWR?" H 7100 4225 50  0001 C CNN
F 1 "GND" H 7105 4302 50  0000 C CNN
F 2 "" H 7100 4475 50  0001 C CNN
F 3 "" H 7100 4475 50  0001 C CNN
	1    7100 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7575 4175 7575 4650
Wire Wire Line
	7100 4175 7575 4175
Connection ~ 7575 4175
$Comp
L power:GND #PWR?
U 1 1 600190E5
P 7575 5450
F 0 "#PWR?" H 7575 5200 50  0001 C CNN
F 1 "GND" H 7580 5277 50  0000 C CNN
F 2 "" H 7575 5450 50  0001 C CNN
F 3 "" H 7575 5450 50  0001 C CNN
	1    7575 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 5250 7075 5450
Wire Wire Line
	7075 5450 7575 5450
Connection ~ 7575 5450
$Comp
L Device:R R?
U 1 1 6007C90B
P 8650 5050
F 0 "R?" H 8720 5096 50  0000 L CNN
F 1 "120" V 8650 4975 50  0000 L CNN
F 2 "" V 8580 5050 50  0001 C CNN
F 3 "~" H 8650 5050 50  0001 C CNN
	1    8650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4900 8525 4900
Wire Wire Line
	8525 4900 8525 4950
Wire Wire Line
	8075 4950 8525 4950
Wire Wire Line
	8650 5200 8525 5200
Wire Wire Line
	8525 5200 8525 5150
Wire Wire Line
	8075 5150 8525 5150
Text Notes 8425 5400 0    50   ~ 0
TERMINATION\n(OPTIONAL)
Wire Wire Line
	4650 5150 4875 5150
Wire Wire Line
	4650 4950 4875 4950
Wire Wire Line
	4650 4850 4875 4850
Text Label 4650 5150 0    50   ~ 0
SCK
Text Label 4525 5050 0    50   ~ 0
CAN_CS
Text Label 4650 4950 0    50   ~ 0
MISO
Text Label 4650 4850 0    50   ~ 0
MOSI
Text Label 8350 5150 2    50   ~ 0
CANL
Text Label 8350 4950 2    50   ~ 0
CANH
Wire Wire Line
	10825 3775 10575 3775
$Comp
L power:GND #PWR?
U 1 1 5FFCBDFC
P 10825 3775
F 0 "#PWR?" H 10825 3525 50  0001 C CNN
F 1 "GND" H 10830 3602 50  0000 C CNN
F 2 "" H 10825 3775 50  0001 C CNN
F 3 "" H 10825 3775 50  0001 C CNN
	1    10825 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	10825 3575 10575 3575
$Comp
L power:+5V #PWR?
U 1 1 5FFCA9F4
P 10825 3575
F 0 "#PWR?" H 10825 3425 50  0001 C CNN
F 1 "+5V" H 10840 3748 50  0000 C CNN
F 2 "" H 10825 3575 50  0001 C CNN
F 3 "" H 10825 3575 50  0001 C CNN
	1    10825 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	10075 3775 9850 3775
Wire Wire Line
	10075 3675 9850 3675
Wire Wire Line
	10075 3575 9850 3575
Wire Wire Line
	10825 3675 10575 3675
Text Label 10825 3675 2    50   ~ 0
MOSI
Text Label 9850 3775 0    50   ~ 0
RESET
Text Label 9850 3675 0    50   ~ 0
SCK
Text Label 9850 3575 0    50   ~ 0
MISO
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5FFC84D9
P 10275 3675
F 0 "J?" H 10325 3992 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 10325 3901 50  0000 C CNN
F 2 "" H 10275 3675 50  0001 C CNN
F 3 "~" H 10275 3675 50  0001 C CNN
	1    10275 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 5075 10700 5075
Wire Wire Line
	10850 5075 10850 5225
Wire Wire Line
	9900 5075 9900 5250
Wire Wire Line
	10100 5075 9900 5075
Wire Wire Line
	10400 5375 10400 5650
Wire Wire Line
	10850 5650 10400 5650
Wire Wire Line
	10850 5525 10850 5650
Wire Wire Line
	9900 5650 9900 5550
Connection ~ 10400 5650
Wire Wire Line
	10400 5650 9900 5650
$Comp
L power:GND #PWR?
U 1 1 5FFC2669
P 10400 5650
F 0 "#PWR?" H 10400 5400 50  0001 C CNN
F 1 "GND" H 10405 5477 50  0000 C CNN
F 2 "" H 10400 5650 50  0001 C CNN
F 3 "" H 10400 5650 50  0001 C CNN
	1    10400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FFC1925
P 9900 5400
F 0 "C?" H 10015 5446 50  0000 L CNN
F 1 "1u" H 10015 5355 50  0000 L CNN
F 2 "" H 9938 5250 50  0001 C CNN
F 3 "~" H 9900 5400 50  0001 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FFC0CFF
P 10850 5375
F 0 "C?" H 10965 5421 50  0000 L CNN
F 1 "10u" H 10965 5330 50  0000 L CNN
F 2 "" H 10888 5225 50  0001 C CNN
F 3 "~" H 10850 5375 50  0001 C CNN
	1    10850 5375
	1    0    0    -1  
$EndComp
Connection ~ 10850 5075
$Comp
L power:+5V #PWR?
U 1 1 5FFC068A
P 10850 5075
F 0 "#PWR?" H 10850 4925 50  0001 C CNN
F 1 "+5V" H 10865 5248 50  0000 C CNN
F 2 "" H 10850 5075 50  0001 C CNN
F 3 "" H 10850 5075 50  0001 C CNN
	1    10850 5075
	1    0    0    -1  
$EndComp
Connection ~ 9900 5075
$Comp
L power:+12V #PWR?
U 1 1 5FFBFE26
P 9900 5075
F 0 "#PWR?" H 9900 4925 50  0001 C CNN
F 1 "+12V" H 9915 5248 50  0000 C CNN
F 2 "" H 9900 5075 50  0001 C CNN
F 3 "" H 9900 5075 50  0001 C CNN
	1    9900 5075
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:R-785.0-1.0 U?
U 1 1 5FFBF32A
P 10400 5075
F 0 "U?" H 10400 5317 50  0000 C CNN
F 1 "R-785.0-1.0" H 10400 5226 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 10450 4825 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78xx-1.0.pdf" H 10400 5075 50  0001 C CNN
	1    10400 5075
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 600594FA
P 1675 3575
F 0 "#PWR?" H 1675 3425 50  0001 C CNN
F 1 "+5V" H 1690 3748 50  0000 C CNN
F 2 "" H 1675 3575 50  0001 C CNN
F 3 "" H 1675 3575 50  0001 C CNN
	1    1675 3575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60059CF4
P 900 3725
F 0 "C?" H 1015 3771 50  0000 L CNN
F 1 "0.1U" H 1015 3680 50  0000 L CNN
F 2 "" H 938 3575 50  0001 C CNN
F 3 "~" H 900 3725 50  0001 C CNN
	1    900  3725
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6005A5B5
P 675 4450
F 0 "C?" H 790 4496 50  0000 L CNN
F 1 "0.1U" H 790 4405 50  0000 L CNN
F 2 "" H 713 4300 50  0001 C CNN
F 3 "~" H 675 4450 50  0001 C CNN
	1    675  4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3575 1675 3575
$Comp
L power:GND #PWR?
U 1 1 60064739
P 900 3875
F 0 "#PWR?" H 900 3625 50  0001 C CNN
F 1 "GND" H 905 3702 50  0000 C CNN
F 2 "" H 900 3875 50  0001 C CNN
F 3 "" H 900 3875 50  0001 C CNN
	1    900  3875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60064C13
P 675 4600
F 0 "#PWR?" H 675 4350 50  0001 C CNN
F 1 "GND" H 680 4427 50  0000 C CNN
F 2 "" H 675 4600 50  0001 C CNN
F 3 "" H 675 4600 50  0001 C CNN
	1    675  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	675  4300 1025 4300
Wire Wire Line
	1675 3575 1675 4000
Wire Wire Line
	1675 4000 1725 4000
Connection ~ 1675 3575
Wire Wire Line
	1675 4000 1625 4000
Connection ~ 1675 4000
$Comp
L power:GND #PWR?
U 1 1 600A315B
P 1625 7000
F 0 "#PWR?" H 1625 6750 50  0001 C CNN
F 1 "GND" H 1630 6827 50  0000 C CNN
F 2 "" H 1625 7000 50  0001 C CNN
F 3 "" H 1625 7000 50  0001 C CNN
	1    1625 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:Resonator Y?
U 1 1 600AA42C
P 4500 6025
F 0 "Y?" H 4500 6273 50  0000 C CNN
F 1 "16MHz" H 4500 6182 50  0000 C CNN
F 2 "" H 4475 6025 50  0001 C CNN
F 3 "~" H 4475 6025 50  0001 C CNN
	1    4500 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6025 4350 5650
Wire Wire Line
	4350 5650 4875 5650
Wire Wire Line
	4650 6025 4750 6025
Wire Wire Line
	4750 6025 4750 5750
Wire Wire Line
	4750 5750 4875 5750
$Comp
L power:GND #PWR?
U 1 1 600B4356
P 4500 6225
F 0 "#PWR?" H 4500 5975 50  0001 C CNN
F 1 "GND" H 4505 6052 50  0000 C CNN
F 2 "" H 4500 6225 50  0001 C CNN
F 3 "" H 4500 6225 50  0001 C CNN
	1    4500 6225
	1    0    0    -1  
$EndComp
Text Label 2600 6500 2    50   ~ 0
CAN_CS
Wire Wire Line
	2600 6500 2225 6500
Text Label 2475 4600 2    50   ~ 0
MOSI
Wire Wire Line
	2475 4600 2225 4600
Text Label 2475 4700 2    50   ~ 0
MISO
Wire Wire Line
	2475 4700 2225 4700
Text Label 2475 4800 2    50   ~ 0
SCK
Wire Wire Line
	2475 4800 2225 4800
Text Label 2500 5800 2    50   ~ 0
RESET
Wire Wire Line
	2500 5800 2225 5800
Text Label 2600 6200 2    50   ~ 0
CAN_INT
Wire Wire Line
	2600 6200 2225 6200
Text Label 2600 6300 2    50   ~ 0
BMS_IND
Text Label 2600 6400 2    50   ~ 0
TMS1_IND
Text Label 2600 6600 2    50   ~ 0
TMS2_IND
Text Label 2600 6700 2    50   ~ 0
IMD_IND
$Comp
L Device:R R?
U 1 1 600EEA83
P 2950 6700
F 0 "R?" V 2900 6925 50  0000 C CNN
F 1 "10k" V 2950 6700 50  0000 C CNN
F 2 "" V 2880 6700 50  0001 C CNN
F 3 "~" H 2950 6700 50  0001 C CNN
	1    2950 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6012D044
P 2950 6600
F 0 "R?" V 2900 6825 50  0000 C CNN
F 1 "10k" V 2950 6600 50  0000 C CNN
F 2 "" V 2880 6600 50  0001 C CNN
F 3 "~" H 2950 6600 50  0001 C CNN
	1    2950 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6012D5B3
P 2950 6400
F 0 "R?" V 2900 6625 50  0000 C CNN
F 1 "10k" V 2950 6400 50  0000 C CNN
F 2 "" V 2880 6400 50  0001 C CNN
F 3 "~" H 2950 6400 50  0001 C CNN
	1    2950 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6012DC65
P 2950 6300
F 0 "R?" V 2900 6525 50  0000 C CNN
F 1 "10k" V 2950 6300 50  0000 C CNN
F 2 "" V 2880 6300 50  0001 C CNN
F 3 "~" H 2950 6300 50  0001 C CNN
	1    2950 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 6300 2225 6300
Wire Wire Line
	2225 6400 2800 6400
Wire Wire Line
	2225 6600 2800 6600
Wire Wire Line
	2225 6700 2800 6700
$Comp
L power:+12V #PWR?
U 1 1 601463F5
P 3300 6125
F 0 "#PWR?" H 3300 5975 50  0001 C CNN
F 1 "+12V" H 3315 6298 50  0000 C CNN
F 2 "" H 3300 6125 50  0001 C CNN
F 3 "" H 3300 6125 50  0001 C CNN
	1    3300 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6300 3300 6300
Wire Wire Line
	3300 6300 3300 6125
Wire Wire Line
	3100 6700 3300 6700
Wire Wire Line
	3300 6700 3300 6600
Connection ~ 3300 6300
Wire Wire Line
	3100 6400 3300 6400
Connection ~ 3300 6400
Wire Wire Line
	3300 6400 3300 6300
Wire Wire Line
	3100 6600 3300 6600
Connection ~ 3300 6600
Wire Wire Line
	3300 6600 3300 6400
$Comp
L Switch:SW_Push SW?
U 1 1 601C3278
P 7525 2125
F 0 "SW?" H 7750 2250 50  0000 R CNN
F 1 "SW_Push" H 7725 2325 50  0000 R CNN
F 2 "" H 7525 2325 50  0001 C CNN
F 3 "~" H 7525 2325 50  0001 C CNN
	1    7525 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 2125 7050 2125
Connection ~ 7050 2125
Wire Wire Line
	7725 2125 7900 2125
Wire Wire Line
	8025 1625 7900 1625
Wire Wire Line
	7900 1625 7900 2125
Connection ~ 7900 2125
Wire Wire Line
	7900 2125 8025 2125
Wire Wire Line
	8625 2125 8625 3325
Wire Wire Line
	7525 3325 8625 3325
$EndSCHEMATC