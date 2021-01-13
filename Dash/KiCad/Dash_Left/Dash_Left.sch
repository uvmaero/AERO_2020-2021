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
L power:+12V #PWR0101
U 1 1 5FFEACDE
P 3075 6825
F 0 "#PWR0101" H 3075 6675 50  0001 C CNN
F 1 "+12V" H 3025 7000 50  0000 C CNN
F 2 "" H 3075 6825 50  0001 C CNN
F 3 "" H 3075 6825 50  0001 C CNN
	1    3075 6825
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5FFEACCE
P 2000 3650
F 0 "U1" H 1475 2075 50  0000 C CNN
F 1 "ATmega328P-AU" H 1500 2175 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2000 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2000 3650 50  0001 C CNN
	1    2000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FFEACCF
P 650 2175
F 0 "C1" H 765 2221 50  0000 L CNN
F 1 "0.1u" H 765 2130 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 688 2025 50  0001 C CNN
F 3 "~" H 650 2175 50  0001 C CNN
	1    650  2175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FFEACD0
P 850 2750
F 0 "C2" H 965 2796 50  0000 L CNN
F 1 "0.1u" H 965 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 888 2600 50  0001 C CNN
F 3 "~" H 850 2750 50  0001 C CNN
	1    850  2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2025 2050 2150
Wire Wire Line
	2050 2150 2000 2150
Wire Wire Line
	2050 2150 2100 2150
Connection ~ 2050 2150
$Comp
L power:+5V #PWR0102
U 1 1 5FFEACD1
P 2050 2025
F 0 "#PWR0102" H 2050 1875 50  0001 C CNN
F 1 "+5V" H 2065 2198 50  0000 C CNN
F 2 "" H 2050 2025 50  0001 C CNN
F 3 "" H 2050 2025 50  0001 C CNN
	1    2050 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2450 850  2450
Wire Wire Line
	850  2450 850  2600
$Comp
L power:GND #PWR0103
U 1 1 5FFEACD2
P 850 2900
F 0 "#PWR0103" H 850 2650 50  0001 C CNN
F 1 "GND" H 855 2727 50  0000 C CNN
F 2 "" H 850 2900 50  0001 C CNN
F 3 "" H 850 2900 50  0001 C CNN
	1    850  2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FFEACD3
P 650 2325
F 0 "#PWR0104" H 650 2075 50  0001 C CNN
F 1 "GND" H 655 2152 50  0000 C CNN
F 2 "" H 650 2325 50  0001 C CNN
F 3 "" H 650 2325 50  0001 C CNN
	1    650  2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  2025 2050 2025
Connection ~ 2050 2025
$Comp
L power:GND #PWR0105
U 1 1 5FFEACDB
P 2000 5150
F 0 "#PWR0105" H 2000 4900 50  0001 C CNN
F 1 "GND" H 2005 4977 50  0000 C CNN
F 2 "" H 2000 5150 50  0001 C CNN
F 3 "" H 2000 5150 50  0001 C CNN
	1    2000 5150
	1    0    0    -1  
$EndComp
Text Label 2850 2850 2    50   ~ 0
MISO
Text Label 2850 2950 2    50   ~ 0
SCK
Text Label 3000 3950 2    50   ~ 0
RESET
Text Label 2850 2750 2    50   ~ 0
MOSI
Wire Wire Line
	2850 2750 2600 2750
Wire Wire Line
	2850 2850 2600 2850
Wire Wire Line
	2850 2950 2600 2950
Wire Wire Line
	3000 3950 2600 3950
Text Label 3025 4350 2    50   ~ 0
CAN_INT
Wire Wire Line
	3025 4350 2600 4350
Text Label 3025 4650 2    50   ~ 0
CAN_CS
Wire Wire Line
	3025 4650 2600 4650
