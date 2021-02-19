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
$Comp
L HVPDU-rescue:Vicor_AERO-AERO_custom_symbols U1
U 1 1 602D975A
P 2600 1625
F 0 "U1" H 2600 1690 50  0000 C CNN
F 1 "Vicor_AERO" H 2600 1599 50  0000 C CNN
F 2 "AERO-footprints:vicor-socket-no-cutouts" H 2600 1625 50  0001 C CNN
F 3 "" H 2600 1625 50  0001 C CNN
	1    2600 1625
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 602DA8B7
P 1200 4050
F 0 "J1" H 1325 4050 50  0000 C CNN
F 1 "TE_Connector" H 1175 3825 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770870-x_1x03_P4.14mm_Vertical" H 1200 4050 50  0001 C CNN
F 3 "~" H 1200 4050 50  0001 C CNN
	1    1200 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 602DC036
P 2400 4325
F 0 "F1" V 2203 4325 50  0000 C CNN
F 1 "0ADK-2.5A" V 2294 4325 50  0000 C CNN
F 2 "AERO-footprints:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open_3d" V 2330 4325 50  0001 C CNN
F 3 "~" H 2400 4325 50  0001 C CNN
	1    2400 4325
	0    1    1    0   
$EndComp
Text Label 1750 2425 0    50   ~ 0
TSV-
Text Label 1750 1825 0    50   ~ 0
TSV+
Text Notes 3000 4375 0    50   ~ 0
TSAL power\ntake off\n(Fused)\n
Text Label 2975 4325 2    50   ~ 0
TSAL_TSV+
Wire Wire Line
	2975 4325 2550 4325
Wire Wire Line
	1750 2425 2100 2425
Wire Wire Line
	1750 1825 2100 1825
Text Label 3775 2325 2    50   ~ 0
-DCDC_OUT
Text Label 3775 1975 2    50   ~ 0
+DCDC_OUT
$Comp
L Connector_Generic:Conn_01x14 J5
U 1 1 602FF9BA
P 10075 4450
F 0 "J5" H 10225 5325 50  0000 L CNN
F 1 "Conn_01x14" H 10100 5200 50  0000 L CNN
F 2 "AERO-footprints:TE_1-776262-1_14pin_Vertical" H 10075 4450 50  0001 C CNN
F 3 "~" H 10075 4450 50  0001 C CNN
	1    10075 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 60303D91
P 9425 3850
F 0 "#PWR0103" H 9425 3700 50  0001 C CNN
F 1 "+12V" H 9440 4023 50  0000 C CNN
F 2 "" H 9425 3850 50  0001 C CNN
F 3 "" H 9425 3850 50  0001 C CNN
	1    9425 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9875 3950 9425 3950
Wire Wire Line
	9425 3950 9425 3850
Wire Wire Line
	9875 3850 9425 3850
Connection ~ 9425 3850
$Comp
L power:GND #PWR0105
U 1 1 60304C22
P 9325 5150
F 0 "#PWR0105" H 9325 4900 50  0001 C CNN
F 1 "GND" H 9330 4977 50  0000 C CNN
F 2 "" H 9325 5150 50  0001 C CNN
F 3 "" H 9325 5150 50  0001 C CNN
	1    9325 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9325 5150 9875 5150
Wire Wire Line
	9875 5050 9325 5050
Wire Wire Line
	9325 5050 9325 5150
Connection ~ 9325 5150
Text Label 1750 4675 0    50   ~ 0
TSV-
Text Notes 3700 4375 0    50   ~ 0
TSMP Take off
Text Label 1775 4150 0    50   ~ 0
TSV+
$Comp
L Device:R R7
U 1 1 6031BD42
P 2400 4000
F 0 "R7" V 2193 4000 50  0000 C CNN
F 1 "10k" V 2284 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L50.0mm_W9.0mm_P55.88mm" V 2330 4000 50  0001 C CNN
F 3 "~" H 2400 4000 50  0001 C CNN
	1    2400 4000
	0    1    1    0   
