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
L Interface_CAN_LIN:MCP2515-xSO U?
U 1 1 5FFBACF4
P 4425 4050
F 0 "U?" H 4900 4950 50  0000 C CNN
F 1 "MCP2515-xSO" H 4925 4850 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 4425 3150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 4525 3250 50  0001 C CNN
	1    4425 4050
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U?
U 1 1 5FFBACF5
P 6525 3650
F 0 "U?" H 6950 4150 50  0000 C CNN
F 1 "MCP2551-I-SN" H 6900 4050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6525 3150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 6525 3650 50  0001 C CNN
	1    6525 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6011BDC8
P 4425 2775
F 0 "#PWR?" H 4425 2625 50  0001 C CNN
F 1 "+5V" H 4440 2948 50  0000 C CNN
F 2 "" H 4425 2775 50  0001 C CNN
F 3 "" H 4425 2775 50  0001 C CNN
	1    4425 2775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6011BDC9
P 4425 4850
F 0 "#PWR?" H 4425 4600 50  0001 C CNN
F 1 "GND" H 4430 4677 50  0000 C CNN
F 2 "" H 4425 4850 50  0001 C CNN
F 3 "" H 4425 4850 50  0001 C CNN
	1    4425 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6011BDCA
P 5450 4650
F 0 "#PWR?" H 5450 4500 50  0001 C CNN
F 1 "+5V" H 5465 4823 50  0000 C CNN
F 2 "" H 5450 4650 50  0001 C CNN
F 3 "" H 5450 4650 50  0001 C CNN
	1    5450 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6011BDCB
P 3950 2925
F 0 "C?" H 4065 2971 50  0000 L CNN
F 1 "0.1u" H 4065 2880 50  0000 L CNN
F 2 "" H 3988 2775 50  0001 C CNN
F 3 "~" H 3950 2925 50  0001 C CNN
	1    3950 2925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFBAD03
P 3950 3075
F 0 "#PWR?" H 3950 2825 50  0001 C CNN
F 1 "GND" H 3955 2902 50  0000 C CNN
F 2 "" H 3950 3075 50  0001 C CNN
F 3 "" H 3950 3075 50  0001 C CNN
	1    3950 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 2775 4425 3250
Wire Wire Line
	3950 2775 4425 2775
Connection ~ 4425 2775
$Comp
L Device:R R?
U 1 1 5FFBAD04
P 5250 4650
F 0 "R?" V 5150 4650 50  0000 C CNN
F 1 "10K" V 5250 4650 50  0000 C CNN
F 2 "" V 5180 4650 50  0001 C CNN
F 3 "~" H 5250 4650 50  0001 C CNN
	1    5250 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4650 5025 4650
Wire Wire Line
	5400 4650 5450 4650
Wire Wire Line
	5025 3450 5525 3450
Wire Wire Line
	5525 3450 5625 3550
Wire Wire Line
	5625 3550 6025 3550
Wire Wire Line
	5525 3550 5650 3450
Wire Wire Line
	5025 3550 5525 3550
Wire Wire Line
	5650 3450 6025 3450
Text Label 5125 3450 0    50   ~ 0
RXCAN
Text Label 5125 3550 0    50   ~ 0
TXCAN
Text Label 5375 4050 2    50   ~ 0
CAN_INT
Wire Wire Line
	5375 4050 5025 4050
$Comp
L power:+5V #PWR?
U 1 1 5FFBAD05
P 6525 2775
F 0 "#PWR?" H 6525 2625 50  0001 C CNN
F 1 "+5V" H 6540 2948 50  0000 C CNN
F 2 "" H 6525 2775 50  0001 C CNN
F 3 "" H 6525 2775 50  0001 C CNN
	1    6525 2775
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60014BBC
P 6050 2925
F 0 "C?" H 6165 2971 50  0000 L CNN
F 1 "0.1u" H 6165 2880 50  0000 L CNN
F 2 "" H 6088 2775 50  0001 C CNN
F 3 "~" H 6050 2925 50  0001 C CNN
	1    6050 2925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6011BDCF
P 6050 3075
F 0 "#PWR?" H 6050 2825 50  0001 C CNN
F 1 "GND" H 6055 2902 50  0000 C CNN
F 2 "" H 6050 3075 50  0001 C CNN
F 3 "" H 6050 3075 50  0001 C CNN
	1    6050 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 2775 6525 3250
Wire Wire Line
	6050 2775 6525 2775
Connection ~ 6525 2775
$Comp
L power:GND #PWR?
U 1 1 600190E5
P 6525 4050
F 0 "#PWR?" H 6525 3800 50  0001 C CNN
F 1 "GND" H 6530 3877 50  0000 C CNN
F 2 "" H 6525 4050 50  0001 C CNN
F 3 "" H 6525 4050 50  0001 C CNN
	1    6525 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 3850 6025 4050
Wire Wire Line
	6025 4050 6525 4050
Connection ~ 6525 4050
Wire Wire Line
	3825 4250 3150 4250
Wire Wire Line
	3150 4250 3150 4625
Wire Wire Line
	3150 4625 3300 4625
Wire Wire Line
	3825 4350 3700 4350
Wire Wire Line
	3700 4350 3700 4625
Wire Wire Line
	3700 4625 3600 4625
$Comp
L power:GND #PWR?
U 1 1 6011BDD8
P 3450 4825
F 0 "#PWR?" H 3450 4575 50  0001 C CNN
F 1 "GND" H 3455 4652 50  0000 C CNN
F 2 "" H 3450 4825 50  0001 C CNN
F 3 "" H 3450 4825 50  0001 C CNN
	1    3450 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6011BDD0
P 7600 3650
F 0 "R?" H 7670 3696 50  0000 L CNN
F 1 "120" V 7600 3575 50  0000 L CNN
F 2 "" V 7530 3650 50  0001 C CNN
F 3 "~" H 7600 3650 50  0001 C CNN
	1    7600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 3500 7475 3550
Wire Wire Line
	7025 3550 7475 3550
Wire Wire Line
	7600 3800 7475 3800
Wire Wire Line
	7475 3800 7475 3750
Wire Wire Line
	7025 3750 7475 3750
Text Notes 7375 4000 0    50   ~ 0
TERMINATION\n(OPTIONAL)
Wire Wire Line
	3600 3750 3825 3750
Wire Wire Line
	3600 3550 3825 3550
Wire Wire Line
	3600 3450 3825 3450
$Comp
L Device:Resonator Y?
U 1 1 6011BDC0
P 3450 4625
F 0 "Y?" H 3450 4873 50  0000 C CNN
F 1 "16MHz" H 3450 4782 50  0000 C CNN
F 2 "" H 3425 4625 50  0001 C CNN
F 3 "~" H 3425 4625 50  0001 C CNN
	1    3450 4625
	1    0    0    -1  
$EndComp
Text HLabel 3600 3550 0    50   Input ~ 0
MISO
Text HLabel 3600 3450 0    50   Input ~ 0
MOSI
Text HLabel 3600 3650 0    50   Input ~ 0
CAN_CS
Text HLabel 3600 3750 0    50   Input ~ 0
SCK
Wire Wire Line
	3825 3650 3600 3650
Text HLabel 7875 3500 2    50   BiDi ~ 0
CANH
Text HLabel 7875 3800 2    50   BiDi ~ 0
CANL
Wire Wire Line
	7875 3800 7600 3800
Connection ~ 7600 3800
Wire Wire Line
	7475 3500 7600 3500
Connection ~ 7600 3500
Wire Wire Line
	7600 3500 7875 3500
$EndSCHEMATC
