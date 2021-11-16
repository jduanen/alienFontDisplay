EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
P 4100 1400
AR Path="/61A5AA61" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5AA61" Ref="D1"  Part="1" 
F 0 "D1" H 4228 1446 50  0000 L CNN
F 1 "Z0103MN" H 4228 1355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 4850 1250 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 4250 1700 50  0001 C CNN
	1    4100 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AA67
P 3650 1150
AR Path="/61A5AA67" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AA67" Ref="R5"  Part="1" 
F 0 "R5" V 3445 1150 50  0000 C CNN
F 1 "390" V 3536 1150 50  0000 C CNN
F 2 "" V 3690 1140 50  0001 C CNN
F 3 "~" H 3650 1150 50  0001 C CNN
	1    3650 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AA6D
P 3650 1850
AR Path="/61A5AA6D" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AA6D" Ref="R6"  Part="1" 
F 0 "R6" V 3445 1850 50  0000 C CNN
F 1 "390" V 3536 1850 50  0000 C CNN
F 2 "" V 3690 1840 50  0001 C CNN
F 3 "~" H 3650 1850 50  0001 C CNN
	1    3650 1850
	0    1    1    0   
$EndComp
Text GLabel 2000 1300 0    50   Input ~ 0
SEG_1
Wire Wire Line
	2000 1300 2650 1300
$Comp
L power:GND #PWR?
U 1 1 61A5AA75
P 2500 1950
AR Path="/61A5AA75" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5AA75" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2500 1700 50  0001 C CNN
F 1 "GND" H 2505 1777 50  0000 C CNN
F 2 "" H 2500 1950 50  0001 C CNN
F 3 "" H 2500 1950 50  0001 C CNN
	1    2500 1950
	1    0    0    -1  
$EndComp
Text GLabel 4100 900  1    50   Input ~ 0
HV
Wire Wire Line
	2500 1900 2500 1950
$Comp
L Device:R_US R?
U 1 1 61A5AA83
P 2500 1750
AR Path="/61A5AA83" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AA83" Ref="R1"  Part="1" 
F 0 "R1" H 2568 1796 50  0000 L CNN
F 1 "390" H 2568 1705 50  0000 L CNN
F 2 "" V 2540 1740 50  0001 C CNN
F 3 "~" H 2500 1750 50  0001 C CNN
	1    2500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1850 3250 1850
Wire Wire Line
	3800 1850 4100 1850
Text GLabel 4450 1850 2    50   Input ~ 0
SEGMENT_A
Wire Wire Line
	4100 1850 4450 1850
Connection ~ 4100 1850
Wire Wire Line
	3500 1150 3250 1150
Wire Wire Line
	3250 1150 3250 1300
Wire Wire Line
	3800 1150 4100 1150
Wire Wire Line
	4100 1150 4100 1250
Wire Wire Line
	4100 900  4100 1150
Connection ~ 4100 1150
Wire Wire Line
	2650 1500 2500 1500
Wire Wire Line
	2500 1500 2500 1600
Wire Wire Line
	3250 1500 3950 1500
Wire Wire Line
	4100 1550 4100 1850
Wire Wire Line
	3250 1500 3250 1850
$Comp
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5AAA3
P 4100 2800
AR Path="/61A5AAA3" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5AAA3" Ref="D2"  Part="1" 
F 0 "D2" H 4228 2846 50  0000 L CNN
F 1 "Z0103MN" H 4228 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 4850 2650 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 4250 3100 50  0001 C CNN
	1    4100 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AAA9
P 3650 2550
AR Path="/61A5AAA9" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AAA9" Ref="R7"  Part="1" 
F 0 "R7" V 3445 2550 50  0000 C CNN
F 1 "390" V 3536 2550 50  0000 C CNN
F 2 "" V 3690 2540 50  0001 C CNN
F 3 "~" H 3650 2550 50  0001 C CNN
	1    3650 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AAAF
