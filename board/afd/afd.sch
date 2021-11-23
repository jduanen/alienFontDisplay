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
P 4900 6800
AR Path="/61A60284/61B2778A" Ref="J?"  Part="1" 
AR Path="/61B2778A" Ref="J3"  Part="1" 
F 0 "J3" H 4750 7250 50  0000 C CNN
F 1 "Input Connector" H 4750 7150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4900 6800 50  0001 C CNN
F 3 "~" H 4900 6800 50  0001 C CNN
	1    4900 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR014
U 1 1 61B2779F
P 6050 7500
AR Path="/61B2779F" Ref="#PWR014"  Part="1" 
AR Path="/61A24FF0/61B2779F" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61B2779F" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 6050 7250 50  0001 C CNN
F 1 "GND1" H 6055 7327 50  0000 C CNN
F 2 "" H 6050 7500 50  0001 C CNN
F 3 "" H 6050 7500 50  0001 C CNN
	1    6050 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6800 5100 6800
$Comp
L jdn_symbols:IEL-O-VI_C63.396.208-02 DS?
U 1 1 61B283DA
P 9900 3500
AR Path="/61A6019D/61B283DA" Ref="DS?"  Part="1" 
AR Path="/61B283DA" Ref="DS1"  Part="1" 
F 0 "DS1" H 9400 4900 50  0000 C CNN
F 1 "IEL-O-VI_C63.396.208-02" H 9400 4800 50  0000 C CNN
F 2 "jdn_library:C63.396.208-02" H 10050 4300 50  0001 C CNN
F 3 "" H 10050 4300 50  0001 C CNN
	1    9900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2200 10000 1950
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 61B33FFE
P 6350 6800
AR Path="/61A60284/61B33FFE" Ref="J?"  Part="1" 
AR Path="/61B33FFE" Ref="J4"  Part="1" 
F 0 "J4" H 6150 7250 50  0000 C CNN
F 1 "Output Connector" H 6150 7150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6350 6800 50  0001 C CNN
F 3 "~" H 6350 6800 50  0001 C CNN
	1    6350 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 1950 10400 1950
Wire Wire Line
	10000 4500 10000 4300
Wire Wire Line
	9500 4300 9500 4500
Wire Wire Line
	10350 3150 10650 3150
Wire Wire Line
	9150 3550 8800 3550
Wire Wire Line
	10350 2800 10650 2800
Wire Wire Line
	9150 2800 8800 2800
Wire Wire Line
	9150 3150 8800 3150
Wire Wire Line
	9700 4300 9700 4750
$Comp
L power:GND1 #PWR015
U 1 1 61BF0D03
P 9700 4750
AR Path="/61BF0D03" Ref="#PWR015"  Part="1" 
AR Path="/61A24FF0/61BF0D03" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61BF0D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 9700 4500 50  0001 C CNN
F 1 "GND1" H 9705 4577 50  0000 C CNN
F 2 "" H 9700 4750 50  0001 C CNN
F 3 "" H 9700 4750 50  0001 C CNN
	1    9700 4750
	-1   0    0    -1  
$EndComp
Text GLabel 6050 6250 1    50   Output ~ 0
HV_AC
Wire Wire Line
	5100 6900 6050 6900
Text Label 6350 6900 0    50   ~ 0
Rx
Text Label 4900 6900 2    50   ~ 0
Rx
Text Label 4900 6800 2    50   ~ 0
Tx
Text Label 4900 6600 2    50   ~ 0
HV_GND
Text Label 4900 6700 2    50   ~ 0
HV_AC
Text Label 4900 7000 2    50   ~ 0
+5V
Text Label 4900 7100 2    50   ~ 0
GND
Wire Wire Line
	5100 7100 5200 7100
Wire Wire Line
	5100 6700 6050 6700
Wire Wire Line
	5100 6600 6150 6600
Wire Wire Line
	6150 7100 5200 7100
Connection ~ 5200 7100
Wire Wire Line
	6050 6250 6050 6700
Connection ~ 6050 6700
Wire Wire Line
	6050 6700 6150 6700
Wire Wire Line
	6050 6900 6050 7500
Connection ~ 6050 6900
Wire Wire Line
	6050 6900 6150 6900
$Comp
L Device:C C4
U 1 1 61C8D806
P 4300 2000
F 0 "C4" H 4050 2000 50  0000 L CNN
F 1 "0.1 uF 20V ceramic" H 3500 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4338 1850 50  0001 C CNN
F 3 "~" H 4300 2000 50  0001 C CNN
	1    4300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61C92BF5
