EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Alien Font Display Controller"
Date "2022-01-03"
Rev "V0.0.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP:ESP-12E U2
U 1 1 61D3A417
P 5500 2200
F 0 "U2" H 5500 2965 50  0000 C CNN
F 1 "ESP-12E" H 5500 2874 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 61D43163
P 1350 6350
F 0 "J1" H 1407 6817 50  0000 C CNN
F 1 "USB_B_Micro" H 1407 6726 50  0000 C CNN
F 2 "" H 1500 6300 50  0001 C CNN
F 3 "~" H 1500 6300 50  0001 C CNN
	1    1350 6350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 61D45828
P 2100 3950
F 0 "U1" H 2100 4192 50  0000 C CNN
F 1 "AMS1117-3.3" H 2100 4101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2100 4150 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2200 3700 50  0001 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 61D47676
P 9800 3000
F 0 "J5" H 9800 2600 50  0000 R CNN
F 1 "USB Programmer" H 10100 2700 50  0000 R CNN
F 2 "" H 9800 3000 50  0001 C CNN
F 3 "~" H 9800 3000 50  0001 C CNN
	1    9800 3000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 61D4B182
P 5500 6850
F 0 "J3" H 5608 7031 50  0000 C CNN
F 1 "5V Power" H 5608 6940 50  0000 C CNN
F 2 "" H 5500 6850 50  0001 C CNN
F 3 "~" H 5500 6850 50  0001 C CNN
	1    5500 6850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 61D4C3F5
P 4400 6850
F 0 "J2" H 4508 7031 50  0000 C CNN
F 1 "5V Power" H 4508 6940 50  0000 C CNN
F 2 "" H 4400 6850 50  0001 C CNN
F 3 "~" H 4400 6850 50  0001 C CNN
	1    4400 6850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 61D46B8E
P 9800 1450
F 0 "J4" H 9750 1150 50  0000 L CNN
F 1 "Run_Prog" H 9600 1250 50  0000 L CNN
F 2 "" H 9800 1450 50  0001 C CNN
F 3 "~" H 9800 1450 50  0001 C CNN
	1    9800 1450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 61D5881B
P 10500 4450
F 0 "J6" H 10500 4150 50  0000 C CNN
F 1 "I2C" H 10500 4250 50  0000 C CNN
F 2 "" H 10500 4450 50  0001 C CNN
F 3 "~" H 10500 4450 50  0001 C CNN
	1    10500 4450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 61D81564
P 2000 5600
F 0 "#PWR05" H 2000 5450 50  0001 C CNN
F 1 "+5V" H 2015 5773 50  0000 C CNN
F 2 "" H 2000 5600 50  0001 C CNN
F 3 "" H 2000 5600 50  0001 C CNN
	1    2000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6150 2000 6150
$Comp
L power:GND #PWR03
U 1 1 61D8306B
P 1350 7250
F 0 "#PWR03" H 1350 7000 50  0001 C CNN
F 1 "GND" H 1355 7077 50  0000 C CNN
F 2 "" H 1350 7250 50  0001 C CNN
F 3 "" H 1350 7250 50  0001 C CNN
	1    1350 7250
	1    0    0    -1  
$EndComp
NoConn ~ 1650 6350
NoConn ~ 1650 6450
NoConn ~ 1650 6550
NoConn ~ 1250 6750
$Comp
L power:GND #PWR018
U 1 1 61D8C71C
P 7600 6050
F 0 "#PWR018" H 7600 5800 50  0001 C CNN
F 1 "GND" H 7605 5877 50  0000 C CNN
F 2 "" H 7600 6050 50  0001 C CNN
F 3 "" H 7600 6050 50  0001 C CNN
	1    7600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5550 7600 6050
Wire Wire Line
	8000 5550 7600 5550
