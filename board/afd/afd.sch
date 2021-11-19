EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
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
L Connector:Conn_01x06_Male J?
U 1 1 61B2778A
P 4500 6800
AR Path="/61A60284/61B2778A" Ref="J?"  Part="1" 
AR Path="/61B2778A" Ref="J2"  Part="1" 
F 0 "J2" H 4500 6250 50  0000 C CNN
F 1 "Input Connector" H 4500 6350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4500 6800 50  0001 C CNN
F 3 "~" H 4500 6800 50  0001 C CNN
	1    4500 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR03
U 1 1 61B2779F
P 5550 7400
AR Path="/61B2779F" Ref="#PWR03"  Part="1" 
AR Path="/61A24FF0/61B2779F" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61B2779F" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 5550 7150 50  0001 C CNN
F 1 "GND1" H 5555 7227 50  0000 C CNN
F 2 "" H 5550 7400 50  0001 C CNN
F 3 "" H 5550 7400 50  0001 C CNN
	1    5550 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6800 4700 6800
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
P 6350 6800
AR Path="/61A60284/61B33FFE" Ref="J?"  Part="1" 
AR Path="/61B33FFE" Ref="J3"  Part="1" 
F 0 "J3" H 6350 6250 50  0000 C CNN
F 1 "Output Connector" H 6350 6350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6350 6800 50  0001 C CNN
F 3 "~" H 6350 6800 50  0001 C CNN
	1    6350 6800
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
L power:GND1 #PWR04
U 1 1 61BF0D03
P 9700 4750
AR Path="/61BF0D03" Ref="#PWR04"  Part="1" 
AR Path="/61A24FF0/61BF0D03" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61BF0D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 9700 4500 50  0001 C CNN
F 1 "GND1" H 9705 4577 50  0000 C CNN
F 2 "" H 9700 4750 50  0001 C CNN
F 3 "" H 9700 4750 50  0001 C CNN
	1    9700 4750
	-1   0    0    -1  
$EndComp
Text GLabel 5550 6250 1    50   Output ~ 0
HV_AC
Wire Wire Line
	4700 6900 5550 6900
Text Label 6350 6900 0    50   ~ 0
Rx
Text Label 4500 6900 2    50   ~ 0
Rx
Text Label 4500 6800 2    50   ~ 0
Tx
Text Label 4500 6600 2    50   ~ 0
HV_GND
Text Label 4500 6700 2    50   ~ 0
HV_AC
Text Label 4500 7000 2    50   ~ 0
+5V
Text Label 4500 7100 2    50   ~ 0
GND
Wire Wire Line
	4700 7100 4950 7100
Wire Wire Line
	4700 6700 5550 6700
Wire Wire Line
	4700 6600 6150 6600
Wire Wire Line
	6150 7100 4950 7100
Connection ~ 4950 7100
Wire Wire Line
	5550 6250 5550 6700
Connection ~ 5550 6700
Wire Wire Line
	5550 6700 6150 6700
Wire Wire Line
	5550 6900 5550 7400
Connection ~ 5550 6900
Wire Wire Line
	5550 6900 6150 6900
$Comp
L Device:C C4
U 1 1 61C8D806
P 3900 2050
F 0 "C4" H 3650 2050 50  0000 L CNN
F 1 "0.1 uF 20V ceramic" H 3100 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3938 1900 50  0001 C CNN
F 3 "~" H 3900 2050 50  0001 C CNN
	1    3900 2050
	1    0    0    -1  
$EndComp
Connection ~ 1950 1800
$Comp
L Device:C C2
U 1 1 61C92BF5
P 1100 3250
F 0 "C2" H 1215 3296 50  0000 L CNN
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
L Device:R_US R3
U 1 1 61C93BAD
P 1550 2900
F 0 "R3" V 1345 2900 50  0000 C CNN
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
	1100 2900 800  2900
Wire Wire Line
	800  4800 1950 4800
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
Text Label 1350 5750 2    50   ~ 0
Vss
Text Label 1350 5650 2    50   ~ 0
Vdd
Text Label 1350 5550 2    50   ~ 0
\MCLR_Vpp
Text Label 1350 5450 2    50   ~ 0
ISPDAT
Text Label 1350 5350 2    50   ~ 0
ICSPCLK
Wire Wire Line
	1950 5550 1550 5550
Wire Wire Line
	1550 5450 3750 5450