$Comp
L power:GND #PWR0106
U 1 1 5FFBBD1B
P 5175 6825
F 0 "#PWR0106" H 5175 6575 50  0001 C CNN
F 1 "GND" H 5180 6652 50  0000 C CNN
F 2 "" H 5175 6825 50  0001 C CNN
F 3 "" H 5175 6825 50  0001 C CNN
	1    5175 6825
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FFEACD6
P 5025 6825
F 0 "D1" H 5018 6570 50  0000 C CNN
F 1 "LED" H 5018 6661 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5025 6825 50  0001 C CNN
F 3 "~" H 5025 6825 50  0001 C CNN
	1    5025 6825
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FFEACD5
P 4725 6825
F 0 "R1" V 4625 6850 50  0000 C CNN
F 1 "330" V 4725 6825 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4655 6825 50  0001 C CNN
F 3 "~" H 4725 6825 50  0001 C CNN
	1    4725 6825
	0    1    1    0   
$EndComp
Wire Wire Line
	3225 6825 3075 6825
Wire Wire Line
	3525 6825 3625 6825
$Comp
L Device:Polyfuse F1
U 1 1 5FFB8BBE
P 3375 6825
F 0 "F1" V 3150 6825 50  0000 C CNN
F 1 "MF-MSMF050" V 3225 6900 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 3425 6625 50  0001 L CNN
F 3 "~" H 3375 6825 50  0001 C CNN
	1    3375 6825
	0    1    1    0   
$EndComp
$Comp
L Regulator_Switching:R-785.0-1.0 U2
U 1 1 5FFBF32A
P 4125 6825
F 0 "U2" H 4125 7067 50  0000 C CNN
F 1 "R-785.0-1.0" H 4125 6976 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 4175 6575 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78xx-1.0.pdf" H 4125 6825 50  0001 C CNN
	1    4125 6825
	1    0    0    -1  
$EndComp
Connection ~ 3625 6825
$Comp
L power:+5V #PWR0107
U 1 1 5FFC068A
P 4575 6825
F 0 "#PWR0107" H 4575 6675 50  0001 C CNN
F 1 "+5V" H 4590 6998 50  0000 C CNN
F 2 "" H 4575 6825 50  0001 C CNN
F 3 "" H 4575 6825 50  0001 C CNN
	1    4575 6825
	1    0    0    -1  
$EndComp
Connection ~ 4575 6825
$Comp
L Device:C C5
U 1 1 5FFC0CFF
P 4575 7125
F 0 "C5" H 4690 7171 50  0000 L CNN
F 1 "10u" H 4690 7080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4613 6975 50  0001 C CNN
F 3 "~" H 4575 7125 50  0001 C CNN
	1    4575 7125
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5FFEACD7
P 3625 7150
F 0 "C3" H 3740 7196 50  0000 L CNN
F 1 "1u" H 3740 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3663 7000 50  0001 C CNN
F 3 "~" H 3625 7150 50  0001 C CNN
	1    3625 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FFEACD8
P 4125 7400
F 0 "#PWR0108" H 4125 7150 50  0001 C CNN
F 1 "GND" H 4130 7227 50  0000 C CNN
F 2 "" H 4125 7400 50  0001 C CNN
F 3 "" H 4125 7400 50  0001 C CNN
	1    4125 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 7400 3625 7400
Connection ~ 4125 7400
Wire Wire Line
	3625 7400 3625 7300
Wire Wire Line
	4575 7275 4575 7400
Wire Wire Line
	4575 7400 4125 7400
Wire Wire Line
	4125 7125 4125 7400
Wire Wire Line
	3825 6825 3625 6825
Wire Wire Line
	3625 6825 3625 7000
Wire Wire Line
	4575 6825 4575 6975
Wire Wire Line
	4575 6825 4425 6825
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5FFEACD9
P 6100 7025
F 0 "J2" H 6150 7342 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6150 7251 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 6100 7025 50  0001 C CNN
F 3 "~" H 6100 7025 50  0001 C CNN
	1    6100 7025
	1    0    0    -1  
$EndComp
Text Label 5675 6925 0    50   ~ 0
MISO
Text Label 5675 7025 0    50   ~ 0
SCK
Text Label 5675 7125 0    50   ~ 0
RESET
Text Label 6650 7025 2    50   ~ 0
MOSI
Wire Wire Line
	6650 7025 6400 7025
