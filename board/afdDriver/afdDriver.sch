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
L jdn_symbols:IEL-O-VI_C63.396.208-02 DS?
U 1 1 61B283DA
P 9450 3500
AR Path="/61A6019D/61B283DA" Ref="DS?"  Part="1" 
AR Path="/61B283DA" Ref="DS1"  Part="1" 
F 0 "DS1" H 8900 4950 50  0000 C CNN
F 1 "IEL-O-VI_C63.396.208-02_SMD" H 8900 4850 50  0000 C CNN
F 2 "jdn_library:C63.396.208-02_SMD" V 9900 3200 50  0000 C CNN
F 3 "" H 9600 4300 50  0001 C CNN
	1    9450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2200 9550 1950
Wire Wire Line
	9550 1950 10100 1950
Wire Wire Line
	9550 4600 9550 4300
Wire Wire Line
	9050 4300 9050 4600
Wire Wire Line
	9900 3150 10200 3150
Wire Wire Line
	8700 3550 8350 3550
Wire Wire Line
	9900 2800 10200 2800
Wire Wire Line
	8700 2800 8350 2800
Wire Wire Line
	8700 3150 8350 3150
Wire Wire Line
	9250 4300 9250 4750
$Comp
L power:GND1 #PWR012
U 1 1 61BF0D03
P 9250 4750
AR Path="/61BF0D03" Ref="#PWR012"  Part="1" 
AR Path="/61A24FF0/61BF0D03" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61BF0D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 9250 4500 50  0001 C CNN
F 1 "GND1" H 9255 4577 50  0000 C CNN
F 2 "" H 9250 4750 50  0001 C CNN
F 3 "" H 9250 4750 50  0001 C CNN
	1    9250 4750
	-1   0    0    -1  
$EndComp
$Sheet
S 5250 1250 1500 200 
U 61A24FF0
F0 "segmentDriverA" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5250 1350 50 
F3 "SegmentOut" O R 6750 1350 50 
$EndSheet
$Sheet
S 5250 1800 1500 200 
U 61F6EF90
F0 "segmentDriverB" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5250 1900 50 
F3 "SegmentOut" O R 6750 1900 50 
$EndSheet
$Sheet
S 5250 2350 1500 200 
U 61FCCA00
F0 "segmentDriverC" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5250 2450 50 
F3 "SegmentOut" O R 6750 2450 50 
$EndSheet
$Sheet
S 5250 2900 1500 200 
U 61FCCA04
F0 "segmentDriverD" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5250 3000 50 
F3 "SegmentOut" O R 6750 3000 50 
$EndSheet
$Sheet
S 5250 3450 1500 200 
U 61FD10CA
F0 "segmentDriverE" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5250 3550 50 
F3 "SegmentOut" O R 6750 3550 50 
$EndSheet
$Sheet
S 5250 4000 1500 200 
U 61FD10CE
F0 "segmentDriverF" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5250 4100 50 
F3 "SegmentOut" O R 6750 4100 50 
$EndSheet
$Sheet
S 5250 4600 1500 200 
U 61FD5722
F0 "segmentDriverG" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5250 4700 50 
F3 "SegmentOut" O R 6750 4700 50 
$EndSheet
$Sheet
S 5250 5150 1500 200 
U 61FD5726
F0 "segmentDriverH" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5250 5250 50 
F3 "SegmentOut" O R 6750 5250 50 
$EndSheet
Wire Wire Line
	4800 1900 5250 1900
Wire Wire Line
	6750 1900 7200 1900
Wire Wire Line
	4800 2450 5250 2450
Wire Wire Line
	4800 3000 5250 3000
Wire Wire Line
	4800 5250 5250 5250
Wire Wire Line
	4800 4700 5250 4700
Wire Wire Line
	4800 4100 5250 4100
Wire Wire Line
	6750 2450 7200 2450
Wire Wire Line
	6750 3000 7200 3000
Wire Wire Line
	6750 3550 7200 3550
