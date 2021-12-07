EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 11
Title "Smartsocket for Alien Font Display"
Date "2021-12-06"
Rev "1.0.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "http://git@github.com:jduanen/alienFontDisplay.git"
$EndDescr
$Comp
L jdn_symbols:IEL-O-VI_C63.396.208-02 DS?
U 1 1 61B283DA
P 9750 3200
AR Path="/61A6019D/61B283DA" Ref="DS?"  Part="1" 
AR Path="/61B283DA" Ref="DS1"  Part="1" 
F 0 "DS1" H 9200 4650 50  0000 C CNN
F 1 "IEL-O-VI_C63.396.208-02_SMD" H 9200 4550 50  0000 C CNN
F 2 "jdn_library:C63.396.208-02_SMD" V 10200 2900 50  0000 C CNN
F 3 "" H 9900 4000 50  0001 C CNN
F 4 "0" H 9750 3200 50  0001 C CNN "Multiplier"
F 5 "0" H 9750 3200 50  0001 C CNN "Total"
	1    9750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1900 9850 1650
Wire Wire Line
	9850 1650 10400 1650
Wire Wire Line
	9850 4300 9850 4000
Wire Wire Line
	9350 4000 9350 4300
Wire Wire Line
	10200 2850 10500 2850
Wire Wire Line
	9000 3250 8650 3250
Wire Wire Line
	10200 2500 10500 2500
Wire Wire Line
	9000 2500 8650 2500
Wire Wire Line
	9000 2850 8650 2850
Wire Wire Line
	9550 4000 9550 4450
$Comp
L power:GND1 #PWR010
U 1 1 61BF0D03
P 9550 4450
AR Path="/61BF0D03" Ref="#PWR010"  Part="1" 
AR Path="/61A24FF0/61BF0D03" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61BF0D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 9550 4200 50  0001 C CNN
F 1 "GND1" H 9555 4277 50  0000 C CNN
F 2 "" H 9550 4450 50  0001 C CNN
F 3 "" H 9550 4450 50  0001 C CNN
	1    9550 4450
	-1   0    0    -1  
$EndComp
$Sheet
S 5800 950  1500 200 
U 61A24FF0
F0 "segmentDriverA" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 1050 50 
F3 "SegmentOut" O R 7300 1050 50 
$EndSheet
$Sheet
S 5800 1500 1500 200 
U 61F6EF90
F0 "segmentDriverB" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 1600 50 
F3 "SegmentOut" O R 7300 1600 50 
$EndSheet
$Sheet
S 5800 2050 1500 200 
U 61FCCA00
F0 "segmentDriverC" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 2150 50 
F3 "SegmentOut" O R 7300 2150 50 
$EndSheet
$Sheet
S 5800 2600 1500 200 
U 61FCCA04
F0 "segmentDriverD" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 2700 50 
F3 "SegmentOut" O R 7300 2700 50 
$EndSheet
$Sheet
S 5800 3150 1500 200 
U 61FD10CA
F0 "segmentDriverE" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 3250 50 
F3 "SegmentOut" O R 7300 3250 50 
$EndSheet
$Sheet
S 5800 3700 1500 200 
U 61FD10CE
F0 "segmentDriverF" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 3800 50 
F3 "SegmentOut" O R 7300 3800 50 
$EndSheet
$Sheet
S 5800 4300 1500 200 
U 61FD5722
F0 "segmentDriverG" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 5800 4400 50 
F3 "SegmentOut" O R 7300 4400 50 
$EndSheet
$Sheet
S 5800 4850 1500 200 
U 61FD5726
F0 "segmentDriverH" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 5800 4950 50 
F3 "SegmentOut" O R 7300 4950 50 
$EndSheet
Wire Wire Line
	5350 1600 5800 1600
Wire Wire Line
	7300 1600 7750 1600
Wire Wire Line
	5350 2150 5800 2150
Wire Wire Line
	5350 2700 5800 2700
Wire Wire Line
	5350 4950 5800 4950
Wire Wire Line
	5350 4400 5800 4400
Wire Wire Line
	5350 3800 5800 3800
Wire Wire Line
	7300 2150 7750 2150
Wire Wire Line
	7300 2700 7750 2700
Wire Wire Line
	7300 3250 7750 3250
Wire Wire Line
	7300 4950 7750 4950
Wire Wire Line
	7300 4400 7750 4400
Wire Wire Line
	7300 3800 7750 3800