P 900 3250
F 0 "C2" V 1150 3200 50  0000 L CNN
F 1 "0.1 uF 20V ceramic" V 1050 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 938 3100 50  0001 C CNN
F 3 "~" H 900 3250 50  0001 C CNN
	1    900  3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 61C93BAD
P 1350 2900
F 0 "R2" V 1145 2900 50  0000 C CNN
F 1 "470 ohm" V 1236 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1390 2890 50  0001 C CNN
F 3 "~" H 1350 2900 50  0001 C CNN
	1    1350 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 2900 900  2900
Connection ~ 900  2900
Wire Wire Line
	900  2900 900  3100
$Comp
L power:GND #PWR?
U 1 1 61C9A025
P 900 3750
AR Path="/61A60284/61C9A025" Ref="#PWR?"  Part="1" 
AR Path="/61C9A025" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 900 3500 50  0001 C CNN
F 1 "GND" H 905 3577 50  0000 C CNN
F 2 "" H 900 3750 50  0001 C CNN
F 3 "" H 900 3750 50  0001 C CNN
	1    900  3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3400 900  3750
Wire Wire Line
	3550 3200 4050 3200
Wire Wire Line
	4050 3350 3550 3350
Wire Wire Line
	1800 3650 2300 3650
Wire Wire Line
	1800 3350 2300 3350
Wire Wire Line
	1500 2900 2300 2900
Wire Wire Line
	1800 3500 2300 3500
Wire Wire Line
	1800 3050 2300 3050
Wire Wire Line
	1800 3200 2300 3200
Wire Wire Line
	3550 3050 4050 3050
Text Label 2050 5250 2    50   ~ 0
Vss
Text Label 2250 5150 2    50   ~ 0
ICSPDAT
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 61CBB6A4
P 1650 5250
F 0 "J1" H 1650 5750 50  0000 C CNN
F 1 "ICSP Connector" H 1650 5650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1650 5250 50  0001 C CNN
F 3 "~" H 1650 5250 50  0001 C CNN
	1    1650 5250
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
Text Label 4050 3650 2    50   ~ 0
RX1
Wire Wire Line
	5800 6800 6150 6800
Wire Wire Line
	3550 2450 4300 2450
$Comp
L power:GND #PWR?
U 1 1 61E88B39
P 5200 7500
AR Path="/61A60284/61E88B39" Ref="#PWR?"  Part="1" 
AR Path="/61E88B39" Ref="#PWR013"  Part="1" 
AR Path="/61C69D2C/61E88B39" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 5200 7250 50  0001 C CNN
F 1 "GND" H 5205 7327 50  0000 C CNN
F 2 "" H 5200 7500 50  0001 C CNN
F 3 "" H 5200 7500 50  0001 C CNN
	1    5200 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7100 5200 7300
$Sheet
S 5800 1150 1500 200 
U 61A24FF0
F0 "segmentDriverA" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 1250 50 
F3 "SegmentOut" O R 7300 1250 50 
$EndSheet
$Sheet
S 5800 1700 1500 200 
U 61F6EF90
F0 "segmentDriverB" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 1800 50 
F3 "SegmentOut" O R 7300 1800 50 
$EndSheet
$Sheet
S 5800 2250 1500 200 
U 61FCCA00
F0 "segmentDriverC" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 2350 50 
F3 "SegmentOut" O R 7300 2350 50 
$EndSheet
$Sheet
S 5800 2800 1500 200 
U 61FCCA04
F0 "segmentDriverD" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 2900 50 
F3 "SegmentOut" O R 7300 2900 50 
$EndSheet
$Sheet
S 5800 3350 1500 200 
U 61FD10CA
F0 "segmentDriverE" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 3450 50 
F3 "SegmentOut" O R 7300 3450 50 
$EndSheet
$Sheet
S 5800 3900 1500 200 
U 61FD10CE
F0 "segmentDriverF" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 4000 50 
F3 "SegmentOut" O R 7300 4000 50 
$EndSheet
$Sheet
S 5800 4500 1500 200 
U 61FD5722
F0 "segmentDriverG" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 4600 50 
F3 "SegmentOut" O R 7300 4600 50 
$EndSheet
$Sheet
S 5800 5050 1500 200 
U 61FD5726
F0 "segmentDriverH" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 5150 50 
F3 "SegmentOut" O R 7300 5150 50 
$EndSheet
Wire Wire Line
	5350 1800 5800 1800
Wire Wire Line
	7300 1800 7750 1800
Wire Wire Line
	5350 2350 5800 2350
Wire Wire Line
	5350 2900 5800 2900