Wire Wire Line
	5900 6925 5675 6925
Wire Wire Line
	5900 7025 5675 7025
Wire Wire Line
	5900 7125 5675 7125
$Comp
L power:+5V #PWR0109
U 1 1 5FFEACDA
P 6650 6925
F 0 "#PWR0109" H 6650 6775 50  0001 C CNN
F 1 "+5V" H 6665 7098 50  0000 C CNN
F 2 "" H 6650 6925 50  0001 C CNN
F 3 "" H 6650 6925 50  0001 C CNN
	1    6650 6925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 6925 6400 6925
$Comp
L power:GND #PWR0110
U 1 1 5FFEACE1
P 6650 7125
F 0 "#PWR0110" H 6650 6875 50  0001 C CNN
F 1 "GND" H 6655 6952 50  0000 C CNN
F 2 "" H 6650 7125 50  0001 C CNN
F 3 "" H 6650 7125 50  0001 C CNN
	1    6650 7125
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 7125 6400 7125
$Comp
L Driver_LED:STP16CP05 U4
U 1 1 5FFD2B64
P 7875 3600
F 0 "U4" H 8225 4825 50  0000 C CNN
F 1 "STP16CP05" H 8175 4700 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 7875 3600 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stp16cp05.pdf" H 7875 3600 50  0001 C CNN
	1    7875 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGBA D2
U 1 1 5FFD92A1
P 10350 2000
F 0 "D2" H 10350 2497 50  0000 C CNN
F 1 "LED_RGBA" H 10350 2406 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10350 1950 50  0001 C CNN
F 3 "~" H 10350 1950 50  0001 C CNN
	1    10350 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGBA D3
U 1 1 5FFDA9B7
P 10350 2925
F 0 "D3" H 10350 3422 50  0000 C CNN
F 1 "LED_RGBA" H 10350 3331 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10350 2875 50  0001 C CNN
F 3 "~" H 10350 2875 50  0001 C CNN
	1    10350 2925
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGBA D4
U 1 1 5FFDC550
P 10350 3825
F 0 "D4" H 10350 4322 50  0000 C CNN
F 1 "LED_RGBA" H 10350 4231 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10350 3775 50  0001 C CNN
F 3 "~" H 10350 3775 50  0001 C CNN
	1    10350 3825
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGBA D5
U 1 1 5FFDEEEB
P 10350 4800
F 0 "D5" H 10350 5297 50  0000 C CNN
F 1 "LED_RGBA" H 10350 5206 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10350 4750 50  0001 C CNN
F 3 "~" H 10350 4750 50  0001 C CNN
	1    10350 4800
	1    0    0    -1  
$EndComp
$Sheet
S 1850 6950 850  650 
U 5FFEA587
F0 "CAN_Interface" 50
F1 "CAN_Interface.sch" 50
F2 "MISO" I L 1850 7175 50 
F3 "MOSI" I L 1850 7075 50 
F4 "CAN_CS" I L 1850 7275 50 
F5 "SCK" I L 1850 7375 50 
F6 "CANH" B R 2700 7125 50 
F7 "CANL" B R 2700 7275 50 
F8 "CAN_INT" I L 1850 7500 50 
$EndSheet
Text Label 1600 7175 0    50   ~ 0
MISO
Text Label 1600 7375 0    50   ~ 0
SCK
Text Label 1600 7075 0    50   ~ 0
MOSI
Wire Wire Line
	1600 7075 1850 7075
Wire Wire Line
	1600 7175 1850 7175
Wire Wire Line
	1600 7375 1850 7375
Text Label 1500 7275 0    50   ~ 0
CAN_CS
Wire Wire Line
	1500 7275 1850 7275
Text Label 1525 7500 0    50   ~ 0
CAN_INT
Wire Wire Line
	1525 7500 1850 7500
Text Label 2925 7125 2    50   ~ 0
CAN+
Text Label 2925 7275 2    50   ~ 0
CAN-
Wire Wire Line
	2925 7125 2700 7125
Wire Wire Line
	2925 7275 2700 7275