$Comp
L power:+3V3 #PWR010
U 1 1 61D90DED
P 3750 3750
F 0 "#PWR010" H 3750 3600 50  0001 C CNN
F 1 "+3V3" H 3765 3923 50  0000 C CNN
F 2 "" H 3750 3750 50  0001 C CNN
F 3 "" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR020
U 1 1 61D91684
P 8950 5400
F 0 "#PWR020" H 8950 5250 50  0001 C CNN
F 1 "+3V3" H 8965 5573 50  0000 C CNN
F 2 "" H 8950 5400 50  0001 C CNN
F 3 "" H 8950 5400 50  0001 C CNN
	1    8950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5550 8950 5550
Wire Wire Line
	8950 5550 8950 5400
$Comp
L power:+5V #PWR012
U 1 1 61D970B2
P 4800 6600
F 0 "#PWR012" H 4800 6450 50  0001 C CNN
F 1 "+5V" H 4815 6773 50  0000 C CNN
F 2 "" H 4800 6600 50  0001 C CNN
F 3 "" H 4800 6600 50  0001 C CNN
	1    4800 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6600 4800 6850
Wire Wire Line
	4600 6850 4800 6850
$Comp
L power:+5V #PWR014
U 1 1 61D9767B
P 5900 6600
F 0 "#PWR014" H 5900 6450 50  0001 C CNN
F 1 "+5V" H 5915 6773 50  0000 C CNN
F 2 "" H 5900 6600 50  0001 C CNN
F 3 "" H 5900 6600 50  0001 C CNN
	1    5900 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6600 5900 6850
Wire Wire Line
	5700 6850 5900 6850
$Comp
L power:GND #PWR013
U 1 1 61D9957C
P 4800 7250
F 0 "#PWR013" H 4800 7000 50  0001 C CNN
F 1 "GND" H 4805 7077 50  0000 C CNN
F 2 "" H 4800 7250 50  0001 C CNN
F 3 "" H 4800 7250 50  0001 C CNN
	1    4800 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6950 4800 7250
Wire Wire Line
	4600 6950 4800 6950
$Comp
L power:GND #PWR015
U 1 1 61D9C391
P 5900 7250
F 0 "#PWR015" H 5900 7000 50  0001 C CNN
F 1 "GND" H 5905 7077 50  0000 C CNN
F 2 "" H 5900 7250 50  0001 C CNN
F 3 "" H 5900 7250 50  0001 C CNN
	1    5900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6950 5900 7250
Wire Wire Line
	5700 6950 5900 6950
$Comp
L power:GND #PWR016
U 1 1 61D9E42B
P 6650 2900
F 0 "#PWR016" H 6650 2650 50  0001 C CNN
F 1 "GND" H 6655 2727 50  0000 C CNN
F 2 "" H 6650 2900 50  0001 C CNN
F 3 "" H 6650 2900 50  0001 C CNN
	1    6650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2600 6650 2900
Wire Wire Line
	6400 2600 6650 2600
$Comp
L power:GND #PWR026
U 1 1 61D9FB5A
P 9450 1750
F 0 "#PWR026" H 9450 1500 50  0001 C CNN
F 1 "GND" H 9455 1577 50  0000 C CNN
F 2 "" H 9450 1750 50  0001 C CNN
F 3 "" H 9450 1750 50  0001 C CNN
	1    9450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1550 9450 1750
Wire Wire Line
	9600 1550 9450 1550
$Comp
L power:+3V3 #PWR025
U 1 1 61DA27ED
P 9450 1200
F 0 "#PWR025" H 9450 1050 50  0001 C CNN
F 1 "+3V3" H 9465 1373 50  0000 C CNN
F 2 "" H 9450 1200 50  0001 C CNN
F 3 "" H 9450 1200 50  0001 C CNN
	1    9450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1350 9450 1200
Wire Wire Line
	9600 1350 9450 1350
