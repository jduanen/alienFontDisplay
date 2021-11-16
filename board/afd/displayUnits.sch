EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Smartsocket for Alien Font Display"
Date "2021-11-15"
Rev "0.0.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "http://git@github.com:jduanen/alienFontDisplay.git"
$EndDescr
Text GLabel 4700 4050 0    50   Input ~ 0
DISPLAY_COMMON
Wire Wire Line
	4700 4050 5100 4050
$Comp
L jdn_symbols:IEL-O-VI_C63.396.208-02 DS1
U 1 1 61A95C78
P 5850 3850
F 0 "DS1" H 5100 5400 50  0000 C CNN
F 1 "IEL-O-VI_C63.396.208-02" H 5100 5300 50  0000 C CNN
F 2 "" H 6000 4650 50  0001 C CNN
F 3 "" H 6000 4650 50  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
Text GLabel 5650 4950 3    50   Input ~ 0
SEGMENT_A
Text GLabel 5950 4950 3    50   Input ~ 0
SEGMENT_B
Text GLabel 5450 4950 3    50   Input ~ 0
SEGMENT_C
Wire Wire Line
	5450 4650 5450 4950
Wire Wire Line
	5650 4650 5650 4950
Wire Wire Line
	5950 4650 5950 4950
Text GLabel 4700 3900 0    50   Input ~ 0
SEGMENT_D
Text GLabel 4700 3500 0    50   Input ~ 0
SEGMENT_F
Text GLabel 4700 3150 0    50   Input ~ 0
SEGMENT_H
Text GLabel 6700 3150 2    50   Input ~ 0
SEGMENT_G
Text GLabel 6700 3500 2    50   Input ~ 0
SEGMENT_E
Text GLabel 5950 2200 1    50   Input ~ 0
SEGMENT_I
Wire Wire Line
	4700 3500 5100 3500
Wire Wire Line
	4700 3150 5100 3150
Wire Wire Line
	5950 2550 5950 2200
Wire Wire Line
	6700 3500 6300 3500
Wire Wire Line
	6700 3150 6300 3150
Wire Wire Line
	4700 3900 5100 3900
$EndSCHEMATC
