EESchema Schematic File Version 4
LIBS:abc-lcd-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "ABC LCD "
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx_IEEE:74164 U1
U 1 1 5D87802D
P 2300 1800
F 0 "U1" H 2300 2366 50  0000 C CNN
F 1 "74164" H 2300 2275 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2300 1800 50  0001 C CNN
F 3 "" H 2300 1800 50  0001 C CNN
	1    2300 1800
	1    0    0    -1  
$EndComp
Text GLabel 1550 1850 0    50   Input ~ 0
LCD_DATA
Wire Wire Line
	1750 1800 1650 1800
Wire Wire Line
	1650 1800 1650 1850
Wire Wire Line
	1650 1900 1750 1900
Wire Wire Line
	1550 1850 1650 1850
Connection ~ 1650 1850
Wire Wire Line
	1650 1850 1650 1900
Text GLabel 1500 1650 0    50   Input ~ 0
LCD_CK
Wire Wire Line
	1500 1650 1750 1650
Text GLabel 1500 1550 0    50   Input ~ 0
LCD_RE
Wire Wire Line
	1500 1550 1750 1550
Wire Wire Line
	2850 1850 3450 1850
Wire Wire Line
	3450 1850 3450 2250
Wire Wire Line
	3450 2250 3600 2250
Wire Wire Line
	3600 2350 3350 2350
Wire Wire Line
	3350 2350 3350 2000
Wire Wire Line
	3350 2000 2850 2000
Wire Wire Line
	2850 2100 3250 2100
Wire Wire Line
	3250 2100 3250 2450
Wire Wire Line
	3250 2450 3600 2450
Wire Wire Line
	3600 2550 3150 2550
Wire Wire Line
	3150 2550 3150 2200
Wire Wire Line
	3150 2200 2850 2200
Wire Wire Line
	2850 2300 3100 2300
Wire Wire Line
	3100 1550 3600 1550
Wire Wire Line
	2850 2400 3200 2400
Wire Wire Line
	3200 2400 3200 1750
Wire Wire Line
	3200 1750 3600 1750
$Comp
L power:GND #PWR02
U 1 1 5D87F814
P 4000 2950
F 0 "#PWR02" H 4000 2700 50  0001 C CNN
F 1 "GND" H 4005 2777 50  0000 C CNN
F 2 "" H 4000 2950 50  0001 C CNN
F 3 "" H 4000 2950 50  0001 C CNN
	1    4000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2750 4000 2850
Wire Wire Line
	3600 1650 3400 1650
Wire Wire Line
	3400 1650 3400 2850
Wire Wire Line
	3400 2850 4000 2850
Connection ~ 4000 2850
Wire Wire Line
	4000 2850 4000 2950
Wire Wire Line
	4400 2250 4550 2250
Wire Wire Line
	4550 2250 4550 2850
Wire Wire Line
	4550 2850 4000 2850
Wire Wire Line
	4000 1350 4000 1100
$Comp
L Device:R R1
U 1 1 5D882883
P 4850 2350
F 0 "R1" V 4643 2350 50  0000 C CNN
F 1 "220" V 4734 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 2350 50  0001 C CNN
F 3 "~" H 4850 2350 50  0001 C CNN
	1    4850 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2350 4700 2350
Wire Wire Line
	5000 2350 5100 2350
Wire Wire Line
	5100 2350 5100 1950
Wire Wire Line
	5100 1100 4000 1100
Connection ~ 4000 1100
Wire Wire Line
	4000 1100 4000 1000
$Comp
L Device:R_POT_Small R2
U 1 1 5D8849E4
P 4650 1950
F 0 "R2" V 4900 1950 50  0000 C CNN
F 1 "5K" V 4800 1950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-V_Vertical" H 4650 1950 50  0001 C CNN
F 3 "~" H 4650 1950 50  0001 C CNN
	1    4650 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 1950 4550 2250
Connection ~ 4550 2250
Wire Wire Line
	4750 1950 5100 1950
Connection ~ 5100 1950
Wire Wire Line
	5100 1950 5100 1100
$Comp
L Display_Character:RC1602A U2
U 1 1 5D875DF4
P 4000 2050
F 0 "U2" H 4150 2750 50  0000 C CNN
F 1 "RC1602A" H 4100 2100 50  0000 C CNN
F 2 "Display:WC1602A" H 4100 1250 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 4100 1950 50  0001 C CNN
	1    4000 2050
	1    0    0    -1  