$Comp
L power:+5V #PWR022
U 1 1 61DA842A
P 9250 2700
F 0 "#PWR022" H 9250 2550 50  0001 C CNN
F 1 "+5V" H 9265 2873 50  0000 C CNN
F 2 "" H 9250 2700 50  0001 C CNN
F 3 "" H 9250 2700 50  0001 C CNN
	1    9250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3000 9250 3000
$Comp
L power:GND #PWR023
U 1 1 61DAB0C9
P 9250 3350
F 0 "#PWR023" H 9250 3100 50  0001 C CNN
F 1 "GND" H 9255 3177 50  0000 C CNN
F 2 "" H 9250 3350 50  0001 C CNN
F 3 "" H 9250 3350 50  0001 C CNN
	1    9250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3100 9250 3100
$Comp
L power:+5V #PWR01
U 1 1 61DB00FF
P 850 3750
F 0 "#PWR01" H 850 3600 50  0001 C CNN
F 1 "+5V" H 865 3923 50  0000 C CNN
F 2 "" H 850 3750 50  0001 C CNN
F 3 "" H 850 3750 50  0001 C CNN
	1    850  3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61DB1E13
P 2100 4450
F 0 "#PWR06" H 2100 4200 50  0001 C CNN
F 1 "GND" H 2105 4277 50  0000 C CNN
F 2 "" H 2100 4450 50  0001 C CNN
F 3 "" H 2100 4450 50  0001 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4250 2100 4450
$Comp
L Device:C C5
U 1 1 61DBF6F7
P 9300 5900
F 0 "C5" H 9415 5946 50  0000 L CNN
F 1 "100pFd" H 9415 5855 50  0000 L CNN
F 2 "" H 9338 5750 50  0001 C CNN
F 3 "~" H 9300 5900 50  0001 C CNN
	1    9300 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 61DC3173
P 8200 4050
F 0 "R4" H 8268 4096 50  0000 L CNN
F 1 "2.2K" H 8268 4005 50  0000 L CNN
F 2 "" V 8240 4040 50  0001 C CNN
F 3 "~" H 8200 4050 50  0001 C CNN
	1    8200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4200 8200 4350
$Comp
L power:+5V #PWR019
U 1 1 61DD7419
P 8400 3550
F 0 "#PWR019" H 8400 3400 50  0001 C CNN
F 1 "+5V" H 8415 3723 50  0000 C CNN
F 2 "" H 8400 3550 50  0001 C CNN
F 3 "" H 8400 3550 50  0001 C CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4200 8600 4450
Wire Wire Line
	8400 3550 8400 3750
$Comp
L Device:R_US R5
U 1 1 61DC2057
P 8600 4050
F 0 "R5" H 8668 4096 50  0000 L CNN
F 1 "2.2K" H 8668 4005 50  0000 L CNN
F 2 "" V 8640 4040 50  0001 C CNN
F 3 "~" H 8600 4050 50  0001 C CNN
	1    8600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3750 8600 3900
Wire Wire Line
	8200 3750 8200 3900
Wire Wire Line
	7500 4050 7500 4250
Wire Wire Line
	7700 4250 7700 4400
Connection ~ 7500 4250
Wire Wire Line
	7300 4250 7300 4400
$Comp
L power:+3V3 #PWR017
U 1 1 61DE531D
P 7500 4050
F 0 "#PWR017" H 7500 3900 50  0001 C CNN
F 1 "+3V3" H 7515 4223 50  0000 C CNN
F 2 "" H 7500 4050 50  0001 C CNN
F 3 "" H 7500 4050 50  0001 C CNN
	1    7500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5050 8600 5150
Wire Wire Line
	9800 5050 10050 5050
$Comp
L Device:R_US R6
U 1 1 61DE5A98
P 9650 5050
F 0 "R6" V 9445 5050 50  0000 C CNN
F 1 "200K" V 9536 5050 50  0000 C CNN
F 2 "" V 9690 5040 50  0001 C CNN
F 3 "~" H 9650 5050 50  0001 C CNN
	1    9650 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 4850 10050 5050
