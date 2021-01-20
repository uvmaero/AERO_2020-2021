EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Device:Fuse F?
U 1 1 5FA581EB
P 3450 2350
AR Path="/5FA581EB" Ref="F?"  Part="1" 
AR Path="/5FA4E758/5FA581EB" Ref="F2"  Part="1" 
F 0 "F2" V 3253 2350 50  0000 C CNN
F 1 "1A 300VDC" V 3344 2350 50  0000 C CNN
F 2 "AERO_CUSTOM:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open_3d" V 3380 2350 50  0001 C CNN
F 3 "~" H 3450 2350 50  0001 C CNN
	1    3450 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FA581F1
P 3500 3450
AR Path="/5FA581F1" Ref="R?"  Part="1" 
AR Path="/5FA4E758/5FA581F1" Ref="R1"  Part="1" 
F 0 "R1" V 3293 3450 50  0000 C CNN
F 1 "R" V 3384 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3430 3450 50  0001 C CNN
F 3 "~" H 3500 3450 50  0001 C CNN
	1    3500 3450
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-1 K?
U 1 1 5FA581F7
P 4125 2850
AR Path="/5FA581F7" Ref="K?"  Part="1" 
AR Path="/5FA4E758/5FA581F7" Ref="K1"  Part="1" 
F 0 "K1" H 3695 2896 50  0000 R CNN
F 1 "G2RL" H 3695 2805 50  0000 R CNN
F 2 "AERO_CUSTOM:G2RL" H 5255 2820 50  0001 C CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 4125 2850 50  0001 C CNN
	1    4125 2850
	-1   0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5FA581FD
P 3450 1975
AR Path="/5FA581FD" Ref="F?"  Part="1" 
AR Path="/5FA4E758/5FA581FD" Ref="F1"  Part="1" 
F 0 "F1" V 3253 1975 50  0000 C CNN
F 1 "1A 300VDC" V 3344 1975 50  0000 C CNN
F 2 "AERO_CUSTOM:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open_3d" V 3380 1975 50  0001 C CNN
F 3 "~" H 3450 1975 50  0001 C CNN
	1    3450 1975
	0    1    1    0   
$EndComp
Wire Wire Line
	4025 2550 4025 1975
Wire Wire Line
	4025 1975 3600 1975
$Comp
L Relay:G5V-1 K?
U 1 1 5FA58209
P 4200 5650
AR Path="/5FA58209" Ref="K?"  Part="1" 
AR Path="/5FA4E758/5FA58209" Ref="K2"  Part="1" 
F 0 "K2" H 3770 5696 50  0000 R CNN
F 1 "G5V-1" H 3770 5605 50  0000 R CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G5V-1" H 5330 5620 50  0001 C CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 4200 5650 50  0001 C CNN
	1    4200 5650
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5FA589A1
P 2300 1975
F 0 "J1" H 2218 1750 50  0000 C CNN
F 1 "DF22-1P-7.92DSA(05)" H 2218 1841 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63R-1P-3.96DSA_1x01_P3.96mm_Vertical" H 2300 1975 50  0001 C CNN
F 3 "~" H 2300 1975 50  0001 C CNN
	1    2300 1975
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5FA59BC5
P 2300 3450
F 0 "J3" H 2218 3225 50  0000 C CNN
F 1 "DF22-1P-7.92DSA(05)" H 2218 3316 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63R-1P-3.96DSA_1x01_P3.96mm_Vertical" H 2300 3450 50  0001 C CNN
F 3 "~" H 2300 3450 50  0001 C CNN
	1    2300 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5FA5A5E5
P 2300 2350
F 0 "J2" H 2218 2125 50  0000 C CNN
F 1 "DF22-1P-7.92DSA(05)" H 2218 2216 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63R-1P-3.96DSA_1x01_P3.96mm_Vertical" H 2300 2350 50  0001 C CNN
F 3 "~" H 2300 2350 50  0001 C CNN
	1    2300 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3925 3450 3650 3450
Wire Wire Line
	3925 3150 3925 3450
Wire Wire Line
	3825 2550 3825 2350
Wire Wire Line
	3825 2350 3600 2350
Wire Wire Line
	3300 1975 2500 1975
Wire Wire Line
	3300 2350 2500 2350
Wire Wire Line
	3350 3450 2500 3450
$Comp
L Device:D D1
U 1 1 5FA71ADD
P 5000 2850
F 0 "D1" V 4954 2930 50  0000 L CNN
F 1 "D" V 5045 2930 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5000 2850 50  0001 C CNN
F 3 "~" H 5000 2850 50  0001 C CNN
	1    5000 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4325 3150 4325 3300
Wire Wire Line
	4325 3300 5000 3300
Wire Wire Line
	5000 3300 5000 3000
Wire Wire Line
	4325 2550 4325 2350
Wire Wire Line
	4325 2350 5000 2350
Wire Wire Line
	5000 2350 5000 2700
Text HLabel 5225 2350 2    50   Input ~ 0
SHDN_IN
Wire Wire Line
	5225 2350 5000 2350