Wire Wire Line
	6750 5250 7200 5250
Wire Wire Line
	6750 4700 7200 4700
Wire Wire Line
	6750 4100 7200 4100
Wire Wire Line
	9550 4600 10100 4600
Wire Wire Line
	6750 1350 7200 1350
Wire Wire Line
	9050 4600 8550 4600
Wire Wire Line
	4800 3550 5250 3550
Wire Wire Line
	4800 1350 5250 1350
Text Label 4800 1350 0    50   ~ 0
EnbSegA
Text Label 4800 1900 0    50   ~ 0
EnbSegB
Text Label 4800 2450 0    50   ~ 0
EnbSegC
Text Label 4800 3000 0    50   ~ 0
EnbSegD
Text Label 4800 3550 0    50   ~ 0
EnbSegE
Text Label 4800 4100 0    50   ~ 0
EnbSegF
Text Label 4800 4700 0    50   ~ 0
EnbSegG
Text Label 4800 5250 0    50   ~ 0
EnbSegH
Text Label 7200 1900 2    50   ~ 0
SegB
Text Label 7200 1350 2    50   ~ 0
SegA
Text Label 10100 4600 2    50   ~ 0
SegA
Text Label 8550 4600 0    50   ~ 0
SegB
Text Label 7200 2450 2    50   ~ 0
SegC
Text Label 8350 3550 0    50   ~ 0
SegC
Text Label 7200 3000 2    50   ~ 0
SegD
Text Label 10200 3150 2    50   ~ 0
SegD
Text Label 7200 3550 2    50   ~ 0
SegE
Text Label 8350 3150 0    50   ~ 0
SegE
Text Label 7200 4100 2    50   ~ 0
SegF
Text Label 10200 2800 2    50   ~ 0
SegF
Text Label 7200 4700 2    50   ~ 0
SegG
Text Label 8350 2800 0    50   ~ 0
SegG
Text Label 7200 5250 2    50   ~ 0
SegH
Text Label 10100 1950 2    50   ~ 0
SegH
Wire Wire Line
	3800 2850 4250 2850
Text Label 4250 2850 2    50   ~ 0
EnbSegA
Wire Wire Line
	3800 2950 4250 2950
Text Label 4250 2950 2    50   ~ 0
EnbSegB
Wire Wire Line
	3800 3050 4250 3050
Text Label 4250 3050 2    50   ~ 0
EnbSegC
Wire Wire Line
	3800 3150 4250 3150
Text Label 4250 3150 2    50   ~ 0
EnbSegD
Wire Wire Line
	3800 3250 4250 3250
Text Label 4250 3250 2    50   ~ 0
EnbSegE
Wire Wire Line
	3800 3350 4250 3350
Text Label 4250 3350 2    50   ~ 0
EnbSegF
Wire Wire Line
	3800 3450 4250 3450
Text Label 4250 3450 2    50   ~ 0
EnbSegG
Wire Wire Line
	3800 3550 4250 3550
Text Label 4250 3550 2    50   ~ 0
EnbSegH
Wire Wire Line
	2400 2950 2800 2950
Wire Wire Line
	2400 2850 2800 2850
Text Label 2400 2850 0    50   ~ 0
SCL
Text Label 2400 2950 0    50   ~ 0
SDA
$Comp
L power:GND #PWR08
U 1 1 627B4382
P 3300 4200
F 0 "#PWR08" H 3300 3950 50  0001 C CNN
F 1 "GND" H 3305 4027 50  0000 C CNN
F 2 "" H 3300 4200 50  0001 C CNN
F 3 "" H 3300 4200 50  0001 C CNN
	1    3300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3950 3300 4200
$Comp
L power:+3V3 #PWR07
U 1 1 627BA7C7
P 3300 2300
F 0 "#PWR07" H 3300 2150 50  0001 C CNN
F 1 "+3V3" H 3315 2473 50  0000 C CNN
F 2 "" H 3300 2300 50  0001 C CNN
F 3 "" H 3300 2300 50  0001 C CNN
	1    3300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2550 3300 2300
