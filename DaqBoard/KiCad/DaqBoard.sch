EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6800 7150 6550 7150
$Comp
L power:GND #PWR0101
U 1 1 5FFCBDFC
P 6800 7150
F 0 "#PWR0101" H 6800 6900 50  0001 C CNN
F 1 "GND" H 6805 6977 50  0000 C CNN
F 2 "" H 6800 7150 50  0001 C CNN
F 3 "" H 6800 7150 50  0001 C CNN
	1    6800 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 6950 6550 6950
$Comp
L power:+5V #PWR0102
U 1 1 5FFC8CD6
P 6800 6950
F 0 "#PWR0102" H 6800 6800 50  0001 C CNN
F 1 "+5V" H 6815 7123 50  0000 C CNN
F 2 "" H 6800 6950 50  0001 C CNN
F 3 "" H 6800 6950 50  0001 C CNN
	1    6800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7150 5825 7150
Wire Wire Line
	6050 7050 5825 7050
Wire Wire Line
	6050 6950 5825 6950
Wire Wire Line
	6800 7050 6550 7050
Text Label 6800 7050 2    50   ~ 0
MOSI
Text Label 5825 7150 0    50   ~ 0
RESET
Text Label 5825 7050 0    50   ~ 0
SCK
Text Label 5825 6950 0    50   ~ 0
MISO
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5FFBACFC
P 6250 7050
F 0 "J3" H 6300 7367 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6300 7276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 6250 7050 50  0001 C CNN
F 3 "~" H 6250 7050 50  0001 C CNN
	1    6250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6825 4850 6825
Wire Wire Line
	5000 6825 5000 6975
Wire Wire Line
	4050 6825 4050 7000
Wire Wire Line
	4250 6825 4050 6825
Wire Wire Line
	4550 7125 4550 7400
Wire Wire Line
	5000 7400 4550 7400
Wire Wire Line
	5000 7275 5000 7400
Wire Wire Line
	4050 7400 4050 7300
Connection ~ 4550 7400
Wire Wire Line
	4550 7400 4050 7400
$Comp
L power:GND #PWR0103
U 1 1 5FFC8CD4
P 4550 7400
F 0 "#PWR0103" H 4550 7150 50  0001 C CNN
F 1 "GND" H 4555 7227 50  0000 C CNN
F 2 "" H 4550 7400 50  0001 C CNN
F 3 "" H 4550 7400 50  0001 C CNN
	1    4550 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FFC8CD3
P 4050 7150
F 0 "C3" H 4165 7196 50  0000 L CNN
F 1 "1u" H 4165 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4088 7000 50  0001 C CNN
F 3 "~" H 4050 7150 50  0001 C CNN
	1    4050 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FFC0CFF
P 5000 7125
F 0 "C4" H 5115 7171 50  0000 L CNN
F 1 "10u" H 5115 7080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5038 6975 50  0001 C CNN
F 3 "~" H 5000 7125 50  0001 C CNN
	1    5000 7125
	1    0    0    -1  
$EndComp
Connection ~ 5000 6825
$Comp
L power:+5V #PWR0104
U 1 1 5FFC068A
P 5000 6825
F 0 "#PWR0104" H 5000 6675 50  0001 C CNN
F 1 "+5V" H 5015 6998 50  0000 C CNN
F 2 "" H 5000 6825 50  0001 C CNN
F 3 "" H 5000 6825 50  0001 C CNN
	1    5000 6825
	1    0    0    -1  
$EndComp
Connection ~ 4050 6825
$Comp
L power:+12V #PWR0105
U 1 1 5FFBFE26
P 3500 6825
F 0 "#PWR0105" H 3500 6675 50  0001 C CNN
F 1 "+12V" H 3450 7000 50  0000 C CNN
F 2 "" H 3500 6825 50  0001 C CNN
F 3 "" H 3500 6825 50  0001 C CNN
	1    3500 6825
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:R-785.0-1.0 U2
U 1 1 5FFBF32A
P 4550 6825
F 0 "U2" H 4550 7067 50  0000 C CNN
F 1 "R-785.0-1.0" H 4550 6976 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 4600 6575 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78xx-1.0.pdf" H 4550 6825 50  0001 C CNN
	1    4550 6825
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5FFB1AB9
P 2175 3775
F 0 "U1" H 1650 2200 50  0000 C CNN
F 1 "ATmega328P-AU" H 1675 2300 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2175 3775 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2175 3775 50  0001 C CNN
	1    2175 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FFB3BAA
P 825 2300
F 0 "C1" H 940 2346 50  0000 L CNN
F 1 "0.1u" H 940 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 863 2150 50  0001 C CNN
F 3 "~" H 825 2300 50  0001 C CNN
	1    825  2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FFB44F0