P 3650 3250
AR Path="/61A5AAAF" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AAAF" Ref="R8"  Part="1" 
F 0 "R8" V 3445 3250 50  0000 C CNN
F 1 "390" V 3536 3250 50  0000 C CNN
F 2 "" V 3690 3240 50  0001 C CNN
F 3 "~" H 3650 3250 50  0001 C CNN
	1    3650 3250
	0    1    1    0   
$EndComp
Text GLabel 2000 2700 0    50   Input ~ 0
SEG_2
Wire Wire Line
	2000 2700 2650 2700
$Comp
L power:GND #PWR?
U 1 1 61A5AAB7
P 2500 3350
AR Path="/61A5AAB7" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5AAB7" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2500 3100 50  0001 C CNN
F 1 "GND" H 2505 3177 50  0000 C CNN
F 2 "" H 2500 3350 50  0001 C CNN
F 3 "" H 2500 3350 50  0001 C CNN
	1    2500 3350
	1    0    0    -1  
$EndComp
Text GLabel 4100 2300 1    50   Input ~ 0
HV
Wire Wire Line
	2500 3300 2500 3350
$Comp
L Device:R_US R?
U 1 1 61A5AABF
P 2500 3150
AR Path="/61A5AABF" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AABF" Ref="R2"  Part="1" 
F 0 "R2" H 2568 3196 50  0000 L CNN
F 1 "390" H 2568 3105 50  0000 L CNN
F 2 "" V 2540 3140 50  0001 C CNN
F 3 "~" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3250 3250 3250
Wire Wire Line
	3800 3250 4100 3250
Text GLabel 4450 3250 2    50   Input ~ 0
SEGMENT_B
Wire Wire Line
	4100 3250 4450 3250
Connection ~ 4100 3250
Wire Wire Line
	3500 2550 3250 2550
Wire Wire Line
	3250 2550 3250 2700
Wire Wire Line
	3800 2550 4100 2550
Wire Wire Line
	4100 2550 4100 2650
Wire Wire Line
	4100 2300 4100 2550
Connection ~ 4100 2550
Wire Wire Line
	2650 2900 2500 2900
Wire Wire Line
	2500 2900 2500 3000
Wire Wire Line
	3250 2900 3950 2900
Wire Wire Line
	4100 2950 4100 3250
Wire Wire Line
	3250 2900 3250 3250
$Comp
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5AADC
P 4100 4200
AR Path="/61A5AADC" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5AADC" Ref="D3"  Part="1" 
F 0 "D3" H 4228 4246 50  0000 L CNN
F 1 "Z0103MN" H 4228 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 4850 4050 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 4250 4500 50  0001 C CNN
	1    4100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AAE2
P 3650 3950
AR Path="/61A5AAE2" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AAE2" Ref="R9"  Part="1" 
F 0 "R9" V 3445 3950 50  0000 C CNN
F 1 "390" V 3536 3950 50  0000 C CNN
F 2 "" V 3690 3940 50  0001 C CNN
F 3 "~" H 3650 3950 50  0001 C CNN
	1    3650 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AAE8
P 3650 4650
AR Path="/61A5AAE8" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AAE8" Ref="R10"  Part="1" 
F 0 "R10" V 3445 4650 50  0000 C CNN
F 1 "390" V 3536 4650 50  0000 C CNN
F 2 "" V 3690 4640 50  0001 C CNN
F 3 "~" H 3650 4650 50  0001 C CNN
	1    3650 4650
	0    1    1    0   
$EndComp
Text GLabel 2000 4100 0    50   Input ~ 0
SEG_3
Wire Wire Line
	2000 4100 2650 4100
$Comp
L power:GND #PWR?
U 1 1 61A5AAF0
P 2500 4750
AR Path="/61A5AAF0" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5AAF0" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 2500 4500 50  0001 C CNN
F 1 "GND" H 2505 4577 50  0000 C CNN
F 2 "" H 2500 4750 50  0001 C CNN
F 3 "" H 2500 4750 50  0001 C CNN
	1    2500 4750
	1    0    0    -1  
$EndComp
Text GLabel 4100 3700 1    50   Input ~ 0
HV
Wire Wire Line
	2500 4700 2500 4750