$Comp
L Interface_Expansion:PCF8574TS U1
U 1 1 627BF1EB
P 3300 3250
F 0 "U1" H 3000 4050 50  0000 C CNN
F 1 "PCF8574TS" H 3000 3950 50  0000 C CNN
F 2 "Package_SO:SSOP-20_4.4x6.5mm_P0.65mm" H 3300 3250 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCF8574_PCF8574A.pdf" H 3300 3250 50  0001 C CNN
	1    3300 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 626BE561
P 5700 6850
F 0 "J3" H 5700 7100 50  0000 C CNN
F 1 "HighVoltageAC" H 5700 7000 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x02_P1.00mm_Vertical" H 5700 6850 50  0001 C CNN
F 3 "~" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR011
U 1 1 626C64DA
P 6100 7350
AR Path="/626C64DA" Ref="#PWR011"  Part="1" 
AR Path="/61A24FF0/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61F6EF90/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FCCA00/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FCCA04/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD10CA/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD10CE/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD5722/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD5726/626C64DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 6100 7100 50  0001 C CNN
F 1 "GND1" H 6105 7177 50  0000 C CNN
F 2 "" H 6100 7350 50  0001 C CNN
F 3 "" H 6100 7350 50  0001 C CNN
	1    6100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6950 5900 6950
Wire Wire Line
	6100 6950 6100 7250
Text GLabel 6100 6350 1    50   Input ~ 0
HV_AC
Wire Wire Line
	5900 6850 6100 6850
Wire Wire Line
	6100 6350 6100 6500
$Comp
L power:GND #PWR03
U 1 1 626CA4FB
P 1350 7400
F 0 "#PWR03" H 1350 7150 50  0001 C CNN
F 1 "GND" H 1355 7227 50  0000 C CNN
F 2 "" H 1350 7400 50  0001 C CNN
F 3 "" H 1350 7400 50  0001 C CNN
	1    1350 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7100 1350 7300
$Comp
L power:PWR_FLAG #FLG02
U 1 1 626CDEB2
P 1600 7300
F 0 "#FLG02" H 1600 7375 50  0001 C CNN
F 1 "PWR_FLAG" V 1600 7428 50  0000 L CNN
F 2 "" H 1600 7300 50  0001 C CNN
F 3 "~" H 1600 7300 50  0001 C CNN
	1    1600 7300
	0    1    1    0   
$EndComp
Connection ~ 1350 7300
Wire Wire Line
	1350 7300 1350 7400
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 62733E20
P 6500 6850
F 0 "J4" H 6500 7100 50  0000 C CNN
F 1 "HighVoltageAC" H 6500 7000 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x02_P1.00mm_Vertical" H 6500 6850 50  0001 C CNN
F 3 "~" H 6500 6850 50  0001 C CNN
	1    6500 6850
	1    0    0    -1  
$EndComp
$Comp
L SparkFun_SchematicComponents:Qwiic_Connector J1
U 1 1 6277399D
P 950 6950
F 0 "J1" H 1007 7359 50  0000 C CNN
F 1 "Qwiic_Connector" H 1007 7268 50  0000 C CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 1007 7201 20  0000 C CNN
F 3 "" H 900 6900 60  0001 C CNN
	1    950  6950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun_SchematicComponents:Qwiic_Connector J2
U 1 1 6277479E
P 4500 6950
F 0 "J2" H 4550 6550 50  0000 R CNN
F 1 "Qwiic_Connector" H 4800 6650 50  0000 R CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 4400 6700 20  0000 C CNN
F 3 "" H 4450 6900 60  0001 C CNN
	1    4500 6950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 627876E5
P 4150 7350
F 0 "#PWR010" H 4150 7100 50  0001 C CNN
F 1 "GND" H 4155 7177 50  0000 C CNN
F 2 "" H 4150 7350 50  0001 C CNN
F 3 "" H 4150 7350 50  0001 C CNN
	1    4150 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6800 4150 6800