Connection ~ 5000 2350
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 5FA7B6ED
P 4425 3650
F 0 "Q1" H 4616 3696 50  0000 L CNN
F 1 "MMBT2222A" H 4616 3605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4625 3750 50  0001 C CNN
F 3 "~" H 4425 3650 50  0001 C CNN
	1    4425 3650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FA7C35B
P 4775 3650
F 0 "R2" V 4568 3650 50  0000 C CNN
F 1 "R" V 4659 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4705 3650 50  0001 C CNN
F 3 "~" H 4775 3650 50  0001 C CNN
	1    4775 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FA7C7E5
P 4925 4000
F 0 "R3" H 4995 4046 50  0000 L CNN
F 1 "R" H 4995 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4855 4000 50  0001 C CNN
F 3 "~" H 4925 4000 50  0001 C CNN
	1    4925 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 3650 4925 3850
Wire Wire Line
	4325 3850 4325 4150
Wire Wire Line
	4325 4150 4925 4150
Wire Wire Line
	4325 3450 4325 3300
Connection ~ 4325 3300
Wire Wire Line
	4925 3650 5200 3650
Connection ~ 4925 3650
Text HLabel 5200 3650 2    50   Input ~ 0
PRECHARGE
Text HLabel 3725 5000 0    50   Input ~ 0
SHDN_IN
Wire Wire Line
	4000 6200 4000 5950
Wire Wire Line
	3725 5000 3900 5000
Wire Wire Line
	3900 5000 3900 5350
Text Label 3700 6200 0    50   ~ 0
AIR_B+
Wire Wire Line
	3700 6200 4000 6200
Text HLabel 5175 5150 2    50   Input ~ 0
MAIN_CONT
Wire Wire Line
	4400 5150 4400 5350
Wire Wire Line
	4400 5150 5050 5150
$Comp
L Device:D D2
U 1 1 5FA97C24
P 5050 5650
F 0 "D2" V 5004 5730 50  0000 L CNN
F 1 "D" V 5095 5730 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5050 5650 50  0001 C CNN
F 3 "~" H 5050 5650 50  0001 C CNN
	1    5050 5650
	0    1    1    0   
$EndComp
Connection ~ 5050 5150
Wire Wire Line
	5050 5150 5175 5150
Wire Wire Line
	5050 5800 5050 6125
Wire Wire Line
	5050 6125 4400 6125
Wire Wire Line
	4400 6125 4400 5950
$Comp
L power:GND #PWR0101
U 1 1 5FA98EB8
P 4400 6125
F 0 "#PWR0101" H 4400 5875 50  0001 C CNN
F 1 "GND" H 4405 5952 50  0000 C CNN
F 2 "" H 4400 6125 50  0001 C CNN
F 3 "" H 4400 6125 50  0001 C CNN
	1    4400 6125
	1    0    0    -1  
$EndComp
Connection ~ 4400 6125
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FA9D276
P 8825 2775
F 0 "J4" H 8905 2767 50  0000 L CNN
F 1 "JST PH" H 8905 2676 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 8825 2775 50  0001 C CNN
F 3 "~" H 8825 2775 50  0001 C CNN
	1    8825 2775
	1    0    0    -1  
$EndComp
Text Label 7800 2675 0    50   ~ 0
AIR_B-
Text Label 7800 2775 0    50   ~ 0
AIR_B+
Text HLabel 7575 2675 0    50   Input ~ 0
SHDN_IN
Wire Wire Line
	7575 2675 8150 2675
Wire Wire Line
	7800 2775 8350 2775
Wire Wire Line
	8625 2875 8550 2875
Wire Wire Line
	8550 2875 8550 2975
Wire Wire Line
	8550 2975 8625 2975
$Comp
L power:GND #PWR0102
U 1 1 5FAA23F0
P 8250 3475
F 0 "#PWR0102" H 8250 3225 50  0001 C CNN
F 1 "GND" H 8255 3302 50  0000 C CNN
F 2 "" H 8250 3475 50  0001 C CNN
F 3 "" H 8250 3475 50  0001 C CNN
	1    8250 3475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FAA2885
P 8550 3375
F 0 "#PWR0103" H 8550 3125 50  0001 C CNN
F 1 "GND" H 8555 3202 50  0000 C CNN
F 2 "" H 8550 3375 50  0001 C CNN
F 3 "" H 8550 3375 50  0001 C CNN
	1    8550 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2975 8550 3375
Connection ~ 8550 2975
Wire Wire Line
	8250 3475 8250 3350
Wire Wire Line
	8150 2950 8150 2675
Connection ~ 8150 2675
Wire Wire Line
	8150 2675 8625 2675
Wire Wire Line
	8350 2950 8350 2775
Connection ~ 8350 2775
Wire Wire Line
	8350 2775 8625 2775
Wire Wire Line
	5050 5150 5050 5500
$Comp
L Diode:MMBZxx D3
U 1 1 601F4E4A
P 8250 3150
F 0 "D3" H 7950 3225 50  0000 L CNN
F 1 "MMBZxx" H 7775 3100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8400 3050 50  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBZ5V6ALT1-D.PDF" V 8150 3150 50  0001 C CNN
	1    8250 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