$Comp
L power:+5V #PWR024
U 1 1 61D8FEFD
P 10050 4850
F 0 "#PWR024" H 10050 4700 50  0001 C CNN
F 1 "+5V" H 10065 5023 50  0000 C CNN
F 2 "" H 10050 4850 50  0001 C CNN
F 3 "" H 10050 4850 50  0001 C CNN
	1    10050 4850
	1    0    0    -1  
$EndComp
$Comp
L dk_Logic-Translators-Level-Shifters:PCA9306D_118 U3
U 1 1 61D43E2E
P 8300 5550
F 0 "U3" V 8581 5650 60  0000 C CNN
F 1 "PCA9306D_118" V 8687 5650 60  0000 C CNN
F 2 "digikey-footprints:SOIC-8_W3.9mm" H 8500 5750 60  0001 L CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9306.pdf" H 8500 5850 60  0001 L CNN
F 4 "568-4215-1-ND" H 8500 5950 60  0001 L CNN "Digi-Key_PN"
F 5 "PCA9306D,118" H 8500 6050 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 8500 6150 60  0001 L CNN "Category"
F 7 "Logic - Translators, Level Shifters" H 8500 6250 60  0001 L CNN "Family"
F 8 "https://www.nxp.com/docs/en/data-sheet/PCA9306.pdf" H 8500 6350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nxp-usa-inc/PCA9306D,118/568-4215-1-ND/1638362" H 8500 6450 60  0001 L CNN "DK_Detail_Page"
F 10 "IC TRNSLTR BIDIRECTIONAL 8SO" H 8500 6550 60  0001 L CNN "Description"
F 11 "NXP USA Inc." H 8500 6650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8500 6750 60  0001 L CNN "Status"
	1    8300 5550
	0    1    1    0   
$EndComp
Connection ~ 9300 5050
Wire Wire Line
	9300 5050 9500 5050
Wire Wire Line
	8600 5050 9300 5050
$Comp
L power:GND #PWR021
U 1 1 61E21C7F
P 9300 6050
F 0 "#PWR021" H 9300 5800 50  0001 C CNN
F 1 "GND" H 9305 5877 50  0000 C CNN
F 2 "" H 9300 6050 50  0001 C CNN
F 3 "" H 9300 6050 50  0001 C CNN
	1    9300 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4450 8600 4450
Wire Wire Line
	8200 4350 10300 4350
Connection ~ 8600 4450
Wire Wire Line
	8600 4450 10300 4450
Wire Wire Line
	8400 3750 8600 3750
Connection ~ 8400 3750
Wire Wire Line
	8200 3750 8400 3750
Wire Wire Line
	7500 4250 7700 4250
Wire Wire Line
	7300 4250 7500 4250
$Comp
L Device:R_US R3
U 1 1 61DBE4CC
P 7700 4550
F 0 "R3" H 7768 4596 50  0000 L CNN
F 1 "2.2K" H 7768 4505 50  0000 L CNN
F 2 "" V 7740 4540 50  0001 C CNN
F 3 "~" H 7700 4550 50  0001 C CNN
	1    7700 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 61DC01CA
P 7300 4550
F 0 "R2" H 7368 4596 50  0000 L CNN
F 1 "2.2K" H 7368 4505 50  0000 L CNN
F 2 "" V 7340 4540 50  0001 C CNN
F 3 "~" H 7300 4550 50  0001 C CNN
	1    7300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4350 8200 5150
Connection ~ 8200 4350
Wire Wire Line
	8400 4450 8400 5150
$Comp
L power:+3V3 #PWR011
U 1 1 61EA6EF0
P 4450 1550
F 0 "#PWR011" H 4450 1400 50  0001 C CNN
F 1 "+3V3" H 4465 1723 50  0000 C CNN
F 2 "" H 4450 1550 50  0001 C CNN
F 3 "" H 4450 1550 50  0001 C CNN
	1    4450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1550 4450 1900
Wire Wire Line
	4450 2600 4600 2600