P 1025 2875
F 0 "C2" H 1140 2921 50  0000 L CNN
F 1 "0.1u" H 1140 2830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1063 2725 50  0001 C CNN
F 3 "~" H 1025 2875 50  0001 C CNN
	1    1025 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 2150 2225 2275
Wire Wire Line
	2225 2275 2175 2275
Wire Wire Line
	2225 2275 2275 2275
Connection ~ 2225 2275
$Comp
L power:+5V #PWR0106
U 1 1 5FFB5286
P 2225 2150
F 0 "#PWR0106" H 2225 2000 50  0001 C CNN
F 1 "+5V" H 2240 2323 50  0000 C CNN
F 2 "" H 2225 2150 50  0001 C CNN
F 3 "" H 2225 2150 50  0001 C CNN
	1    2225 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1575 2575 1025 2575
Wire Wire Line
	1025 2575 1025 2725
$Comp
L power:GND #PWR0107
U 1 1 5FFB6133
P 1025 3025
F 0 "#PWR0107" H 1025 2775 50  0001 C CNN
F 1 "GND" H 1030 2852 50  0000 C CNN
F 2 "" H 1025 3025 50  0001 C CNN
F 3 "" H 1025 3025 50  0001 C CNN
	1    1025 3025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FFB6516
P 825 2450
F 0 "#PWR0108" H 825 2200 50  0001 C CNN
F 1 "GND" H 830 2277 50  0000 C CNN
F 2 "" H 825 2450 50  0001 C CNN
F 3 "" H 825 2450 50  0001 C CNN
	1    825  2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	825  2150 2225 2150
Connection ~ 2225 2150
$Comp
L power:GND #PWR0109
U 1 1 5FFBB4A3
P 2175 5275
F 0 "#PWR0109" H 2175 5025 50  0001 C CNN
F 1 "GND" H 2180 5102 50  0000 C CNN
F 2 "" H 2175 5275 50  0001 C CNN
F 3 "" H 2175 5275 50  0001 C CNN
	1    2175 5275
	1    0    0    -1  
$EndComp
Text Label 3025 2975 2    50   ~ 0
MISO
Text Label 3025 3075 2    50   ~ 0
SCK
Text Label 3175 4075 2    50   ~ 0
RESET
Text Label 3025 2875 2    50   ~ 0
MOSI
Wire Wire Line
	3025 2875 2775 2875
Wire Wire Line
	3025 2975 2775 2975
Wire Wire Line
	3025 3075 2775 3075
Wire Wire Line
	3175 4075 2775 4075
Text Label 3200 4475 2    50   ~ 0
CAN_INT
Wire Wire Line
	3200 4475 2775 4475
Text Label 3200 4775 2    50   ~ 0
CAN_CS
Wire Wire Line
	3200 4775 2775 4775
$Comp
L Device:Polyfuse F1
U 1 1 5FFB8BBE
P 3800 6825
F 0 "F1" V 3575 6825 50  0000 C CNN
F 1 "MF-MSMF050" V 3650 6900 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 3850 6625 50  0001 L CNN
F 3 "~" H 3800 6825 50  0001 C CNN
	1    3800 6825
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 6825 4050 6825
Wire Wire Line
	3650 6825 3500 6825
$Comp
L Device:R R2
U 1 1 5FFB9FEB
P 5150 6825
F 0 "R2" V 5050 6850 50  0000 C CNN
F 1 "330" V 5150 6825 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5080 6825 50  0001 C CNN
F 3 "~" H 5150 6825 50  0001 C CNN
	1    5150 6825
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5FFBA9DC
P 5450 6825
F 0 "D1" H 5443 6570 50  0000 C CNN
F 1 "LED" H 5443 6661 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5450 6825 50  0001 C CNN
F 3 "~" H 5450 6825 50  0001 C CNN
	1    5450 6825
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FFBBD1B
P 5600 6825
F 0 "#PWR0110" H 5600 6575 50  0001 C CNN
F 1 "GND" H 5605 6652 50  0000 C CNN
F 2 "" H 5600 6825 50  0001 C CNN
F 3 "" H 5600 6825 50  0001 C CNN
	1    5600 6825
	1    0    0    -1  