$EndComp
Text Notes 2100 5125 0    50   ~ 0
Wirewound Resistor\nPower rating >=18W \n2*(300^2)/R
$Comp
L Device:R R8
U 1 1 6031D07D
P 2400 4675
F 0 "R8" V 2193 4675 50  0000 C CNN
F 1 "10k" V 2284 4675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L50.0mm_W9.0mm_P55.88mm" V 2330 4675 50  0001 C CNN
F 3 "~" H 2400 4675 50  0001 C CNN
	1    2400 4675
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 60322147
P 10500 2650
F 0 "J7" H 10418 2225 50  0000 C CNN
F 1 "Conn_01x05" H 10418 2316 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B5B-PH-K_1x05_P2.00mm_Vertical" H 10500 2650 50  0001 C CNN
F 3 "~" H 10500 2650 50  0001 C CNN
	1    10500 2650
	1    0    0    -1  
$EndComp
Text Notes 10425 2200 2    50   ~ 0
IMD Connector
Text Label 9750 2450 0    50   ~ 0
GND_Electric
Wire Wire Line
	9750 2450 10300 2450
Text Label 9775 2650 0    50   ~ 0
GND_Supply
$Comp
L power:GND #PWR0108
U 1 1 60328057
P 9175 2650
F 0 "#PWR0108" H 9175 2400 50  0001 C CNN
F 1 "GND" H 9180 2477 50  0000 C CNN
F 2 "" H 9175 2650 50  0001 C CNN
F 3 "" H 9175 2650 50  0001 C CNN
	1    9175 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 2650 9175 2650
Text Label 9825 2550 0    50   ~ 0
+12_Supply
$Comp
L power:+12V #PWR0109
U 1 1 60329C5E
P 9425 2400
F 0 "#PWR0109" H 9425 2250 50  0001 C CNN
F 1 "+12V" H 9440 2573 50  0000 C CNN
F 2 "" H 9425 2400 50  0001 C CNN
F 3 "" H 9425 2400 50  0001 C CNN
	1    9425 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9425 2400 9550 2400
Wire Wire Line
	9550 2400 9550 2550
Wire Wire Line
	10300 2550 9550 2550
Text Label 9775 2750 0    50   ~ 0
GND_Chassis
Wire Wire Line
	9775 2750 10300 2750
Text Label 9800 2850 0    50   ~ 0
Fault_IND
Wire Wire Line
	9800 2850 10300 2850
Text Label 3000 4000 2    50   ~ 0
TSV+_TSMP
Text Label 3000 4675 2    50   ~ 0
TSV-_TSMP
Wire Wire Line
	2075 4325 2250 4325
Wire Wire Line
	2075 4000 2250 4000
Text Label 9425 4050 0    50   ~ 0
Fault_IND
Wire Wire Line
	9425 4050 9875 4050
Text Label 9325 4950 0    50   ~ 0
GND_Electric
Wire Wire Line
	9325 4950 9875 4950
Text Label 9350 4850 0    50   ~ 0
GND_Chassis
Wire Wire Line
	9350 4850 9875 4850
Wire Wire Line
	2075 4000 2075 4150
Connection ~ 2075 4150
Wire Wire Line
	2075 4150 2075 4325
Wire Wire Line
	1400 4150 2075 4150
Text Notes 5825 6950 0    50   ~ 0
M3 Mounting Holes
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 603DEBD0
P 10475 1500
F 0 "J6" H 10393 1075 50  0000 C CNN
F 1 "Conn_01x05" H 10393 1166 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B5B-PH-K_1x05_P2.00mm_Vertical" H 10475 1500 50  0001 C CNN
F 3 "~" H 10475 1500 50  0001 C CNN
	1    10475 1500
	1    0    0    -1  
$EndComp
Text Notes 9975 1000 0    50   ~ 0
EMUS Current Sensor
$Comp
L power:+5V #PWR0111
U 1 1 603E0881
P 9925 1300
F 0 "#PWR0111" H 9925 1150 50  0001 C CNN
F 1 "+5V" H 9940 1473 50  0000 C CNN
F 2 "" H 9925 1300 50  0001 C CNN
F 3 "" H 9925 1300 50  0001 C CNN
	1    9925 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9925 1300 10275 1300
