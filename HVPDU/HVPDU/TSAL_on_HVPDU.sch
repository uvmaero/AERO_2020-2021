EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:GND #PWR0101
U 1 1 604738AF
P 5225 4025
F 0 "#PWR0101" H 5225 3775 50  0001 C CNN
F 1 "GND" H 5230 3852 50  0000 C CNN
F 2 "" H 5225 4025 50  0001 C CNN
F 3 "" H 5225 4025 50  0001 C CNN
	1    5225 4025
	1    0    0    -1  
$EndComp
Text Label 5225 2675 1    50   ~ 0
HV_ON
$Comp
L Device:R R5
U 1 1 604738B2
P 7500 3050
F 0 "R5" V 7400 3050 50  0000 C CNN
F 1 "10k" V 7500 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 3050 50  0001 C CNN
F 3 "~" H 7500 3050 50  0001 C CNN
	1    7500 3050
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 604738B1
P 7950 3450
F 0 "Q1" H 8154 3496 50  0000 L CNN
F 1 "040N03LG" H 8154 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 8150 3550 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Infineon%20PDFs/IPD040N03LG_rev1.01.pdf" H 7950 3450 50  0001 C CNN
	1    7950 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 604738B3
P 8050 3750
F 0 "#PWR0102" H 8050 3500 50  0001 C CNN
F 1 "GND" H 8055 3577 50  0000 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
Text Label 8650 2850 0    50   ~ 0
RED_ON
Wire Wire Line
	4725 3350 4400 3350
Wire Wire Line
	4400 3350 4400 2750
Wire Wire Line
	4400 2750 5225 2750
Connection ~ 5225 2750
Text Label 4500 2950 0    50   ~ 0
pass
Text Label 5775 3400 0    50   ~ 0
pass
$Comp
L Device:R R4
U 1 1 5F99A37B
P 6225 3250
F 0 "R4" H 6295 3296 50  0000 L CNN
F 1 "235k" H 6295 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6155 3250 50  0001 C CNN
F 3 "~" H 6225 3250 50  0001 C CNN
	1    6225 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F99ABB4
P 6225 2950
F 0 "R3" H 6295 2996 50  0000 L CNN
F 1 "100k" H 6295 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6155 2950 50  0001 C CNN
F 3 "~" H 6225 2950 50  0001 C CNN
	1    6225 2950
	1    0    0    -1  
$EndComp
Connection ~ 6225 3100
Wire Wire Line
	6225 2800 6225 2750
Wire Wire Line
	6225 2750 5225 2750
Wire Wire Line
	5725 3150 5725 3100
Wire Wire Line
	5725 3100 6225 3100
Wire Wire Line
	5725 3400 5725 3350
Wire Wire Line
	5725 3400 6225 3400
Text Label 6100 2950 2    50   ~ 0
555_OUT
Wire Wire Line
	6100 2950 5725 2950
Text Label 7000 3050 0    50   ~ 0
555_OUT
Wire Wire Line
	7000 3050 7350 3050
$Comp
L power:VCC #PWR0104
U 1 1 604738B0
P 5225 2225
F 0 "#PWR0104" H 5225 2075 50  0001 C CNN
F 1 "VCC" H 5240 2398 50  0000 C CNN
F 2 "" H 5225 2225 50  0001 C CNN
F 3 "" H 5225 2225 50  0001 C CNN
	1    5225 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 2975 2450 2975
$Comp
L power:GND #PWR0106
U 1 1 5F9B2348
P 2450 3750
F 0 "#PWR0106" H 2450 3500 50  0001 C CNN
F 1 "GND" H 2455 3577 50  0000 C CNN
F 2 "" H 2450 3750 50  0001 C CNN
F 3 "" H 2450 3750 50  0001 C CNN
	1    2450 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F9B2DED
P 2450 3450
F 0 "R2" H 2520 3496 50  0000 L CNN
F 1 "10k" H 2520 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2380 3450 50  0001 C CNN
F 3 "~" H 2450 3450 50  0001 C CNN
	1    2450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3600 2450 3750
Wire Wire Line
	2450 3175 2450 3300
$Comp
L power:VCC #PWR0107
U 1 1 604738B9
P 2850 3175
F 0 "#PWR0107" H 2850 3025 50  0001 C CNN
F 1 "VCC" H 2865 3348 50  0000 C CNN
F 2 "" H 2850 3175 50  0001 C CNN
F 3 "" H 2850 3175 50  0001 C CNN
	1    2850 3175
	1    0    0    -1  
$EndComp
Text Label 2775 3175 2    50   ~ 0
HV_ON
Wire Wire Line
	2450 3175 2850 3175
$Comp
L Device:C C2
U 1 1 604738BC
P 5725 3725
F 0 "C2" H 5840 3771 50  0000 L CNN
F 1 "1u" H 5840 3680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5763 3575 50  0001 C CNN
F 3 "~" H 5725 3725 50  0001 C CNN
	1    5725 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 3875 5225 3875
Wire Wire Line
	5225 3550 5225 3875
Connection ~ 5225 3875
Wire Wire Line
	5225 3875 5225 4025
Wire Wire Line
	5725 3575 5725 3400