$EndComp
$Sheet
S 2150 6900 1000 600 
U 5FFC8607
F0 "CAN_Interface" 50
F1 "CAN_Interface.sch" 50
F2 "MOSI" I L 2150 7025 50 
F3 "MISO" I L 2150 7125 50 
F4 "CAN_CS" I L 2150 7225 50 
F5 "SCK" I L 2150 7325 50 
F6 "CAN_INT" I L 2150 7425 50 
F7 "CANH" B R 3150 7050 50 
F8 "CANL" B R 3150 7200 50 
$EndSheet
Text Label 1900 7125 0    50   ~ 0
MISO
Text Label 1900 7325 0    50   ~ 0
SCK
Text Label 1900 7025 0    50   ~ 0
MOSI
Wire Wire Line
	1900 7025 2150 7025
Wire Wire Line
	1900 7125 2150 7125
Wire Wire Line
	1900 7325 2150 7325
Text Label 1825 7225 0    50   ~ 0
CAN_CS
Wire Wire Line
	1825 7225 2150 7225
Text Label 3375 7050 2    50   ~ 0
CANH
Text Label 3375 7200 2    50   ~ 0
CANL
Wire Wire Line
	3375 7050 3150 7050
Wire Wire Line
	3375 7200 3150 7200
$Comp
L Connector_Generic:Conn_01x23 J5
U 1 1 60011986
P 10675 3525
F 0 "J5" H 10755 3567 50  0000 L CNN
F 1 "Conn_01x23" H 10755 3476 50  0000 L CNN
F 2 "AERO_CUSTOM:TE_1-770669-1_23pin_Horizontal" H 10675 3525 50  0001 C CNN
F 3 "~" H 10675 3525 50  0001 C CNN
	1    10675 3525
	1    0    0    -1  
$EndComp
Text Label 3200 3475 2    50   ~ 0
WHEEL_L
Text Label 3200 3575 2    50   ~ 0
WHEEL_R
Wire Wire Line
	2775 3575 3200 3575
Wire Wire Line
	3200 3475 2775 3475
Text Label 3200 3675 2    50   ~ 0
DAMPER_L
Wire Wire Line
	3200 3675 2775 3675
Text Label 3200 3775 2    50   ~ 0
DAMPER_R
Wire Wire Line
	3200 3775 2775 3775
Text Label 3300 4575 2    50   ~ 0
BRAKE_SIG
Wire Wire Line
	3300 4575 2775 4575
Text Label 3300 4675 2    50   ~ 0
FAN_SIG
Wire Wire Line
	3300 4675 2775 4675
Text Label 4500 5250 0    50   ~ 0
BRAKE_SIG
Wire Wire Line
	4500 5250 5025 5250
Text Label 5675 5050 2    50   ~ 0
BRAKE_OUT
Wire Wire Line
	5675 5050 5425 5050
$Comp
L power:GND #PWR0111
U 1 1 600242C5
P 5425 5725
F 0 "#PWR0111" H 5425 5475 50  0001 C CNN
F 1 "GND" H 5430 5552 50  0000 C CNN
F 2 "" H 5425 5725 50  0001 C CNN
F 3 "" H 5425 5725 50  0001 C CNN
	1    5425 5725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60025D9C
P 5025 5475
F 0 "R1" H 5095 5521 50  0000 L CNN
F 1 "10K" H 5095 5430 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4955 5475 50  0001 C CNN
F 3 "~" H 5025 5475 50  0001 C CNN
	1    5025 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 5325 5025 5250
Connection ~ 5025 5250
Wire Wire Line
	5025 5250 5125 5250
Wire Wire Line
	5025 5625 5425 5625
Wire Wire Line
	5425 5450 5425 5625
Connection ~ 5425 5625
Wire Wire Line
	5425 5625 5425 5725
Text Label 6550 5275 0    50   ~ 0
FAN_SIG
Wire Wire Line
	6550 5275 7075 5275
Text Label 7725 5075 2    50   ~ 0
FAN_OUT
Wire Wire Line
	7725 5075 7475 5075
$Comp
L power:GND #PWR0112
U 1 1 6002C7BD
P 7475 5750
F 0 "#PWR0112" H 7475 5500 50  0001 C CNN
F 1 "GND" H 7480 5577 50  0000 C CNN
F 2 "" H 7475 5750 50  0001 C CNN
F 3 "" H 7475 5750 50  0001 C CNN
	1    7475 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6002C7C7
P 7075 5500
F 0 "R3" H 7145 5546 50  0000 L CNN
F 1 "10K" H 7145 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7005 5500 50  0001 C CNN
F 3 "~" H 7075 5500 50  0001 C CNN
	1    7075 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 5350 7075 5275
Connection ~ 7075 5275
Wire Wire Line
	7075 5275 7175 5275
Wire Wire Line
	7075 5650 7475 5650
Wire Wire Line
	7475 5475 7475 5650