$EndComp
Text Notes 1450 3150 0    50   ~ 0
Shift (74hc164) based LCD driver module\n
Wire Notes Line
	5300 750  5300 3500
Wire Notes Line
	5300 3500 1000 3500
Wire Notes Line
	1000 3500 1000 750 
Wire Notes Line
	1000 750  5300 750 
$Comp
L MCU_Microchip_ATmega:ATmega8A-PU U3
U 1 1 5D88BAA1
P 2850 6150
F 0 "U3" H 3200 7550 50  0000 C CNN
F 1 "ATmega8A-PU" H 2800 6300 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 2850 6150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Microchip%208bit%20mcu%20AVR%20ATmega8A%20data%20sheet%2040001974A.pdf" H 2850 6150 50  0001 C CNN
	1    2850 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5D88E625
P 2850 4300
F 0 "#PWR0101" H 2850 4150 50  0001 C CNN
F 1 "+5V" H 2865 4473 50  0000 C CNN
F 2 "" H 2850 4300 50  0001 C CNN
F 3 "" H 2850 4300 50  0001 C CNN
	1    2850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4750 2850 4600
Wire Wire Line
	2950 4750 2950 4600
Wire Wire Line
	2950 4600 2850 4600
Connection ~ 2850 4600
Wire Wire Line
	2850 4600 2850 4300
$Comp
L power:GND #PWR0102
U 1 1 5D890714
P 2850 8150
F 0 "#PWR0102" H 2850 7900 50  0001 C CNN
F 1 "GND" H 2855 7977 50  0000 C CNN
F 2 "" H 2850 8150 50  0001 C CNN
F 3 "" H 2850 8150 50  0001 C CNN
	1    2850 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7550 2850 7850
Wire Wire Line
	2950 7550 2950 7850
Wire Wire Line
	2950 7850 2850 7850
Connection ~ 2850 7850
Wire Wire Line
	2850 7850 2850 8150
$Comp
L Device:R R3
U 1 1 5D8927C2
P 1950 4900
F 0 "R3" H 2020 4946 50  0000 L CNN
F 1 "10K" H 2020 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 4900 50  0001 C CNN
F 3 "~" H 1950 4900 50  0001 C CNN
	1    1950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5050 1950 5050
Wire Wire Line
	1950 4750 1950 4600
Wire Wire Line
	1950 4600 2850 4600
$Comp
L Device:C C1
U 1 1 5D89597E
P 1400 4900
F 0 "C1" H 1515 4946 50  0000 L CNN
F 1 "22pF" H 1515 4855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1438 4750 50  0001 C CNN
F 3 "~" H 1400 4900 50  0001 C CNN
	1    1400 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D895EDA
P 1400 5700
F 0 "C2" H 1515 5746 50  0000 L CNN
F 1 "22pF" H 1515 5655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1438 5550 50  0001 C CNN
F 3 "~" H 1400 5700 50  0001 C CNN
	1    1400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D89662E
P 1400 5300
F 0 "Y1" V 1354 5431 50  0000 L CNN
F 1 "16Mhz" H 1300 5150 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 1400 5300 50  0001 C CNN
F 3 "~" H 1400 5300 50  0001 C CNN
	1    1400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5450 2250 5450
Wire Wire Line
	2250 5250 2250 5150
Wire Wire Line
	2250 5150 1400 5150
Wire Wire Line
	1400 5550 1400 5450
Connection ~ 1400 5450
Wire Wire Line
	1400 5150 1400 5050
Connection ~ 1400 5150
Wire Wire Line
	1400 4750 1150 4750
Wire Wire Line
	1150 4750 1150 5850
Wire Wire Line
	1150 5850 1400 5850
Wire Wire Line
	1400 5850 1400 7850
Wire Wire Line
	1400 7850 2850 7850
Connection ~ 1400 5850
Wire Notes Line
	1000 4000 5300 4000
Wire Notes Line
	5300 4000 5300 8700
Wire Notes Line
	5300 8700 1000 8700
Wire Notes Line
	1000 8700 1000 4000
Text Notes 1300 8550 0    50   ~ 0
General atmega8 setup with pin headers\n
Wire Wire Line
	2250 5650 1850 5650
Wire Wire Line
	1850 5650 1850 4600
Wire Wire Line
	1850 4600 1950 4600
