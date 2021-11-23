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
P 8450 3450
AR Path="/61A6019D/61B283DA" Ref="DS?"  Part="1" 
AR Path="/61B283DA" Ref="DS1"  Part="1" 
F 0 "DS1" H 7950 4850 50  0000 C CNN
F 1 "IEL-O-VI_C63.396.208-02" H 7950 4750 50  0000 C CNN
F 2 "jdn_library:C63.396.208-02" H 8600 4250 50  0001 C CNN
F 3 "" H 8600 4250 50  0001 C CNN
	1    8450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2150 8550 1900
Wire Wire Line
	8550 1900 8950 1900
Wire Wire Line
	8550 4450 8550 4250
Wire Wire Line
	8050 4250 8050 4450
Wire Wire Line
	8900 3100 9200 3100
Wire Wire Line
	7700 3500 7350 3500
Wire Wire Line
	8900 2750 9200 2750
Wire Wire Line
	7700 2750 7350 2750
Wire Wire Line
	7700 3100 7350 3100
Wire Wire Line
	8250 4250 8250 4700
$Comp
L power:GND1 #PWR03
U 1 1 61BF0D03
P 8250 4700
AR Path="/61BF0D03" Ref="#PWR03"  Part="1" 
AR Path="/61A24FF0/61BF0D03" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/61BF0D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 8250 4450 50  0001 C CNN
F 1 "GND1" H 8255 4527 50  0000 C CNN
F 2 "" H 8250 4700 50  0001 C CNN
F 3 "" H 8250 4700 50  0001 C CNN
	1    8250 4700
	-1   0    0    -1  
$EndComp
$Sheet
S 3200 1200 1500 200 
U 61A24FF0
F0 "segmentDriverA" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 3200 1300 50 
F3 "SegmentOut" O R 4700 1300 50 
$EndSheet
$Sheet
S 3200 1750 1500 200 
U 61F6EF90
F0 "segmentDriverB" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 3200 1850 50 
F3 "SegmentOut" O R 4700 1850 50 
$EndSheet
$Sheet
S 3200 2300 1500 200 
U 61FCCA00
F0 "segmentDriverC" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 3200 2400 50 
F3 "SegmentOut" O R 4700 2400 50 
$EndSheet
$Sheet
S 3200 2850 1500 200 
U 61FCCA04
F0 "segmentDriverD" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 3200 2950 50 
F3 "SegmentOut" O R 4700 2950 50 
$EndSheet
$Sheet
S 3200 3400 1500 200 
U 61FD10CA
F0 "segmentDriverE" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 3200 3500 50 
F3 "SegmentOut" O R 4700 3500 50 
$EndSheet
$Sheet
S 3200 3950 1500 200 
U 61FD10CE
F0 "segmentDriverF" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 3200 4050 50 
F3 "SegmentOut" O R 4700 4050 50 
$EndSheet
$Sheet
S 3200 4550 1500 200 
U 61FD5722
F0 "segmentDriverG" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" I L 3200 4650 50 
F3 "SegmentOut" O R 4700 4650 50 
$EndSheet
$Sheet
S 3200 5100 1500 200 
U 61FD5726
F0 "segmentDriverH" 50
F1 "segmentDriver.sch" 50
F2 "SegmentEnable" O L 3200 5200 50 
F3 "SegmentOut" O R 4700 5200 50 
$EndSheet
Wire Wire Line
	2750 1850 3200 1850
Wire Wire Line
	4700 1850 5150 1850
Wire Wire Line
	2750 2400 3200 2400
Wire Wire Line
	2750 2950 3200 2950
Wire Wire Line
	2750 5200 3200 5200
Wire Wire Line
	2750 4650 3200 4650
Wire Wire Line
	2750 4050 3200 4050
Wire Wire Line
	4700 2400 5150 2400
Wire Wire Line
	4700 2950 5150 2950
Wire Wire Line
	4700 3500 5150 3500
Wire Wire Line
	4700 5200 5150 5200
Wire Wire Line
	4700 4650 5150 4650
Wire Wire Line
	4700 4050 5150 4050
Wire Wire Line
	8550 4450 9000 4450
Wire Wire Line
	4700 1300 5150 1300
Wire Wire Line
	8050 4450 7650 4450
Wire Wire Line
	2750 3500 3200 3500
Wire Wire Line
	2750 1300 3200 1300