Connection ~ 7475 5650
Wire Wire Line
	7475 5650 7475 5750
Text Label 3300 4875 2    50   ~ 0
SENSOR_1
Wire Wire Line
	3300 4875 2775 4875
Text Label 3300 4975 2    50   ~ 0
SENSOR_2
Wire Wire Line
	3300 4975 2775 4975
Text Label 3200 2575 2    50   ~ 0
SENSOR_3
Wire Wire Line
	3200 2575 2775 2575
Text Label 3200 2675 2    50   ~ 0
SENSOR_4
Wire Wire Line
	3200 2675 2775 2675
Text Label 3200 3875 2    50   ~ 0
SENSOR_5
Wire Wire Line
	3200 3875 2775 3875
Text Label 3200 3975 2    50   ~ 0
SENSOR_6
Wire Wire Line
	3200 3975 2775 3975
Text Label 10050 4225 0    50   ~ 0
WHEEL_L
Text Label 10050 4325 0    50   ~ 0
WHEEL_R
Wire Wire Line
	10475 4325 10050 4325
Wire Wire Line
	10050 4225 10475 4225
Text Label 10050 3425 0    50   ~ 0
DAMPER_L
Wire Wire Line
	10050 3425 10475 3425
Text Label 10050 3525 0    50   ~ 0
DAMPER_R
Wire Wire Line
	10050 3525 10475 3525
Text Label 10050 4425 0    50   ~ 0
SENSOR_3
Wire Wire Line
	10050 4425 10475 4425
Text Label 10050 4525 0    50   ~ 0
SENSOR_4
Wire Wire Line
	10050 4525 10475 4525
Text Label 10050 3625 0    50   ~ 0
SENSOR_1
Wire Wire Line
	10050 3625 10475 3625
Text Label 10050 3725 0    50   ~ 0
SENSOR_2
Wire Wire Line
	10050 3725 10475 3725
Text Label 10000 3325 0    50   ~ 0
CANH
Text Label 10000 3225 0    50   ~ 0
CANL
$Comp
L power:+12V #PWR0113
U 1 1 600AA4CA
P 9775 3925
F 0 "#PWR0113" H 9775 3775 50  0001 C CNN
F 1 "+12V" H 9790 4098 50  0000 C CNN
F 2 "" H 9775 3925 50  0001 C CNN
F 3 "" H 9775 3925 50  0001 C CNN
	1    9775 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 3925 10475 3925
$Comp
L power:GND #PWR0114
U 1 1 600B1C71
P 9775 3125
F 0 "#PWR0114" H 9775 2875 50  0001 C CNN
F 1 "GND" H 9780 2952 50  0000 C CNN
F 2 "" H 9775 3125 50  0001 C CNN
F 3 "" H 9775 3125 50  0001 C CNN
	1    9775 3125
	1    0    0    -1  
$EndComp
Text Label 10025 4625 0    50   ~ 0
BRAKE_OUT
Text Label 10025 3825 0    50   ~ 0
FAN_OUT
$Comp
L power:+5V #PWR0115
U 1 1 600C423E
P 9775 2425
F 0 "#PWR0115" H 9775 2275 50  0001 C CNN
F 1 "+5V" H 9790 2598 50  0000 C CNN
F 2 "" H 9775 2425 50  0001 C CNN
F 3 "" H 9775 2425 50  0001 C CNN
	1    9775 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 2525 9775 2425
Connection ~ 9775 2425
Wire Wire Line
	9775 2625 9775 2525
Connection ~ 9775 2525
Wire Wire Line
	9775 2725 9775 2625
Connection ~ 9775 2625
Wire Wire Line
	9775 3025 9775 3125
Connection ~ 9775 3125
Wire Wire Line
	9775 2925 9775 3025
Connection ~ 9775 3025
Wire Wire Line
	9775 2825 9775 2725
Connection ~ 9775 2725
$Comp
L Connector:RJ45 J4
U 1 1 600E8AE7
P 6875 3550
F 0 "J4" H 6545 3554 50  0000 R CNN
F 1 "RJ45" H 6545 3645 50  0000 R CNN
F 2 "AERO_CUSTOM:RJ45_TE_5569284-1-8P8CX_Vertical" V 6875 3575 50  0001 C CNN
F 3 "~" V 6875 3575 50  0001 C CNN
	1    6875 3550
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60111C64
P 6200 2375
F 0 "J2" H 6280 2367 50  0000 L CNN
F 1 "Conn_01x02" H 6280 2276 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6200 2375 50  0001 C CNN
F 3 "~" H 6200 2375 50  0001 C CNN
	1    6200 2375
	1    0    0    -1  