$Comp
L Device:R_US R?
U 1 1 61A5AAF8
P 2500 4550
AR Path="/61A5AAF8" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AAF8" Ref="R3"  Part="1" 
F 0 "R3" H 2568 4596 50  0000 L CNN
F 1 "390" H 2568 4505 50  0000 L CNN
F 2 "" V 2540 4540 50  0001 C CNN
F 3 "~" H 2500 4550 50  0001 C CNN
	1    2500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4650 3250 4650
Wire Wire Line
	3800 4650 4100 4650
Text GLabel 4450 4650 2    50   Input ~ 0
SEGMENT_C
Wire Wire Line
	4100 4650 4450 4650
Connection ~ 4100 4650
Wire Wire Line
	3500 3950 3250 3950
Wire Wire Line
	3250 3950 3250 4100
Wire Wire Line
	3800 3950 4100 3950
Wire Wire Line
	4100 3950 4100 4050
Wire Wire Line
	4100 3700 4100 3950
Connection ~ 4100 3950
Wire Wire Line
	2650 4300 2500 4300
Wire Wire Line
	2500 4300 2500 4400
Wire Wire Line
	3250 4300 3950 4300
Wire Wire Line
	4100 4350 4100 4650
Wire Wire Line
	3250 4300 3250 4650
$Comp
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5AB15
P 4100 5600
AR Path="/61A5AB15" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5AB15" Ref="D4"  Part="1" 
F 0 "D4" H 4228 5646 50  0000 L CNN
F 1 "Z0103MN" H 4228 5555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 4850 5450 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 4250 5900 50  0001 C CNN
	1    4100 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AB1B
P 3650 5350
AR Path="/61A5AB1B" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB1B" Ref="R11"  Part="1" 
F 0 "R11" V 3445 5350 50  0000 C CNN
F 1 "390" V 3536 5350 50  0000 C CNN
F 2 "" V 3690 5340 50  0001 C CNN
F 3 "~" H 3650 5350 50  0001 C CNN
	1    3650 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AB21
P 3650 6050
AR Path="/61A5AB21" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB21" Ref="R12"  Part="1" 
F 0 "R12" V 3445 6050 50  0000 C CNN
F 1 "390" V 3536 6050 50  0000 C CNN
F 2 "" V 3690 6040 50  0001 C CNN
F 3 "~" H 3650 6050 50  0001 C CNN
	1    3650 6050
	0    1    1    0   
$EndComp
Text GLabel 2000 5500 0    50   Input ~ 0
SEG_4
Wire Wire Line
	2000 5500 2650 5500
$Comp
L power:GND #PWR?
U 1 1 61A5AB29
P 2500 6150
AR Path="/61A5AB29" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5AB29" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 2500 5900 50  0001 C CNN
F 1 "GND" H 2505 5977 50  0000 C CNN
F 2 "" H 2500 6150 50  0001 C CNN
F 3 "" H 2500 6150 50  0001 C CNN
	1    2500 6150
	1    0    0    -1  
$EndComp
Text GLabel 4100 5100 1    50   Input ~ 0
HV
Wire Wire Line
	2500 6100 2500 6150
$Comp
L Device:R_US R?
U 1 1 61A5AB31
P 2500 5950
AR Path="/61A5AB31" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB31" Ref="R4"  Part="1" 
F 0 "R4" H 2568 5996 50  0000 L CNN
F 1 "390" H 2568 5905 50  0000 L CNN
F 2 "" V 2540 5940 50  0001 C CNN
F 3 "~" H 2500 5950 50  0001 C CNN
	1    2500 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6050 3250 6050
Wire Wire Line
	3800 6050 4100 6050
Text GLabel 4450 6050 2    50   Input ~ 0
SEGMENT_D
Wire Wire Line
	4100 6050 4450 6050
Connection ~ 4100 6050
Wire Wire Line
	3500 5350 3250 5350
Wire Wire Line
	3250 5350 3250 5500
Wire Wire Line
	3800 5350 4100 5350
Wire Wire Line
	4100 5350 4100 5450
Wire Wire Line
	4100 5100 4100 5350