Wire Wire Line
	3650 5350 1550 5350
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 61CBB6A4
P 1350 5550
F 0 "J1" H 1350 5900 50  0000 C CNN
F 1 "ICSP Connector" H 1350 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1350 5550 50  0001 C CNN
F 3 "~" H 1350 5550 50  0001 C CNN
	1    1350 5550
	1    0    0    -1  
$EndComp
Text Label 6350 6800 0    50   ~ 0
Tx
Text Label 6350 6700 0    50   ~ 0
HV_AC
Text Label 6350 6600 0    50   ~ 0
HV_GND
Text Label 6350 7000 0    50   ~ 0
+5V
Text Label 6350 7100 0    50   ~ 0
GND
Wire Wire Line
	3400 3650 4100 3650
Text Label 4100 3650 2    50   ~ 0
RX1
Wire Wire Line
	3400 3500 4300 3500
Wire Wire Line
	5300 6800 6150 6800
Text Label 4300 3500 2    50   ~ 0
TX1
Wire Wire Line
	3400 2450 3900 2450
Wire Wire Line
	3900 2100 3900 2200
NoConn ~ 3400 2900
NoConn ~ 2150 3800
NoConn ~ 3400 3800
$Comp
L jdn_symbols:PIC18F16Q40-E_SO U?
U 1 1 61B27776
P 2000 3850
AR Path="/61A60284/61B27776" Ref="U?"  Part="1" 
AR Path="/61B27776" Ref="U2"  Part="1" 
F 0 "U2" H 2775 5475 50  0000 C CNN
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
P 4950 7550
AR Path="/61A60284/61E88B39" Ref="#PWR?"  Part="1" 
AR Path="/61E88B39" Ref="#PWR02"  Part="1" 
AR Path="/61C69D2C/61E88B39" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 4950 7300 50  0001 C CNN
F 1 "GND" H 4955 7377 50  0000 C CNN
F 2 "" H 4950 7550 50  0001 C CNN
F 3 "" H 4950 7550 50  0001 C CNN
	1    4950 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7100 4950 7300
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
Wire Wire Line
	800  2900 800  4800
$Comp
L jdn_symbols:LM3671MF-3.3_NOPB U?
U 1 1 6199AA53
P 1700 7050
AR Path="/61C69D2C/6199AA53" Ref="U?"  Part="1" 
AR Path="/6199AA53" Ref="U1"  Part="1" 
F 0 "U1" H 2050 7715 50  0000 C CNN
F 1 "LM3671MF-3.3_NOPB" H 2050 7624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 7750 50  0001 C CNN
F 3 "" H 2050 7750 50  0001 C CNN
	1    1700 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 6199AA59
P 1500 6950
AR Path="/61C69D2C/6199AA59" Ref="R?"  Part="1" 
AR Path="/6199AA59" Ref="R2"  Part="1" 
F 0 "R2" H 1568 6996 50  0000 L CNN
F 1 "100 Kohm" H 1568 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1540 6940 50  0001 C CNN
F 3 "~" H 1500 6950 50  0001 C CNN
	1    1500 6950
	0    1    1    0   
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 6199AA5F
P 2800 6700
AR Path="/61C69D2C/6199AA5F" Ref="L?"  Part="1" 
AR Path="/6199AA5F" Ref="L1"  Part="1" 
F 0 "L1" H 2800 6915 50  0000 C CNN
F 1 "2.2 uH" H 2800 6824 50  0000 C CNN
F 2 "Inductor_SMD:L_2816_7142Metric_Pad3.20x4.45mm_HandSolder" H 2800 6700 50  0001 C CNN
F 3 "~" H 2800 6700 50  0001 C CNN
	1    2800 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6199AA65
P 3150 7200
AR Path="/61C69D2C/6199AA65" Ref="C?"  Part="1" 
AR Path="/6199AA65" Ref="C3"  Part="1" 
F 0 "C3" H 3265 7246 50  0000 L CNN
F 1 "22 uF" H 3265 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3188 7050 50  0001 C CNN
F 3 "~" H 3150 7200 50  0001 C CNN
	1    3150 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6199AA6B
P 750 6950
AR Path="/61C69D2C/6199AA6B" Ref="C?"  Part="1" 
AR Path="/6199AA6B" Ref="C1"  Part="1" 
F 0 "C1" H 865 6996 50  0000 L CNN
F 1 "10 uF" H 865 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 788 6800 50  0001 C CNN
F 3 "~" H 750 6950 50  0001 C CNN
	1    750  6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  6650 1350 6650
Wire Wire Line
	1750 6800 1200 6800
Wire Wire Line
	1200 6800 1200 7250
Wire Wire Line
	750  6800 750  6650