$EndComp
Text Label 5775 2475 0    50   ~ 0
CANH
Text Label 5775 2375 0    50   ~ 0
CANL
Wire Wire Line
	5775 2475 6000 2475
Wire Wire Line
	5775 2375 6000 2375
Wire Wire Line
	6475 3250 5950 3250
Wire Wire Line
	5950 3350 6475 3350
Wire Wire Line
	6475 3450 5950 3450
Wire Wire Line
	5950 3550 6475 3550
Wire Wire Line
	6475 3650 5950 3650
Wire Wire Line
	5950 3750 6475 3750
Wire Wire Line
	6475 3850 5950 3850
Wire Wire Line
	5950 3950 6475 3950
Text Label 6125 3250 0    50   ~ 0
E1_P
Text Label 6125 3350 0    50   ~ 0
E1_N
Text Label 6125 3450 0    50   ~ 0
E2_P
Text Label 6125 3550 0    50   ~ 0
E2_N
Text Label 6125 3650 0    50   ~ 0
E3_P
Text Label 6125 3750 0    50   ~ 0
E3_N
Text Label 6125 3850 0    50   ~ 0
E4_P
Text Label 6125 3950 0    50   ~ 0
E4_N
Text Notes 5975 3000 0    50   ~ 0
PASS THROUGH\nFOR COMPUTER
Text Notes 5850 2225 0    50   ~ 0
CAN BREAKOUT\nFOR CAN-TO-USB\n
Wire Notes Line
	5000 2725 7450 2725
Wire Notes Line
	7450 2725 7450 4175
Wire Notes Line
	7450 4175 5000 4175
Wire Notes Line
	5000 4175 5000 2725
Wire Notes Line
	5700 2050 6775 2050
Wire Notes Line
	6775 2050 6775 2575
Wire Notes Line
	6775 2575 5700 2575
Wire Notes Line
	5700 2575 5700 2050
$Comp
L Mechanical:MountingHole H2
U 1 1 60178799
P 750 6975
F 0 "H2" H 850 7021 50  0000 L CNN
F 1 "MountingHole" H 850 6930 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 750 6975 50  0001 C CNN
F 3 "~" H 750 6975 50  0001 C CNN
	1    750  6975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 60178F9F
P 725 7500
F 0 "H1" H 825 7546 50  0000 L CNN
F 1 "MountingHole" H 825 7455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 725 7500 50  0001 C CNN
F 3 "~" H 725 7500 50  0001 C CNN
	1    725  7500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:PSMN5R2-60YL Q1
U 1 1 5FFDB6AD
P 5325 5250
F 0 "Q1" H 5530 5296 50  0000 L CNN
F 1 "PSMN5R2-60YL" H 5530 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:LFPAK56" H 5475 5250 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PSMN5R2-60YL.pdf" H 5325 5250 50  0001 C CNN
	1    5325 5250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:PSMN5R2-60YL Q2
U 1 1 5FFDE8F8
P 7375 5275
F 0 "Q2" H 7580 5321 50  0000 L CNN
F 1 "PSMN5R2-60YL" H 7580 5230 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:LFPAK56" H 7525 5275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PSMN5R2-60YL.pdf" H 7375 5275 50  0001 C CNN
	1    7375 5275
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J1
U 1 1 6010B6C9
P 5550 3550
F 0 "J1" H 5221 3554 50  0000 R CNN
F 1 "RJ45" H 5221 3645 50  0000 R CNN
F 2 "AERO_CUSTOM:RJ45_TE_5569284-1-8P8CX_Vertical" V 5550 3575 50  0001 C CNN
F 3 "~" V 5550 3575 50  0001 C CNN
	1    5550 3550
	1    0    0    1   
$EndComp
Wire Wire Line
	9775 2925 10475 2925
Wire Wire Line
	9775 3025 10475 3025
Wire Wire Line
	9775 3125 10475 3125
Wire Wire Line
	9775 2825 10475 2825
Wire Wire Line
	9775 2725 10475 2725
Wire Wire Line
	9775 2625 10475 2625
Wire Wire Line
	9775 2525 10475 2525
Wire Wire Line
	9775 2425 10475 2425
Text Label 10025 4025 0    50   ~ 0
CANL
Text Label 10025 4125 0    50   ~ 0
CANH
Wire Wire Line
	10000 3225 10475 3225
Wire Wire Line
	10000 3325 10475 3325
Wire Wire Line
	10025 3825 10475 3825
Wire Wire Line
	10025 4025 10475 4025
Wire Wire Line
	10025 4125 10475 4125
Wire Wire Line
	10025 4625 10475 4625
$EndSCHEMATC