Text Notes 10825 1850 0    50   ~ 0
MOTOR\nTEMP
Text Notes 10850 2775 0    50   ~ 0
FAN \nTEMP
Text Notes 10800 3675 0    50   ~ 0
RINEHART \nTEMP
Text Notes 10775 4625 0    50   ~ 0
BATTERY\nSOC
Wire Wire Line
	10550 2000 10650 2000
Wire Wire Line
	10650 2000 10650 2925
Wire Wire Line
	10550 2925 10650 2925
Connection ~ 10650 2925
Wire Wire Line
	10650 2925 10650 3825
Wire Wire Line
	10550 3825 10650 3825
Connection ~ 10650 3825
Wire Wire Line
	10650 3825 10650 4800
Wire Wire Line
	10550 4800 10650 4800
Connection ~ 10650 4800
Wire Wire Line
	10650 4800 10650 5250
$Comp
L power:GND #PWR0111
U 1 1 600417C3
P 10650 5250
F 0 "#PWR0111" H 10650 5000 50  0001 C CNN
F 1 "GND" H 10655 5077 50  0000 C CNN
F 2 "" H 10650 5250 50  0001 C CNN
F 3 "" H 10650 5250 50  0001 C CNN
	1    10650 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 6004541E
P 7875 1900
F 0 "#PWR0112" H 7875 1750 50  0001 C CNN
F 1 "+5V" H 7890 2073 50  0000 C CNN
F 2 "" H 7875 1900 50  0001 C CNN
F 3 "" H 7875 1900 50  0001 C CNN
	1    7875 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 6004A6D4
P 7875 4700
F 0 "#PWR0113" H 7875 4450 50  0001 C CNN
F 1 "GND" H 7880 4527 50  0000 C CNN
F 2 "" H 7875 4700 50  0001 C CNN
F 3 "" H 7875 4700 50  0001 C CNN
	1    7875 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2700 7475 2700
Wire Wire Line
	7100 2800 7475 2800
Wire Wire Line
	7100 2900 7475 2900
$Comp
L Device:R R3
U 1 1 60051EDB
P 7225 3250
F 0 "R3" H 7295 3296 50  0000 L CNN
F 1 "1K" V 7225 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7155 3250 50  0001 C CNN
F 3 "~" H 7225 3250 50  0001 C CNN
	1    7225 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 3100 7475 3100
$Comp
L power:GND #PWR0114
U 1 1 60053620
P 7225 3400
F 0 "#PWR0114" H 7225 3150 50  0001 C CNN
F 1 "GND" H 7230 3227 50  0000 C CNN
F 2 "" H 7225 3400 50  0001 C CNN
F 3 "" H 7225 3400 50  0001 C CNN
	1    7225 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7125 3700 7475 3700
$Comp
L Device:C C6
U 1 1 60059182
P 7275 2150
F 0 "C6" H 7390 2196 50  0000 L CNN
F 1 "0.1u" H 7390 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7313 2000 50  0001 C CNN
F 3 "~" H 7275 2150 50  0001 C CNN
	1    7275 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6005F991
P 7275 2300
F 0 "#PWR0115" H 7275 2050 50  0001 C CNN
F 1 "GND" H 7280 2127 50  0000 C CNN
F 2 "" H 7275 2300 50  0001 C CNN
F 3 "" H 7275 2300 50  0001 C CNN
	1    7275 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 2000 7875 2000
Wire Wire Line
	7875 1900 7875 2000
Connection ~ 7875 2000
Wire Wire Line
	7875 2000 7875 2500
Text Label 9325 1800 0    50   ~ 0
TEMP_IND1R
Text Label 9325 2000 0    50   ~ 0
TEMP_IND1G
Text Label 9325 2200 0    50   ~ 0
TEMP_IND1B
Wire Wire Line
	9325 2200 9850 2200
Wire Wire Line
	9850 2000 9325 2000
Wire Wire Line
	9325 1800 9850 1800
Text Label 9325 2725 0    50   ~ 0
TEMP_IND2R
Text Label 9325 2925 0    50   ~ 0
TEMP_IND2G
Text Label 9325 3125 0    50   ~ 0
TEMP_IND2B
Wire Wire Line
	9325 3125 9850 3125