Wire Wire Line
	5350 5150 5800 5150
Wire Wire Line
	5350 4600 5800 4600
Wire Wire Line
	5350 4000 5800 4000
Wire Wire Line
	7300 2350 7750 2350
Wire Wire Line
	7300 2900 7750 2900
Wire Wire Line
	7300 3450 7800 3450
Wire Wire Line
	7300 5150 7850 5150
Wire Wire Line
	7300 4600 7800 4600
Wire Wire Line
	7300 4000 7800 4000
Wire Wire Line
	10000 4500 10450 4500
Wire Wire Line
	7300 1250 7750 1250
Wire Wire Line
	9500 4500 9100 4500
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
AR Path="/6199AA59" Ref="R3"  Part="1" 
F 0 "R3" H 1568 6996 50  0000 L CNN
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
	750  7250 750  7500
Connection ~ 3150 6700
Text Label 5200 6250 2    50   ~ 0
+5V
Text Label 750  7400 0    50   ~ 0
GND
Wire Wire Line
	1850 5350 2500 5350
Wire Wire Line
	4300 2150 4300 2450
Wire Wire Line
	3150 6900 3150 7050
Connection ~ 3150 6900
Wire Wire Line
	3150 7350 3150 7500
Wire Wire Line
	750  6250 750  6650
Connection ~ 750  6650
Wire Wire Line
	2500 4850 2500 5350
Wire Wire Line
	4300 2450 4300 2600
Connection ~ 4300 2450
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61BE5EA8
P 3150 6250
F 0 "#FLG01" H 3150 6325 50  0001 C CNN
F 1 "PWR_FLAG" V 3150 6378 50  0000 L CNN
F 2 "" H 3150 6250 50  0001 C CNN
F 3 "~" H 3150 6250 50  0001 C CNN
	1    3150 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 61BF0E50
P 5200 7300
F 0 "#FLG03" H 5200 7375 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 7450 50  0000 L CNN
F 2 "" H 5200 7300 50  0001 C CNN
F 3 "~" H 5200 7300 50  0001 C CNN
	1    5200 7300
	0    1    1    0   
$EndComp
Connection ~ 5200 7300
Wire Wire Line
	2300 2450 1950 2450
Wire Wire Line
	900  2450 900  2900
$Comp
L Device:R_US R1
U 1 1 61C93315
P 900 2300
F 0 "R1" H 968 2346 50  0000 L CNN
F 1 "10 Kohm" H 968 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 940 2290 50  0001 C CNN
F 3 "~" H 900 2300 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 6199C660
P 4400 5250
F 0 "J2" H 4400 4750 50  0000 C CNN
F 1 "GPIO Connector" H 4400 4850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4400 5250 50  0001 C CNN
F 3 "~" H 4400 5250 50  0001 C CNN
	1    4400 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 5050 4200 5050
Wire Wire Line
	4000 5150 4200 5150
Wire Wire Line
	4000 5250 4200 5250
Wire Wire Line
	4000 5350 4200 5350
Wire Wire Line
	4000 5450 4200 5450
Wire Wire Line
	1800 2600 2300 2600
Wire Wire Line
	1800 2750 2300 2750
Wire Wire Line
	4050 2900 3550 2900
Text Label 4050 2900 2    50   ~ 0
GPIO0
Text Label 1800 2600 0    50   ~ 0
GPIO1
Text Label 1800 2750 0    50   ~ 0
GPIO2
Text Label 4050 3800 2    50   ~ 0
GPIO3
Text Label 1800 3800 0    50   ~ 0
GPIO4
Wire Wire Line
	4300 1850 4300 1800
Text Label 4000 5050 2    50   ~ 0
GPIO0
Text Label 4000 5150 2    50   ~ 0
GPIO1
Text Label 4000 5350 2    50   ~ 0
GPIO3
Text Label 4000 5250 2    50   ~ 0
GPIO2
Text Label 4000 5450 2    50   ~ 0
GPIO4
Wire Wire Line
	5350 3450 5800 3450
Wire Wire Line
	5200 7000 6150 7000
Connection ~ 5200 7000
Wire Wire Line
	5100 7000 5200 7000
Wire Wire Line
	5200 7000 5200 6250
$Comp
L jdn_symbols:PIC18F16Q40-E_SO U?
U 1 1 61B27776
P 2150 3850
AR Path="/61A60284/61B27776" Ref="U?"  Part="1" 
AR Path="/61B27776" Ref="U2"  Part="1" 
F 0 "U2" H 2925 5475 50  0000 C CNN
F 1 "PIC18F16Q40-E_SO" H 2925 5384 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2150 3850 50  0001 C CNN
F 3 "" H 2150 3850 50  0001 C CNN
	1    2150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3800 3550 3800
