EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title "Smartsocket for Alien Font Display"
Date "2021-11-15"
Rev "0.0.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "http://git@github.com:jduanen/alienFontDisplay.git"
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 61B2777C
P 3900 2600
AR Path="/61A60284/61B2777C" Ref="#PWR?"  Part="1" 
AR Path="/61B2777C" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 3900 2350 50  0001 C CNN
F 1 "GND" H 3905 2427 50  0000 C CNN
F 2 "" H 3900 2600 50  0001 C CNN
F 3 "" H 3900 2600 50  0001 C CNN
	1    3900 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B2778A
P 3700 6800
AR Path="/61A60284/61B2778A" Ref="J?"  Part="1" 
AR Path="/61B2778A" Ref="J2"  Part="1" 
F 0 "J2" H 3700 6250 50  0000 C CNN
F 1 "Input Connector" H 3700 6350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3700 6800 50  0001 C CNN
F 3 "~" H 3700 6800 50  0001 C CNN
	1    3700 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR08
U 1 1 61B2779F
P 4750 7250
AR Path="/61B2779F" Ref="#PWR08"  Part="1" 
AR Path="/61A24FF0/61B2779F" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61B2779F" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 4750 7000 50  0001 C CNN
F 1 "GND1" H 4755 7077 50  0000 C CNN
F 2 "" H 4750 7250 50  0001 C CNN
F 3 "" H 4750 7250 50  0001 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6800 3900 6800
$Comp
L jdn_symbols:IEL-O-VI_C63.396.208-02 DS?
U 1 1 61B283DA
P 9900 3500
AR Path="/61A6019D/61B283DA" Ref="DS?"  Part="1" 
AR Path="/61B283DA" Ref="DS1"  Part="1" 
F 0 "DS1" H 9400 4900 50  0000 C CNN
F 1 "IEL-O-VI_C63.396.208-02" H 9400 4800 50  0000 C CNN
F 2 "" H 10050 4300 50  0001 C CNN
F 3 "" H 10050 4300 50  0001 C CNN
	1    9900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2200 10000 1900
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B33FFE
P 5550 6800
AR Path="/61A60284/61B33FFE" Ref="J?"  Part="1" 
AR Path="/61B33FFE" Ref="J3"  Part="1" 
F 0 "J3" H 5550 6250 50  0000 C CNN
F 1 "Output Connector" H 5550 6350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5550 6800 50  0001 C CNN
F 3 "~" H 5550 6800 50  0001 C CNN
	1    5550 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 1900 8350 1900
Wire Wire Line
	8350 1900 8350 5150
Wire Wire Line
	10000 4450 10000 4300
Wire Wire Line
	9500 4300 9500 4600
Wire Wire Line
	10350 3150 10650 3150
Wire Wire Line
	10650 3150 10650 1450
Wire Wire Line
	9150 3550 8950 3550
Wire Wire Line
	10350 2800 10450 2800
Wire Wire Line
	10450 2800 10450 1650
Wire Wire Line
	7650 1650 7650 4000
Wire Wire Line
	7650 1650 10450 1650
Wire Wire Line
	9150 2800 8000 2800
Wire Wire Line
	8000 2800 8000 4600
Wire Wire Line
	9150 3150 7300 3150
Wire Wire Line
	9700 4300 9700 4750
$Comp
L power:GND1 #PWR09
U 1 1 61BF0D03
P 9700 4750
AR Path="/61BF0D03" Ref="#PWR09"  Part="1" 
AR Path="/61A24FF0/61BF0D03" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61BF0D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 9700 4500 50  0001 C CNN
F 1 "GND1" H 9705 4577 50  0000 C CNN
F 2 "" H 9700 4750 50  0001 C CNN
F 3 "" H 9700 4750 50  0001 C CNN
	1    9700 4750
	-1   0    0    -1  
$EndComp
Text GLabel 4750 6250 1    50   Output ~ 0
HV_AC
Wire Wire Line
	3900 6900 4750 6900
Text Label 5550 6900 0    50   ~ 0
Rx
Text Label 3700 6900 2    50   ~ 0
Rx
Text Label 3700 6800 2    50   ~ 0
Tx
Text Label 3700 6600 2    50   ~ 0
HV_GND
Text Label 3700 6700 2    50   ~ 0
HV_AC
Text Label 3700 7000 2    50   ~ 0
+5V
Text Label 3700 7100 2    50   ~ 0
GND
Wire Wire Line
	3900 7100 4500 7100