Wire Wire Line
	9850 2925 9325 2925
Wire Wire Line
	9325 2725 9850 2725
Text Label 9325 3625 0    50   ~ 0
TEMP_IND3R
Text Label 9325 3825 0    50   ~ 0
TEMP_IND3G
Text Label 9325 4025 0    50   ~ 0
TEMP_IND3B
Wire Wire Line
	9325 4025 9850 4025
Wire Wire Line
	9850 3825 9325 3825
Wire Wire Line
	9325 3625 9850 3625
Wire Wire Line
	9325 5000 9850 5000
Text Label 9325 5000 0    50   ~ 0
BATT_B
Wire Wire Line
	9850 4800 9325 4800
Text Label 9325 4800 0    50   ~ 0
BATT_G
Wire Wire Line
	9325 4600 9850 4600
Text Label 9325 4600 0    50   ~ 0
BATT_R
Text Label 8800 2700 2    50   ~ 0
TEMP_IND1R
Text Label 8800 2800 2    50   ~ 0
TEMP_IND1G
Text Label 8800 2900 2    50   ~ 0
TEMP_IND1B
Text Label 8800 3000 2    50   ~ 0
TEMP_IND2R
Text Label 8800 3100 2    50   ~ 0
TEMP_IND2G
Text Label 8800 3200 2    50   ~ 0
TEMP_IND2B
Text Label 8800 3300 2    50   ~ 0
TEMP_IND3R
Text Label 8800 3400 2    50   ~ 0
TEMP_IND3G
Text Label 8800 3500 2    50   ~ 0
TEMP_IND3B
Text Label 8800 3600 2    50   ~ 0
BATT_R
Text Label 8800 3700 2    50   ~ 0
BATT_G
Text Label 8800 3800 2    50   ~ 0
BATT_B
Wire Wire Line
	8800 2700 8275 2700
Wire Wire Line
	8800 2800 8275 2800
Wire Wire Line
	8800 2900 8275 2900
Wire Wire Line
	8800 3000 8275 3000
Wire Wire Line
	8275 3100 8800 3100
Wire Wire Line
	8800 3200 8275 3200
Wire Wire Line
	8275 3300 8800 3300
Wire Wire Line
	8800 3400 8275 3400
Wire Wire Line
	8800 3500 8275 3500
Wire Wire Line
	8800 3600 8275 3600
Wire Wire Line
	8800 3700 8275 3700
Wire Wire Line
	8800 3800 8275 3800
Text Label 3025 4750 2    50   ~ 0
LED_LE
Text Label 3025 4450 2    50   ~ 0
LED_OE
Text Label 3025 4850 2    50   ~ 0
LED_SDI
Text Label 3025 4550 2    50   ~ 0
LED_CLK
Wire Wire Line
	3025 4750 2600 4750
Wire Wire Line
	3025 4850 2600 4850
Wire Wire Line
	3025 4550 2600 4550
Wire Wire Line
	2600 4450 3025 4450
Text Label 7100 2700 0    50   ~ 0
LED_SDI
Text Label 7100 2800 0    50   ~ 0
LED_CLK
Text Label 7100 2900 0    50   ~ 0
LED_LE
Text Label 7125 3700 0    50   ~ 0
LED_OE
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 600D8F1D
P 3700 1775
F 0 "J1" H 3618 1350 50  0000 C CNN
F 1 "Conn_01x04" H 3618 1441 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S4B-XH-A_1x04_P2.50mm_Horizontal" H 3700 1775 50  0001 C CNN
F 3 "~" H 3700 1775 50  0001 C CNN
	1    3700 1775
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 600D9EE1
P 4325 1875
F 0 "#PWR0116" H 4325 1625 50  0001 C CNN
F 1 "GND" H 4330 1702 50  0000 C CNN
F 2 "" H 4325 1875 50  0001 C CNN
F 3 "" H 4325 1875 50  0001 C CNN
	1    4325 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 1875 3900 1875