Connection ~ 1950 4600
Text GLabel 3700 6950 2    50   Input ~ 0
LCD_DATA
Text GLabel 3750 7050 2    50   Input ~ 0
LCD_CK
Text GLabel 3750 7150 2    50   Input ~ 0
LCD_RE
Wire Wire Line
	3450 6950 3700 6950
Wire Wire Line
	3450 7050 3750 7050
Wire Wire Line
	3450 7150 3750 7150
$Comp
L Regulator_Switching:LM2596S-5 U4
U 1 1 5D8CD0BE
P 8400 1650
F 0 "U4" H 8400 2017 50  0000 C CNN
F 1 "LM2596S-5" H 8400 1926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 8450 1400 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 8400 1650 50  0001 C CNN
	1    8400 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5D8CEB07
P 2550 9800
F 0 "J1" H 2468 9475 50  0000 C CNN
F 1 "24v-INPUT" H 2550 10250 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_3-G-5.08_1x03_P5.08mm_Vertical" H 2550 9800 50  0001 C CNN
F 3 "~" H 2550 9800 50  0001 C CNN
	1    2550 9800
	-1   0    0    1   
$EndComp
Text GLabel 3050 9800 2    50   Input ~ 0
v24
Wire Notes Line
	1000 9000 5300 9000
Wire Notes Line
	5300 9000 5300 11000
Wire Notes Line
	5300 11000 1000 11000
Wire Notes Line
	1000 11000 1000 9050
Text Notes 1450 10800 0    50   ~ 0
Power input terminal\n
Wire Wire Line
	3100 2300 3100 1550
$Comp
L power:GND #PWR0103
U 1 1 5D8DF44E
P 1750 1250
F 0 "#PWR0103" H 1750 1000 50  0001 C CNN
F 1 "GND" H 1755 1077 50  0000 C CNN
F 2 "" H 1750 1250 50  0001 C CNN
F 3 "" H 1750 1250 50  0001 C CNN
	1    1750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1450 2300 1400
Wire Wire Line
	2300 1400 2000 1400
Wire Wire Line
	2000 1400 2000 1150
Wire Wire Line
	2000 1150 1750 1150
Wire Wire Line
	1750 1150 1750 1250
Wire Wire Line
	2500 1450 2500 1100
Wire Wire Line
	2500 1100 4000 1100
NoConn ~ 2850 2600
NoConn ~ 2850 2500
NoConn ~ 2750 9700
NoConn ~ 3600 1850
NoConn ~ 3600 1950
NoConn ~ 3600 2050
NoConn ~ 3600 2150
Text GLabel 6600 1550 0    50   Input ~ 0
v24
Wire Wire Line
	7900 1550 7200 1550
$Comp
L power:GND #PWR0104
U 1 1 5D906BD8
P 8400 2300
F 0 "#PWR0104" H 8400 2050 50  0001 C CNN
F 1 "GND" H 8405 2127 50  0000 C CNN
F 2 "" H 8400 2300 50  0001 C CNN
F 3 "" H 8400 2300 50  0001 C CNN
	1    8400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2300 8400 2050
Wire Wire Line
	7900 1750 7900 2050
Wire Wire Line
	7900 2050 8400 2050
Connection ~ 8400 2050
Wire Wire Line
	8400 2050 8400 1950
$Comp
L Device:CP1 C3
U 1 1 5D90BB06
P 7200 1800
F 0 "C3" H 7315 1846 50  0000 L CNN
F 1 "47uF" H 7315 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7200 1800 50  0001 C CNN
F 3 "~" H 7200 1800 50  0001 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5D90C7AA
P 9900 1900
F 0 "C4" H 10015 1946 50  0000 L CNN
F 1 "22uF" H 10015 1855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9900 1900 50  0001 C CNN
F 3 "~" H 9900 1900 50  0001 C CNN
	1    9900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1650 7200 1550
Connection ~ 7200 1550
Wire Wire Line
	7200 1550 6600 1550
Wire Wire Line
	7200 1950 7200 2050
Wire Wire Line
	7200 2050 7900 2050
Connection ~ 7900 2050
Wire Wire Line
	9900 2050 9050 2050
$Comp
L pspice:INDUCTOR L1
U 1 1 5D91DDC1
P 9400 1750
F 0 "L1" H 9400 1965 50  0000 C CNN
F 1 "INDUCTOR" H 9400 1874 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Horizontal_D6.5mm_P10.00mm_Diameter7-5mm_Amidon-T25" H 9400 1750 50  0001 C CNN
F 3 "~" H 9400 1750 50  0001 C CNN
	1    9400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1750 9050 1750
