EESchema Schematic File Version 4
LIBS:transimpedanceamp-cache
EELAYER 26 0
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
L Device:R Rf1
U 1 1 5C0E7C46
P 1950 2550
F 0 "Rf1" V 1900 2650 50  0000 L CNN
F 1 "100k" V 2050 2450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1880 2550 50  0001 C CNN
F 3 "~" H 1950 2550 50  0001 C CNN
	1    1950 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 3000 1650 2550
Wire Wire Line
	2100 2550 2350 2550
$Comp
L Device:D_Photo_ALT D1
U 1 1 5C1512B6
P 1400 3050
F 0 "D1" V 1396 2972 50  0000 R CNN
F 1 "PD" V 1305 2972 50  0000 R CNN
F 2 "" H 1350 3050 50  0001 C CNN
F 3 "~" H 1350 3050 50  0001 C CNN
	1    1400 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2550 1650 2550
Wire Wire Line
	1400 3150 1400 3200
$Comp
L Amplifier_Operational:OPA2340 U1
U 1 1 5C0E7ACE
P 1950 3100
F 0 "U1" H 1900 3100 50  0000 C CNN
F 1 "OPA2336" H 1950 2850 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1950 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 1950 3100 50  0001 C CNN
	1    1950 3100
	1    0    0    1   
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C1679D2
P 5300 3300
F 0 "A1" H 5300 2214 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 5300 3250 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5450 2350 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5300 2300 50  0001 C CNN
	1    5300 3300
	-1   0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADS1115IDGS U3
U 1 1 5C167A7A
P 3700 3700
F 0 "U3" H 3450 4150 50  0000 C CNN
F 1 "ADS1115IDGS" H 4000 4150 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 3700 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 3650 2800 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-3302_SOT89 U2
U 1 1 5C168D78
P 2850 1050
F 0 "U2" H 2850 1292 50  0000 C CNN
F 1 "MCP1703A-3302" H 2850 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 2850 1250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 2850 1000 50  0001 C CNN
	1    2850 1050
	1    0    0    -1  
$EndComp
NoConn ~ 5400 2300
NoConn ~ 5200 2300
NoConn ~ 4800 3100
NoConn ~ 4800 2800
NoConn ~ 4800 2700
NoConn ~ 5800 2700
NoConn ~ 5800 2800
NoConn ~ 5800 2900
NoConn ~ 5800 3000
NoConn ~ 5800 3100
NoConn ~ 5800 3200
NoConn ~ 5800 3300
NoConn ~ 5800 3400
NoConn ~ 5800 3500
NoConn ~ 5800 3600
NoConn ~ 5800 3700
NoConn ~ 5800 3800
NoConn ~ 5800 3900
NoConn ~ 5800 4000
NoConn ~ 4800 4000
NoConn ~ 4800 3900
NoConn ~ 4800 3600
NoConn ~ 4800 3500
NoConn ~ 4800 3400
NoConn ~ 4800 3300
Wire Wire Line
	4100 3800 4800 3800
Wire Wire Line
	4800 3700 4100 3700
Wire Wire Line
	4100 3900 4100 4100
Wire Wire Line
	4100 4100 3700 4100
$Comp
L power:GNDA #PWR03
U 1 1 5C16F5E7
P 3700 4150
F 0 "#PWR03" H 3700 3900 50  0001 C CNN
F 1 "GNDA" H 3705 3977 50  0000 C CNN
F 2 "" H 3700 4150 50  0001 C CNN
F 3 "" H 3700 4150 50  0001 C CNN
	1    3700 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 4100 3700 4150
Connection ~ 3700 4100
Text Label 3700 3200 2    50   ~ 0
3v3
$Comp
L power:GNDA #PWR02
U 1 1 5C17317B
P 2850 1500
F 0 "#PWR02" H 2850 1250 50  0001 C CNN
F 1 "GNDA" H 2855 1327 50  0000 C CNN
F 2 "Connector:Banana_Jack_1Pin" H 2850 1500 50  0001 C CNN
F 3 "" H 2850 1500 50  0001 C CNN
	1    2850 1500
	1    0    0    -1  
$EndComp
NoConn ~ 4100 3500
NoConn ~ 3300 3900
NoConn ~ 3300 3800
Connection ~ 1650 2550
Wire Wire Line
	1800 2550 1650 2550
Wire Wire Line
	2350 2550 2350 3100
Wire Wire Line
	2250 3100 2350 3100
Connection ~ 2350 3100
$Comp
L power:GND #PWR04
U 1 1 5C178B41
P 5250 4500
F 0 "#PWR04" H 5250 4250 50  0001 C CNN
F 1 "GND" H 5255 4327 50  0000 C CNN
F 2 "" H 5250 4500 50  0001 C CNN
F 3 "" H 5250 4500 50  0001 C CNN
	1    5250 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 4300 5200 4400