$Comp
L power:GNDREF #PWR0112
U 1 1 603E2F52
P 9925 1700
F 0 "#PWR0112" H 9925 1450 50  0001 C CNN
F 1 "GNDREF" H 9930 1527 50  0000 C CNN
F 2 "" H 9925 1700 50  0001 C CNN
F 3 "" H 9925 1700 50  0001 C CNN
	1    9925 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9925 1700 10275 1700
Text Notes 10575 1550 0    50   ~ 0
Power directly\nfrom BMS\n
Text Label 9925 1400 0    50   ~ 0
INPUT1
Text Label 9925 1500 0    50   ~ 0
INPUT2
Text Label 9925 1600 0    50   ~ 0
Input3
Wire Wire Line
	9925 1600 10275 1600
Wire Wire Line
	9925 1500 10275 1500
Wire Wire Line
	9925 1400 10275 1400
$Comp
L power:+5V #PWR0113
U 1 1 603F51D0
P 9200 4150
F 0 "#PWR0113" H 9200 4000 50  0001 C CNN
F 1 "+5V" H 9215 4323 50  0000 C CNN
F 2 "" H 9200 4150 50  0001 C CNN
F 3 "" H 9200 4150 50  0001 C CNN
	1    9200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0114
U 1 1 603F51DB
P 9025 4550
F 0 "#PWR0114" H 9025 4300 50  0001 C CNN
F 1 "GNDREF" H 9030 4377 50  0000 C CNN
F 2 "" H 9025 4550 50  0001 C CNN
F 3 "" H 9025 4550 50  0001 C CNN
	1    9025 4550
	1    0    0    -1  
$EndComp
Text Label 9525 4250 0    50   ~ 0
INPUT1
Text Label 9525 4350 0    50   ~ 0
INPUT2
Text Label 9525 4450 0    50   ~ 0
Input3
Wire Wire Line
	9525 4450 9875 4450
Wire Wire Line
	9525 4350 9875 4350
Wire Wire Line
	9525 4250 9875 4250
Wire Wire Line
	9025 4550 9875 4550
Wire Wire Line
	9200 4150 9875 4150
Text Notes 8975 4375 0    50   ~ 0
PWR / Signal\nfrom BMS
$Sheet
S 6025 1525 1200 650 
U 60471413
F0 "TSAL_on_HVPDU" 50
F1 "TSAL_on_HVPDU.sch" 50
F2 "RED_GND" O R 7225 2050 50 
F3 "TSV+_IN" I L 6025 1675 50 
F4 "TSV-_IN" I L 6025 2025 50 
F5 "DCDC_12V+" I R 7225 1650 50 
F6 "GND" B R 7225 1775 50 
$EndSheet
$Comp
L power:GND #PWR0115
U 1 1 604AA1AA
P 3800 2500
F 0 "#PWR0115" H 3800 2250 50  0001 C CNN
F 1 "GND" H 3805 2327 50  0000 C CNN
F 2 "" H 3800 2500 50  0001 C CNN
F 3 "" H 3800 2500 50  0001 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2500 3800 2325
Text Notes 3625 2900 0    50   ~ 0
Reference DCDC \noutput gnd to frame
Text Notes 1250 4425 0    50   ~ 0
Input from\nHV Lines
Text Label 5575 1675 0    50   ~ 0
TSAL_TSV+
Wire Wire Line
	5575 1675 6025 1675
Text Label 5575 2025 0    50   ~ 0
TSV-
Wire Wire Line
	5575 2025 6025 2025
Text Notes 5025 1900 0    50   ~ 0
TSAL Must be powered\ndirectly from TSV
Text Label 7725 1775 2    50   ~ 0
-DCDC_OUT
Wire Wire Line
	7725 1775 7225 1775
Text Label 7725 1650 2    50   ~ 0
+DCDC_OUT
Wire Wire Line
	7725 1650 7225 1650
Text Notes 7325 1550 0    50   ~ 0
TSAL Must be powered\ndirectly from TSV.\nEven LV side
Text Label 7750 2050 2    50   ~ 0
RED_ON_GND
Wire Wire Line
	7750 2050 7225 2050