Connection ~ 4100 5350
Wire Wire Line
	2650 5700 2500 5700
Wire Wire Line
	2500 5700 2500 5800
Wire Wire Line
	3250 5700 3950 5700
Wire Wire Line
	4100 5750 4100 6050
Wire Wire Line
	3250 5700 3250 6050
$Comp
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5AB4E
P 9150 1400
AR Path="/61A5AB4E" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5AB4E" Ref="D5"  Part="1" 
F 0 "D5" H 9278 1446 50  0000 L CNN
F 1 "Z0103MN" H 9278 1355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9900 1250 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 9300 1700 50  0001 C CNN
	1    9150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AB54
P 8700 1150
AR Path="/61A5AB54" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB54" Ref="R17"  Part="1" 
F 0 "R17" V 8495 1150 50  0000 C CNN
F 1 "390" V 8586 1150 50  0000 C CNN
F 2 "" V 8740 1140 50  0001 C CNN
F 3 "~" H 8700 1150 50  0001 C CNN
	1    8700 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AB5A
P 8700 1850
AR Path="/61A5AB5A" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB5A" Ref="R18"  Part="1" 
F 0 "R18" V 8495 1850 50  0000 C CNN
F 1 "390" V 8586 1850 50  0000 C CNN
F 2 "" V 8740 1840 50  0001 C CNN
F 3 "~" H 8700 1850 50  0001 C CNN
	1    8700 1850
	0    1    1    0   
$EndComp
Text GLabel 7050 1300 0    50   Input ~ 0
SEG_5
Wire Wire Line
	7050 1300 7700 1300
$Comp
L power:GND #PWR?
U 1 1 61A5AB62
P 7550 1950
AR Path="/61A5AB62" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5AB62" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 7550 1700 50  0001 C CNN
F 1 "GND" H 7555 1777 50  0000 C CNN
F 2 "" H 7550 1950 50  0001 C CNN
F 3 "" H 7550 1950 50  0001 C CNN
	1    7550 1950
	1    0    0    -1  
$EndComp
Text GLabel 9150 900  1    50   Input ~ 0
HV
Wire Wire Line
	7550 1900 7550 1950
$Comp
L Device:R_US R?
U 1 1 61A5AB6A
P 7550 1750
AR Path="/61A5AB6A" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB6A" Ref="R13"  Part="1" 
F 0 "R13" H 7618 1796 50  0000 L CNN
F 1 "390" H 7618 1705 50  0000 L CNN
F 2 "" V 7590 1740 50  0001 C CNN
F 3 "~" H 7550 1750 50  0001 C CNN
	1    7550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1850 8300 1850
Wire Wire Line
	8850 1850 9150 1850
Text GLabel 9500 1850 2    50   Input ~ 0
SEGMENT_E
Wire Wire Line
	9150 1850 9500 1850
Connection ~ 9150 1850
Wire Wire Line
	8550 1150 8300 1150
Wire Wire Line
	8300 1150 8300 1300
Wire Wire Line
	8850 1150 9150 1150
Wire Wire Line
	9150 1150 9150 1250
Wire Wire Line
	9150 900  9150 1150
Connection ~ 9150 1150
Wire Wire Line
	7700 1500 7550 1500
Wire Wire Line
	7550 1500 7550 1600
Wire Wire Line
	8300 1500 9000 1500
Wire Wire Line
	9150 1550 9150 1850
Wire Wire Line
	8300 1500 8300 1850
$Comp
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5AB87
P 9150 2800
AR Path="/61A5AB87" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5AB87" Ref="D6"  Part="1" 
F 0 "D6" H 9278 2846 50  0000 L CNN
F 1 "Z0103MN" H 9278 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9900 2650 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 9300 3100 50  0001 C CNN
	1    9150 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AB8D
P 8700 2550
AR Path="/61A5AB8D" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB8D" Ref="R19"  Part="1" 
F 0 "R19" V 8495 2550 50  0000 C CNN
F 1 "390" V 8586 2550 50  0000 C CNN
F 2 "" V 8740 2540 50  0001 C CNN
F 3 "~" H 8700 2550 50  0001 C CNN
	1    8700 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AB93