Wire Wire Line
	5200 4400 5250 4400
Wire Wire Line
	5300 4400 5300 4300
Wire Wire Line
	5250 4500 5250 4400
Connection ~ 5250 4400
Wire Wire Line
	5250 4400 5300 4400
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5C17992D
P 1400 1050
F 0 "J1" H 1506 1228 50  0000 C CNN
F 1 "5VIn" H 1506 1137 50  0000 C CNN
F 2 "" H 1400 1050 50  0001 C CNN
F 3 "~" H 1400 1050 50  0001 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
Text Label 1750 1050 0    50   ~ 0
5V
$Comp
L power:GND #PWR01
U 1 1 5C17A293
P 2050 1600
F 0 "#PWR01" H 2050 1350 50  0001 C CNN
F 1 "GND" H 2055 1427 50  0000 C CNN
F 2 "" H 2050 1600 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2340 U1
U 3 1 5C180406
P 4500 1200
F 0 "U1" H 4550 1150 50  0000 C CNN
F 1 "OPA2336" H 4650 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4500 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 4500 1200 50  0001 C CNN
	3    4500 1200
	1    0    0    1   
$EndComp
Wire Wire Line
	1600 1050 1950 1050
Wire Wire Line
	2850 1350 2850 1400
Connection ~ 2850 1400
Wire Wire Line
	2850 1400 2850 1500
Wire Wire Line
	1600 1150 1750 1150
Wire Wire Line
	1750 1150 1750 1400
Wire Wire Line
	1750 1400 1950 1400
$Comp
L Device:C_Small C4
U 1 1 5C18BCF4
P 2300 1200
F 0 "C4" H 2392 1246 50  0000 L CNN
F 1 "100n" H 2392 1155 50  0000 L CNN
F 2 "" H 2300 1200 50  0001 C CNN
F 3 "~" H 2300 1200 50  0001 C CNN
	1    2300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 5C18BD92
P 1950 1200
F 0 "C3" H 2041 1246 50  0000 L CNN
F 1 "10u" H 2041 1155 50  0000 L CNN
F 2 "" H 1950 1200 50  0001 C CNN
F 3 "~" H 1950 1200 50  0001 C CNN
	1    1950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1100 1950 1050
Connection ~ 1950 1050
Wire Wire Line
	1950 1050 2300 1050
Wire Wire Line
	1950 1300 1950 1400
Connection ~ 1950 1400
Wire Wire Line
	1950 1400 2050 1400
Wire Wire Line
	2300 1100 2300 1050
Connection ~ 2300 1050
Wire Wire Line
	2300 1050 2550 1050
Wire Wire Line
	2300 1300 2300 1400
$Comp
L Device:C_Small C6
U 1 1 5C1972D3
P 3600 1200
F 0 "C6" H 3692 1246 50  0000 L CNN
F 1 "100n" H 3692 1155 50  0000 L CNN
F 2 "" H 3600 1200 50  0001 C CNN
F 3 "~" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5C1972DA
P 3250 1200
F 0 "C5" H 3341 1246 50  0000 L CNN
F 1 "10u" H 3341 1155 50  0000 L CNN
F 2 "" H 3250 1200 50  0001 C CNN
F 3 "~" H 3250 1200 50  0001 C CNN
	1    3250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1400 3250 1400
Wire Wire Line
	3250 1400 3250 1300
Wire Wire Line
	3250 1400 3600 1400
Wire Wire Line
	3600 1400 3600 1300
Connection ~ 3250 1400
Wire Wire Line
	3250 1100 3250 1050
Wire Wire Line
	3250 1050 3150 1050
Wire Wire Line
	3600 1100 3600 1050
Wire Wire Line
	3600 1050 3250 1050
Connection ~ 3250 1050
Wire Wire Line
	4400 900  4100 900 
Wire Wire Line
	3600 900  3600 1050
Connection ~ 3600 1050
Wire Wire Line
	4400 1500 4100 1500
Wire Wire Line
	3600 1500 3600 1400
Connection ~ 3600 1400
Wire Wire Line
	2700 3100 2700 3600
Wire Wire Line
	2350 3100 2700 3100
$Comp
L Device:C_Small C1
U 1 1 5C1ADB59
P 1950 2200
F 0 "C1" V 2000 2100 50  0000 C CNN
F 1 "6n" V 1850 2200 50  0000 C CNN
F 2 "" H 1950 2200 50  0001 C CNN
F 3 "~" H 1950 2200 50  0001 C CNN
	1    1950 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 2200 1650 2200
Wire Wire Line
	1650 2200 1650 2550
Wire Wire Line
	2050 2200 2350 2200
Wire Wire Line
	2350 2200 2350 2550