Wire Wire Line
	4325 1575 3900 1575
Wire Wire Line
	4125 1775 3900 1775
Wire Wire Line
	4125 1675 3900 1675
$Comp
L power:+12V #PWR0117
U 1 1 600E7F6F
P 4325 1575
F 0 "#PWR0117" H 4325 1425 50  0001 C CNN
F 1 "+12V" H 4340 1748 50  0000 C CNN
F 2 "" H 4325 1575 50  0001 C CNN
F 3 "" H 4325 1575 50  0001 C CNN
	1    4325 1575
	1    0    0    -1  
$EndComp
Text Notes 3750 1250 0    50   ~ 0
BOARD\nCONNECTOR
Wire Notes Line
	3475 1075 4500 1075
Wire Notes Line
	4500 1075 4500 2125
Wire Notes Line
	4500 2125 3475 2125
Wire Notes Line
	3475 2125 3475 1075
$Comp
L Mechanical:MountingHole H1
U 1 1 60107F9D
P 675 7050
F 0 "H1" H 775 7096 50  0000 L CNN
F 1 "MountingHole" H 775 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 675 7050 50  0001 C CNN
F 3 "~" H 675 7050 50  0001 C CNN
	1    675  7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60108949
P 675 7375
F 0 "H2" H 775 7421 50  0000 L CNN
F 1 "MountingHole" H 775 7330 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 675 7375 50  0001 C CNN
F 3 "~" H 675 7375 50  0001 C CNN
	1    675  7375
	1    0    0    -1  
$EndComp
Text Label 3000 3350 2    50   ~ 0
LCD_RS
Text Label 3000 3450 2    50   ~ 0
LCD_EN
Text Label 3000 3550 2    50   ~ 0
LCD_D4
Text Label 3000 3650 2    50   ~ 0
LCD_D5
Text Label 3000 3750 2    50   ~ 0
LCD_D6
Text Label 3000 3850 2    50   ~ 0
LCD_D7
Wire Wire Line
	3000 3850 2600 3850
Wire Wire Line
	2600 3750 3000 3750
Wire Wire Line
	3000 3650 2600 3650
Wire Wire Line
	2600 3550 3000 3550
Wire Wire Line
	3000 3450 2600 3450
Wire Wire Line
	2600 3350 3000 3350
$Comp
L Display_Character:RC1602A U3
U 1 1 601334BE
P 4700 3925
F 0 "U3" H 5000 4700 50  0000 C CNN
F 1 "RC1602A" H 5050 4800 50  0000 C CNN
F 2 "Display:RC1602A" H 4800 3125 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 4800 3825 50  0001 C CNN
	1    4700 3925
	1    0    0    -1  
$EndComp
Text Label 3925 3425 0    50   ~ 0
LCD_RS
Text Label 3925 3625 0    50   ~ 0
LCD_EN
Text Label 3925 4125 0    50   ~ 0
LCD_D4
Text Label 3925 4225 0    50   ~ 0
LCD_D5
Text Label 3925 4325 0    50   ~ 0
LCD_D6
Text Label 3925 4425 0    50   ~ 0
LCD_D7
Wire Wire Line
	3925 4425 4300 4425
Wire Wire Line
	4300 4325 3925 4325
Wire Wire Line
	3925 4225 4300 4225
Wire Wire Line
	4300 4125 3925 4125
Wire Wire Line
	4300 3625 3925 3625
Wire Wire Line
	4300 3425 3925 3425
$Comp
L Device:R_POT_TRIM RV1
U 1 1 6014E146
P 5600 3725
F 0 "RV1" V 5400 3800 50  0000 R CNN
F 1 "10K TRIM" V 5500 3900 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386P_Vertical" H 5600 3725 50  0001 C CNN
F 3 "~" H 5600 3725 50  0001 C CNN
	1    5600 3725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 3725 5100 3725
Wire Wire Line
	5600 3575 5600 3225
Wire Wire Line
	5600 3225 5250 3225
Wire Wire Line
	5600 3875 5600 4125
Wire Wire Line
	5600 4625 4700 4625