Wire Wire Line
	3900 6700 4750 6700
Wire Wire Line
	3900 6600 5350 6600
Wire Wire Line
	5350 7100 4500 7100
Connection ~ 4500 7100
Wire Wire Line
	4750 6250 4750 6700
Connection ~ 4750 6700
Wire Wire Line
	4750 6700 5350 6700
Wire Wire Line
	4750 6900 4750 7250
Connection ~ 4750 6900
Wire Wire Line
	4750 6900 5350 6900
$Sheet
S 1700 6350 1050 900 
U 61C69D2C
F0 "3v3Regulator" 50
F1 "3v3Regulator.sch" 50
$EndSheet
$Comp
L Device:C C2
U 1 1 61C8D806
P 3900 1950
F 0 "C2" H 3650 1950 50  0000 L CNN
F 1 "0.1 uF 20V ceramic" H 3100 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3938 1800 50  0001 C CNN
F 3 "~" H 3900 1950 50  0001 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1650 1950 1800
Connection ~ 1950 1800
$Comp
L Device:C C1
U 1 1 61C92BF5
P 1100 3250
F 0 "C1" H 1215 3296 50  0000 L CNN
F 1 "0.1 uF 20V ceramic" H 1215 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1138 3100 50  0001 C CNN
F 3 "~" H 1100 3250 50  0001 C CNN
	1    1100 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 61C93315
P 1100 2500
F 0 "R1" H 1168 2546 50  0000 L CNN
F 1 "10 Kohm" H 1168 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1140 2490 50  0001 C CNN
F 3 "~" H 1100 2500 50  0001 C CNN
	1    1100 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 61C93BAD
P 1550 2900
F 0 "R2" V 1345 2900 50  0000 C CNN
F 1 "470 ohm" V 1436 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1590 2890 50  0001 C CNN
F 3 "~" H 1550 2900 50  0001 C CNN
	1    1550 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 2650 1100 2900
Wire Wire Line
	1400 2900 1100 2900
Connection ~ 1100 2900
Wire Wire Line
	1100 2900 1100 3100
Wire Wire Line
	1100 1800 1950 1800
$Comp
L power:GND #PWR?
U 1 1 61C9A025
P 1100 3500
AR Path="/61A60284/61C9A025" Ref="#PWR?"  Part="1" 
AR Path="/61C9A025" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1100 3250 50  0001 C CNN
F 1 "GND" H 1105 3327 50  0000 C CNN
F 2 "" H 1100 3500 50  0001 C CNN
F 3 "" H 1100 3500 50  0001 C CNN
	1    1100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3400 1100 3500
Wire Wire Line
	2150 2450 1950 2450
Wire Wire Line
	1950 1800 3900 1800
Wire Wire Line
	3400 2750 3650 2750
Wire Wire Line
	3750 2600 3400 2600
Wire Wire Line
	4100 1250 5150 1250
Wire Wire Line
	3400 3200 4200 3200
Wire Wire Line
	4300 2350 4300 3350
Wire Wire Line
	4300 3350 3400 3350
Wire Wire Line
	1950 1800 1950 2450
Wire Wire Line
	1100 1800 1100 2350
Wire Wire Line
	4850 5150 4850 4250
Wire Wire Line
	4850 4250 2000 4250
Wire Wire Line
	2000 4250 2000 3650
Wire Wire Line
	2000 3650 2150 3650
Wire Wire Line
	4450 2900 4450 4450
Wire Wire Line
	4450 4450 1750 4450
Wire Wire Line
	1750 4450 1750 3350
Wire Wire Line
	1750 3350 2150 3350
Wire Wire Line
	1700 2900 2150 2900
Wire Wire Line
	1100 2900 750  2900
Wire Wire Line
	750  4950 1800 4950
Wire Wire Line
	4750 4350 1900 4350
Wire Wire Line
	1900 4350 1900 3500
Wire Wire Line
	1900 3500 2150 3500
Wire Wire Line
	4750 4600 4750 4350
Wire Wire Line
	4650 4650 1500 4650
Wire Wire Line
	1500 4650 1500 3050
Wire Wire Line
	1500 3050 2150 3050
Wire Wire Line
	4650 4000 4650 4650
Wire Wire Line
	4550 4550 1650 4550
Wire Wire Line
	1650 4550 1650 3200
Wire Wire Line
	1650 3200 2150 3200
Wire Wire Line
	4550 3450 4550 4550