Connection ~ 2350 2550
Wire Wire Line
	1400 2850 1400 2550
Wire Wire Line
	1400 3200 1500 3200
Wire Wire Line
	2700 4500 2700 3700
Wire Wire Line
	2050 1600 2050 1400
Connection ~ 2050 1400
Wire Wire Line
	2050 1400 2300 1400
$Comp
L Device:R_Small R1
U 1 1 5C1D4363
P 2550 1400
F 0 "R1" V 2650 1450 50  0000 C CNN
F 1 "0" V 2550 1400 50  0000 C CNN
F 2 "" H 2550 1400 50  0001 C CNN
F 3 "~" H 2550 1400 50  0001 C CNN
	1    2550 1400
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 1400 2450 1400
Connection ~ 2300 1400
Wire Wire Line
	2650 1400 2850 1400
$Comp
L Device:R Rf2
U 1 1 5C1DC41F
P 1950 3950
F 0 "Rf2" V 1900 4050 50  0000 L CNN
F 1 "100k" V 2050 3850 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1880 3950 50  0001 C CNN
F 3 "~" H 1950 3950 50  0001 C CNN
	1    1950 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 4400 1650 3950
Wire Wire Line
	2100 3950 2350 3950
$Comp
L Device:D_Photo_ALT D2
U 1 1 5C1DC428
P 1400 4450
F 0 "D2" V 1396 4372 50  0000 R CNN
F 1 "PD" V 1305 4372 50  0000 R CNN
F 2 "" H 1350 4450 50  0001 C CNN
F 3 "~" H 1350 4450 50  0001 C CNN
	1    1400 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 3950 1650 3950
Wire Wire Line
	1400 4550 1400 4600
$Comp
L Amplifier_Operational:OPA2340 U1
U 2 1 5C1DC431
P 1950 4500
F 0 "U1" H 1900 4500 50  0000 C CNN
F 1 "OPA2336" H 1950 4250 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1950 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa4340.pdf" H 1950 4500 50  0001 C CNN
	2    1950 4500
	1    0    0    1   
$EndComp
Connection ~ 1650 3950
Wire Wire Line
	1800 3950 1650 3950
Wire Wire Line
	2350 3950 2350 4500
Wire Wire Line
	2250 4500 2350 4500
Connection ~ 2350 4500
Wire Wire Line
	2350 4500 2700 4500
$Comp
L Device:C_Small C2
U 1 1 5C1DC43E
P 1950 3600
F 0 "C2" V 2000 3500 50  0000 C CNN
F 1 "6n" V 1850 3600 50  0000 C CNN
F 2 "" H 1950 3600 50  0001 C CNN
F 3 "~" H 1950 3600 50  0001 C CNN
	1    1950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 3600 1650 3600
Wire Wire Line
	1650 3600 1650 3950
Wire Wire Line
	2050 3600 2350 3600
Wire Wire Line
	2350 3600 2350 3950
Connection ~ 2350 3950
Wire Wire Line
	1400 4250 1400 3950
Wire Wire Line
	1400 4600 1500 4600
$Comp
L Device:C_Small C7
U 1 1 5C1DF519
P 4100 1200
F 0 "C7" H 4192 1246 50  0000 L CNN
F 1 "100n" H 4192 1155 50  0000 L CNN
F 2 "" H 4100 1200 50  0001 C CNN
F 3 "~" H 4100 1200 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1100 4100 900 
Connection ~ 4100 900 
Wire Wire Line
	4100 900  3600 900 
Wire Wire Line
	4100 1300 4100 1500
Connection ~ 4100 1500
Wire Wire Line
	4100 1500 3600 1500
Text Label 3300 1050 0    50   ~ 0
3v3
Wire Wire Line
	2700 3600 3300 3600
Wire Wire Line
	2700 3700 3300 3700
$Comp
L power:GNDA #PWR?
U 1 1 5CD60270
P 1500 4750
F 0 "#PWR?" H 1500 4500 50  0001 C CNN
F 1 "GNDA" H 1505 4577 50  0000 C CNN
F 2 "" H 1500 4750 50  0001 C CNN
F 3 "" H 1500 4750 50  0001 C CNN
	1    1500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5CD602C0
P 1500 3350
F 0 "#PWR?" H 1500 3100 50  0001 C CNN
F 1 "GNDA" H 1505 3177 50  0000 C CNN
F 2 "" H 1500 3350 50  0001 C CNN
F 3 "" H 1500 3350 50  0001 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4750 1500 4600
Connection ~ 1500 4600
Wire Wire Line
	1500 4600 1650 4600
Wire Wire Line
	1500 3350 1500 3200
Connection ~ 1500 3200
Wire Wire Line
	1500 3200 1650 3200
$EndSCHEMATC