$Comp
L power:+5V #PWR0118
U 1 1 6015FFDE
P 4700 2800
F 0 "#PWR0118" H 4700 2650 50  0001 C CNN
F 1 "+5V" H 4715 2973 50  0000 C CNN
F 2 "" H 4700 2800 50  0001 C CNN
F 3 "" H 4700 2800 50  0001 C CNN
	1    4700 2800
	1    0    0    -1  
$EndComp
Connection ~ 4700 3225
$Comp
L Device:C C4
U 1 1 60165F35
P 4200 3000
F 0 "C4" H 4315 3046 50  0000 L CNN
F 1 "0.1u" H 4315 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4238 2850 50  0001 C CNN
F 3 "~" H 4200 3000 50  0001 C CNN
	1    4200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2850 4700 2850
Wire Wire Line
	4700 2800 4700 2850
Connection ~ 4700 2850
Wire Wire Line
	4700 2850 4700 3225
$Comp
L power:GND #PWR0119
U 1 1 60173782
P 4200 3150
F 0 "#PWR0119" H 4200 2900 50  0001 C CNN
F 1 "GND" H 4205 2977 50  0000 C CNN
F 2 "" H 4200 3150 50  0001 C CNN
F 3 "" H 4200 3150 50  0001 C CNN
	1    4200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6017699D
P 4700 4625
F 0 "#PWR0120" H 4700 4375 50  0001 C CNN
F 1 "GND" H 4705 4452 50  0000 C CNN
F 2 "" H 4700 4625 50  0001 C CNN
F 3 "" H 4700 4625 50  0001 C CNN
	1    4700 4625
	1    0    0    -1  
$EndComp
Connection ~ 4700 4625
Wire Wire Line
	5100 4125 5600 4125
Connection ~ 5600 4125
Wire Wire Line
	5600 4125 5600 4625
Wire Wire Line
	5100 4225 5250 4225
Wire Wire Line
	5250 4225 5250 3225
Connection ~ 5250 3225
Wire Wire Line
	5250 3225 4700 3225
$Comp
L power:GND #PWR0121
U 1 1 60180EDC
P 3750 3700
F 0 "#PWR0121" H 3750 3450 50  0001 C CNN
F 1 "GND" H 3755 3527 50  0000 C CNN
F 2 "" H 3750 3700 50  0001 C CNN
F 3 "" H 3750 3700 50  0001 C CNN
	1    3750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3700 3750 3525
Wire Wire Line
	3750 3525 4300 3525
$Comp
L Device:R R2
U 1 1 601A9B7A
P 4750 1575
F 0 "R2" H 4820 1621 50  0000 L CNN
F 1 "10K" V 4750 1500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4680 1575 50  0001 C CNN
F 3 "~" H 4750 1575 50  0001 C CNN
	1    4750 1575
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 601AA1E0
P 4750 1425
F 0 "#PWR0122" H 4750 1275 50  0001 C CNN
F 1 "+5V" H 4765 1598 50  0000 C CNN
F 2 "" H 4750 1425 50  0001 C CNN
F 3 "" H 4750 1425 50  0001 C CNN
	1    4750 1425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 601AA994
P 5175 1825
F 0 "#PWR0123" H 5175 1575 50  0001 C CNN
F 1 "GND" H 5180 1652 50  0000 C CNN
F 2 "" H 5175 1825 50  0001 C CNN
F 3 "" H 5175 1825 50  0001 C CNN
	1    5175 1825
	1    0    0    -1  
$EndComp
Text Label 5200 1725 2    50   ~ 0
LCD_BTN
Wire Wire Line
	5375 1725 4750 1725
Wire Wire Line
	5175 1825 5375 1825
Text Label 2975 2450 2    50   ~ 0
LCD_BTN
Wire Wire Line
	2975 2450 2600 2450
Text Notes 4975 1375 0    50   ~ 0
LCD BUTTON\nSELECTION
Text Notes 4525 2575 0    50   ~ 0
LCD SCREEN
Wire Notes Line
	3625 2450 5925 2450
Wire Notes Line
	5925 2450 5925 4925