Wire Wire Line
	9650 1750 9900 1750
Wire Wire Line
	8900 1550 8900 1300
Wire Wire Line
	9900 1750 10300 1750
Wire Wire Line
	10500 1750 10500 1300
Connection ~ 9900 1750
Wire Wire Line
	8900 1300 10500 1300
Connection ~ 10500 1300
$Comp
L Device:C C5
U 1 1 5D9316E9
P 10300 1900
F 0 "C5" H 10415 1946 50  0000 L CNN
F 1 "100nF" H 10415 1855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 10338 1750 50  0001 C CNN
F 3 "~" H 10300 1900 50  0001 C CNN
	1    10300 1900
	1    0    0    -1  
$EndComp
Connection ~ 10300 1750
Wire Wire Line
	10300 1750 10500 1750
Wire Wire Line
	9900 2050 10300 2050
Connection ~ 9900 2050
$Comp
L power:GND #PWR0107
U 1 1 5D95365F
P 3100 9900
F 0 "#PWR0107" H 3100 9650 50  0001 C CNN
F 1 "GND" H 3105 9727 50  0000 C CNN
F 2 "" H 3100 9900 50  0001 C CNN
F 3 "" H 3100 9900 50  0001 C CNN
	1    3100 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1100 10500 1300
Wire Wire Line
	4400 1850 4650 1850
$Comp
L power:+5V #PWR0105
U 1 1 5D983A3D
P 4000 1000
F 0 "#PWR0105" H 4000 850 50  0001 C CNN
F 1 "+5V" H 4015 1173 50  0000 C CNN
F 2 "" H 4000 1000 50  0001 C CNN
F 3 "" H 4000 1000 50  0001 C CNN
	1    4000 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5D986D23
P 10500 1100
F 0 "#PWR0108" H 10500 950 50  0001 C CNN
F 1 "+5V" H 10515 1273 50  0000 C CNN
F 2 "" H 10500 1100 50  0001 C CNN
F 3 "" H 10500 1100 50  0001 C CNN
	1    10500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 9800 2900 9800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D9972C0
P 2900 9600
F 0 "#FLG0101" H 2900 9675 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 9773 50  0000 C CNN
F 2 "" H 2900 9600 50  0001 C CNN
F 3 "~" H 2900 9600 50  0001 C CNN
	1    2900 9600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D9975DD
P 3500 9900
F 0 "#FLG0102" H 3500 9975 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 10073 50  0000 C CNN
F 2 "" H 3500 9900 50  0001 C CNN
F 3 "~" H 3500 9900 50  0001 C CNN
	1    3500 9900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 9600 2900 9800
Connection ~ 2900 9800
Wire Wire Line
	2900 9800 3050 9800
$Comp
L Device:R R4
U 1 1 5D99FCC2
P 11050 2350
F 0 "R4" V 10843 2350 50  0000 C CNN
F 1 "5w 10" V 10934 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W9.0mm_P10.16mm_Vertical" V 10980 2350 50  0001 C CNN
F 3 "~" H 11050 2350 50  0001 C CNN
	1    11050 2350
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5D9A445A
P 9050 1900
F 0 "D1" V 9004 1979 50  0000 L CNN
F 1 "D_Schottky" V 9095 1979 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 9050 1900 50  0001 C CNN
F 3 "~" H 9050 1900 50  0001 C CNN
	1    9050 1900
	0    1    1    0   
$EndComp
Connection ~ 9050 1750
Wire Wire Line
	9050 1750 9150 1750
Connection ~ 9050 2050
Wire Wire Line
	9050 2050 8400 2050
$Comp
L Connector:USB_A J2
U 1 1 5D9A561D
P 12250 2050
F 0 "J2" V 12353 2379 50  0000 L CNN
F 1 "USB_A" V 12262 2379 50  0000 L CNN
F 2 "Connector_USB:USB_A_Stewart_SS-52100-001_Horizontal" H 12400 2000 50  0001 C CNN
F 3 " ~" H 12400 2000 50  0001 C CNN
	1    12250 2050
	0    -1   -1   0   
$EndComp
NoConn ~ 12250 1750
NoConn ~ 12350 1750
NoConn ~ 12650 2150
Wire Wire Line
	12650 2050 12800 2050
Wire Wire Line
	12800 2050 12800 2350