Text Notes 7325 2225 0    50   ~ 0
Blink Blink GND\nfor TSAL
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 604CD2B6
P 3825 4000
F 0 "J3" H 3950 4000 50  0000 C CNN
F 1 "DF22" H 3825 3850 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63M-1P-3.96DSA_1x01_P3.96mm_Vertical" H 3825 4000 50  0001 C CNN
F 3 "~" H 3825 4000 50  0001 C CNN
	1    3825 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4000 3625 4000
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 604CEFDC
P 3825 4675
F 0 "J4" H 3925 4700 50  0000 L CNN
F 1 "DF22" H 3725 4550 50  0000 L CNN
F 2 "Connector_Hirose:Hirose_DF63M-1P-3.96DSA_1x01_P3.96mm_Vertical" H 3825 4675 50  0001 C CNN
F 3 "~" H 3825 4675 50  0001 C CNN
	1    3825 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4675 3625 4675
Wire Notes Line width 39
	2575 1125 2575 3350
Wire Notes Line width 39
	2575 3350 4600 3350
Wire Notes Line width 39
	4600 3350 4600 5450
Wire Notes Line width 39
	4600 5450 875  5450
Wire Notes Line width 39
	875  5450 875  1125
Wire Notes Line width 39
	875  1125 2575 1125
Text Notes 1625 1375 0    126  ~ 25
HV
$Comp
L Mechanical:MountingHole H7
U 1 1 6053B447
P 6300 7625
F 0 "H7" H 6400 7671 50  0000 L CNN
F 1 "M3" H 6400 7580 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 7625 50  0001 C CNN
F 3 "~" H 6300 7625 50  0001 C CNN
	1    6300 7625
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 6053BEC8
P 5850 7225
F 0 "H5" H 5950 7271 50  0000 L CNN
F 1 "M3" H 5950 7180 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5850 7225 50  0001 C CNN
F 3 "~" H 5850 7225 50  0001 C CNN
	1    5850 7225
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 6053BED2
P 5850 7625
F 0 "H6" H 5950 7671 50  0000 L CNN
F 1 "M3" H 5950 7580 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5850 7625 50  0001 C CNN
F 3 "~" H 5850 7625 50  0001 C CNN
	1    5850 7625
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 6054BC94
P 1200 4775
F 0 "J2" H 1325 4775 50  0000 C CNN
F 1 "TE_Connector" H 1175 4550 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_MATE-N-LOK_1-770870-x_1x03_P4.14mm_Vertical" H 1200 4775 50  0001 C CNN
F 3 "~" H 1200 4775 50  0001 C CNN
	1    1200 4775
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 4675 2250 4675
Text Label 1825 4050 2    50   ~ 0
IMD_TSV+
Wire Wire Line
	1825 4050 1400 4050
Text Label 1825 4775 2    50   ~ 0
IMD_TSV-
Wire Wire Line
	1825 4775 1400 4775
Text Label 1825 4875 2    50   ~ 0
SPARE
Wire Wire Line
	1825 4875 1400 4875
Text Label 1825 3950 2    50   ~ 0
SPARE
Wire Wire Line
	1825 3950 1400 3950
Text Label 9375 4650 0    50   ~ 0
+DCDC_OUT
Text Label 9375 4750 0    50   ~ 0
+DCDC_OUT
Wire Wire Line
	9375 4750 9875 4750
Wire Wire Line
	9875 4650 9375 4650
Text Notes 10200 4650 0    50   ~ 0
DCDC+ MUST BE \nGOLD PLATED\nFOR CURRENT RATING
Text Notes 10200 5025 0    50   ~ 0
GND MUST BE\nGOLD PLATED\nFOR CURRENT RATING
$Comp
L Mechanical:MountingHole H8
U 1 1 605885E7
P 6300 7250
F 0 "H8" H 6400 7296 50  0000 L CNN
F 1 "M3" H 6400 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6300 7250 50  0001 C CNN
F 3 "~" H 6300 7250 50  0001 C CNN
	1    6300 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1975 3775 1975
Wire Wire Line
	3100 2325 3800 2325
Text Notes 900  7025 0    50   ~ 0
TODO: \nAdd trim, enable and fault\nto DCDC
$EndSCHEMATC