P 8700 3250
AR Path="/61A5AB93" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AB93" Ref="R20"  Part="1" 
F 0 "R20" V 8495 3250 50  0000 C CNN
F 1 "390" V 8586 3250 50  0000 C CNN
F 2 "" V 8740 3240 50  0001 C CNN
F 3 "~" H 8700 3250 50  0001 C CNN
	1    8700 3250
	0    1    1    0   
$EndComp
Text GLabel 7050 2700 0    50   Input ~ 0
SEG_6
Wire Wire Line
	7050 2700 7700 2700
$Comp
L power:GND #PWR?
U 1 1 61A5AB9B
P 7550 3350
AR Path="/61A5AB9B" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5AB9B" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 7550 3100 50  0001 C CNN
F 1 "GND" H 7555 3177 50  0000 C CNN
F 2 "" H 7550 3350 50  0001 C CNN
F 3 "" H 7550 3350 50  0001 C CNN
	1    7550 3350
	1    0    0    -1  
$EndComp
Text GLabel 9150 2300 1    50   Input ~ 0
HV
Wire Wire Line
	7550 3300 7550 3350
$Comp
L Device:R_US R?
U 1 1 61A5ABA3
P 7550 3150
AR Path="/61A5ABA3" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5ABA3" Ref="R14"  Part="1" 
F 0 "R14" H 7618 3196 50  0000 L CNN
F 1 "390" H 7618 3105 50  0000 L CNN
F 2 "" V 7590 3140 50  0001 C CNN
F 3 "~" H 7550 3150 50  0001 C CNN
	1    7550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3250 8300 3250
Wire Wire Line
	8850 3250 9150 3250
Text GLabel 9500 3250 2    50   Input ~ 0
SEGMENT_F
Wire Wire Line
	9150 3250 9500 3250
Connection ~ 9150 3250
Wire Wire Line
	8550 2550 8300 2550
Wire Wire Line
	8300 2550 8300 2700
Wire Wire Line
	8850 2550 9150 2550
Wire Wire Line
	9150 2550 9150 2650
Wire Wire Line
	9150 2300 9150 2550
Connection ~ 9150 2550
Wire Wire Line
	7700 2900 7550 2900
Wire Wire Line
	7550 2900 7550 3000
Wire Wire Line
	8300 2900 9000 2900
Wire Wire Line
	9150 2950 9150 3250
Wire Wire Line
	8300 2900 8300 3250
$Comp
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5ABC0
P 9150 4200
AR Path="/61A5ABC0" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5ABC0" Ref="D7"  Part="1" 
F 0 "D7" H 9278 4246 50  0000 L CNN
F 1 "Z0103MN" H 9278 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9900 4050 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 9300 4500 50  0001 C CNN
	1    9150 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5ABC6
P 8700 3950
AR Path="/61A5ABC6" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5ABC6" Ref="R21"  Part="1" 
F 0 "R21" V 8495 3950 50  0000 C CNN
F 1 "390" V 8586 3950 50  0000 C CNN
F 2 "" V 8740 3940 50  0001 C CNN
F 3 "~" H 8700 3950 50  0001 C CNN
	1    8700 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5ABCC
P 8700 4650
AR Path="/61A5ABCC" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5ABCC" Ref="R22"  Part="1" 
F 0 "R22" V 8495 4650 50  0000 C CNN
F 1 "390" V 8586 4650 50  0000 C CNN
F 2 "" V 8740 4640 50  0001 C CNN
F 3 "~" H 8700 4650 50  0001 C CNN
	1    8700 4650
	0    1    1    0   
$EndComp
Text GLabel 7050 4100 0    50   Input ~ 0
SEG_7
Wire Wire Line
	7050 4100 7700 4100
$Comp
L power:GND #PWR?
U 1 1 61A5ABD4
P 7550 4750
AR Path="/61A5ABD4" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5ABD4" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 7550 4500 50  0001 C CNN
F 1 "GND" H 7555 4577 50  0000 C CNN
F 2 "" H 7550 4750 50  0001 C CNN
F 3 "" H 7550 4750 50  0001 C CNN
	1    7550 4750
	1    0    0    -1  