Wire Wire Line
	4600 2100 4450 2100
Connection ~ 4450 2100
Wire Wire Line
	4450 2100 4450 2600
Wire Wire Line
	4600 1900 4450 1900
Connection ~ 4450 1900
Wire Wire Line
	4450 1900 4450 2100
Wire Wire Line
	6400 2500 6650 2500
Wire Wire Line
	6650 2500 6650 2600
Connection ~ 6650 2600
Wire Wire Line
	6400 2300 7400 2300
Wire Wire Line
	9050 1450 9600 1450
NoConn ~ 6400 2400
NoConn ~ 5750 3100
NoConn ~ 5650 3100
NoConn ~ 5550 3100
NoConn ~ 5450 3100
NoConn ~ 5350 3100
NoConn ~ 5250 3100
NoConn ~ 4600 2500
NoConn ~ 4600 2400
NoConn ~ 4600 2300
NoConn ~ 4600 2200
NoConn ~ 4600 2000
Wire Wire Line
	9250 3100 9250 3350
Wire Wire Line
	9250 2700 9250 3000
Wire Wire Line
	8500 5150 8500 4950
Wire Wire Line
	7050 2100 6400 2100
Wire Wire Line
	8300 5150 8300 5050
Wire Wire Line
	7050 2200 6400 2200
Wire Wire Line
	7300 4700 7300 5050
Wire Wire Line
	7700 4700 7700 4950
Wire Wire Line
	9400 2800 9600 2800
Wire Wire Line
	6650 1900 6400 1900
Text Label 9400 2800 0    50   ~ 0
Tx
Text Label 6650 1900 2    50   ~ 0
Tx
Wire Wire Line
	9400 2900 9600 2900
Wire Wire Line
	6650 2000 6400 2000
Text Label 6650 2000 2    50   ~ 0
Rx
Text Label 9400 2900 0    50   ~ 0
Rx
Text Label 7050 2100 2    50   ~ 0
SCL_LV
Text Label 7050 2200 2    50   ~ 0
SDA_LV
Text Label 6800 4950 0    50   ~ 0
SCL_LV
Text Label 6800 5050 0    50   ~ 0
SDA_LV
Text Label 10250 4350 2    50   ~ 0
SDA
Text Label 10250 4450 2    50   ~ 0
SCL
Text Label 9050 1450 0    50   ~ 0
FLASH
Text Label 7400 2300 2    50   ~ 0
FLASH
Wire Wire Line
	6800 5050 7300 5050
Wire Wire Line
	6800 4950 7700 4950
Connection ~ 7700 4950
Wire Wire Line
	7700 4950 8500 4950
Connection ~ 7300 5050
Wire Wire Line
	7300 5050 8300 5050
$Comp
L Device:R_US R1
U 1 1 61F71779
P 3500 4200
F 0 "R1" H 3568 4246 50  0000 L CNN
F 1 "1K" H 3568 4155 50  0000 L CNN
F 2 "" V 3540 4190 50  0001 C CNN
F 3 "~" H 3500 4200 50  0001 C CNN
	1    3500 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61F722E6
P 1050 4250
F 0 "C1" H 1165 4296 50  0000 L CNN
F 1 "0.1uFd" H 1165 4205 50  0000 L CNN
F 2 "" H 1088 4100 50  0001 C CNN
F 3 "~" H 1050 4250 50  0001 C CNN
	1    1050 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61F72A00
P 1550 4200
F 0 "C2" H 1665 4246 50  0000 L CNN
F 1 "10uFd" H 1665 4155 50  0000 L CNN
F 2 "" H 1588 4050 50  0001 C CNN
F 3 "~" H 1550 4200 50  0001 C CNN
	1    1550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61F730EA
