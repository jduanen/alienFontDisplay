EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 11
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
L Device:C C?
U 1 1 61B0A15A
P 5600 3900
AR Path="/61B0A15A" Ref="C?"  Part="1" 
AR Path="/61B04F51/61B0A15A" Ref="C1"  Part="1" 
F 0 "C1" H 5715 3946 50  0000 L CNN
F 1 "0.1 uFd" H 5715 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5638 3750 50  0000 C CNN
F 3 "~" H 5600 3900 50  0001 C CNN
F 4 "10" H 5600 3900 50  0001 C CNN "Multiplier"
F 5 "10" H 5600 3900 50  0001 C CNN "Total"
	1    5600 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B0A160
P 5600 4200
AR Path="/61B0A160" Ref="#PWR?"  Part="1" 
AR Path="/61B04F51/61B0A160" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 5600 3950 50  0001 C CNN
F 1 "GND" H 5605 4027 50  0000 C CNN
F 2 "" H 5600 4200 50  0001 C CNN
F 3 "" H 5600 4200 50  0001 C CNN
	1    5600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3550 5600 3750
Wire Wire Line
	5600 4050 5600 4200
$Comp
L power:+5V #PWR?
U 1 1 61B0A168
P 5600 3550
AR Path="/61B0A168" Ref="#PWR?"  Part="1" 
AR Path="/61B04F51/61B0A168" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5600 3400 50  0001 C CNN
F 1 "+5V" H 5615 3723 50  0000 C CNN
F 2 "" H 5600 3550 50  0001 C CNN
F 3 "" H 5600 3550 50  0001 C CNN
	1    5600 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