Connection ~ 5725 3400
$Comp
L Device:C C1
U 1 1 604738BD
P 4650 3675
F 0 "C1" H 4765 3721 50  0000 L CNN
F 1 "0.1u" H 4765 3630 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4688 3525 50  0001 C CNN
F 3 "~" H 4650 3675 50  0001 C CNN
	1    4650 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3525 4650 3150
Wire Wire Line
	4650 3150 4725 3150
Wire Wire Line
	4650 3825 4650 3875
Wire Wire Line
	4650 3875 5225 3875
$Comp
L Device:R R1
U 1 1 5F9B78C3
P 1850 2550
F 0 "R1" H 1780 2504 50  0000 R CNN
F 1 "39k" H 1780 2595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P30.48mm_Horizontal" V 1780 2550 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    1   
$EndComp
Wire Wire Line
	1850 2700 1850 2975
Text Label 1450 3175 0    50   ~ 0
TSAL_TSV-
Wire Notes Line width 20
	2200 4325 2200 1400
Wire Notes Line width 20
	2200 1400 975  1400
Wire Notes Line width 20
	975  1400 975  4325
Wire Notes Line width 20
	975  4325 2200 4325
Text Notes 1225 1800 0    71   ~ 14
High Voltage
Wire Wire Line
	4500 2950 4725 2950
$Comp
L Isolator:LTV-817S U3
U 1 1 5F9DE7CE
P 2150 3075
F 0 "U3" H 2150 3400 50  0000 C CNN
F 1 "LTV-817S" H 2150 3309 50  0000 C CNN
F 2 "Package_DIP:SMDIP-4_W9.53mm" H 2150 2775 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 1800 3375 50  0001 C CNN
	1    2150 3075
	1    0    0    -1  
$EndComp
Connection ~ 2450 3175
$Comp
L Device:R R6
U 1 1 604738C2
P 8275 3600
F 0 "R6" V 8175 3600 50  0000 C CNN
F 1 "0.75" V 8275 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 8205 3600 50  0001 C CNN
F 3 "~" H 8275 3600 50  0001 C CNN
	1    8275 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 2275 1850 2400
Wire Wire Line
	1850 3175 1400 3175
Wire Wire Line
	1375 2275 1850 2275
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5FA4B7C9
P 8175 3050
F 0 "Q2" H 8379 3096 50  0000 L CNN
F 1 "040N03LG" H 8379 3005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 8375 3150 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Infineon%20PDFs/IPD040N03LG_rev1.01.pdf" H 8175 3050 50  0001 C CNN
	1    8175 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3450 8275 3450
Wire Wire Line
	8275 3450 8275 3250
Connection ~ 8275 3450
Wire Wire Line
	8275 3750 8050 3750
Wire Wire Line
	7850 3750 7850 3650
Connection ~ 8050 3750
Wire Wire Line
	8050 3750 7850 3750
Wire Wire Line
	8275 2850 9000 2850
Wire Wire Line
	7650 3050 7850 3050
Wire Wire Line
	7850 3250 7850 3050
Connection ~ 7850 3050
Wire Wire Line
	7850 3050 7975 3050
Text Notes 7875 2775 0    50   ~ 0
CC Output
Text Notes 8525 3675 0    50   ~ 0
Change R6 for \nCurrent Rating
Text Notes 8875 2700 0    50   ~ 0
To AMPSEAL\nfor TSAL Red Out
$Comp
L Device:C C3
U 1 1 5FACE85F
P 4700 2375
F 0 "C3" H 4815 2421 50  0000 L CNN
F 1 "0.1u" H 4815 2330 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4738 2225 50  0001 C CNN
F 3 "~" H 4700 2375 50  0001 C CNN
	1    4700 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 2225 4700 2225
Wire Wire Line
	5225 2225 5225 2750
Connection ~ 5225 2225
$Comp
L power:GND #PWR0110
U 1 1 604738C6
P 4700 2525
F 0 "#PWR0110" H 4700 2275 50  0001 C CNN
F 1 "GND" H 4705 2352 50  0000 C CNN
F 2 "" H 4700 2525 50  0001 C CNN
F 3 "" H 4700 2525 50  0001 C CNN
	1    4700 2525
	1    0    0    -1  
$EndComp
$Comp
L HVPDU-rescue:LM555-Timer-HVPDU-rescue U2
U 1 1 60474D31
P 5225 3150
F 0 "U2" H 5225 3731 50  0000 C CNN
F 1 "LM555" H 5225 3640 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5225 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 5225 3150 50  0001 C CNN
	1    5225 3150
	1    0    0    -1  
$EndComp
Text HLabel 9000 2850 2    50   Output ~ 0
RED_GND
Text Label 1425 2275 0    50   ~ 0
TSAL_TSV+
Text HLabel 1375 2275 0    50   Input ~ 0
TSV+_IN
Text HLabel 1400 3175 0    50   Input ~ 0
TSV-_IN
Text Label 3050 2875 2    50   ~ 0
12V_DCDC
Wire Wire Line
	3050 2875 2625 2875
Wire Wire Line
	2625 2875 2625 2975
Text HLabel 3050 2875 2    50   Input ~ 0
DCDC_12V+
Text HLabel 2575 3750 2    50   BiDi ~ 0
GND
Wire Wire Line
	2575 3750 2450 3750
Connection ~ 2450 3750
$EndSCHEMATC