Wire Wire Line
	1800 3800 2300 3800
$Comp
L power:PWR_FLAG #FLG02
U 1 1 621794C3
P 5200 6250
F 0 "#FLG02" H 5200 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 6400 50  0000 C CNN
F 2 "" H 5200 6250 50  0001 C CNN
F 3 "~" H 5200 6250 50  0001 C CNN
	1    5200 6250
	0    1    1    0   
$EndComp
Text Label 750  6450 2    50   ~ 0
+5V
$Comp
L power:+5V #PWR01
U 1 1 62199D24
P 750 6250
F 0 "#PWR01" H 750 6100 50  0001 C CNN
F 1 "+5V" H 765 6423 50  0000 C CNN
F 2 "" H 750 6250 50  0001 C CNN
F 3 "" H 750 6250 50  0001 C CNN
	1    750  6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 6219AFC3
P 5200 6100
F 0 "#PWR012" H 5200 5950 50  0001 C CNN
F 1 "+5V" H 5215 6273 50  0000 C CNN
F 2 "" H 5200 6100 50  0001 C CNN
F 3 "" H 5200 6100 50  0001 C CNN
	1    5200 6100
	1    0    0    -1  
$EndComp
Connection ~ 5200 6250
Wire Wire Line
	5200 6250 5200 6100
Wire Wire Line
	3150 6250 3150 6700
$Comp
L power:+3V3 #PWR08
U 1 1 62218943
P 3150 6050
F 0 "#PWR08" H 3150 5900 50  0001 C CNN
F 1 "+3V3" H 3165 6223 50  0000 C CNN
F 2 "" H 3150 6050 50  0001 C CNN
F 3 "" H 3150 6050 50  0001 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6050 3150 6250
Connection ~ 3150 6250
Text Label 5200 7300 2    50   ~ 0
GND
$Comp
L power:GND #PWR?
U 1 1 6223D229
P 2650 5700
AR Path="/61A60284/6223D229" Ref="#PWR?"  Part="1" 
AR Path="/6223D229" Ref="#PWR07"  Part="1" 
AR Path="/61C69D2C/6223D229" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2650 5450 50  0001 C CNN
F 1 "GND" H 2655 5527 50  0000 C CNN
F 2 "" H 2650 5700 50  0001 C CNN
F 3 "" H 2650 5700 50  0001 C CNN
	1    2650 5700
	1    0    0    -1  
$EndComp
Text Label 3150 7400 0    50   ~ 0
GND
$Comp
L power:GND #PWR?
U 1 1 622550EB
P 750 7500
AR Path="/61A60284/622550EB" Ref="#PWR?"  Part="1" 
AR Path="/622550EB" Ref="#PWR02"  Part="1" 
AR Path="/61C69D2C/622550EB" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 750 7250 50  0001 C CNN
F 1 "GND" H 755 7327 50  0000 C CNN
F 2 "" H 750 7500 50  0001 C CNN
F 3 "" H 750 7500 50  0001 C CNN
	1    750  7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62255AF4
P 3150 7500
AR Path="/61A60284/62255AF4" Ref="#PWR?"  Part="1" 
AR Path="/62255AF4" Ref="#PWR09"  Part="1" 
AR Path="/61C69D2C/62255AF4" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 3150 7250 50  0001 C CNN
F 1 "GND" H 3155 7327 50  0000 C CNN
F 2 "" H 3150 7500 50  0001 C CNN
F 3 "" H 3150 7500 50  0001 C CNN
	1    3150 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 62272E72
P 2500 4850
F 0 "#PWR06" H 2500 4700 50  0001 C CNN
F 1 "+3V3" H 2515 5023 50  0000 C CNN
F 2 "" H 2500 4850 50  0001 C CNN
F 3 "" H 2500 4850 50  0001 C CNN
	1    2500 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR010
U 1 1 622D10F7
P 4300 1800
F 0 "#PWR010" H 4300 1650 50  0001 C CNN
F 1 "+3V3" H 4315 1973 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "" H 4300 1800 50  0001 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 622DA276
P 1950 1800
F 0 "#PWR05" H 1950 1650 50  0001 C CNN
F 1 "+3V3" H 1965 1973 50  0000 C CNN
F 2 "" H 1950 1800 50  0001 C CNN
F 3 "" H 1950 1800 50  0001 C CNN
	1    1950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1800 1950 2450
