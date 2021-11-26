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
P 2300 6700
AR Path="/61A60284/61B2778A" Ref="J?"  Part="1" 
AR Path="/61B2778A" Ref="J2"  Part="1" 
F 0 "J2" H 2150 7200 50  0000 C CNN
F 1 "Input Connector" H 2150 7100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2300 6700 50  0001 C CNN
F 3 "~" H 2300 6700 50  0001 C CNN
	1    2300 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR08
U 1 1 61B2779F
P 3450 7400
AR Path="/61B2779F" Ref="#PWR08"  Part="1" 
AR Path="/61A24FF0/61B2779F" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61B2779F" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 3450 7150 50  0001 C CNN
F 1 "GND1" H 3455 7227 50  0000 C CNN
F 2 "" H 3450 7400 50  0001 C CNN
F 3 "" H 3450 7400 50  0001 C CNN
	1    3450 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6700 2500 6700
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
P 3750 6700
AR Path="/61A60284/61B33FFE" Ref="J?"  Part="1" 
AR Path="/61B33FFE" Ref="J3"  Part="1" 
F 0 "J3" H 3550 7200 50  0000 C CNN
F 1 "Output Connector" H 3550 7100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3750 6700 50  0001 C CNN
F 3 "~" H 3750 6700 50  0001 C CNN
	1    3750 6700
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
L power:GND1 #PWR011
U 1 1 61BF0D03
P 9700 4750
AR Path="/61BF0D03" Ref="#PWR011"  Part="1" 
AR Path="/61A24FF0/61BF0D03" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61BF0D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 9700 4500 50  0001 C CNN
F 1 "GND1" H 9705 4577 50  0000 C CNN
F 2 "" H 9700 4750 50  0001 C CNN
F 3 "" H 9700 4750 50  0001 C CNN
	1    9700 4750
	-1   0    0    -1  
$EndComp
Text GLabel 3450 6150 1    50   Output ~ 0
HV_AC
Wire Wire Line
	2500 6800 3450 6800
Text Label 3750 6800 0    50   ~ 0
Rx
Text Label 2300 6800 2    50   ~ 0
Rx
Text Label 2300 6700 2    50   ~ 0
Tx
Text Label 2300 6500 2    50   ~ 0
HV_GND
Text Label 2300 6600 2    50   ~ 0
HV_AC
Text Label 2300 6900 2    50   ~ 0
+5V
Text Label 2300 7000 2    50   ~ 0
GND
Wire Wire Line
	2500 7000 2600 7000
Wire Wire Line
	2500 6600 3450 6600
Wire Wire Line
	2500 6500 3550 6500
Wire Wire Line
	3550 7000 2600 7000
Connection ~ 2600 7000
Wire Wire Line
	3450 6150 3450 6600
Connection ~ 3450 6600
Wire Wire Line
	3450 6600 3550 6600
Wire Wire Line
	3450 6800 3450 7400
Connection ~ 3450 6800
Wire Wire Line
	3450 6800 3550 6800
$Comp
L Device:C C2
U 1 1 61C8D806
P 4300 2000
F 0 "C2" H 4050 2000 50  0000 L CNN
F 1 "0.1 uF 20V ceramic" H 3500 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4338 1850 50  0001 C CNN
F 3 "~" H 4300 2000 50  0001 C CNN
	1    4300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61C92BF5
P 900 3250
F 0 "C1" V 1150 3200 50  0000 L CNN
F 1 "0.1 uF 20V ceramic" V 1050 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 938 3100 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1390 2890 50  0001 C CNN
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
AR Path="/61C9A025" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 900 3500 50  0001 C CNN
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
Text Label 1750 4950 2    50   ~ 0
Vss
Text Label 1750 4850 2    50   ~ 0
ICSPDAT
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 61CBB6A4
P 2050 4950
F 0 "J1" H 2050 4450 50  0000 C CNN
F 1 "ICSP Connector" H 2050 4550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2050 4950 50  0001 C CNN
F 3 "~" H 2050 4950 50  0001 C CNN
	1    2050 4950
	-1   0    0    1   