Wire Wire Line
	9850 4300 10400 4300
Wire Wire Line
	7300 1050 7750 1050
Wire Wire Line
	9350 4300 8850 4300
Wire Wire Line
	5350 3250 5800 3250
Wire Wire Line
	5350 1050 5800 1050
Text Label 5350 1050 0    50   ~ 0
EnbSegA
Text Label 5350 1600 0    50   ~ 0
EnbSegB
Text Label 5350 2150 0    50   ~ 0
EnbSegC
Text Label 5350 2700 0    50   ~ 0
EnbSegD
Text Label 5350 3250 0    50   ~ 0
EnbSegE
Text Label 5350 3800 0    50   ~ 0
EnbSegF
Text Label 5350 4400 0    50   ~ 0
EnbSegG
Text Label 5350 4950 0    50   ~ 0
EnbSegH
Text Label 7750 1600 2    50   ~ 0
SegB
Text Label 7750 1050 2    50   ~ 0
SegA
Text Label 10400 4300 2    50   ~ 0
SegA
Text Label 8850 4300 0    50   ~ 0
SegB
Text Label 7750 2150 2    50   ~ 0
SegC
Text Label 8650 3250 0    50   ~ 0
SegC
Text Label 7750 2700 2    50   ~ 0
SegD
Text Label 10500 2850 2    50   ~ 0
SegD
Text Label 7750 3250 2    50   ~ 0
SegE
Text Label 8650 2850 0    50   ~ 0
SegE
Text Label 7750 3800 2    50   ~ 0
SegF
Text Label 10500 2500 2    50   ~ 0
SegF
Text Label 7750 4400 2    50   ~ 0
SegG
Text Label 8650 2500 0    50   ~ 0
SegG
Text Label 7750 4950 2    50   ~ 0
SegH
Text Label 10400 1650 2    50   ~ 0
SegH
Wire Wire Line
	4100 2550 4550 2550
Text Label 4550 2550 2    50   ~ 0
EnbSegA
Wire Wire Line
	4100 2650 4550 2650
Text Label 4550 2650 2    50   ~ 0
EnbSegB
Wire Wire Line
	4100 2750 4550 2750
Text Label 4550 2750 2    50   ~ 0
EnbSegC
Wire Wire Line
	4100 2850 4550 2850
Text Label 4550 2850 2    50   ~ 0
EnbSegD
Wire Wire Line
	4100 2950 4550 2950
Text Label 4550 2950 2    50   ~ 0
EnbSegE
Wire Wire Line
	4100 3050 4550 3050
Text Label 4550 3050 2    50   ~ 0
EnbSegF
Wire Wire Line
	4100 3150 4550 3150
Text Label 4550 3150 2    50   ~ 0
EnbSegG
Wire Wire Line
	4100 3250 4550 3250
Text Label 4550 3250 2    50   ~ 0
EnbSegH
Wire Wire Line
	2700 2650 3100 2650
Wire Wire Line
	2700 2550 3100 2550
Text Label 2700 2550 0    50   ~ 0
SCL
Text Label 2700 2650 0    50   ~ 0
SDA
$Comp
L power:GND #PWR06
U 1 1 627B4382
P 3600 3900
F 0 "#PWR06" H 3600 3650 50  0001 C CNN
F 1 "GND" H 3605 3727 50  0000 C CNN
F 2 "" H 3600 3900 50  0001 C CNN
F 3 "" H 3600 3900 50  0001 C CNN
	1    3600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3650 3600 3900
Wire Wire Line
	3600 2250 3600 2000
$Comp
L Interface_Expansion:PCF8574TS U1
U 1 1 627BF1EB
P 3600 2950
F 0 "U1" H 3300 3750 50  0000 C CNN
F 1 "PCF8574TS" H 3300 3650 50  0000 C CNN
F 2 "Package_SO:SSOP-20_4.4x6.5mm_P0.65mm" H 3600 2950 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCF8574_PCF8574A.pdf" H 3600 2950 50  0001 C CNN
F 4 "https://www.nxp.com/docs/en/data-sheet/PCF8574_PCF8574A.pdf" H 3600 2950 50  0001 C CNN "DK_Datasheet_Link"
F 5 "https://www.digikey.com/en/products/detail/nxp-usa-inc/PCF8574TS-3-118/735692" H 3600 2950 50  0001 C CNN "DK_Detail_Page"
F 6 "I2C I/O Expander" H 3600 2950 50  0001 C CNN "Description"
F 7 "568-1078-1-ND" H 3600 2950 50  0001 C CNN "Digi-Key_PN"
F 8 "10" H 3600 2950 50  0001 C CNN "Multiplier"
F 9 "$1.86" H 3600 2950 50  0001 C CNN "Price"
F 10 "10" H 3600 2950 50  0001 C CNN "Total"
	1    3600 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 626BE561