$Comp
L power:+3V3 #PWR03
U 1 1 622F1F79
P 900 1800
F 0 "#PWR03" H 900 1650 50  0001 C CNN
F 1 "+3V3" H 915 1973 50  0000 C CNN
F 2 "" H 900 1800 50  0001 C CNN
F 3 "" H 900 1800 50  0001 C CNN
	1    900  1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1800 900  2150
Text Label 4050 2600 2    50   ~ 0
ICSPDAT
Text Label 4050 2750 2    50   ~ 0
ICSPCLK
Wire Wire Line
	5200 7300 5200 7500
$Comp
L power:GND #PWR?
U 1 1 62316BED
P 4300 2600
AR Path="/61A60284/62316BED" Ref="#PWR?"  Part="1" 
AR Path="/62316BED" Ref="#PWR011"  Part="1" 
AR Path="/61C69D2C/62316BED" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 4300 2350 50  0001 C CNN
F 1 "GND" H 4305 2427 50  0000 C CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "" H 4300 2600 50  0001 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3500 4050 3500
Wire Wire Line
	3550 3650 4050 3650
Wire Wire Line
	3550 2600 4050 2600
Wire Wire Line
	3550 2750 4050 2750
Text Label 2250 5050 2    50   ~ 0
ICSPCLK
Wire Wire Line
	1850 5050 2250 5050
Wire Wire Line
	1850 5150 2250 5150
Text Label 1800 2900 0    50   ~ 0
MCLR
Wire Wire Line
	5350 1250 5800 1250
Text Label 5350 1250 0    50   ~ 0
EnbSegA
Text Label 4050 3050 2    50   ~ 0
EnbSegA
Text Label 5350 1800 0    50   ~ 0
EnbSegB
Text Label 4050 3200 2    50   ~ 0
EnbSegB
Text Label 5350 2350 0    50   ~ 0
EnbSegC
Text Label 4050 3350 2    50   ~ 0
EnbSegC
Text Label 5350 2900 0    50   ~ 0
EnbSegD
Text Label 1800 3350 0    50   ~ 0
EnbSegD
Text Label 5350 3450 0    50   ~ 0
EnbSegE
Text Label 1800 3200 0    50   ~ 0
EnbSegE
Text Label 3800 2450 2    50   ~ 0
Vss
Text Label 2200 2450 2    50   ~ 0
Vdd
Text Label 5350 4000 0    50   ~ 0
EnbSegF
Text Label 1800 3050 0    50   ~ 0
EnbSegF
Text Label 5350 4600 0    50   ~ 0
EnbSegG
Text Label 1800 3500 0    50   ~ 0
EnbSegG
Text Label 5350 5150 0    50   ~ 0
EnbSegH
Text Label 1800 3650 0    50   ~ 0
EnbSegH
Wire Wire Line
	600  2900 600  4350
Wire Wire Line
	600  2900 900  2900
Wire Wire Line
	600  4350 2800 4350
Text Label 7750 1800 2    50   ~ 0
SegB
Text Label 7750 1250 2    50   ~ 0
SegA
Text Label 10450 4500 2    50   ~ 0
SegA
Text Label 9100 4500 0    50   ~ 0
SegB
Text Label 7750 2350 2    50   ~ 0
SegC
Text Label 8800 3550 0    50   ~ 0
SegC
Text Label 7750 2900 2    50   ~ 0
SegD
Text Label 10650 3150 2    50   ~ 0
SegD
Text Label 7800 3450 2    50   ~ 0
SegE
Text Label 8800 3150 0    50   ~ 0
SegE
Text Label 7800 4000 2    50   ~ 0
SegF
Text Label 10650 2800 2    50   ~ 0
SegF
Text Label 7800 4600 2    50   ~ 0
SegG
Text Label 8800 2800 0    50   ~ 0
SegG
Text Label 7850 5150 2    50   ~ 0
SegH
Text Label 10400 1950 2    50   ~ 0
SegH
Text Label 900  2900 2    50   ~ 0
Vpp
Text Label 2050 5450 2    50   ~ 0
Vpp
Text Label 2050 5350 2    50   ~ 0
Vdd
Wire Wire Line
	2650 5250 2650 5700
Wire Wire Line
	1850 5250 2650 5250
Wire Wire Line
	2800 4350 2800 5450
Wire Wire Line
	1850 5450 2800 5450
Text Label 4050 3500 2    50   ~ 0
TX1
Text Label 5800 6800 0    50   ~ 0
TX1
Text Label 5500 6800 2    50   ~ 0
RX1
$EndSCHEMATC