Text Label 2750 1300 0    50   ~ 0
EnbSegA
Text Label 2750 1850 0    50   ~ 0
EnbSegB
Text Label 2750 2400 0    50   ~ 0
EnbSegC
Text Label 2750 2950 0    50   ~ 0
EnbSegD
Text Label 2750 3500 0    50   ~ 0
EnbSegE
Text Label 2750 4050 0    50   ~ 0
EnbSegF
Text Label 2750 4650 0    50   ~ 0
EnbSegG
Text Label 2750 5200 0    50   ~ 0
EnbSegH
Text Label 5150 1850 2    50   ~ 0
SegB
Text Label 5150 1300 2    50   ~ 0
SegA
Text Label 9000 4450 2    50   ~ 0
SegA
Text Label 7650 4450 0    50   ~ 0
SegB
Text Label 5150 2400 2    50   ~ 0
SegC
Text Label 7350 3500 0    50   ~ 0
SegC
Text Label 5150 2950 2    50   ~ 0
SegD
Text Label 9200 3100 2    50   ~ 0
SegD
Text Label 5150 3500 2    50   ~ 0
SegE
Text Label 7350 3100 0    50   ~ 0
SegE
Text Label 5150 4050 2    50   ~ 0
SegF
Text Label 9200 2750 2    50   ~ 0
SegF
Text Label 5150 4650 2    50   ~ 0
SegG
Text Label 7350 2750 0    50   ~ 0
SegG
Text Label 5150 5200 2    50   ~ 0
SegH
Text Label 8950 1900 2    50   ~ 0
SegH
$Comp
L Connector:Conn_01x09_Male J1
U 1 1 626BD1FA
P 1450 6500
F 0 "J1" H 1450 7200 50  0000 C CNN
F 1 "SegmentEnables" H 1450 7100 50  0000 C CNN
F 2 "" H 1450 6500 50  0001 C CNN
F 3 "~" H 1450 6500 50  0001 C CNN
	1    1450 6500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 626BE561
P 5700 6600
F 0 "J2" H 5700 6850 50  0000 C CNN
F 1 "HighVoltageAC" H 5700 6750 50  0000 C CNN
F 2 "" H 5700 6600 50  0001 C CNN
F 3 "~" H 5700 6600 50  0001 C CNN
	1    5700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6100 2100 6100
Text Label 2100 6100 2    50   ~ 0
EnbSegA
Wire Wire Line
	1650 6200 2100 6200
Text Label 2100 6200 2    50   ~ 0
EnbSegB
Wire Wire Line
	1650 6300 2100 6300
Text Label 2100 6300 2    50   ~ 0
EnbSegC
Wire Wire Line
	1650 6400 2100 6400
Text Label 2100 6400 2    50   ~ 0
EnbSegD
Wire Wire Line
	1650 6500 2100 6500
Text Label 2100 6500 2    50   ~ 0
EnbSegE
Wire Wire Line
	1650 6600 2100 6600
Text Label 2100 6600 2    50   ~ 0
EnbSegF
Wire Wire Line
	1650 6700 2100 6700
Text Label 2100 6700 2    50   ~ 0
EnbSegG
Wire Wire Line
	1650 6800 2100 6800
Text Label 2100 6800 2    50   ~ 0
EnbSegH
$Comp
L power:GND1 #PWR02
U 1 1 626C64DA
P 6100 7050
AR Path="/626C64DA" Ref="#PWR02"  Part="1" 
AR Path="/61A24FF0/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61A60284/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61F6EF90/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FCCA00/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FCCA04/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD10CA/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD10CE/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD5722/626C64DA" Ref="#PWR?"  Part="1" 
AR Path="/61FD5726/626C64DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 6100 6800 50  0001 C CNN
F 1 "GND1" H 6105 6877 50  0000 C CNN
F 2 "" H 6100 7050 50  0001 C CNN
F 3 "" H 6100 7050 50  0001 C CNN
	1    6100 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6700 5900 6700
Wire Wire Line
	6100 6700 6100 7050
Text GLabel 6100 6250 1    50   Input ~ 0
HV_AC
Wire Wire Line
	5900 6600 6100 6600
Wire Wire Line
	6100 6250 6100 6600
$Comp
L power:GND #PWR01
U 1 1 626CA4FB
P 2050 7200
F 0 "#PWR01" H 2050 6950 50  0001 C CNN
F 1 "GND" H 2055 7027 50  0000 C CNN
F 2 "" H 2050 7200 50  0001 C CNN
F 3 "" H 2050 7200 50  0001 C CNN
	1    2050 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6900 2050 6900
Wire Wire Line
	2050 6900 2050 7050
$Comp
L power:PWR_FLAG #FLG01
U 1 1 626CDEB2
P 2050 7050
F 0 "#FLG01" H 2050 7125 50  0001 C CNN
F 1 "PWR_FLAG" V 2050 7178 50  0000 L CNN
F 2 "" H 2050 7050 50  0001 C CNN
F 3 "~" H 2050 7050 50  0001 C CNN
	1    2050 7050
	0    1    1    0   
$EndComp
Connection ~ 2050 7050
Wire Wire Line
	2050 7050 2050 7200
$EndSCHEMATC