Text GLabel 3900 5750 2    50   Input ~ 0
ADC_5V_0
Wire Wire Line
	3450 5750 3900 5750
Text GLabel 3900 5850 2    50   Input ~ 0
ADC_5S_1
Wire Wire Line
	3450 5850 3900 5850
Text GLabel 11450 1400 2    50   Input ~ 0
ADC_5V_0
Text GLabel 11250 2550 2    50   Input ~ 0
ADC_5S_1
Wire Wire Line
	11250 2550 11250 2350
Wire Wire Line
	11250 2350 11200 2350
Wire Wire Line
	12800 2350 11250 2350
Connection ~ 11250 2350
Wire Wire Line
	10500 1750 11450 1750
Connection ~ 10500 1750
Wire Wire Line
	11450 1400 11450 1750
Connection ~ 11450 1750
Wire Wire Line
	11450 1750 12050 1750
Wire Wire Line
	2750 9900 3100 9900
Wire Wire Line
	3100 9900 3500 9900
Connection ~ 3100 9900
Wire Notes Line
	6000 750  13050 750 
Wire Notes Line
	13050 750  13050 3000
Wire Notes Line
	13050 3000 6000 3000
Wire Notes Line
	6000 3000 6000 750 
Text Notes 6600 2850 0    50   ~ 0
+5V power source 
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5DA0EE7A
P 12400 7500
F 0 "J3" H 12318 7175 50  0000 C CNN
F 1 "24v_OUTPUT" H 12400 7950 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_3-G-5.08_1x03_P5.08mm_Vertical" H 12400 7500 50  0001 C CNN
F 3 "~" H 12400 7500 50  0001 C CNN
	1    12400 7500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2596S-ADJ U5
U 1 1 5DA2FC6C
P 8050 5000
F 0 "U5" H 8050 5367 50  0000 C CNN
F 1 "LM2596S-ADJ" H 8050 5276 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 8100 4750 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 8050 5000 50  0001 C CNN
	1    8050 5000
	1    0    0    -1  
$EndComp
Text GLabel 6300 4900 0    50   Input ~ 0
v24
Wire Wire Line
	7550 4900 6850 4900
$Comp
L power:GND #PWR0109
U 1 1 5DA34443
P 8050 5700
F 0 "#PWR0109" H 8050 5450 50  0001 C CNN
F 1 "GND" H 8055 5527 50  0000 C CNN
F 2 "" H 8050 5700 50  0001 C CNN
F 3 "" H 8050 5700 50  0001 C CNN
	1    8050 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C6
U 1 1 5DA3875B
P 6850 5200
F 0 "C6" H 6965 5246 50  0000 L CNN
F 1 "47uF" H 6965 5155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6850 5200 50  0001 C CNN
F 3 "~" H 6850 5200 50  0001 C CNN
	1    6850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4900 6850 5050
Connection ~ 6850 4900
Wire Wire Line
	6850 4900 6300 4900
Wire Wire Line
	6850 5350 6850 5550
Wire Wire Line
	6850 5550 8050 5550
Wire Wire Line
	8050 5300 8050 5550
Connection ~ 8050 5550
Wire Wire Line
	8050 5550 8050 5700
$Comp
L Device:D_Schottky D2
U 1 1 5DA40C8D
P 8900 5250
F 0 "D2" V 8854 5329 50  0000 L CNN
F 1 "D_Schottky" V 8945 5329 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 8900 5250 50  0001 C CNN
F 3 "~" H 8900 5250 50  0001 C CNN
	1    8900 5250
	0    1    1    0   
$EndComp
$Comp
L pspice:INDUCTOR L2
U 1 1 5DA412EC
P 9400 5100
F 0 "L2" H 9400 5315 50  0000 C CNN
F 1 "INDUCTOR" H 9400 5224 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Horizontal_D6.5mm_P10.00mm_Diameter7-5mm_Amidon-T25" H 9400 5100 50  0001 C CNN
F 3 "~" H 9400 5100 50  0001 C CNN
	1    9400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5100 8900 5100
Wire Wire Line
	9150 5100 8900 5100
Connection ~ 8900 5100
Wire Wire Line
	8900 5400 8900 5550
Wire Wire Line
	8900 5550 8050 5550