$EndComp
Text GLabel 9150 3700 1    50   Input ~ 0
HV
Wire Wire Line
	7550 4700 7550 4750
$Comp
L Device:R_US R?
U 1 1 61A5ABDC
P 7550 4550
AR Path="/61A5ABDC" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5ABDC" Ref="R15"  Part="1" 
F 0 "R15" H 7618 4596 50  0000 L CNN
F 1 "390" H 7618 4505 50  0000 L CNN
F 2 "" V 7590 4540 50  0001 C CNN
F 3 "~" H 7550 4550 50  0001 C CNN
	1    7550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4650 8300 4650
Wire Wire Line
	8850 4650 9150 4650
Text GLabel 9500 4650 2    50   Input ~ 0
SEGMENT_G
Wire Wire Line
	9150 4650 9500 4650
Connection ~ 9150 4650
Wire Wire Line
	8550 3950 8300 3950
Wire Wire Line
	8300 3950 8300 4100
Wire Wire Line
	8850 3950 9150 3950
Wire Wire Line
	9150 3950 9150 4050
Wire Wire Line
	9150 3700 9150 3950
Connection ~ 9150 3950
Wire Wire Line
	7700 4300 7550 4300
Wire Wire Line
	7550 4300 7550 4400
Wire Wire Line
	8300 4300 9000 4300
Wire Wire Line
	9150 4350 9150 4650
Wire Wire Line
	8300 4300 8300 4650
$Comp
L Triac_Thyristor:Z0103MN D?
U 1 1 61A5ABF9
P 9150 5600
AR Path="/61A5ABF9" Ref="D?"  Part="1" 
AR Path="/61A24FF0/61A5ABF9" Ref="D8"  Part="1" 
F 0 "D8" H 9278 5646 50  0000 L CNN
F 1 "Z0103MN" H 9278 5555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9900 5450 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 9300 5900 50  0001 C CNN
	1    9150 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5ABFF
P 8700 5350
AR Path="/61A5ABFF" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5ABFF" Ref="R23"  Part="1" 
F 0 "R23" V 8495 5350 50  0000 C CNN
F 1 "390" V 8586 5350 50  0000 C CNN
F 2 "" V 8740 5340 50  0001 C CNN
F 3 "~" H 8700 5350 50  0001 C CNN
	1    8700 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61A5AC05
P 8700 6050
AR Path="/61A5AC05" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AC05" Ref="R24"  Part="1" 
F 0 "R24" V 8495 6050 50  0000 C CNN
F 1 "390" V 8586 6050 50  0000 C CNN
F 2 "" V 8740 6040 50  0001 C CNN
F 3 "~" H 8700 6050 50  0001 C CNN
	1    8700 6050
	0    1    1    0   
$EndComp
Text GLabel 7050 5500 0    50   Input ~ 0
SEG_8
Wire Wire Line
	7050 5500 7700 5500
$Comp
L power:GND #PWR?
U 1 1 61A5AC0D
P 7550 6150
AR Path="/61A5AC0D" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A5AC0D" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7550 5900 50  0001 C CNN
F 1 "GND" H 7555 5977 50  0000 C CNN
F 2 "" H 7550 6150 50  0001 C CNN
F 3 "" H 7550 6150 50  0001 C CNN
	1    7550 6150
	1    0    0    -1  
$EndComp
Text GLabel 9150 5100 1    50   Input ~ 0
HV
Wire Wire Line
	7550 6100 7550 6150
$Comp
L Device:R_US R?
U 1 1 61A5AC15
P 7550 5950
AR Path="/61A5AC15" Ref="R?"  Part="1" 
AR Path="/61A24FF0/61A5AC15" Ref="R16"  Part="1" 
F 0 "R16" H 7618 5996 50  0000 L CNN
F 1 "390" H 7618 5905 50  0000 L CNN
F 2 "" V 7590 5940 50  0001 C CNN
F 3 "~" H 7550 5950 50  0001 C CNN
	1    7550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 6050 8300 6050