P 5700 6850
F 0 "J3" H 5700 7100 50  0000 C CNN
F 1 "HighVoltageAC" H 5700 7000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5700 6850 50  0001 C CNN
F 3 "~" H 5700 6850 50  0001 C CNN
F 4 "0" H 5700 6850 50  0001 C CNN "Multiplier"
F 5 "0" H 5700 6850 50  0001 C CNN "Total"
	1    5700 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR09
U 1 1 626C64DA
P 6100 7400
AR Path="/626C64DA" Ref="#PWR09"  Part="1" 
AR Path="/61A24FF0/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61F6EF90/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FCCA00/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FCCA04/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD10CA/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD10CE/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD5722/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD5726/626C64DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 6100 7150 50  0001 C CNN
F 1 "GND1" H 6105 7227 50  0000 C CNN
F 2 "" H 6100 7400 50  0001 C CNN
F 3 "" H 6100 7400 50  0001 C CNN
	1    6100 7400
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
P 1500 7400
F 0 "#PWR03" H 1500 7150 50  0001 C CNN
F 1 "GND" H 1505 7227 50  0000 C CNN
F 2 "" H 1500 7400 50  0001 C CNN
F 3 "" H 1500 7400 50  0001 C CNN
	1    1500 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7100 1500 7300
$Comp
L power:PWR_FLAG #FLG02
U 1 1 626CDEB2
P 1750 7300
F 0 "#FLG02" H 1750 7375 50  0001 C CNN
F 1 "PWR_FLAG" V 1750 7428 50  0000 L CNN
F 2 "" H 1750 7300 50  0001 C CNN
F 3 "~" H 1750 7300 50  0001 C CNN
	1    1750 7300
	0    1    1    0   
$EndComp
Connection ~ 1500 7300
Wire Wire Line
	1500 7300 1500 7400
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 62733E20
P 6500 6850
F 0 "J4" H 6500 7100 50  0000 C CNN
F 1 "HighVoltageAC" H 6500 7000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6500 6850 50  0001 C CNN
F 3 "~" H 6500 6850 50  0001 C CNN
F 4 "0" H 6500 6850 50  0001 C CNN "Multiplier"
F 5 "0" H 6500 6850 50  0001 C CNN "Total"
	1    6500 6850
	1    0    0    -1  
$EndComp
$Comp
L SparkFun_SchematicComponents:Qwiic_Connector J1
U 1 1 6277399D
P 1100 6950
F 0 "J1" H 1157 7359 50  0000 C CNN
F 1 "Qwiic_Connector" H 1157 7268 50  0000 C CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 1157 7201 20  0000 C CNN
F 3 "" H 1050 6900 60  0001 C CNN
F 4 "10" H 1100 6950 50  0001 C CNN "Multiplier"
F 5 "20" H 1100 6950 50  0001 C CNN "Total"
	1    1100 6950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun_SchematicComponents:Qwiic_Connector J2
U 1 1 6277479E
P 4050 6900
F 0 "J2" H 4100 6500 50  0000 R CNN
F 1 "Qwiic_Connector" H 4350 6600 50  0000 R CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 3950 6650 20  0000 C CNN
F 3 "" H 4000 6850 60  0001 C CNN
F 4 "10" H 4050 6900 50  0001 C CNN "Multiplier"
F 5 "20" H 4050 6900 50  0001 C CNN "Total"
	1    4050 6900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 627876E5
P 3700 7350
F 0 "#PWR08" H 3700 7100 50  0001 C CNN
F 1 "GND" H 3705 7177 50  0000 C CNN
F 2 "" H 3700 7350 50  0001 C CNN
F 3 "" H 3700 7350 50  0001 C CNN
	1    3700 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6750 3700 6750
Wire Wire Line
	3700 6750 3700 7350
$Comp
L power:PWR_FLAG #FLG01
U 1 1 627934B2
P 1750 6450
F 0 "#FLG01" H 1750 6525 50  0001 C CNN
F 1 "PWR_FLAG" V 1750 6578 50  0000 L CNN
F 2 "" H 1750 6450 50  0001 C CNN
F 3 "~" H 1750 6450 50  0001 C CNN
	1    1750 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 7000 1500 7000