$Comp
L Device:CP1 C7
U 1 1 5DA4E6A4
P 10000 5250
F 0 "C7" H 10115 5296 50  0000 L CNN
F 1 "22uF" H 10115 5205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 10000 5250 50  0001 C CNN
F 3 "~" H 10000 5250 50  0001 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5DA4F282
P 10550 5250
F 0 "C8" H 10665 5296 50  0000 L CNN
F 1 "100nF" H 10665 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 10588 5100 50  0001 C CNN
F 3 "~" H 10550 5250 50  0001 C CNN
	1    10550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5100 10000 5100
Wire Wire Line
	10000 5100 10550 5100
Connection ~ 10000 5100
$Comp
L Device:R_POT RV1
U 1 1 5DA5949F
P 11250 5350
F 0 "RV1" V 11135 5350 50  0000 C CNN
F 1 "R_POT" V 11044 5350 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PC-16_Single_Horizontal" H 11250 5350 50  0001 C CNN
F 3 "~" H 11250 5350 50  0001 C CNN
	1    11250 5350
	-1   0    0    1   
$EndComp
Connection ~ 10550 5100
Wire Wire Line
	8550 4900 8800 4900
Wire Wire Line
	8800 4900 8800 4600
Wire Wire Line
	11250 5550 10550 5550
Connection ~ 8900 5550
Wire Wire Line
	10000 5400 10000 5550
Connection ~ 10000 5550
Wire Wire Line
	10000 5550 8900 5550
Wire Wire Line
	10550 5400 10550 5550
Connection ~ 10550 5550
Wire Wire Line
	10550 5550 10000 5550
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 5DA73191
P 12650 5100
F 0 "J4" H 12568 4775 50  0000 C CNN
F 1 "ADJ_OUTPUT" H 12350 5350 50  0000 C CNN
F 2 "Connector_Phoenix_MC_HighVoltage:PhoenixContact_MCV_1,5_3-G-5.08_1x03_P5.08mm_Vertical" H 12650 5100 50  0001 C CNN
F 3 "~" H 12650 5100 50  0001 C CNN
	1    12650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 5550 12450 5200
$Comp
L Device:R R5
U 1 1 5DA863B6
P 12050 5550
F 0 "R5" V 11843 5550 50  0000 C CNN
F 1 "5w 10" V 11934 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W9.0mm_P10.16mm_Vertical" V 11980 5550 50  0001 C CNN
F 3 "~" H 12050 5550 50  0001 C CNN
	1    12050 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	12200 5550 12450 5550
Wire Wire Line
	11250 5100 11450 5100
Text GLabel 3900 5950 2    50   Input ~ 0
ADC_ADJ_2
Text GLabel 3900 6050 2    50   Input ~ 0
ADC_ADJS_3
Wire Wire Line
	3450 5950 3900 5950
Wire Wire Line
	3450 6050 3900 6050
Text GLabel 12450 5800 2    50   Input ~ 0
ADC_ADJS_3
Wire Wire Line
	12450 5800 12450 5550
Connection ~ 12450 5550
NoConn ~ 12450 5000
Wire Wire Line
	11900 5550 11900 5650
Wire Wire Line
	11900 5650 7550 5650
Wire Wire Line
	7550 5650 7550 5100
$Comp
L Device:R R6
U 1 1 5DABA1D5
P 11450 4950
F 0 "R6" H 11380 4904 50  0000 R CNN
F 1 "10K" H 11380 4995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11380 4950 50  0001 C CNN
F 3 "~" H 11450 4950 50  0001 C CNN
	1    11450 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5DABA655
P 11600 4800
F 0 "R7" V 11393 4800 50  0000 C CNN
F 1 "1K" V 11484 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11530 4800 50  0001 C CNN
F 3 "~" H 11600 4800 50  0001 C CNN
	1    11600 4800
	0    1    1    0   
$EndComp
Connection ~ 11450 5100
Wire Wire Line
	11450 5100 12450 5100
Wire Wire Line
	11750 4800 11900 4800
Wire Wire Line
	11900 4800 11900 5550
Connection ~ 11900 5550
Text GLabel 11450 4400 2    50   Input ~ 0
ADC_ADJ_2
Wire Wire Line
	11450 4400 11450 4800
Connection ~ 11450 4800
Wire Notes Line
	6000 4000 13050 4000
Wire Notes Line
	13050 4000 13050 6150
Wire Notes Line
	13050 6150 6000 6150
Wire Notes Line
	6000 6150 6000 4000