Wire Wire Line
	4150 6800 4150 7350
$Comp
L power:+3V3 #PWR02
U 1 1 627930DA
P 1350 6350
F 0 "#PWR02" H 1350 6200 50  0001 C CNN
F 1 "+3V3" H 1365 6523 50  0000 C CNN
F 2 "" H 1350 6350 50  0001 C CNN
F 3 "" H 1350 6350 50  0001 C CNN
	1    1350 6350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 627934B2
P 1600 6450
F 0 "#FLG01" H 1600 6525 50  0001 C CNN
F 1 "PWR_FLAG" V 1600 6578 50  0000 L CNN
F 2 "" H 1600 6450 50  0001 C CNN
F 3 "~" H 1600 6450 50  0001 C CNN
	1    1600 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 7000 1350 7000
Wire Wire Line
	1350 7000 1350 6450
Wire Wire Line
	1600 6450 1350 6450
Connection ~ 1350 6450
Wire Wire Line
	1350 6450 1350 6350
Wire Wire Line
	1600 7300 1350 7300
$Comp
L power:+3V3 #PWR09
U 1 1 627A5664
P 4050 6350
F 0 "#PWR09" H 4050 6200 50  0001 C CNN
F 1 "+3V3" H 4065 6523 50  0000 C CNN
F 2 "" H 4050 6350 50  0001 C CNN
F 3 "" H 4050 6350 50  0001 C CNN
	1    4050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6900 4050 6900
Wire Wire Line
	4050 6900 4050 6350
Wire Wire Line
	3500 7100 4300 7100
Wire Wire Line
	3500 7000 4300 7000
Wire Wire Line
	1750 6900 1150 6900
Wire Wire Line
	1750 6800 1150 6800
Text Label 3500 7100 0    50   ~ 0
SCL
Text Label 3500 7000 0    50   ~ 0
SDA
Text Label 1750 6800 2    50   ~ 0
SCL
Text Label 1750 6900 2    50   ~ 0
SDA
$Comp
L power:GND #PWR01
U 1 1 627EF0A0
P 750 4600
F 0 "#PWR01" H 750 4350 50  0001 C CNN
F 1 "GND" H 755 4427 50  0000 C CNN
F 2 "" H 750 4600 50  0001 C CNN
F 3 "" H 750 4600 50  0001 C CNN
	1    750  4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 627F97D4
P 1650 2350
F 0 "#PWR04" H 1650 2200 50  0001 C CNN
F 1 "+3V3" H 1665 2523 50  0000 C CNN
F 2 "" H 1650 2350 50  0001 C CNN
F 3 "" H 1650 2350 50  0001 C CNN
	1    1650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3150 2350 3150
Wire Wire Line
	2500 3250 2800 3250
Wire Wire Line
	2800 3350 2650 3350
Wire Wire Line
	2650 4250 1850 4250
Wire Wire Line
	1150 7100 1350 7100
Wire Wire Line
	750  3500 750  3850
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 6283DA17
P 950 3500
F 0 "JP1" H 950 3735 50  0000 C CNN
F 1 "ADDR0" H 950 3644 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 950 3500 50  0001 C CNN
F 3 "~" H 950 3500 50  0001 C CNN
	1    950  3500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 6284351D
P 950 3850
F 0 "JP2" H 950 4085 50  0000 C CNN
F 1 "ADDR1" H 950 3994 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 950 3850 50  0001 C CNN
F 3 "~" H 950 3850 50  0001 C CNN
	1    950  3850
	1    0    0    -1  
$EndComp
Connection ~ 750  3850
Wire Wire Line
	750  3850 750  4250
$Comp
L Jumper:Jumper_2_Open JP3
U 1 1 628438C1
P 950 4250
F 0 "JP3" H 950 4485 50  0000 C CNN
F 1 "ADDR2" H 950 4394 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 950 4250 50  0001 C CNN
F 3 "~" H 950 4250 50  0001 C CNN
	1    950  4250
	1    0    0    -1  