$EndComp
Text Label 3750 6700 0    50   ~ 0
Tx
Text Label 3750 6600 0    50   ~ 0
HV_AC
Text Label 3750 6500 0    50   ~ 0
HV_GND
Text Label 3750 6900 0    50   ~ 0
+5V
Text Label 3750 7000 0    50   ~ 0
GND
Text Label 4050 3650 2    50   ~ 0
RX1
Wire Wire Line
	3200 6700 3550 6700
Wire Wire Line
	3550 2450 4300 2450
$Comp
L power:GND #PWR?
U 1 1 61E88B39
P 2600 7400
AR Path="/61A60284/61E88B39" Ref="#PWR?"  Part="1" 
AR Path="/61E88B39" Ref="#PWR07"  Part="1" 
AR Path="/61C69D2C/61E88B39" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 2600 7150 50  0001 C CNN
F 1 "GND" H 2605 7227 50  0000 C CNN
F 2 "" H 2600 7400 50  0001 C CNN
F 3 "" H 2600 7400 50  0001 C CNN
	1    2600 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7000 2600 7200
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
	7300 3450 7750 3450
Wire Wire Line
	7300 5150 7750 5150
Wire Wire Line
	7300 4600 7750 4600
Wire Wire Line
	7300 4000 7750 4000
Wire Wire Line
	10000 4500 10450 4500
Wire Wire Line
	7300 1250 7750 1250
Wire Wire Line
	9500 4500 9100 4500
Text Label 2600 6150 2    50   ~ 0
+3V3
Wire Wire Line
	1850 5050 1100 5050
Wire Wire Line
	4300 2150 4300 2450
Wire Wire Line
	1100 4550 1100 5050
Wire Wire Line
	4300 2450 4300 2600
Connection ~ 4300 2450
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61BF0E50
P 2600 7200
F 0 "#FLG02" H 2600 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 2450 7350 50  0000 L CNN
F 2 "" H 2600 7200 50  0001 C CNN
F 3 "~" H 2600 7200 50  0001 C CNN
	1    2600 7200
	0    1    1    0   
$EndComp
Connection ~ 2600 7200
Wire Wire Line
	2300 2450 1600 2450
Wire Wire Line
	900  2450 900  2900
$Comp
L Device:R_US R1
U 1 1 61C93315
P 900 2300
F 0 "R1" H 968 2346 50  0000 L CNN
F 1 "10 Kohm" H 968 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 940 2290 50  0001 C CNN
F 3 "~" H 900 2300 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J4
U 1 1 6199C660
P 4450 4950
F 0 "J4" H 4450 4450 50  0000 C CNN
F 1 "GPIO Connector" H 4450 4550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4450 4950 50  0001 C CNN
F 3 "~" H 4450 4950 50  0001 C CNN
	1    4450 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 4750 4250 4750
Wire Wire Line
	4050 4850 4250 4850
Wire Wire Line
	4050 4950 4250 4950
Wire Wire Line
	4050 5050 4250 5050
Wire Wire Line
	4050 5150 4250 5150
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
Text Label 4050 4750 2    50   ~ 0
GPIO0
Text Label 4050 4850 2    50   ~ 0
GPIO1
Text Label 4050 5050 2    50   ~ 0
GPIO3
Text Label 4050 4950 2    50   ~ 0
GPIO2
Text Label 4050 5150 2    50   ~ 0
GPIO4
Wire Wire Line
	5350 3450 5800 3450
Wire Wire Line
	2600 6900 3550 6900
Connection ~ 2600 6900
Wire Wire Line
	2500 6900 2600 6900
Wire Wire Line
	2600 6900 2600 6150
$Comp
L jdn_symbols:PIC18F16Q40-E_SO U?
U 1 1 61B27776
P 2150 3850
AR Path="/61A60284/61B27776" Ref="U?"  Part="1" 
AR Path="/61B27776" Ref="U1"  Part="1" 
F 0 "U1" H 2925 5475 50  0000 C CNN
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
L power:PWR_FLAG #FLG01
U 1 1 621794C3
P 2600 6150
F 0 "#FLG01" H 2600 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 6300 50  0000 C CNN
F 2 "" H 2600 6150 50  0001 C CNN
F 3 "~" H 2600 6150 50  0001 C CNN
	1    2600 6150
	0    1    1    0   