Wire Notes Line
	5925 4925 3625 4925
Wire Notes Line
	3625 4925 3625 2450
Wire Notes Line
	4625 1175 6175 1175
Wire Notes Line
	6175 2100 4625 2100
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FFEC38D
P 5575 1725
F 0 "J3" H 5655 1717 50  0000 L CNN
F 1 "Conn_01x02" H 5655 1626 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A_1x02_P2.50mm_Horizontal" H 5575 1725 50  0001 C CNN
F 3 "~" H 5575 1725 50  0001 C CNN
	1    5575 1725
	1    0    0    -1  
$EndComp
Wire Notes Line
	6175 1175 6175 2100
Wire Notes Line
	4625 1175 4625 2100
$Comp
L Device:R R6
U 1 1 601358AB
P 10000 1800
F 0 "R6" V 9900 1825 50  0000 C CNN
F 1 "330" V 10000 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 1800 50  0001 C CNN
F 3 "~" H 10000 1800 50  0001 C CNN
	1    10000 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 60137FA3
P 10000 2000
F 0 "R7" V 9900 2025 50  0000 C CNN
F 1 "330" V 10000 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 2000 50  0001 C CNN
F 3 "~" H 10000 2000 50  0001 C CNN
	1    10000 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 6013830D
P 10000 2200
F 0 "R8" V 9900 2225 50  0000 C CNN
F 1 "330" V 10000 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 2200 50  0001 C CNN
F 3 "~" H 10000 2200 50  0001 C CNN
	1    10000 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 601389E1
P 10000 2725
F 0 "R9" V 9900 2750 50  0000 C CNN
F 1 "330" V 10000 2725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 2725 50  0001 C CNN
F 3 "~" H 10000 2725 50  0001 C CNN
	1    10000 2725
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 60138F27
P 10000 2925
F 0 "R10" V 9900 2950 50  0000 C CNN
F 1 "330" V 10000 2925 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 2925 50  0001 C CNN
F 3 "~" H 10000 2925 50  0001 C CNN
	1    10000 2925
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 601394FC
P 10000 3125
F 0 "R11" V 9900 3150 50  0000 C CNN
F 1 "330" V 10000 3125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 3125 50  0001 C CNN
F 3 "~" H 10000 3125 50  0001 C CNN
	1    10000 3125
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 6013ECEA
P 10000 3625
F 0 "R12" V 9900 3650 50  0000 C CNN
F 1 "330" V 10000 3625 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 3625 50  0001 C CNN
F 3 "~" H 10000 3625 50  0001 C CNN
	1    10000 3625
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 6013ECF4
P 10000 3825
F 0 "R13" V 9900 3850 50  0000 C CNN
F 1 "330" V 10000 3825 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 3825 50  0001 C CNN
F 3 "~" H 10000 3825 50  0001 C CNN
	1    10000 3825
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 6013ECFE
P 10000 4025
F 0 "R14" V 9900 4050 50  0000 C CNN
F 1 "330" V 10000 4025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 4025 50  0001 C CNN
F 3 "~" H 10000 4025 50  0001 C CNN
	1    10000 4025
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 60149C03
P 10000 4600
F 0 "R15" V 9900 4625 50  0000 C CNN
F 1 "330" V 10000 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 4600 50  0001 C CNN
F 3 "~" H 10000 4600 50  0001 C CNN
	1    10000 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 60149C0D
P 10000 4800
F 0 "R16" V 9900 4825 50  0000 C CNN
F 1 "330" V 10000 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 4800 50  0001 C CNN
F 3 "~" H 10000 4800 50  0001 C CNN
	1    10000 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 60149C17
P 10000 5000
F 0 "R17" V 9900 5025 50  0000 C CNN
F 1 "330" V 10000 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9930 5000 50  0001 C CNN
F 3 "~" H 10000 5000 50  0001 C CNN
	1    10000 5000
	0    1    1    0   
$EndComp
Text Label 4125 1675 2    50   ~ 0
CAN-
Text Label 4125 1775 2    50   ~ 0
CAN+
$EndSCHEMATC