Wire Wire Line
	8850 6050 9150 6050
Text GLabel 9500 6050 2    50   Input ~ 0
SEGMENT_H
Wire Wire Line
	9150 6050 9500 6050
Connection ~ 9150 6050
Wire Wire Line
	8550 5350 8300 5350
Wire Wire Line
	8300 5350 8300 5500
Wire Wire Line
	8850 5350 9150 5350
Wire Wire Line
	9150 5350 9150 5450
Wire Wire Line
	9150 5100 9150 5350
Connection ~ 9150 5350
Wire Wire Line
	7700 5700 7550 5700
Wire Wire Line
	7550 5700 7550 5800
Wire Wire Line
	8300 5700 9000 5700
Wire Wire Line
	9150 5750 9150 6050
Wire Wire Line
	8300 5700 8300 6050
$Comp
L power:GND1 #PWR?
U 1 1 61A6A58A
P 5750 6750
AR Path="/61A6A58A" Ref="#PWR?"  Part="1" 
AR Path="/61A24FF0/61A6A58A" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 5750 6500 50  0001 C CNN
F 1 "GND1" H 5755 6577 50  0000 C CNN
F 2 "" H 5750 6750 50  0001 C CNN
F 3 "" H 5750 6750 50  0001 C CNN
	1    5750 6750
	1    0    0    -1  
$EndComp
Text GLabel 5950 6700 2    50   Input ~ 0
DISPLAY_COMMON
Wire Wire Line
	5950 6700 5750 6700
Wire Wire Line
	5750 6700 5750 6750
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A7316C
P 2950 1400
AR Path="/61A60284/61A7316C" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A7316C" Ref="U1"  Part="1" 
F 0 "U1" H 2950 1762 60  0000 C CNN
F 1 "MOC3063" H 2950 1656 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 3150 1600 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 3150 1700 60  0001 L CNN
F 4 "160-1722-5-ND" H 3150 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 3150 1900 60  0001 L CNN "MPN"
F 6 "Isolators" H 3150 2000 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 3150 2100 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 3150 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 3150 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 3150 2400 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 3150 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3150 2600 60  0001 L CNN "Status"
	1    2950 1400
	1    0    0    -1  
$EndComp
Connection ~ 3250 1500
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A8B968
P 2950 2800
AR Path="/61A60284/61A8B968" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A8B968" Ref="U2"  Part="1" 
F 0 "U2" H 2950 3162 60  0000 C CNN
F 1 "MOC3063" H 2950 3056 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 3150 3000 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 3150 3100 60  0001 L CNN
F 4 "160-1722-5-ND" H 3150 3200 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 3150 3300 60  0001 L CNN "MPN"
F 6 "Isolators" H 3150 3400 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 3150 3500 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 3150 3600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 3150 3700 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 3150 3800 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 3150 3900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3150 4000 60  0001 L CNN "Status"
	1    2950 2800
	1    0    0    -1  
$EndComp
Connection ~ 3250 2900
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A8C7D1
P 2950 4200
AR Path="/61A60284/61A8C7D1" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A8C7D1" Ref="U3"  Part="1" 
F 0 "U3" H 2950 4562 60  0000 C CNN
F 1 "MOC3063" H 2950 4456 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 3150 4400 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 3150 4500 60  0001 L CNN
F 4 "160-1722-5-ND" H 3150 4600 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 3150 4700 60  0001 L CNN "MPN"
F 6 "Isolators" H 3150 4800 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 3150 4900 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 3150 5000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 3150 5100 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 3150 5200 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 3150 5300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3150 5400 60  0001 L CNN "Status"
	1    2950 4200
	1    0    0    -1  