$EndComp
Connection ~ 750  4250
Wire Wire Line
	750  4250 750  4600
Wire Wire Line
	2350 3500 2350 3150
NoConn ~ 2800 3650
$Comp
L Device:R R2
U 1 1 628572AF
P 1650 2900
F 0 "R2" H 1650 3150 50  0000 L CNN
F 1 "10K Ohm" H 1650 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1580 2900 50  0001 C CNN
F 3 "~" H 1650 2900 50  0001 C CNN
	1    1650 2900
	1    0    0    -1  
$EndComp
Text Label 2350 3150 0    50   ~ 0
A0
Text Label 2500 3250 0    50   ~ 0
A1
Text Label 2650 3350 0    50   ~ 0
A2
$Comp
L Device:R R3
U 1 1 6286320D
P 1850 3000
F 0 "R3" H 1920 3046 50  0000 L CNN
F 1 "10K Ohm" H 1920 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1780 3000 50  0001 C CNN
F 3 "~" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 62866338
P 1450 2800
F 0 "R1" H 1300 2850 50  0000 L CNN
F 1 "10K Ohm" H 1050 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1380 2800 50  0001 C CNN
F 3 "~" H 1450 2800 50  0001 C CNN
	1    1450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3150 1850 4250
Wire Wire Line
	1650 3050 1650 3850
Wire Wire Line
	1450 2950 1450 3500
Wire Wire Line
	1650 2750 1650 2400
Wire Wire Line
	1450 2650 1450 2400
Wire Wire Line
	1450 2400 1650 2400
Connection ~ 1650 2400
Wire Wire Line
	1650 2400 1650 2350
Wire Wire Line
	1650 2400 1850 2400
Wire Wire Line
	1850 2400 1850 2850
Wire Wire Line
	2500 3250 2500 3850
Wire Wire Line
	2650 3350 2650 4250
Connection ~ 1450 3500
Wire Wire Line
	1450 3500 2350 3500
Connection ~ 1650 3850
Wire Wire Line
	1650 3850 2500 3850
Connection ~ 1850 4250
Wire Wire Line
	1150 3500 1450 3500
Wire Wire Line
	1150 3850 1650 3850
Wire Wire Line
	1150 4250 1850 4250
$Comp
L Device:C C1
U 1 1 628D13AD
P 2800 5200
F 0 "C1" H 2915 5246 50  0000 L CNN
F 1 "0.1 uFd" H 2915 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2838 5050 50  0000 C CNN
F 3 "~" H 2800 5200 50  0001 C CNN
	1    2800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 628D1691
P 2800 5500
F 0 "#PWR06" H 2800 5250 50  0001 C CNN
F 1 "GND" H 2805 5327 50  0000 C CNN
F 2 "" H 2800 5500 50  0001 C CNN
F 3 "" H 2800 5500 50  0001 C CNN
	1    2800 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 628D1945
P 2800 4850
F 0 "#PWR05" H 2800 4700 50  0001 C CNN
F 1 "+3V3" H 2815 5023 50  0000 C CNN
F 2 "" H 2800 4850 50  0001 C CNN
F 3 "" H 2800 4850 50  0001 C CNN
	1    2800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4850 2800 5050
Wire Wire Line
	2800 5350 2800 5500
Wire Wire Line
	6700 6850 6850 6850
Wire Wire Line
	6850 6850 6850 6500
Wire Wire Line
	6850 6500 6100 6500
Connection ~ 6100 6500
Wire Wire Line
	6100 6500 6100 6850
Wire Wire Line
	6700 6950 6850 6950
Wire Wire Line
	6850 6950 6850 7250
Wire Wire Line
	6850 7250 6100 7250
Connection ~ 6100 7250
Wire Wire Line
	6100 7250 6100 7350
$EndSCHEMATC
