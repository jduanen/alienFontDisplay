EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5AA61
P 6350 3550
AR Path="/61A5AA61" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5AA61" Ref="D1"  Part="1" 
AR Path="/61FCCA00/61A5AA61" Ref="D3"  Part="1" 
AR Path="/61FD10CA/61A5AA61" Ref="D5"  Part="1" 
AR Path="/61FD5722/61A5AA61" Ref="D7"  Part="1" 
AR Path="/61FD5726/61A5AA61" Ref="D8"  Part="1" 
AR Path="/61F6EF90/61A5AA61" Ref="D2"  Part="1" 
AR Path="/61FCCA04/61A5AA61" Ref="D4"  Part="1" 
AR Path="/61FD10CE/61A5AA61" Ref="D6"  Part="1" 
F 0 "D1" H 6478 3596 50  0000 L CNN
F 1 "Z0103MN" H 6478 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 7100 3400 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 6500 3850 50  0001 C CNN
	1    6350 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AA67
P 5900 3300
AR Path="/61A5AA67" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AA67" Ref="R2"  Part="1" 
AR Path="/61FCCA00/61A5AA67" Ref="R8"  Part="1" 
AR Path="/61FD10CA/61A5AA67" Ref="R14"  Part="1" 
AR Path="/61FD5722/61A5AA67" Ref="R20"  Part="1" 
AR Path="/61FD5726/61A5AA67" Ref="R23"  Part="1" 
AR Path="/61F6EF90/61A5AA67" Ref="R5"  Part="1" 
AR Path="/61FCCA04/61A5AA67" Ref="R11"  Part="1" 
AR Path="/61FD10CE/61A5AA67" Ref="R17"  Part="1" 
F 0 "R2" V 5695 3300 50  0000 C CNN
F 1 "390" V 5786 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5940 3290 50  0001 C CNN
F 3 "~" H 5900 3300 50  0001 C CNN
	1    5900 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AA6D
P 5900 4000
AR Path="/61A5AA6D" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AA6D" Ref="R3"  Part="1" 
AR Path="/61FCCA00/61A5AA6D" Ref="R9"  Part="1" 
AR Path="/61FD10CA/61A5AA6D" Ref="R15"  Part="1" 
AR Path="/61FD5722/61A5AA6D" Ref="R21"  Part="1" 
AR Path="/61FD5726/61A5AA6D" Ref="R24"  Part="1" 
AR Path="/61F6EF90/61A5AA6D" Ref="R6"  Part="1" 
AR Path="/61FCCA04/61A5AA6D" Ref="R12"  Part="1" 
AR Path="/61FD10CE/61A5AA6D" Ref="R18"  Part="1" 
F 0 "R3" V 5695 4000 50  0000 C CNN
F 1 "390" V 5786 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5940 3990 50  0001 C CNN
F 3 "~" H 5900 4000 50  0001 C CNN
	1    5900 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3450 4900 3450
Text GLabel 6350 3050 1    50   Input ~ 0
HV_AC
$Comp
L Device:R_US R?
U 1 1 61A5AA83
P 4750 3900
AR Path="/61A5AA83" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AA83" Ref="R1"  Part="1" 
AR Path="/61FCCA00/61A5AA83" Ref="R7"  Part="1" 
AR Path="/61FD10CA/61A5AA83" Ref="R13"  Part="1" 
AR Path="/61FD5722/61A5AA83" Ref="R19"  Part="1" 
AR Path="/61FD5726/61A5AA83" Ref="R22"  Part="1" 
AR Path="/61F6EF90/61A5AA83" Ref="R4"  Part="1" 
AR Path="/61FCCA04/61A5AA83" Ref="R10"  Part="1" 
AR Path="/61FD10CE/61A5AA83" Ref="R16"  Part="1" 
F 0 "R1" H 4818 3946 50  0000 L CNN
F 1 "390" H 4818 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4790 3890 50  0001 C CNN
F 3 "~" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4000 5500 4000
Wire Wire Line
	6050 4000 6350 4000