Wire Wire Line
	1500 7000 1500 6450
Wire Wire Line
	1750 6450 1500 6450
Connection ~ 1500 6450
Wire Wire Line
	1500 6450 1500 6350
Wire Wire Line
	1750 7300 1500 7300
Wire Wire Line
	3850 6850 3600 6850
Wire Wire Line
	3600 6850 3600 6300
Wire Wire Line
	3050 7050 3850 7050
Wire Wire Line
	3050 6950 3850 6950
Wire Wire Line
	1900 6900 1300 6900
Wire Wire Line
	1900 6800 1300 6800
Text Label 3050 7050 0    50   ~ 0
SCL
Text Label 3050 6950 0    50   ~ 0
SDA
Text Label 1900 6800 2    50   ~ 0
SCL
Text Label 1900 6900 2    50   ~ 0
SDA
$Comp
L power:GND #PWR01
U 1 1 627EF0A0
P 1050 4300
F 0 "#PWR01" H 1050 4050 50  0001 C CNN
F 1 "GND" H 1055 4127 50  0000 C CNN
F 2 "" H 1050 4300 50  0001 C CNN
F 3 "" H 1050 4300 50  0001 C CNN
	1    1050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2850 2650 2850
Wire Wire Line
	2800 2950 3100 2950
Wire Wire Line
	3100 3050 2950 3050
Wire Wire Line
	2950 3950 2150 3950
Wire Wire Line
	1300 7100 1500 7100
Wire Wire Line
	1050 3200 1050 3550
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 6283DA17
P 1250 3200
F 0 "JP1" H 1250 3435 50  0000 C CNN
F 1 "ADDR0" H 1250 3344 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1250 3200 50  0001 C CNN
F 3 "~" H 1250 3200 50  0001 C CNN
F 4 "0" H 1250 3200 50  0001 C CNN "Multiplier"
F 5 "0" H 1250 3200 50  0001 C CNN "Total"
	1    1250 3200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 6284351D
P 1250 3550
F 0 "JP2" H 1250 3785 50  0000 C CNN
F 1 "ADDR1" H 1250 3694 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1250 3550 50  0001 C CNN
F 3 "~" H 1250 3550 50  0001 C CNN
F 4 "0" H 1250 3550 50  0001 C CNN "Multiplier"
F 5 "0" H 1250 3550 50  0001 C CNN "Total"
	1    1250 3550
	1    0    0    -1  
$EndComp
Connection ~ 1050 3550
Wire Wire Line
	1050 3550 1050 3950
$Comp
L Jumper:Jumper_2_Open JP3
U 1 1 628438C1
P 1250 3950
F 0 "JP3" H 1250 4185 50  0000 C CNN
F 1 "ADDR2" H 1250 4094 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 1250 3950 50  0001 C CNN
F 3 "~" H 1250 3950 50  0001 C CNN
F 4 "0" H 1250 3950 50  0001 C CNN "Multiplier"
F 5 "0" H 1250 3950 50  0001 C CNN "Total"
	1    1250 3950
	1    0    0    -1  
$EndComp
Connection ~ 1050 3950
Wire Wire Line
	1050 3950 1050 4300
Wire Wire Line
	2650 3200 2650 2850
NoConn ~ 3100 3350
$Comp
L Device:R R2
U 1 1 628572AF
P 1950 2600
F 0 "R2" H 1950 2850 50  0000 L CNN
F 1 "10K Ohm" H 1950 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1880 2600 50  0001 C CNN
F 3 "~" H 1950 2600 50  0001 C CNN
F 4 "10" H 1950 2600 50  0001 C CNN "Multiplier"
F 5 "30" H 1950 2600 50  0001 C CNN "Total"
	1    1950 2600
	1    0    0    -1  
$EndComp
Text Label 2650 2850 0    50   ~ 0
A0
Text Label 2800 2950 0    50   ~ 0
A1
Text Label 2950 3050 0    50   ~ 0
A2
$Comp
L Device:R R3
U 1 1 6286320D
P 2150 2700
F 0 "R3" H 2220 2746 50  0000 L CNN
F 1 "10K Ohm" H 2220 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2080 2700 50  0001 C CNN
F 3 "~" H 2150 2700 50  0001 C CNN
F 4 "10" H 2150 2700 50  0001 C CNN "Multiplier"
F 5 "30" H 2150 2700 50  0001 C CNN "Total"
	1    2150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 62866338