$EndComp
Connection ~ 3250 4300
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A8D55C
P 2950 5600
AR Path="/61A60284/61A8D55C" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A8D55C" Ref="U4"  Part="1" 
F 0 "U4" H 2950 5962 60  0000 C CNN
F 1 "MOC3063" H 2950 5856 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 3150 5800 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 3150 5900 60  0001 L CNN
F 4 "160-1722-5-ND" H 3150 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 3150 6100 60  0001 L CNN "MPN"
F 6 "Isolators" H 3150 6200 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 3150 6300 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 3150 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 3150 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 3150 6600 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 3150 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3150 6800 60  0001 L CNN "Status"
	1    2950 5600
	1    0    0    -1  
$EndComp
Connection ~ 3250 5700
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A8E3DF
P 8000 1400
AR Path="/61A60284/61A8E3DF" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A8E3DF" Ref="U5"  Part="1" 
F 0 "U5" H 8000 1762 60  0000 C CNN
F 1 "MOC3063" H 8000 1656 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 8200 1600 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 8200 1700 60  0001 L CNN
F 4 "160-1722-5-ND" H 8200 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 8200 1900 60  0001 L CNN "MPN"
F 6 "Isolators" H 8200 2000 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 8200 2100 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 8200 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 8200 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 8200 2400 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 8200 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8200 2600 60  0001 L CNN "Status"
	1    8000 1400
	1    0    0    -1  
$EndComp
Connection ~ 8300 1500
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A8F55C
P 8000 2800
AR Path="/61A60284/61A8F55C" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A8F55C" Ref="U6"  Part="1" 
F 0 "U6" H 8000 3162 60  0000 C CNN
F 1 "MOC3063" H 8000 3056 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 8200 3000 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 8200 3100 60  0001 L CNN
F 4 "160-1722-5-ND" H 8200 3200 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 8200 3300 60  0001 L CNN "MPN"
F 6 "Isolators" H 8200 3400 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 8200 3500 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 8200 3600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 8200 3700 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 8200 3800 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 8200 3900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8200 4000 60  0001 L CNN "Status"
	1    8000 2800
	1    0    0    -1  
$EndComp
Connection ~ 8300 2900
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A90351
P 8000 4200
AR Path="/61A60284/61A90351" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A90351" Ref="U7"  Part="1" 
F 0 "U7" H 8000 4562 60  0000 C CNN
F 1 "MOC3063" H 8000 4456 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 8200 4400 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 8200 4500 60  0001 L CNN
F 4 "160-1722-5-ND" H 8200 4600 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 8200 4700 60  0001 L CNN "MPN"
F 6 "Isolators" H 8200 4800 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 8200 4900 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 8200 5000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 8200 5100 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 8200 5200 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 8200 5300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8200 5400 60  0001 L CNN "Status"
	1    8000 4200
	1    0    0    -1  
$EndComp
Connection ~ 8300 4300
$Comp
L dk_Optoisolators-Triac-SCR-Output:MOC3063 U?
U 1 1 61A9128E
P 8000 5600
AR Path="/61A60284/61A9128E" Ref="U?"  Part="1" 
AR Path="/61A24FF0/61A9128E" Ref="U8"  Part="1" 
F 0 "U8" H 8000 5962 60  0000 C CNN
F 1 "MOC3063" H 8000 5856 60  0000 C CNN
F 2 "digikey-footprints:DIP-6_W7.62mm" H 8200 5800 60  0001 L CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" V 8200 5900 60  0001 L CNN
F 4 "160-1722-5-ND" H 8200 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "MOC3063" H 8200 6100 60  0001 L CNN "MPN"
F 6 "Isolators" H 8200 6200 60  0001 L CNN "Category"
F 7 "Optoisolators - Triac, SCR Output" H 8200 6300 60  0001 L CNN "Family"
F 8 "http://optoelectronics.liteon.com/upload/download/DS70-2001-026/MOC306X%20series%20201606.pdf" H 8200 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/lite-on-inc/MOC3063/160-1722-5-ND/670014" H 8200 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "OPTOISOLATOR 5KV TRIAC 6DIP" H 8200 6600 60  0001 L CNN "Description"
F 11 "Lite-On Inc." H 8200 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8200 6800 60  0001 L CNN "Status"
	1    8000 5600
	1    0    0    -1  
$EndComp
Connection ~ 8300 5700
$EndSCHEMATC