Text Notes 6800 6000 0    50   ~ 0
Adjustable power source\n
$Comp
L Transistor_FET:IRF740 Q1
U 1 1 5DB0D5E4
P 8800 7200
F 0 "Q1" H 9006 7246 50  0000 L CNN
F 1 "IRFZ44" H 9006 7155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9050 7125 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 8800 7200 50  0001 L CNN
	1    8800 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DB0EE22
P 8900 7950
F 0 "#PWR01" H 8900 7700 50  0001 C CNN
F 1 "GND" H 8905 7777 50  0000 C CNN
F 2 "" H 8900 7950 50  0001 C CNN
F 3 "" H 8900 7950 50  0001 C CNN
	1    8900 7950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5DB14C2E
P 8400 7400
F 0 "R8" H 8330 7354 50  0000 R CNN
F 1 "10K" H 8330 7445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 7400 50  0001 C CNN
F 3 "~" H 8400 7400 50  0001 C CNN
	1    8400 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 7200 8600 7200
Wire Wire Line
	8400 7600 8900 7600
Connection ~ 8900 7600
Wire Wire Line
	8900 7600 8900 7400
Text GLabel 8900 6700 2    50   Input ~ 0
GND_ENB
Wire Wire Line
	8900 7000 8900 6700
Text GLabel 11700 5900 0    50   Input ~ 0
GND_ENB
Wire Wire Line
	11750 5550 11900 5550
Wire Wire Line
	11750 5550 11750 5900
Wire Wire Line
	11750 5900 11700 5900
Text GLabel 3700 6850 2    50   Input ~ 0
PWR_ENABLE
Wire Wire Line
	3450 6850 3700 6850
Text GLabel 7700 7200 0    50   Input ~ 0
PWR_ENABLE
Wire Wire Line
	8400 7200 8400 7250
Wire Wire Line
	8400 7600 8400 7550
Wire Wire Line
	8100 7200 8400 7200
Connection ~ 8400 7200
$Comp
L Device:LED D3
U 1 1 5DB5C325
P 8100 7550
F 0 "D3" V 8150 7750 50  0000 R CNN
F 1 "LED" V 8050 7800 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 8100 7550 50  0001 C CNN
F 3 "~" H 8100 7550 50  0001 C CNN
	1    8100 7550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5DB5F374
P 8400 7850
F 0 "R9" V 8500 7850 50  0000 C CNN
F 1 "220" V 8600 7850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 7850 50  0001 C CNN
F 3 "~" H 8400 7850 50  0001 C CNN
	1    8400 7850
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 7600 8900 7850
Wire Wire Line
	8550 7850 8900 7850
Connection ~ 8900 7850
Wire Wire Line
	8900 7850 8900 7950
Wire Wire Line
	8250 7850 8100 7850
Wire Wire Line
	8100 7850 8100 7700
Wire Wire Line
	8100 7400 8100 7200
Wire Wire Line
	7700 7200 8100 7200
Connection ~ 8100 7200
Text GLabel 11450 7700 0    50   Input ~ 0
GND_ENB
$Comp
L Device:R R12
U 1 1 5DB92057
P 12000 7700
F 0 "R12" V 12100 7700 50  0000 C CNN
F 1 "5w 10" V 12200 7700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W9.0mm_P10.16mm_Vertical" V 11930 7700 50  0001 C CNN
F 3 "~" H 12000 7700 50  0001 C CNN
	1    12000 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	12200 7700 12200 7600
$Comp
L Device:R R11
U 1 1 5DBA8EF5
P 11650 7100
F 0 "R11" V 11443 7100 50  0000 C CNN
F 1 "1K" V 11534 7100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11580 7100 50  0001 C CNN
F 3 "~" H 11650 7100 50  0001 C CNN
	1    11650 7100
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5DBA99F5
P 11500 7250
F 0 "R10" H 11430 7204 50  0000 R CNN
F 1 "10K" H 11430 7295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11430 7250 50  0001 C CNN
F 3 "~" H 11500 7250 50  0001 C CNN
	1    11500 7250
	-1   0    0    1   
$EndComp
Text GLabel 11250 7500 0    50   Input ~ 0
v24
Wire Wire Line
	11250 7500 11500 7500
Wire Wire Line
	11500 7400 11500 7500
Connection ~ 11500 7500
Wire Wire Line
	11500 7500 12200 7500
Wire Wire Line
	12150 7700 12200 7700
Wire Wire Line
	11450 7700 11800 7700