Wire Wire Line
	750  7250 1200 7250
Wire Wire Line
	750  7100 750  7250
Connection ~ 750  7250
Wire Wire Line
	1750 6950 1650 6950
Wire Wire Line
	1350 6950 1350 6650
Connection ~ 1350 6650
Wire Wire Line
	1350 6650 1750 6650
Wire Wire Line
	2350 6700 2550 6700
Wire Wire Line
	3050 6700 3150 6700
Wire Wire Line
	2350 6900 3150 6900
Wire Wire Line
	3150 6900 3150 6700
Text Notes 2300 7300 2    50   ~ 0
Vin: 2.7-5.5V\nIout: 600mA\n
Wire Wire Line
	4100 6150 5150 6150
Wire Wire Line
	5300 6000 4300 6000
Wire Wire Line
	4300 6000 4300 3500
Wire Wire Line
	5150 6150 5150 6800
Wire Wire Line
	4950 7500 3900 7500
Connection ~ 4950 7500
Wire Wire Line
	4950 7500 4950 7550
Wire Wire Line
	750  7250 750  7500
Connection ~ 3150 6700
Text Label 850  6300 0    50   ~ 0
+5V
Text Label 2400 7500 0    50   ~ 0
GND
Text Label 2950 1800 0    50   ~ 0
+3v3
Wire Wire Line
	1550 5650 1800 5650
Connection ~ 3900 7500
Wire Wire Line
	3900 1800 3900 1900
Wire Wire Line
	3900 2200 3900 2450
Connection ~ 3900 2200
Wire Wire Line
	600  1800 1100 1800
Connection ~ 1100 1800
Wire Wire Line
	750  7500 3150 7500
Wire Wire Line
	3150 6900 3150 7050
Connection ~ 3150 6900
Wire Wire Line
	3150 7350 3150 7500
Connection ~ 3150 7500
Wire Wire Line
	3150 7500 3550 7500
Wire Wire Line
	1550 5750 3550 5750
Connection ~ 3550 7500
Wire Wire Line
	3550 7500 3900 7500
Wire Wire Line
	4700 7000 4950 7000
Wire Wire Line
	4950 7000 4950 6300
Wire Wire Line
	4950 6300 2850 6300
Wire Wire Line
	750  6300 750  6650
Connection ~ 4950 7000
Wire Wire Line
	4950 7000 6150 7000
Connection ~ 750  6650
Wire Wire Line
	5300 6000 5300 6800
Wire Wire Line
	1800 4900 600  4900
Connection ~ 1800 5650
Wire Wire Line
	1800 5650 3150 5650
Wire Wire Line
	600  4900 600  1800
Wire Wire Line
	3150 5650 3150 6700
Wire Wire Line
	3550 5750 3550 7500
Wire Wire Line
	1800 4900 1800 5650
Wire Wire Line
	1950 4800 1950 5550
Wire Wire Line
	3650 2750 3650 5350
Wire Wire Line
	3750 2600 3750 5450
Wire Wire Line
	4100 3650 4100 6150
Wire Wire Line
	3900 2450 3900 7500
Connection ~ 3900 2450
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61BE3670
P 2850 6300
F 0 "#FLG01" H 2850 6375 50  0001 C CNN
F 1 "PWR_FLAG" H 2850 6473 50  0000 C CNN
F 2 "" H 2850 6300 50  0001 C CNN
F 3 "~" H 2850 6300 50  0001 C CNN
	1    2850 6300
	1    0    0    -1  
$EndComp
Connection ~ 2850 6300
Wire Wire Line
	2850 6300 750  6300
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61BE5EA8
P 3150 5650
F 0 "#FLG02" H 3150 5725 50  0001 C CNN
F 1 "PWR_FLAG" V 3150 5778 50  0000 L CNN
F 2 "" H 3150 5650 50  0001 C CNN
F 3 "~" H 3150 5650 50  0001 C CNN
	1    3150 5650
	0    1    1    0   
$EndComp
Connection ~ 3150 5650
$Comp
L power:PWR_FLAG #FLG03
U 1 1 61BF0E50
P 4950 7300
F 0 "#FLG03" H 4950 7375 50  0001 C CNN
F 1 "PWR_FLAG" V 4950 7428 50  0000 L CNN
F 2 "" H 4950 7300 50  0001 C CNN
F 3 "~" H 4950 7300 50  0001 C CNN
	1    4950 7300
	0    1    1    0   
$EndComp
Connection ~ 4950 7300
Wire Wire Line
	4950 7300 4950 7500
$EndSCHEMATC