P 1750 2500
F 0 "R1" H 1600 2550 50  0000 L CNN
F 1 "10K Ohm" H 1350 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 2500 50  0001 C CNN
F 3 "~" H 1750 2500 50  0001 C CNN
F 4 "10" H 1750 2500 50  0001 C CNN "Multiplier"
F 5 "30" H 1750 2500 50  0001 C CNN "Total"
	1    1750 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2850 2150 3950
Wire Wire Line
	1950 2750 1950 3550
Wire Wire Line
	1750 2650 1750 3200
Wire Wire Line
	1950 2450 1950 2100
Wire Wire Line
	1750 2350 1750 2100
Wire Wire Line
	1750 2100 1950 2100
Connection ~ 1950 2100
Wire Wire Line
	1950 2100 1950 2050
Wire Wire Line
	1950 2100 2150 2100
Wire Wire Line
	2150 2100 2150 2550
Wire Wire Line
	2800 2950 2800 3550
Wire Wire Line
	2950 3050 2950 3950
Connection ~ 1750 3200
Wire Wire Line
	1750 3200 2650 3200
Connection ~ 1950 3550
Wire Wire Line
	1950 3550 2800 3550
Connection ~ 2150 3950
Wire Wire Line
	1450 3200 1750 3200
Wire Wire Line
	1450 3550 1950 3550
Wire Wire Line
	1450 3950 2150 3950
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
	6100 7250 6100 7400
$Comp
L power:+5V #PWR02
U 1 1 61AE64D3
P 1500 6350
F 0 "#PWR02" H 1500 6200 50  0001 C CNN
F 1 "+5V" H 1515 6523 50  0000 C CNN
F 2 "" H 1500 6350 50  0001 C CNN
F 3 "" H 1500 6350 50  0001 C CNN
	1    1500 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 61AE6B52
P 3600 6300
F 0 "#PWR07" H 3600 6150 50  0001 C CNN
F 1 "+5V" H 3615 6473 50  0000 C CNN
F 2 "" H 3600 6300 50  0001 C CNN
F 3 "" H 3600 6300 50  0001 C CNN
	1    3600 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 61AE85D2
P 1950 2050
F 0 "#PWR04" H 1950 1900 50  0001 C CNN
F 1 "+5V" H 1965 2223 50  0000 C CNN
F 2 "" H 1950 2050 50  0001 C CNN
F 3 "" H 1950 2050 50  0001 C CNN
	1    1950 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 61AE8EA0
P 3600 2000
F 0 "#PWR05" H 3600 1850 50  0001 C CNN
F 1 "+5V" H 3615 2173 50  0000 C CNN
F 2 "" H 3600 2000 50  0001 C CNN
F 3 "" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Sheet
S 10150 5950 500  350 
U 61AF595E
F0 "mountingHoles" 50
F1 "mountingHoles.sch" 50
$EndSheet
$Sheet
S 9100 5950 500  350 
U 61B04F51
F0 "decouplingCaps" 50
F1 "decouplingCaps.sch" 50
$EndSheet
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 61B4A915
P 2600 5450
F 0 "J5" H 2600 5700 50  0000 C CNN
F 1 "Power" H 2600 5600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2600 5450 50  0001 C CNN
F 3 "~" H 2600 5450 50  0001 C CNN
F 4 "0" H 2600 5450 50  0001 C CNN "Multiplier"
F 5 "0" H 2600 5450 50  0001 C CNN "Total"
	1    2600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 61B4DB16
P 2950 5250
F 0 "#PWR021" H 2950 5100 50  0001 C CNN
F 1 "+5V" H 2965 5423 50  0000 C CNN
F 2 "" H 2950 5250 50  0001 C CNN
F 3 "" H 2950 5250 50  0001 C CNN
	1    2950 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 61B4DFA2
P 2950 5750
F 0 "#PWR022" H 2950 5500 50  0001 C CNN
F 1 "GND" H 2955 5577 50  0000 C CNN
F 2 "" H 2950 5750 50  0001 C CNN
F 3 "" H 2950 5750 50  0001 C CNN
	1    2950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5450 2950 5450
Wire Wire Line
	2950 5450 2950 5250
Wire Wire Line
	2800 5550 2950 5550
Wire Wire Line
	2950 5550 2950 5750
$EndSCHEMATC