P 2550 4250
F 0 "C3" H 2665 4296 50  0000 L CNN
F 1 "10uFd" H 2665 4205 50  0000 L CNN
F 2 "" H 2588 4100 50  0001 C CNN
F 3 "~" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61F737E1
P 3050 4200
F 0 "C4" H 3165 4246 50  0000 L CNN
F 1 "0.1uFd" H 3165 4155 50  0000 L CNN
F 2 "" H 3088 4050 50  0001 C CNN
F 3 "~" H 3050 4200 50  0001 C CNN
	1    3050 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61F743FE
P 3500 4600
F 0 "D1" V 3539 4482 50  0000 R CNN
F 1 "LED" V 3448 4482 50  0000 R CNN
F 2 "" H 3500 4600 50  0001 C CNN
F 3 "~" H 3500 4600 50  0001 C CNN
	1    3500 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3950 2550 3950
Wire Wire Line
	3750 3950 3750 3750
Wire Wire Line
	3500 4050 3500 3950
Wire Wire Line
	3050 4050 3050 3950
Connection ~ 3050 3950
Wire Wire Line
	2550 4100 2550 3950
Wire Wire Line
	3500 4350 3500 4450
$Comp
L power:GND #PWR07
U 1 1 61F93F86
P 2550 4450
F 0 "#PWR07" H 2550 4200 50  0001 C CNN
F 1 "GND" H 2555 4277 50  0000 C CNN
F 2 "" H 2550 4450 50  0001 C CNN
F 3 "" H 2550 4450 50  0001 C CNN
	1    2550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4400 2550 4450
$Comp
L power:GND #PWR08
U 1 1 61F965E3
P 3050 4450
F 0 "#PWR08" H 3050 4200 50  0001 C CNN
F 1 "GND" H 3055 4277 50  0000 C CNN
F 2 "" H 3050 4450 50  0001 C CNN
F 3 "" H 3050 4450 50  0001 C CNN
	1    3050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4350 3050 4450
$Comp
L power:GND #PWR09
U 1 1 61F98DD0
P 3500 4900
F 0 "#PWR09" H 3500 4650 50  0001 C CNN
F 1 "GND" H 3505 4727 50  0000 C CNN
F 2 "" H 3500 4900 50  0001 C CNN
F 3 "" H 3500 4900 50  0001 C CNN
	1    3500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4750 3500 4900
Wire Wire Line
	1800 3950 1550 3950
Wire Wire Line
	850  3950 850  3750
Wire Wire Line
	1050 4100 1050 3950
Wire Wire Line
	1550 4050 1550 3950
Connection ~ 1550 3950
$Comp
L power:GND #PWR04
U 1 1 61FA85A9
P 1550 4450
F 0 "#PWR04" H 1550 4200 50  0001 C CNN
F 1 "GND" H 1555 4277 50  0000 C CNN
F 2 "" H 1550 4450 50  0001 C CNN
F 3 "" H 1550 4450 50  0001 C CNN
	1    1550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4350 1550 4450
$Comp
L power:GND #PWR02
U 1 1 61FAB5A2
P 1050 4450
F 0 "#PWR02" H 1050 4200 50  0001 C CNN
F 1 "GND" H 1055 4277 50  0000 C CNN
F 2 "" H 1050 4450 50  0001 C CNN
F 3 "" H 1050 4450 50  0001 C CNN
	1    1050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4400 1050 4450
Wire Wire Line
	9300 5050 9300 5650
Wire Wire Line
	8800 5650 9300 5650
Connection ~ 9300 5650
Wire Wire Line
	9300 5650 9300 5750
Wire Wire Line
	2000 5600 2000 6150
Wire Wire Line
	1350 6750 1350 7250
Connection ~ 3500 3950
Wire Wire Line
	3500 3950 3750 3950
Wire Wire Line
	3050 3950 3500 3950
Connection ~ 2550 3950
Wire Wire Line
	2550 3950 3050 3950
Connection ~ 1050 3950
Wire Wire Line
	1050 3950 850  3950
Wire Wire Line
	1050 3950 1550 3950
$EndSCHEMATC