Wire Wire Line
	11800 7100 11800 7700
Connection ~ 11800 7700
Wire Wire Line
	11800 7700 11850 7700
Text GLabel 3900 6150 2    50   Input ~ 0
ADC_24V_4
Text GLabel 3900 6250 2    50   Input ~ 0
ADC_24S_5
Wire Wire Line
	3450 6150 3900 6150
Wire Wire Line
	3450 6250 3900 6250
Text GLabel 11450 6900 0    50   Input ~ 0
ADC_24V_4
Wire Wire Line
	11500 7100 11500 6900
Wire Wire Line
	11500 6900 11450 6900
Connection ~ 11500 7100
Text GLabel 12200 8000 2    50   Input ~ 0
ADC_24S_5
Wire Wire Line
	12200 7700 12200 8000
Connection ~ 12200 7700
Wire Notes Line
	13050 6450 13050 8350
Wire Notes Line
	13050 8350 10700 8350
Wire Notes Line
	10700 8350 10700 6450
Wire Notes Line
	10700 6450 13050 6450
Wire Notes Line
	9450 6400 9450 8400
Wire Notes Line
	9450 8400 7000 8400
Wire Notes Line
	7000 8400 7000 6400
Wire Notes Line
	7000 6400 9450 6400
$Comp
L Switch:SW_Push SW1
U 1 1 5DC385FF
P 8300 9650
F 0 "SW1" H 8300 9935 50  0000 C CNN
F 1 "SW_Push" H 8300 9844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CW_GPTS203211B" H 8300 9850 50  0001 C CNN
F 3 "~" H 8300 9850 50  0001 C CNN
	1    8300 9650
	1    0    0    -1  
$EndComp
Text GLabel 3700 6750 2    50   Input ~ 0
BTN_SOURCE
Wire Wire Line
	3700 6750 3450 6750
Wire Wire Line
	7800 9650 8050 9650
$Comp
L Device:R R13
U 1 1 5DC49BB9
P 8050 9850
F 0 "R13" H 7980 9804 50  0000 R CNN
F 1 "10K" H 7980 9895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 9850 50  0001 C CNN
F 3 "~" H 8050 9850 50  0001 C CNN
	1    8050 9850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 9700 8050 9650
Connection ~ 8050 9650
Wire Wire Line
	8050 9650 8100 9650
$Comp
L power:GND #PWR03
U 1 1 5DC52787
P 8350 10100
F 0 "#PWR03" H 8350 9850 50  0001 C CNN
F 1 "GND" H 8355 9927 50  0000 C CNN
F 2 "" H 8350 10100 50  0001 C CNN
F 3 "" H 8350 10100 50  0001 C CNN
	1    8350 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 10100 8050 10100
Wire Wire Line
	8050 10100 8050 10000
$Comp
L power:+5V #PWR04
U 1 1 5DC5C560
P 8950 9500
F 0 "#PWR04" H 8950 9350 50  0001 C CNN
F 1 "+5V" H 8965 9673 50  0000 C CNN
F 2 "" H 8950 9500 50  0001 C CNN
F 3 "" H 8950 9500 50  0001 C CNN
	1    8950 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 9650 8950 9650
Wire Wire Line
	8950 9650 8950 9500
Wire Notes Line
	9500 9000 7000 9000
Wire Notes Line
	7000 9000 7000 10500
Wire Notes Line
	7000 10500 9500 10500
Wire Notes Line
	9500 10500 9500 9000
Text GLabel 7800 9650 0    50   Input ~ 0
BTN_SOURCE
NoConn ~ 3450 5050
NoConn ~ 3450 5150
NoConn ~ 3450 5250
NoConn ~ 3450 5350
NoConn ~ 3450 5450
NoConn ~ 3450 5550
NoConn ~ 3450 6450
NoConn ~ 3450 6550
NoConn ~ 3450 6650
NoConn ~ 12200 7400
Wire Wire Line
	10300 2350 10300 2050
Wire Wire Line
	10300 2350 10900 2350
Connection ~ 10300 2050
Wire Wire Line
	11250 5200 11250 5100
Wire Wire Line
	10550 5100 11250 5100
Connection ~ 11250 5100
Wire Wire Line
	11250 5550 11250 5500
Wire Wire Line
	8800 4600 11000 4600
Wire Wire Line
	11000 4600 11000 5350
Wire Wire Line
	11000 5350 11100 5350
$EndSCHEMATC