Wire Wire Line
	5750 3300 5500 3300
Wire Wire Line
	5500 3300 5500 3450
Wire Wire Line
	6050 3300 6350 3300
Wire Wire Line
	6350 3300 6350 3400
Wire Wire Line
	6350 3050 6350 3300
Connection ~ 6350 3300
Wire Wire Line
	4900 3650 4750 3650
Wire Wire Line
	4750 3650 4750 3750
Wire Wire Line
	5500 3650 6200 3650
Wire Wire Line
	6350 3700 6350 4000
Wire Wire Line
	5500 3650 5500 4000
Connection ~ 6350 4000
Wire Wire Line
	6350 4000 6700 4000
Text HLabel 4250 3450 0    50   Input ~ 0
SegmentEnable
Text HLabel 6700 4000 2    50   Output ~ 0
SegmentOut
Wire Wire Line
	4750 4050 4750 4250
$Comp
L power:GND #PWR?
U 1 1 626CB76C
P 4750 4250
AR Path="/626CB76C" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/626CB76C" Ref="#PWR04"  Part="1" 
AR Path="/61F6EF90/626CB76C" Ref="#PWR05"  Part="1" 
AR Path="/61FCCA00/626CB76C" Ref="#PWR06"  Part="1" 
AR Path="/61FCCA04/626CB76C" Ref="#PWR07"  Part="1" 
AR Path="/61FD10CA/626CB76C" Ref="#PWR08"  Part="1" 
AR Path="/61FD10CE/626CB76C" Ref="#PWR09"  Part="1" 
AR Path="/61FD5722/626CB76C" Ref="#PWR010"  Part="1" 
AR Path="/61FD5726/626CB76C" Ref="#PWR011"  Part="1" 
F 0 "#PWR04" H 4750 4000 50  0001 C CNN
F 1 "GND" H 4755 4077 50  0000 C CNN
F 2 "" H 4750 4250 50  0001 C CNN
F 3 "" H 4750 4250 50  0001 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
$Comp
L jdn_symbols:QTM3063T1 U1
U 1 1 626DC068
P 5200 3550
AR Path="/61A24FF0/626DC068" Ref="U1"  Part="1" 
AR Path="/61F6EF90/626DC068" Ref="U2"  Part="1" 
AR Path="/61FCCA00/626DC068" Ref="U3"  Part="1" 
AR Path="/61FCCA04/626DC068" Ref="U4"  Part="1" 
AR Path="/61FD10CA/626DC068" Ref="U5"  Part="1" 
AR Path="/61FD10CE/626DC068" Ref="U6"  Part="1" 
AR Path="/61FD5722/626DC068" Ref="U7"  Part="1" 
AR Path="/61FD5726/626DC068" Ref="U8"  Part="1" 
F 0 "U1" H 5200 3912 60  0000 C CNN
F 1 "QTM3063T1" H 5200 3806 60  0000 C CNN
F 2 "jdn_library:4-SMD_3.8x4.6mm" H 5400 3750 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 5400 3850 60  0001 L CNN
F 4 "1516-1306-1-ND" H 5400 3950 60  0001 L CNN "Digi-Key_PN"
F 5 "QTM3063T1" H 5400 4050 60  0001 L CNN "MPN"
F 6 "Isolators" H 5400 4150 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 5400 4250 60  0001 L CNN "Family"
F 8 "https://www.qt-brightek.com/datasheet/QTM303X_304X_306X_308X_Zero-Crossing_triac_series.pdf" H 5400 4350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "https://www.digikey.com/en/products/detail/qt-brightek-qtb/QTM3063T1/8445549" H 5400 4450 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 4pin mini-flat" H 5400 4550 60  0001 L CNN "Description"
F 11 "QT Brightek" H 5400 4650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5400 4750 60  0001 L CNN "Status"
	1    5200 3550
	1    0    0    -1  
$EndComp
Connection ~ 5500 3650
$EndSCHEMATC