$EndComp
Connection ~ 2600 6150
Wire Wire Line
	2600 6150 2600 6000
Text Label 2600 7200 2    50   ~ 0
GND
$Comp
L power:+3V3 #PWR03
U 1 1 62272E72
P 1100 4550
F 0 "#PWR03" H 1100 4400 50  0001 C CNN
F 1 "+3V3" H 1115 4723 50  0000 C CNN
F 2 "" H 1100 4550 50  0001 C CNN
F 3 "" H 1100 4550 50  0001 C CNN
	1    1100 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 622D10F7
P 4300 1800
F 0 "#PWR09" H 4300 1650 50  0001 C CNN
F 1 "+3V3" H 4315 1973 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "" H 4300 1800 50  0001 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 622DA276
P 1600 1800
F 0 "#PWR05" H 1600 1650 50  0001 C CNN
F 1 "+3V3" H 1615 1973 50  0000 C CNN
F 2 "" H 1600 1800 50  0001 C CNN
F 3 "" H 1600 1800 50  0001 C CNN
	1    1600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1800 1600 2450
$Comp
L power:+3V3 #PWR01
U 1 1 622F1F79
P 900 1800
F 0 "#PWR01" H 900 1650 50  0001 C CNN
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
	2600 7200 2600 7400
$Comp
L power:GND #PWR?
U 1 1 62316BED
P 4300 2600
AR Path="/61A60284/62316BED" Ref="#PWR?"  Part="1" 
AR Path="/62316BED" Ref="#PWR010"  Part="1" 
AR Path="/61C69D2C/62316BED" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 4300 2350 50  0001 C CNN
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
Text Label 1750 4750 2    50   ~ 0
ICSPCLK
Wire Wire Line
	1850 4750 1750 4750
Wire Wire Line
	1850 4850 1750 4850
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
Text Label 4050 2450 2    50   ~ 0
Vss
Text Label 1950 2450 2    50   ~ 0
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
	600  2900 900  2900
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
Text Label 7750 3450 2    50   ~ 0
SegE
Text Label 8800 3150 0    50   ~ 0
SegE
Text Label 7750 4000 2    50   ~ 0
SegF
Text Label 10650 2800 2    50   ~ 0
SegF
Text Label 7750 4600 2    50   ~ 0
SegG
Text Label 8800 2800 0    50   ~ 0
SegG
Text Label 7750 5150 2    50   ~ 0
SegH
Text Label 10400 1950 2    50   ~ 0
SegH
Text Label 1750 5150 2    50   ~ 0
Vpp
Text Label 1750 5050 2    50   ~ 0
Vdd
Wire Wire Line
	1350 4950 1350 5400
Wire Wire Line
	1850 4950 1350 4950
Wire Wire Line
	1850 5150 600  5150
Text Label 4050 3500 2    50   ~ 0
TX1
Text Label 3200 6700 0    50   ~ 0
TX1
Text Label 2900 6700 2    50   ~ 0
RX1
$Comp
L power:GND #PWR?
U 1 1 6223D229
P 1350 5400
AR Path="/61A60284/6223D229" Ref="#PWR?"  Part="1" 
AR Path="/6223D229" Ref="#PWR04"  Part="1" 
AR Path="/61C69D2C/6223D229" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 1350 5150 50  0001 C CNN
F 1 "GND" H 1355 5227 50  0000 C CNN
F 2 "" H 1350 5400 50  0001 C CNN
F 3 "" H 1350 5400 50  0001 C CNN
	1    1350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  2900 600  5150
$Comp
L power:+3V3 #PWR06
U 1 1 62682840
P 2600 6000
F 0 "#PWR06" H 2600 5850 50  0001 C CNN
F 1 "+3V3" H 2615 6173 50  0000 C CNN
F 2 "" H 2600 6000 50  0001 C CNN
F 3 "" H 2600 6000 50  0001 C CNN
	1    2600 6000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