Wire Wire Line
	3400 3050 4100 3050
Text Label 1350 5800 2    50   ~ 0
Vss
Text Label 1350 5700 2    50   ~ 0
Vdd
Text Label 1350 5600 2    50   ~ 0
\MCLR_Vpp
Text Label 1350 5500 2    50   ~ 0
ISPDAT
Text Label 1350 5400 2    50   ~ 0
ICSPCLK
Wire Wire Line
	1700 5800 1550 5800
Wire Wire Line
	1700 5900 1700 5800
Wire Wire Line
	2050 5700 1550 5700
Wire Wire Line
	2050 5850 2050 5700
Wire Wire Line
	2250 5850 2050 5850
$Comp
L power:GND #PWR?
U 1 1 61CC7740
P 1700 5900
AR Path="/61A60284/61CC7740" Ref="#PWR?"  Part="1" 
AR Path="/61CC7740" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1700 5650 50  0001 C CNN
F 1 "GND" H 1705 5727 50  0000 C CNN
F 2 "" H 1700 5900 50  0001 C CNN
F 3 "" H 1700 5900 50  0001 C CNN
	1    1700 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5600 1550 5600
Wire Wire Line
	1550 5500 3750 5500
Wire Wire Line
	3650 5400 1550 5400
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 61CBB6A4
P 1350 5600
F 0 "J1" H 1350 5950 50  0000 C CNN
F 1 "ICSP Connector" H 1350 6050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1350 5600 50  0001 C CNN
F 3 "~" H 1350 5600 50  0001 C CNN
	1    1350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4950 1800 5600
Text Label 5550 6800 0    50   ~ 0
Tx
Text Label 5550 6700 0    50   ~ 0
HV_AC
Text Label 5550 6600 0    50   ~ 0
HV_GND
Text Label 5550 7000 0    50   ~ 0
+5V
Text Label 5550 7100 0    50   ~ 0
GND
Wire Wire Line
	3400 3650 4100 3650
Wire Wire Line
	4100 3650 4100 6800
Text Label 4100 3650 2    50   ~ 0
RX1
Wire Wire Line
	3400 3500 4300 3500
Wire Wire Line
	4300 3500 4300 6800
Wire Wire Line
	4300 6800 5350 6800
Text Label 4300 3500 2    50   ~ 0
TX1
Wire Wire Line
	3400 2450 3900 2450
Wire Wire Line
	3900 2100 3900 2450
Connection ~ 3900 2450
Wire Wire Line
	3900 2450 3900 2600
NoConn ~ 3400 2900
NoConn ~ 2150 3800
NoConn ~ 3400 3800
$Comp
L jdn_symbols:PIC18F16Q40-E_SO U?
U 1 1 61B27776
P 2000 3850
AR Path="/61A60284/61B27776" Ref="U?"  Part="1" 
AR Path="/61B27776" Ref="U1"  Part="1" 
F 0 "U1" H 2775 5475 50  0000 C CNN
F 1 "PIC18F16Q40-E_SO" H 2775 5384 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2000 3850 50  0001 C CNN
F 3 "" H 2000 3850 50  0001 C CNN
	1    2000 3850
	1    0    0    -1  
$EndComp
NoConn ~ 2150 2600
NoConn ~ 2150 2750
$Comp
L power:GND #PWR?
U 1 1 61E88B39
P 4500 7400
AR Path="/61A60284/61E88B39" Ref="#PWR?"  Part="1" 
AR Path="/61E88B39" Ref="#PWR07"  Part="1" 
AR Path="/61C69D2C/61E88B39" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 4500 7150 50  0001 C CNN
F 1 "GND" H 4505 7227 50  0000 C CNN
F 2 "" H 4500 7400 50  0001 C CNN
F 3 "" H 4500 7400 50  0001 C CNN
	1    4500 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7100 4500 7400
$Comp
L power:+3V3 #PWR?
U 1 1 61E9E2A2
P 2250 5750
AR Path="/61A60284/61E9E2A2" Ref="#PWR?"  Part="1" 
AR Path="/61E9E2A2" Ref="#PWR04"  Part="1" 
AR Path="/61C69D2C/61E9E2A2" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 2250 5600 50  0001 C CNN
F 1 "+3V3" H 2265 5923 50  0000 C CNN
F 2 "" H 2250 5750 50  0001 C CNN
F 3 "" H 2250 5750 50  0001 C CNN
	1    2250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5750 2250 5850
$Comp
L power:+3V3 #PWR?
U 1 1 61EF1E64
P 1950 1650
AR Path="/61A60284/61EF1E64" Ref="#PWR?"  Part="1" 
AR Path="/61EF1E64" Ref="#PWR03"  Part="1" 
AR Path="/61C69D2C/61EF1E64" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 1950 1500 50  0001 C CNN
F 1 "+3V3" H 1965 1823 50  0000 C CNN
F 2 "" H 1950 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7000 5350 7000
Wire Wire Line
	3900 7000 4500 7000
Connection ~ 4500 7000
Wire Wire Line
	4500 6300 4500 7000
$Comp
L power:+5V #PWR06
U 1 1 61ED3655
P 4500 6300
AR Path="/61ED3655" Ref="#PWR06"  Part="1" 
AR Path="/61C69D2C/61ED3655" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 4500 6150 50  0001 C CNN
F 1 "+5V" H 4515 6473 50  0000 C CNN
F 2 "" H 4500 6300 50  0001 C CNN
F 3 "" H 4500 6300 50  0001 C CNN
	1    4500 6300
	1    0    0    -1  
$EndComp
$Sheet
S 5150 1150 1500 200 
U 61A24FF0
F0 "segmentDriverA" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5150 1250 50 
F3 "SegmentOut" O R 6650 1250 50 
$EndSheet
$Sheet
S 5150 1700 1500 200 
U 61F6EF90
F0 "segmentDriverB" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5150 1800 50 
F3 "SegmentOut" O R 6650 1800 50 
$EndSheet
Wire Wire Line
	4100 1250 4100 3050
$Sheet
S 5150 2250 1500 200 
U 61FCCA00
F0 "segmentDriverC" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5150 2350 50 
F3 "SegmentOut" O R 6650 2350 50 
$EndSheet
$Sheet
S 5150 2800 1500 200 
U 61FCCA04
F0 "segmentDriverD" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5150 2900 50 
F3 "SegmentOut" O R 6650 2900 50 
$EndSheet
$Sheet
S 5150 3350 1500 200 
U 61FD10CA
F0 "segmentDriverE" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5150 3450 50 
F3 "SegmentOut" O R 6650 3450 50 
$EndSheet
$Sheet
S 5150 3900 1500 200 
U 61FD10CE
F0 "segmentDriverF" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5150 4000 50 
F3 "SegmentOut" O R 6650 4000 50 
$EndSheet
$Sheet
S 5150 4500 1500 200 
U 61FD5722
F0 "segmentDriverG" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5150 4600 50 
F3 "SegmentOut" O R 6650 4600 50 
$EndSheet
$Sheet
S 5150 5050 1500 200 
U 61FD5726
F0 "segmentDriverH" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5150 5150 50 
F3 "SegmentOut" O R 6650 5150 50 
$EndSheet
Wire Wire Line
	4200 3200 4200 1800
Wire Wire Line
	4200 1800 5150 1800
Wire Wire Line
	6650 1800 6800 1800
Wire Wire Line
	4300 2350 5150 2350
Wire Wire Line
	4450 2900 5150 2900
Wire Wire Line
	4850 5150 5150 5150
Wire Wire Line
	4750 4600 5150 4600
Wire Wire Line
	4550 3450 5150 3450
Wire Wire Line
	4650 4000 5150 4000
Wire Wire Line
	3650 2750 3650 5400
Wire Wire Line
	3750 2600 3750 5500
Wire Wire Line
	750  2900 750  4950
Wire Wire Line
	7300 3150 7300 3450
Wire Wire Line
	6650 2350 8950 2350
Wire Wire Line
	8950 2350 8950 3550
Wire Wire Line
	6650 2900 7050 2900
Wire Wire Line
	7050 2900 7050 1450
Wire Wire Line
	6650 3450 7300 3450
Wire Wire Line
	6650 5150 8350 5150
Wire Wire Line
	6650 4600 8000 4600
Wire Wire Line
	6650 4000 7650 4000
Wire Wire Line
	10000 4450 10850 4450
Wire Wire Line
	10850 4450 10850 1250
Wire Wire Line
	6650 1250 10850 1250
Wire Wire Line
	7050 1450 10650 1450
Wire Wire Line
	9500 4600 11000 4600
Wire Wire Line
	11000 4600 11000 1000
Wire Wire Line
	11000 1000 6800 1000
Wire Wire Line
	6800 1000 6800 1800
$EndSCHEMATC
