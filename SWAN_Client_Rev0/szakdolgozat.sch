EESchema Schematic File Version 4
LIBS:szakdolgozat-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SWAN client"
Date "2020-10-25"
Rev "Rev0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED D1
U 1 1 5F8D5169
P 3500 900
F 0 "D1" H 3493 1116 50  0000 C CNN
F 1 "LED" H 3493 1025 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3500 900 50  0001 C CNN
F 3 "~" H 3500 900 50  0001 C CNN
	1    3500 900 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F8D5AD1
P 3500 1200
F 0 "R1" H 3570 1246 50  0000 L CNN
F 1 "R" H 3570 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 1200 50  0001 C CNN
F 3 "~" H 3500 1200 50  0001 C CNN
	1    3500 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5F8E4C50
P -2100 5175
F 0 "#PWR0101" H -2100 5025 50  0001 C CNN
F 1 "+3V3" H -2085 5348 50  0000 C CNN
F 2 "" H -2100 5175 50  0001 C CNN
F 3 "" H -2100 5175 50  0001 C CNN
	1    -2100 5175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F8E7BD0
P -2425 5275
F 0 "#PWR0105" H -2425 5025 50  0001 C CNN
F 1 "GND" H -2420 5102 50  0000 C CNN
F 2 "" H -2425 5275 50  0001 C CNN
F 3 "" H -2425 5275 50  0001 C CNN
	1    -2425 5275
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0107
U 1 1 5F8E9024
P -2375 5675
F 0 "#PWR0107" H -2375 5525 50  0001 C CNN
F 1 "+3V3" V -2360 5803 50  0000 L CNN
F 2 "" H -2375 5675 50  0001 C CNN
F 3 "" H -2375 5675 50  0001 C CNN
	1    -2375 5675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	-2100 5375 -2425 5375
Wire Wire Line
	-2375 5675 -2100 5675
Wire Wire Line
	-2100 5475 -2475 5475
$Comp
L Device:C C14
U 1 1 5F8EF8EC
P -1300 5425
F 0 "C14" H -1185 5471 50  0000 L CNN
F 1 "100n" H -1185 5380 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -1262 5275 50  0001 C CNN
F 3 "~" H -1300 5425 50  0001 C CNN
	1    -1300 5425
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 5F8F14FB
P -1300 5275
F 0 "#PWR0108" H -1300 5125 50  0001 C CNN
F 1 "+3V3" H -1285 5448 50  0000 C CNN
F 2 "" H -1300 5275 50  0001 C CNN
F 3 "" H -1300 5275 50  0001 C CNN
	1    -1300 5275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F8F1FD4
P -1300 5575
F 0 "#PWR0110" H -1300 5325 50  0001 C CNN
F 1 "GND" H -1295 5402 50  0000 C CNN
F 2 "" H -1300 5575 50  0001 C CNN
F 3 "" H -1300 5575 50  0001 C CNN
	1    -1300 5575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F90EA6F
P 3500 1350
F 0 "#PWR0116" H 3500 1100 50  0001 C CNN
F 1 "GND" H 3505 1177 50  0000 C CNN
F 2 "" H 3500 1350 50  0001 C CNN
F 3 "" H 3500 1350 50  0001 C CNN
	1    3500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5F91F85E
P 7675 2000
F 0 "#PWR0117" H 7675 1850 50  0001 C CNN
F 1 "+3V3" H 7690 2173 50  0000 C CNN
F 2 "" H 7675 2000 50  0001 C CNN
F 3 "" H 7675 2000 50  0001 C CNN
	1    7675 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F921125
P 6350 2150
F 0 "C2" H 6150 2200 50  0000 L CNN
F 1 "1u" H 6150 2125 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6388 2000 50  0001 C CNN
F 3 "~" H 6350 2150 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
Connection ~ 6350 2000
$Comp
L Device:C C3
U 1 1 5F921948
P 7675 2150
F 0 "C3" H 7790 2196 50  0000 L CNN
F 1 "1u" H 7790 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7713 2000 50  0001 C CNN
F 3 "~" H 7675 2150 50  0001 C CNN
	1    7675 2150
	1    0    0    -1  
$EndComp
Connection ~ 7675 2000
$Comp
L power:GND #PWR0118
U 1 1 5F921F85
P 6350 2300
F 0 "#PWR0118" H 6350 2050 50  0001 C CNN
F 1 "GND" H 6355 2127 50  0000 C CNN
F 2 "" H 6350 2300 50  0001 C CNN
F 3 "" H 6350 2300 50  0001 C CNN
	1    6350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F9223C5
P 7675 2300
F 0 "#PWR0119" H 7675 2050 50  0001 C CNN
F 1 "GND" H 7680 2127 50  0000 C CNN
F 2 "" H 7675 2300 50  0001 C CNN
F 3 "" H 7675 2300 50  0001 C CNN
	1    7675 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F93830C
P 3950 825
F 0 "C1" H 4065 871 50  0000 L CNN
F 1 "1u" H 4065 780 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3988 675 50  0001 C CNN
F 3 "~" H 3950 825 50  0001 C CNN
	1    3950 825 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F93D722
P 3950 975
F 0 "#PWR0120" H 3950 725 50  0001 C CNN
F 1 "GND" H 3955 802 50  0000 C CNN
F 2 "" H 3950 975 50  0001 C CNN
F 3 "" H 3950 975 50  0001 C CNN
	1    3950 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 800  4550 775 
Wire Wire Line
	4550 675  3950 675 
Wire Wire Line
	4150 1000 4150 775 
Wire Wire Line
	4150 775  4550 775 
Connection ~ 4550 775 
Wire Wire Line
	4550 775  4550 675 
Connection ~ 3950 675 
Wire Wire Line
	3950 675  3825 675 
Text Label 5800 1000 0    50   ~ 0
Ubat
Text Label 6075 1650 0    50   ~ 0
Ubat
$Comp
L Device:C C4
U 1 1 5F9479F6
P 5225 1150
F 0 "C4" H 5340 1196 50  0000 L CNN
F 1 "1u" H 5340 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5263 1000 50  0001 C CNN
F 3 "~" H 5225 1150 50  0001 C CNN
	1    5225 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F9479FC
P 5225 1300
F 0 "#PWR0121" H 5225 1050 50  0001 C CNN
F 1 "GND" H 5230 1127 50  0000 C CNN
F 2 "" H 5225 1300 50  0001 C CNN
F 3 "" H 5225 1300 50  0001 C CNN
	1    5225 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1000 5625 1000
$Comp
L power:GND #PWR0122
U 1 1 5F9412F9
P 5625 1300
F 0 "#PWR0122" H 5625 1050 50  0001 C CNN
F 1 "GND" H 5630 1127 50  0000 C CNN
F 2 "" H 5625 1300 50  0001 C CNN
F 3 "" H 5625 1300 50  0001 C CNN
	1    5625 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F935548
P 5625 1200
F 0 "BT1" H 5743 1296 50  0000 L CNN
F 1 "Battery_Cell" H 5743 1205 50  0000 L CNN
F 2 "Battery:BatteryHolder_MPD_BH-18650-PC2" V 5625 1260 50  0001 C CNN
F 3 "~" V 5625 1260 50  0001 C CNN
	1    5625 1200
	1    0    0    -1  
$EndComp
Connection ~ 5625 1000
Wire Wire Line
	4950 1000 5225 1000
Connection ~ 5225 1000
Wire Wire Line
	5225 1000 5625 1000
Wire Wire Line
	3400 675  3500 675 
Wire Wire Line
	3500 675  3500 750 
$Comp
L Device:Q_PMOS_DGS Q1
U 1 1 5F966D2E
P 2225 900
F 0 "Q1" V 2568 900 50  0000 C CNN
F 1 "Q_PMOS_DGS" V 2477 900 50  0000 C CNN
F 2 "mylib:MySuperSOT-3" H 2425 1000 50  0001 C CNN
F 3 "~" H 2225 900 50  0001 C CNN
	1    2225 900 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack J1
U 1 1 5F96C8A4
P 825 900
F 0 "J1" H 882 1225 50  0000 C CNN
F 1 "Barrel_Jack" H 882 1134 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 875 860 50  0001 C CNN
F 3 "~" H 875 860 50  0001 C CNN
	1    825  900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F971C71
P 1250 1075
F 0 "#PWR0124" H 1250 825 50  0001 C CNN
F 1 "GND" H 1255 902 50  0000 C CNN
F 2 "" H 1250 1075 50  0001 C CNN
F 3 "" H 1250 1075 50  0001 C CNN
	1    1250 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 1000 1250 1000
Wire Wire Line
	1250 1000 1250 1075
$Comp
L power:GND #PWR0126
U 1 1 5F97513D
P 2225 1200
F 0 "#PWR0126" H 2225 950 50  0001 C CNN
F 1 "GND" H 2230 1027 50  0000 C CNN
F 2 "" H 2225 1200 50  0001 C CNN
F 3 "" H 2225 1200 50  0001 C CNN
	1    2225 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 1200 2225 1100
$Comp
L Device:Buzzer BZ1
U 1 1 5F9C040A
P -1475 6975
F 0 "BZ1" H -1323 7004 50  0000 L CNN
F 1 "Buzzer" H -1323 6913 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_15x7.5RM7.6" V -1500 7075 50  0001 C CNN
F 3 "~" V -1500 7075 50  0001 C CNN
	1    -1475 6975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5F9C9933
P 6850 2300
F 0 "#PWR0132" H 6850 2050 50  0001 C CNN
F 1 "GND" H 6855 2127 50  0000 C CNN
F 2 "" H 6850 2300 50  0001 C CNN
F 3 "" H 6850 2300 50  0001 C CNN
	1    6850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5F9628F7
P -525 6900
F 0 "D4" H -532 7116 50  0000 C CNN
F 1 "LED" H -532 7025 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H -525 6900 50  0001 C CNN
F 3 "~" H -525 6900 50  0001 C CNN
	1    -525 6900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F9628FD
P -525 7200
F 0 "R18" H -455 7246 50  0000 L CNN
F 1 "270" H -455 7155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -595 7200 50  0001 C CNN
F 3 "~" H -525 7200 50  0001 C CNN
	1    -525 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F962903
P -525 7350
F 0 "#PWR0134" H -525 7100 50  0001 C CNN
F 1 "GND" H -520 7177 50  0000 C CNN
F 2 "" H -525 7350 50  0001 C CNN
F 3 "" H -525 7350 50  0001 C CNN
	1    -525 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	-600 6700 -525 6700
Wire Wire Line
	-525 6700 -525 6750
Text Label -600 6700 2    50   ~ 0
BatteryIndicator
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 5F966DD1
P -2000 7425
F 0 "Q2" H -1809 7471 50  0000 L CNN
F 1 "Q_NPN_BCE" H -1809 7380 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_HandSolder" H -1800 7525 50  0001 C CNN
F 3 "~" H -2000 7425 50  0001 C CNN
	1    -2000 7425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5F968FBB
P -1900 6975
F 0 "R17" H -1830 7021 50  0000 L CNN
F 1 "1k" H -1830 6930 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -1970 6975 50  0001 C CNN
F 3 "~" H -1900 6975 50  0001 C CNN
	1    -1900 6975
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0135
U 1 1 5F96A632
P -1900 6725
F 0 "#PWR0135" H -1900 6575 50  0001 C CNN
F 1 "+3V3" H -1885 6898 50  0000 C CNN
F 2 "" H -1900 6725 50  0001 C CNN
F 3 "" H -1900 6725 50  0001 C CNN
	1    -1900 6725
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1900 7125 -1900 7175
Wire Wire Line
	-1900 7175 -1575 7175
Wire Wire Line
	-1575 7175 -1575 7075
Connection ~ -1900 7175
Wire Wire Line
	-1900 7175 -1900 7225
Wire Wire Line
	-1900 6725 -1900 6775
Wire Wire Line
	-1900 6775 -1575 6775
Wire Wire Line
	-1575 6775 -1575 6875
Connection ~ -1900 6775
Wire Wire Line
	-1900 6775 -1900 6825
$Comp
L Device:R R20
U 1 1 5F973A5F
P -2350 7425
F 0 "R20" V -2250 7350 50  0000 L CNN
F 1 "1k" V -2450 7400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -2420 7425 50  0001 C CNN
F 3 "~" H -2350 7425 50  0001 C CNN
	1    -2350 7425
	0    1    1    0   
$EndComp
Wire Wire Line
	-2500 7425 -2775 7425
Wire Wire Line
	-1900 7625 -1900 7725
$Comp
L power:GND #PWR0136
U 1 1 5F978D15
P -1900 7725
F 0 "#PWR0136" H -1900 7475 50  0001 C CNN
F 1 "GND" H -1895 7552 50  0000 C CNN
F 2 "" H -1900 7725 50  0001 C CNN
F 3 "" H -1900 7725 50  0001 C CNN
	1    -1900 7725
	1    0    0    -1  
$EndComp
Text Label -2775 7425 0    47   ~ 0
Buzzer
$Comp
L power:+3V3 #PWR0137
U 1 1 5F9807E5
P 2175 4275
F 0 "#PWR0137" H 2175 4125 50  0001 C CNN
F 1 "+3V3" H 2190 4448 50  0000 C CNN
F 2 "" H 2175 4275 50  0001 C CNN
F 3 "" H 2175 4275 50  0001 C CNN
	1    2175 4275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F98105A
P 3150 4525
F 0 "C11" H 3175 4625 50  0000 L CNN
F 1 "0.1u" H 3175 4425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3188 4375 50  0001 C CNN
F 3 "~" H 3150 4525 50  0001 C CNN
	1    3150 4525
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F9818B8
P 3400 4525
F 0 "C12" H 3450 4625 50  0000 L CNN
F 1 "22u" H 3475 4425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 4375 50  0001 C CNN
F 3 "~" H 3400 4525 50  0001 C CNN
	1    3400 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2175 4325 3150 4325
Wire Wire Line
	3150 4325 3150 4375
Connection ~ 3150 4325
Wire Wire Line
	3150 4325 3400 4325
Wire Wire Line
	3400 4325 3400 4375
Connection ~ 2175 4325
Wire Wire Line
	2175 4275 2175 4325
$Comp
L power:GND #PWR0138
U 1 1 5F99A60C
P 3400 4675
F 0 "#PWR0138" H 3400 4425 50  0001 C CNN
F 1 "GND" H 3405 4502 50  0000 C CNN
F 2 "" H 3400 4675 50  0001 C CNN
F 3 "" H 3400 4675 50  0001 C CNN
	1    3400 4675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5F99AD36
P 3150 4675
F 0 "#PWR0139" H 3150 4425 50  0001 C CNN
F 1 "GND" H 3155 4502 50  0000 C CNN
F 2 "" H 3150 4675 50  0001 C CNN
F 3 "" H 3150 4675 50  0001 C CNN
	1    3150 4675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5F99AE54
P 2175 7375
F 0 "#PWR0140" H 2175 7125 50  0001 C CNN
F 1 "GND" H 2180 7202 50  0000 C CNN
F 2 "" H 2175 7375 50  0001 C CNN
F 3 "" H 2175 7375 50  0001 C CNN
	1    2175 7375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F99B751
P 3400 5400
F 0 "R14" H 3470 5446 50  0000 L CNN
F 1 "1k" H 3470 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3330 5400 50  0001 C CNN
F 3 "~" H 3400 5400 50  0001 C CNN
	1    3400 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F99BB03
P 3400 5750
F 0 "C13" H 3515 5796 50  0000 L CNN
F 1 "0.1u" H 3515 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 5600 50  0001 C CNN
F 3 "~" H 3400 5750 50  0001 C CNN
	1    3400 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0141
U 1 1 5F99C08A
P 3400 5250
F 0 "#PWR0141" H 3400 5100 50  0001 C CNN
F 1 "+3V3" H 3415 5423 50  0000 C CNN
F 2 "" H 3400 5250 50  0001 C CNN
F 3 "" H 3400 5250 50  0001 C CNN
	1    3400 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5F99C523
P 3400 5900
F 0 "#PWR0142" H 3400 5650 50  0001 C CNN
F 1 "GND" H 3405 5727 50  0000 C CNN
F 2 "" H 3400 5900 50  0001 C CNN
F 3 "" H 3400 5900 50  0001 C CNN
	1    3400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5550 3400 5575
Connection ~ 3400 5575
Wire Wire Line
	3400 5575 3400 5600
Wire Wire Line
	2775 4775 2975 4775
Text Label 2975 4775 0    47   ~ 0
EN
Text Label 1325 6275 0    47   ~ 0
SCL
Text Label 1325 6175 0    47   ~ 0
SDA
$Comp
L Device:R R15
U 1 1 5F9BE18E
P 1150 4875
F 0 "R15" V 1200 4975 50  0000 L CNN
F 1 "22R" V 1225 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1080 4875 50  0001 C CNN
F 3 "~" H 1150 4875 50  0001 C CNN
	1    1150 4875
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5F9BF360
P 1150 5075
F 0 "R16" V 1100 4825 50  0000 L CNN
F 1 "22R" V 1075 5050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1080 5075 50  0001 C CNN
F 3 "~" H 1150 5075 50  0001 C CNN
	1    1150 5075
	0    1    1    0   
$EndComp
Wire Wire Line
	1575 4875 1300 4875
Wire Wire Line
	1300 5075 1575 5075
Text Label 725  4875 0    47   ~ 0
TX
Text Label 725  5075 0    47   ~ 0
RX
Wire Wire Line
	2175 4325 2175 4575
Text Notes 2825 6325 0    47   ~ 0
Internal SPI connected\n
NoConn ~ 2775 6075
NoConn ~ 2775 6175
NoConn ~ 2775 6275
NoConn ~ 2775 6375
NoConn ~ 2775 6475
NoConn ~ 2775 5975
$Comp
L RF_Module:ESP32-WROOM-32 U7
U 1 1 5F7A2BE4
P 2175 5975
F 0 "U7" H 1850 7450 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 1775 7350 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2175 4475 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 1875 6025 50  0001 C CNN
	1    2175 5975
	-1   0    0    -1  
$EndComp
Text Label 3025 4975 0    47   ~ 0
U_moisture
Wire Wire Line
	2775 4975 3025 4975
Wire Wire Line
	2775 5075 3025 5075
Wire Wire Line
	1575 4775 1325 4775
Wire Wire Line
	1575 4975 1325 4975
Wire Wire Line
	1575 5175 1325 5175
Wire Wire Line
	1575 5275 1325 5275
Wire Wire Line
	1575 5375 1325 5375
Wire Wire Line
	1575 5475 1325 5475
Wire Wire Line
	1575 5575 1325 5575
Wire Wire Line
	1575 5675 1325 5675
Wire Wire Line
	1575 5775 1325 5775
Wire Wire Line
	1575 5875 1325 5875
Wire Wire Line
	1575 5975 1325 5975
Wire Wire Line
	1575 6075 1325 6075
Wire Wire Line
	1575 6175 1325 6175
Wire Wire Line
	1575 6275 1325 6275
Wire Wire Line
	1575 6375 1325 6375
Wire Wire Line
	1575 6475 1325 6475
Wire Wire Line
	1575 6575 1325 6575
Wire Wire Line
	1575 6675 1325 6675
Wire Wire Line
	1575 6775 1325 6775
Wire Wire Line
	1575 6875 1325 6875
Wire Wire Line
	1575 6975 1325 6975
Wire Wire Line
	1575 7075 1325 7075
Text Label 1325 6475 0    47   ~ 0
DAC1
Text Label 3025 5075 0    50   ~ 0
Ubat
Text Label 1325 5475 2    50   ~ 0
BatteryIndicator
$Comp
L Device:R R5
U 1 1 5FABC869
P 7300 2975
F 0 "R5" H 7370 3021 50  0000 L CNN
F 1 "12k" H 7370 2930 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7230 2975 50  0001 C CNN
F 3 "~" H 7300 2975 50  0001 C CNN
	1    7300 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3125 7300 3300
$Comp
L power:GND #PWR0144
U 1 1 5FB3E8F9
P 6475 4475
F 0 "#PWR0144" H 6475 4225 50  0001 C CNN
F 1 "GND" H 6480 4302 50  0000 C CNN
F 2 "" H 6475 4475 50  0001 C CNN
F 3 "" H 6475 4475 50  0001 C CNN
	1    6475 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4450 6475 4450
Wire Wire Line
	6475 4450 6475 4475
Wire Wire Line
	6300 4250 6025 4250
Text Label 6025 4250 0    47   ~ 0
U_reset
$Comp
L Device:R R12
U 1 1 5FB3E903
P 7200 3925
F 0 "R12" H 7270 3971 50  0000 L CNN
F 1 "12k" H 7270 3880 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7130 3925 50  0001 C CNN
F 3 "~" H 7200 3925 50  0001 C CNN
	1    7200 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4450 7200 4650
Wire Wire Line
	8375 3450 8375 3400
Wire Wire Line
	7975 3450 7975 3400
Connection ~ 7975 3400
Wire Wire Line
	7975 3400 8375 3400
Wire Wire Line
	7975 4050 7975 4075
Connection ~ 7975 4075
Wire Wire Line
	7975 4075 7975 4100
$Comp
L Relay:DIPxx-2Axx-21x K1
U 1 1 5FBFC4B9
P 8275 3750
F 0 "K1" H 8125 4025 50  0000 L CNN
F 1 "DIPxx-2Axx-21x" V 8775 3425 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 8775 3700 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 8175 3750 50  0001 C CNN
	1    8275 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8375 4050 8375 4350
Wire Wire Line
	8675 4050 8675 4150
$Comp
L Device:R R3
U 1 1 5FC11D25
P 8675 2975
F 0 "R3" H 8745 3021 50  0000 L CNN
F 1 "1R" H 8745 2930 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8605 2975 50  0001 C CNN
F 3 "~" H 8675 2975 50  0001 C CNN
	1    8675 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8675 3375 8675 3450
$Comp
L Isolator:CNY17-1 U5
U 1 1 5FC40F1D
P 6900 3300
F 0 "U5" H 6900 3625 50  0000 C CNN
F 1 "CNY17-1" H 6900 3534 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 6900 3300 50  0001 L CNN
F 3 "http://www.vishay.com/docs/83606/cny17.pdf" H 6900 3300 50  0001 L CNN
	1    6900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 7300 3300
NoConn ~ 7200 3200
$Comp
L Isolator:CNY17-1 U6
U 1 1 5FC5DE4E
P 6900 4350
F 0 "U6" H 6900 4675 50  0000 C CNN
F 1 "CNY17-1" H 6900 4584 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 6900 4350 50  0001 L CNN
F 3 "http://www.vishay.com/docs/83606/cny17.pdf" H 6900 4350 50  0001 L CNN
	1    6900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4350 7325 4350
Wire Wire Line
	7200 4150 7325 4150
Wire Wire Line
	7325 4150 7325 4350
Wire Wire Line
	7200 4075 7200 4150
Connection ~ 7325 4350
Wire Wire Line
	7325 4350 8375 4350
Wire Wire Line
	6475 3400 6475 3425
Wire Wire Line
	6600 3400 6475 3400
$Comp
L power:GND #PWR0150
U 1 1 5FAA5C53
P 6475 3425
F 0 "#PWR0150" H 6475 3175 50  0001 C CNN
F 1 "GND" H 6480 3252 50  0000 C CNN
F 2 "" H 6475 3425 50  0001 C CNN
F 3 "" H 6475 3425 50  0001 C CNN
	1    6475 3425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FAC4C1D
P 6450 3200
F 0 "R6" V 6525 3150 50  0000 L CNN
F 1 "160R" V 6350 3125 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6380 3200 50  0001 C CNN
F 3 "~" H 6450 3200 50  0001 C CNN
	1    6450 3200
	0    -1   -1   0   
$EndComp
Text Label 6025 3200 0    47   ~ 0
U_set
Wire Wire Line
	6300 3200 6025 3200
$Comp
L Device:R R13
U 1 1 5FB3E909
P 6450 4250
F 0 "R13" V 6550 4200 50  0000 L CNN
F 1 "160R" V 6350 4175 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6380 4250 50  0001 C CNN
F 3 "~" H 6450 4250 50  0001 C CNN
	1    6450 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D3
U 1 1 5FD3E40F
P 7700 3725
F 0 "D3" V 7625 3550 50  0000 L CNN
F 1 "D" V 7725 3600 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_AnodeUp" H 7700 3725 50  0001 C CNN
F 3 "~" H 7700 3725 50  0001 C CNN
	1    7700 3725
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3400 7700 3575
Connection ~ 7700 3400
Wire Wire Line
	7700 3400 7975 3400
Wire Wire Line
	7700 3875 7700 4075
Wire Wire Line
	7700 4075 7975 4075
Wire Wire Line
	7200 3400 7700 3400
NoConn ~ 7200 4250
NoConn ~ 1325 5175
NoConn ~ 1325 5275
NoConn ~ 1325 5375
NoConn ~ 1325 5575
NoConn ~ 1325 5675
NoConn ~ 1325 5775
NoConn ~ 1325 5875
NoConn ~ 1325 6675
$Comp
L power:GND #PWR0154
U 1 1 5FE28166
P -2800 5825
F 0 "#PWR0154" H -2800 5575 50  0001 C CNN
F 1 "GND" H -2795 5652 50  0000 C CNN
F 2 "" H -2800 5825 50  0001 C CNN
F 3 "" H -2800 5825 50  0001 C CNN
	1    -2800 5825
	1    0    0    -1  
$EndComp
Text Label -2475 5475 0    47   ~ 0
SDA
Text Label -2425 5375 0    47   ~ 0
SCL
Text Label 2725 800  0    47   ~ 0
Vin
Text Label 3400 675  0    47   ~ 0
Vin
Text Label 3825 675  0    47   ~ 0
Vin
Text Label 1325 6975 0    47   ~ 0
Vin
Wire Wire Line
	1000 4875 725  4875
Wire Wire Line
	1000 5075 725  5075
Text Label 1325 5975 0    47   ~ 0
U_reset
Text Label 1325 6075 0    47   ~ 0
U_set
$Comp
L power:GND #PWR0151
U 1 1 5FE48C5D
P 4550 1500
F 0 "#PWR0151" H 4550 1250 50  0001 C CNN
F 1 "GND" H 4555 1327 50  0000 C CNN
F 2 "" H 4550 1500 50  0001 C CNN
F 3 "" H 4550 1500 50  0001 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1400 4550 1500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FE5D0BD
P 9275 6000
F 0 "#FLG0101" H 9275 6075 50  0001 C CNN
F 1 "PWR_FLAG" H 9275 6173 50  0000 C CNN
F 2 "" H 9275 6000 50  0001 C CNN
F 3 "~" H 9275 6000 50  0001 C CNN
	1    9275 6000
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FE5EFCB
P 9850 5975
F 0 "#FLG0102" H 9850 6050 50  0001 C CNN
F 1 "PWR_FLAG" H 9850 6148 50  0000 C CNN
F 2 "" H 9850 5975 50  0001 C CNN
F 3 "~" H 9850 5975 50  0001 C CNN
	1    9850 5975
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5FE5F0E7
P 9550 5875
F 0 "#FLG0103" H 9550 5950 50  0001 C CNN
F 1 "PWR_FLAG" H 9550 6048 50  0000 C CNN
F 2 "" H 9550 5875 50  0001 C CNN
F 3 "~" H 9550 5875 50  0001 C CNN
	1    9550 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 800  2725 800 
$Comp
L power:GND #PWR0153
U 1 1 5FE5F5FB
P 9550 6000
F 0 "#PWR0153" H 9550 5750 50  0001 C CNN
F 1 "GND" H 9555 5827 50  0000 C CNN
F 2 "" H 9550 6000 50  0001 C CNN
F 3 "" H 9550 6000 50  0001 C CNN
	1    9550 6000
	1    0    0    -1  
$EndComp
Text Label 9275 5875 0    47   ~ 0
Vin
Wire Wire Line
	9275 5875 9275 6000
Wire Wire Line
	9550 5875 9550 6000
Wire Wire Line
	9850 5875 9850 5975
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5FE7F1AD
P -2800 5575
F 0 "JP1" H -2800 5814 50  0000 C CNN
F 1 "Jumper_NC_Dual" H -2800 5723 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H -2800 5575 50  0001 C CNN
F 3 "~" H -2800 5575 50  0001 C CNN
	1    -2800 5575
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0155
U 1 1 5FE813ED
P -2800 5325
F 0 "#PWR0155" H -2800 5175 50  0001 C CNN
F 1 "+3V3" V -2785 5453 50  0000 L CNN
F 2 "" H -2800 5325 50  0001 C CNN
F 3 "" H -2800 5325 50  0001 C CNN
	1    -2800 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2700 5575 -2100 5575
$Comp
L Device:Jumper_NC_Dual JP2
U 1 1 5F972DF8
P 6075 2000
F 0 "JP2" H 6075 2239 50  0000 C CNN
F 1 "Jumper_NC_Dual" H 6075 2148 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6075 2000 50  0001 C CNN
F 3 "~" H 6075 2000 50  0001 C CNN
	1    6075 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6175 2000 6350 2000
Wire Wire Line
	6075 1750 6075 1650
Wire Wire Line
	6075 2250 6075 2375
Text Label 6075 2375 1    47   ~ 0
Vin
Wire Wire Line
	6350 2000 6550 2000
Wire Wire Line
	7150 2000 7675 2000
$Comp
L Regulator_Linear:MCP1826S U1
U 1 1 5F976D31
P 6850 2000
F 0 "U1" H 6850 2242 50  0000 C CNN
F 1 "MCP1826S" H 6850 2151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6750 2150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22057B.pdf" H 6850 2250 50  0001 C CNN
	1    6850 2000
	1    0    0    -1  
$EndComp
Text Notes 6400 1700 0    47   ~ 0
Udropout = 250 mV @ 1000mA
$Comp
L power:+12V #PWR0133
U 1 1 5F98F1C1
P 7200 3775
F 0 "#PWR0133" H 7200 3625 50  0001 C CNN
F 1 "+12V" H 7215 3948 50  0000 C CNN
F 2 "" H 7200 3775 50  0001 C CNN
F 3 "" H 7200 3775 50  0001 C CNN
	1    7200 3775
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0145
U 1 1 5F990372
P 7300 2825
F 0 "#PWR0145" H 7300 2675 50  0001 C CNN
F 1 "+12V" H 7315 2998 50  0000 C CNN
F 2 "" H 7300 2825 50  0001 C CNN
F 3 "" H 7300 2825 50  0001 C CNN
	1    7300 2825
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0147
U 1 1 5F99097B
P 8675 2825
F 0 "#PWR0147" H 8675 2675 50  0001 C CNN
F 1 "+12V" H 8690 2998 50  0000 C CNN
F 2 "" H 8675 2825 50  0001 C CNN
F 3 "" H 8675 2825 50  0001 C CNN
	1    8675 2825
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0149
U 1 1 5F990D26
P 9850 5875
F 0 "#PWR0149" H 9850 5725 50  0001 C CNN
F 1 "+12V" H 9865 6048 50  0000 C CNN
F 2 "" H 9850 5875 50  0001 C CNN
F 3 "" H 9850 5875 50  0001 C CNN
	1    9850 5875
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F9DD913
P -6375 2400
F 0 "R8" V -6275 2350 50  0000 L CNN
F 1 "1k" V -6475 2350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -6445 2400 50  0001 C CNN
F 3 "~" H -6375 2400 50  0001 C CNN
	1    -6375 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F9DE05F
P -6000 2400
F 0 "R9" V -5900 2350 50  0000 L CNN
F 1 "47" V -6100 2350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -6070 2400 50  0001 C CNN
F 3 "~" H -6000 2400 50  0001 C CNN
	1    -6000 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5F9DE478
P -4800 2500
F 0 "R10" V -4700 2425 50  0000 L CNN
F 1 "10k" V -4900 2425 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -4870 2500 50  0001 C CNN
F 3 "~" H -4800 2500 50  0001 C CNN
	1    -4800 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 5F9DEE79
P -5425 1825
F 0 "C8" V -5375 1900 50  0000 L CNN
F 1 "100p" V -5375 1575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -5387 1675 50  0001 C CNN
F 3 "~" H -5425 1825 50  0001 C CNN
	1    -5425 1825
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F9E247C
P -4150 1950
F 0 "R7" V -4075 1900 50  0000 L CNN
F 1 "68k" V -4250 1875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -4220 1950 50  0001 C CNN
F 3 "~" H -4150 1950 50  0001 C CNN
	1    -4150 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F9E6DEB
P -4625 1575
F 0 "#PWR017" H -4625 1325 50  0001 C CNN
F 1 "GND" H -4620 1402 50  0000 C CNN
F 2 "" H -4625 1575 50  0001 C CNN
F 3 "" H -4625 1575 50  0001 C CNN
	1    -4625 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	-5500 2250 -5500 2025
Wire Wire Line
	-4200 2850 -4200 3000
Wire Wire Line
	-2175 2950 -2175 3125
Text Label -2175 3125 1    47   ~ 0
#CS
Text Label -4200 3000 1    47   ~ 0
#CS
Text Label -5500 2025 3    47   ~ 0
#CS
Wire Wire Line
	-6150 2400 -6225 2400
Wire Wire Line
	-6525 2400 -6600 2400
Wire Wire Line
	-5575 1825 -5825 1825
Wire Wire Line
	-5825 1825 -5825 2400
Connection ~ -5825 2400
Wire Wire Line
	-5825 2400 -5850 2400
Wire Wire Line
	-5000 2500 -4950 2500
Connection ~ -5000 2500
Wire Wire Line
	-4650 2500 -4600 2500
Connection ~ -4600 2500
Wire Wire Line
	-4000 1950 -3625 1950
Wire Wire Line
	-3625 1950 -3625 2600
Connection ~ -3625 2600
Wire Wire Line
	-6600 2400 -6600 3150
Wire Wire Line
	-6600 3150 -3625 3150
Wire Wire Line
	-3625 2600 -3625 3150
$Comp
L Device:R R11
U 1 1 5FB10C9C
P -3375 2600
F 0 "R11" V -3275 2525 50  0000 L CNN
F 1 "10k" V -3475 2525 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -3445 2600 50  0001 C CNN
F 3 "~" H -3375 2600 50  0001 C CNN
	1    -3375 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 5FB1127D
P -2950 2600
F 0 "R21" V -2850 2525 50  0000 L CNN
F 1 "10k" V -3050 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -3020 2600 50  0001 C CNN
F 3 "~" H -2950 2600 50  0001 C CNN
	1    -2950 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	-3625 2600 -3525 2600
Wire Wire Line
	-3225 2600 -3150 2600
Wire Wire Line
	-2800 2600 -2750 2600
$Comp
L power:+3V3 #PWR010
U 1 1 5FB6B43A
P -4625 1025
F 0 "#PWR010" H -4625 875 50  0001 C CNN
F 1 "+3V3" H -4610 1198 50  0000 C CNN
F 2 "" H -4625 1025 50  0001 C CNN
F 3 "" H -4625 1025 50  0001 C CNN
	1    -4625 1025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FB78D7F
P -2525 2875
F 0 "#PWR014" H -2525 2625 50  0001 C CNN
F 1 "GND" H -2520 2702 50  0000 C CNN
F 2 "" H -2525 2875 50  0001 C CNN
F 3 "" H -2525 2875 50  0001 C CNN
	1    -2525 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5FB792E1
P -2200 1950
F 0 "C9" V -2050 1900 50  0000 L CNN
F 1 "10p" V -2350 1875 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -2162 1800 50  0001 C CNN
F 3 "~" H -2200 1950 50  0001 C CNN
	1    -2200 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 5FB79FDE
P -2750 2775
F 0 "C10" H -2635 2821 50  0000 L CNN
F 1 "10p" H -2650 2925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -2712 2625 50  0001 C CNN
F 3 "~" H -2750 2775 50  0001 C CNN
	1    -2750 2775
	-1   0    0    1   
$EndComp
Wire Wire Line
	-2525 2875 -2525 2800
Wire Wire Line
	-2525 2800 -2425 2800
$Comp
L power:GND #PWR016
U 1 1 5FB889C8
P -2750 2925
F 0 "#PWR016" H -2750 2675 50  0001 C CNN
F 1 "GND" H -2745 2752 50  0000 C CNN
F 2 "" H -2750 2925 50  0001 C CNN
F 3 "" H -2750 2925 50  0001 C CNN
	1    -2750 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3150 2600 -3150 1950
Wire Wire Line
	-3150 1950 -2350 1950
Connection ~ -3150 2600
Wire Wire Line
	-3150 2600 -3100 2600
Wire Wire Line
	-2050 1950 -1550 1950
Wire Wire Line
	-1550 1950 -1550 2700
Wire Wire Line
	-1550 2700 -1400 2700
Connection ~ -1550 2700
Text Label -5000 2375 2    50   ~ 0
Utriangle
Text Label -3625 2775 2    50   ~ 0
Usquare
Text Label -1400 2700 0    50   ~ 0
Usin
Text Label 1325 4975 0    47   ~ 0
#CS
$Comp
L mylib:BMP280_PCB U8
U 1 1 5FCCB54B
P -1700 5425
F 0 "U8" H -1750 5850 47  0000 L CNN
F 1 "BMP280_PCB" H -1950 5775 47  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H -1950 5875 47  0001 C CNN
F 3 "" H -1950 5875 47  0001 C CNN
	1    -1700 5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2100 5275 -2425 5275
Wire Wire Line
	-2750 2625 -2750 2600
Connection ~ -2750 2600
$Comp
L Battery_Management:MCP73811T-420I-OT U2
U 1 1 5F933C3E
P 4550 1100
F 0 "U2" H 4600 1350 50  0000 L CNN
F 1 "MCP73811T-420I-OT" H 4725 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4600 850 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22036b.pdf" H 4300 1350 50  0001 C CNN
	1    4550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1000 4150 1200
Connection ~ 4150 1000
$Comp
L power:+3V3 #PWR03
U 1 1 5FC05EEE
P -3725 1100
F 0 "#PWR03" H -3725 950 50  0001 C CNN
F 1 "+3V3" H -3710 1273 50  0000 C CNN
F 2 "" H -3725 1100 50  0001 C CNN
F 3 "" H -3725 1100 50  0001 C CNN
	1    -3725 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 5FC05A58
P -2950 1075
F 0 "#PWR02" H -2950 925 50  0001 C CNN
F 1 "+3V3" H -2935 1248 50  0000 C CNN
F 2 "" H -2950 1075 50  0001 C CNN
F 3 "" H -2950 1075 50  0001 C CNN
	1    -2950 1075
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 5FC054CB
P -4450 1150
F 0 "#PWR01" H -4450 1000 50  0001 C CNN
F 1 "+3V3" H -4435 1323 50  0000 C CNN
F 2 "" H -4450 1150 50  0001 C CNN
F 3 "" H -4450 1150 50  0001 C CNN
	1    -4450 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FC04F97
P -3725 1400
F 0 "#PWR06" H -3725 1150 50  0001 C CNN
F 1 "GND" H -3720 1227 50  0000 C CNN
F 2 "" H -3725 1400 50  0001 C CNN
F 3 "" H -3725 1400 50  0001 C CNN
	1    -3725 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FC04C72
P -2950 1375
F 0 "#PWR05" H -2950 1125 50  0001 C CNN
F 1 "GND" H -2945 1202 50  0000 C CNN
F 2 "" H -2950 1375 50  0001 C CNN
F 3 "" H -2950 1375 50  0001 C CNN
	1    -2950 1375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FC04882
P -4450 1450
F 0 "#PWR04" H -4450 1200 50  0001 C CNN
F 1 "GND" H -4445 1277 50  0000 C CNN
F 2 "" H -4450 1450 50  0001 C CNN
F 3 "" H -4450 1450 50  0001 C CNN
	1    -4450 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FBC3A9F
P -2950 1225
F 0 "C5" H -2835 1271 50  0000 L CNN
F 1 "100n" H -2835 1180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -2912 1075 50  0001 C CNN
F 3 "~" H -2950 1225 50  0001 C CNN
	1    -2950 1225
	1    0    0    -1  
$EndComp
Text Label -2575 1575 0    47   ~ 0
#CS
Wire Wire Line
	-2200 1575 -2575 1575
$Comp
L Device:C C7
U 1 1 5F96DF97
P -4450 1300
F 0 "C7" H -4335 1346 50  0000 L CNN
F 1 "100n" H -4335 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -4412 1150 50  0001 C CNN
F 3 "~" H -4450 1300 50  0001 C CNN
	1    -4450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F8F4A17
P -3725 1250
F 0 "C6" H -3610 1296 50  0000 L CNN
F 1 "100n" H -3610 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H -3687 1100 50  0001 C CNN
F 3 "~" H -3725 1250 50  0001 C CNN
	1    -3725 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FD0ABC9
P 9375 1950
F 0 "#PWR0103" H 9375 1700 50  0001 C CNN
F 1 "GND" H 9380 1777 50  0000 C CNN
F 2 "" H 9375 1950 50  0001 C CNN
F 3 "" H 9375 1950 50  0001 C CNN
	1    9375 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FD0A659
P 9375 1350
F 0 "#PWR0102" H 9375 1100 50  0001 C CNN
F 1 "GND" H 9380 1177 50  0000 C CNN
F 2 "" H 9375 1350 50  0001 C CNN
F 3 "" H 9375 1350 50  0001 C CNN
	1    9375 1350
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:SP0505BAJT D7
U 1 1 5F99BBDB
P 9575 1950
F 0 "D7" V 9975 1950 50  0000 C CNN
F 1 "SP0505BAJT" V 9900 1950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9875 1900 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 9700 2075 50  0001 C CNN
	1    9575 1950
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:SP0505BAJT D6
U 1 1 5F995FA0
P 9575 1350
F 0 "D6" V 9133 1350 50  0000 C CNN
F 1 "SP0505BAJT" V 9224 1350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9875 1300 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 9700 1475 50  0001 C CNN
	1    9575 1350
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x10_Female J2
U 1 1 5F99573F
P 10500 1550
F 0 "J2" H 10450 2075 50  0000 L CNN
F 1 "Conn_01x10_Female" V 10575 1125 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 10500 1550 50  0001 C CNN
F 3 "~" H 10500 1550 50  0001 C CNN
	1    10500 1550
	1    0    0    -1  
$EndComp
Text Label 9775 1850 0    47   ~ 0
DAC1
Wire Wire Line
	10300 1350 9775 1350
Wire Wire Line
	10300 1450 9775 1450
Wire Wire Line
	10300 1550 9775 1550
Text Label 9800 1450 0    50   ~ 0
Utriangle
Text Label 9800 1550 0    50   ~ 0
Usquare
Text Label 9800 1350 0    50   ~ 0
Usin
Text Label 10250 1150 2    47   ~ 0
U_moisture
$Comp
L Device:R R4
U 1 1 5FA2D5AF
P -2200 1425
F 0 "R4" H -2130 1471 50  0000 L CNN
F 1 "100k" H -2130 1380 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V -2270 1425 50  0001 C CNN
F 3 "~" H -2200 1425 50  0001 C CNN
	1    -2200 1425
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5FA4DA92
P -2200 1275
F 0 "#PWR0104" H -2200 1125 50  0001 C CNN
F 1 "+3V3" H -2185 1448 50  0000 C CNN
F 2 "" H -2200 1275 50  0001 C CNN
F 3 "" H -2200 1275 50  0001 C CNN
	1    -2200 1275
	1    0    0    -1  
$EndComp
Text Label 1425 800  0    47   ~ 0
Barrel+
Text Label 9875 2150 0    47   ~ 0
Barrel+
Wire Wire Line
	9875 2150 9775 2150
$Comp
L power:GND #PWR0106
U 1 1 5FA76E71
P 10300 1250
F 0 "#PWR0106" H 10300 1000 50  0001 C CNN
F 1 "GND" H 10305 1077 50  0000 C CNN
F 2 "" H 10300 1250 50  0001 C CNN
F 3 "" H 10300 1250 50  0001 C CNN
	1    10300 1250
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5FA78BCB
P 10300 1750
F 0 "#PWR0111" H 10300 1600 50  0001 C CNN
F 1 "+3V3" V 10325 1975 50  0000 C CNN
F 2 "" H 10300 1750 50  0001 C CNN
F 3 "" H 10300 1750 50  0001 C CNN
	1    10300 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FA799F9
P 10300 1650
F 0 "#PWR0112" H 10300 1400 50  0001 C CNN
F 1 "GND" V 10275 1450 50  0000 C CNN
F 2 "" H 10300 1650 50  0001 C CNN
F 3 "" H 10300 1650 50  0001 C CNN
	1    10300 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5FADE254
P 9225 3275
F 0 "J3" H 9150 3475 50  0000 L CNN
F 1 "Conn_01x04_Female" V 9300 2925 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9225 3275 50  0001 C CNN
F 3 "~" H 9225 3275 50  0001 C CNN
	1    9225 3275
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0113
U 1 1 5FAE04E1
P 8675 4150
F 0 "#PWR0113" H 8675 3950 50  0001 C CNN
F 1 "GNDPWR" H 8679 3996 50  0000 C CNN
F 2 "" H 8675 4100 50  0001 C CNN
F 3 "" H 8675 4100 50  0001 C CNN
	1    8675 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0114
U 1 1 5FAE1AC9
P 9025 3475
F 0 "#PWR0114" H 9025 3275 50  0001 C CNN
F 1 "GNDPWR" H 9029 3321 50  0000 C CNN
F 2 "" H 9025 3425 50  0001 C CNN
F 3 "" H 9025 3425 50  0001 C CNN
	1    9025 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8675 3375 9025 3375
Wire Wire Line
	8675 3275 9025 3275
$Comp
L power:+12V #PWR0115
U 1 1 5FAFF167
P 9025 3175
F 0 "#PWR0115" H 9025 3025 50  0001 C CNN
F 1 "+12V" H 9040 3348 50  0000 C CNN
F 2 "" H 9025 3175 50  0001 C CNN
F 3 "" H 9025 3175 50  0001 C CNN
	1    9025 3175
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0125
U 1 1 5FAFF5D8
P 7975 4100
F 0 "#PWR0125" H 7975 3900 50  0001 C CNN
F 1 "GNDPWR" H 7979 3946 50  0000 C CNN
F 2 "" H 7975 4050 50  0001 C CNN
F 3 "" H 7975 4050 50  0001 C CNN
	1    7975 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0127
U 1 1 5FAFFAF0
P 7200 4650
F 0 "#PWR0127" H 7200 4450 50  0001 C CNN
F 1 "GNDPWR" H 7204 4496 50  0000 C CNN
F 2 "" H 7200 4600 50  0001 C CNN
F 3 "" H 7200 4600 50  0001 C CNN
	1    7200 4650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5FB101E9
P 8150 1050
F 0 "H1" H 8250 1096 50  0000 L CNN
F 1 "MountingHole" H 8250 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8150 1050 50  0001 C CNN
F 3 "~" H 8150 1050 50  0001 C CNN
	1    8150 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FB1033D
P 8150 1275
F 0 "H2" H 8250 1321 50  0000 L CNN
F 1 "MountingHole" H 8250 1230 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8150 1275 50  0001 C CNN
F 3 "~" H 8150 1275 50  0001 C CNN
	1    8150 1275
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FB1057C
P 8150 1500
F 0 "H3" H 8250 1546 50  0000 L CNN
F 1 "MountingHole" H 8250 1455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8150 1500 50  0001 C CNN
F 3 "~" H 8150 1500 50  0001 C CNN
	1    8150 1500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FB1076A
P 8150 1725
F 0 "H4" H 8250 1771 50  0000 L CNN
F 1 "MountingHole" H 8250 1680 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 8150 1725 50  0001 C CNN
F 3 "~" H 8150 1725 50  0001 C CNN
	1    8150 1725
	1    0    0    -1  
$EndComp
NoConn ~ 9775 1750
$Comp
L power:GNDPWR #PWR0128
U 1 1 5FB2295F
P 8900 6025
F 0 "#PWR0128" H 8900 5825 50  0001 C CNN
F 1 "GNDPWR" H 8904 5871 50  0000 C CNN
F 2 "" H 8900 5975 50  0001 C CNN
F 3 "" H 8900 5975 50  0001 C CNN
	1    8900 6025
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5FB22E99
P 8900 5875
F 0 "#FLG0104" H 8900 5950 50  0001 C CNN
F 1 "PWR_FLAG" H 8900 6048 50  0000 C CNN
F 2 "" H 8900 5875 50  0001 C CNN
F 3 "~" H 8900 5875 50  0001 C CNN
	1    8900 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5875 8900 6025
Text Label 950  2225 0    47   ~ 0
RX
Text Label 950  2125 0    47   ~ 0
TX
NoConn ~ 1325 6375
Wire Wire Line
	10300 1150 9975 1150
Wire Wire Line
	9975 1150 9975 1250
Wire Wire Line
	9975 1250 9775 1250
NoConn ~ 9775 1150
NoConn ~ 1325 7075
Text Label 1325 6875 2    47   ~ 0
Buzzer
NoConn ~ 1325 6775
NoConn ~ 9775 1950
NoConn ~ 9775 2050
Wire Wire Line
	9775 1850 10300 1850
$Comp
L power:GND #PWR07
U 1 1 5FA77406
P 10300 1950
F 0 "#PWR07" H 10300 1700 50  0001 C CNN
F 1 "GND" V 10275 1750 50  0000 C CNN
F 2 "" H 10300 1950 50  0001 C CNN
F 3 "" H 10300 1950 50  0001 C CNN
	1    10300 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5FA775A2
P 10300 2050
F 0 "#PWR018" H 10300 1800 50  0001 C CNN
F 1 "GND" V 10275 1850 50  0000 C CNN
F 2 "" H 10300 2050 50  0001 C CNN
F 3 "" H 10300 2050 50  0001 C CNN
	1    10300 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1225 2125 950  2125
Wire Wire Line
	1225 2225 950  2225
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 5FABE513
P 1425 2225
F 0 "J4" H 1453 2251 50  0000 L CNN
F 1 "Conn_01x03_Female" H 1225 2050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1425 2225 50  0001 C CNN
F 3 "~" H 1425 2225 50  0001 C CNN
	1    1425 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5FACF72C
P 1075 2350
F 0 "#PWR019" H 1075 2100 50  0001 C CNN
F 1 "GND" H 1080 2177 50  0000 C CNN
F 2 "" H 1075 2350 50  0001 C CNN
F 3 "" H 1075 2350 50  0001 C CNN
	1    1075 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1225 2325 1075 2325
Wire Wire Line
	1075 2325 1075 2350
$Comp
L mylib:MCP6273-E_CH U3
U 1 1 5FB4F164
P -5100 2500
F 0 "U3" H -5375 2650 50  0000 C CNN
F 1 "MCP6273-E_CH" H -5400 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H -5450 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H -5450 2500 50  0001 C CNN
	1    -5100 2500
	1    0    0    1   
$EndComp
$Comp
L mylib:MCP6273-E_CH U4
U 1 1 5FB58D52
P -3800 2600
F 0 "U4" H -4150 2967 50  0000 C CNN
F 1 "MCP6273-E_CH" H -4150 2876 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H -4150 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H -4150 2600 50  0001 C CNN
	1    -3800 2600
	1    0    0    -1  
$EndComp
$Comp
L mylib:MCP6273-E_CH U9
U 1 1 5FB5E4A6
P -1775 2700
F 0 "U9" H -2125 3067 50  0000 C CNN
F 1 "MCP6273-E_CH" H -2125 2976 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H -2125 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H -2125 2700 50  0001 C CNN
	1    -1775 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2750 2600 -2425 2600
Wire Wire Line
	-1825 2700 -1550 2700
Wire Wire Line
	-4600 1950 -4300 1950
Wire Wire Line
	-4600 1950 -4600 2500
Wire Wire Line
	-4575 2700 -4450 2700
Wire Wire Line
	-5150 2500 -5000 2500
Wire Wire Line
	-5825 2400 -5750 2400
Wire Wire Line
	-5750 2600 -5850 2600
$Comp
L mylib:MCP6273-E_CH U9
U 2 1 5FBEB0E5
P -4625 1275
F 0 "U9" H -4825 1625 50  0000 L CNN
F 1 "MCP6273-E_CH" V -4775 950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H -4975 1275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H -4975 1275 50  0001 C CNN
	2    -4625 1275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FC08165
P -3900 1550
F 0 "#PWR013" H -3900 1300 50  0001 C CNN
F 1 "GND" H -3895 1377 50  0000 C CNN
F 2 "" H -3900 1550 50  0001 C CNN
F 3 "" H -3900 1550 50  0001 C CNN
	1    -3900 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 5FC0816B
P -3900 1000
F 0 "#PWR08" H -3900 850 50  0001 C CNN
F 1 "+3V3" H -3885 1173 50  0000 C CNN
F 2 "" H -3900 1000 50  0001 C CNN
F 3 "" H -3900 1000 50  0001 C CNN
	1    -3900 1000
	1    0    0    -1  
$EndComp
$Comp
L mylib:MCP6273-E_CH U3
U 2 1 5FC08171
P -3900 1250
F 0 "U3" H -4100 1600 50  0000 L CNN
F 1 "MCP6273-E_CH" V -4050 925 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H -4250 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H -4250 1250 50  0001 C CNN
	2    -3900 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FC2DC6E
P -3150 1550
F 0 "#PWR015" H -3150 1300 50  0001 C CNN
F 1 "GND" H -3145 1377 50  0000 C CNN
F 2 "" H -3150 1550 50  0001 C CNN
F 3 "" H -3150 1550 50  0001 C CNN
	1    -3150 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5FC2DC74
P -3150 1000
F 0 "#PWR09" H -3150 850 50  0001 C CNN
F 1 "+3V3" H -3135 1173 50  0000 C CNN
F 2 "" H -3150 1000 50  0001 C CNN
F 3 "" H -3150 1000 50  0001 C CNN
	1    -3150 1000
	1    0    0    -1  
$EndComp
$Comp
L mylib:MCP6273-E_CH U4
U 2 1 5FC2DC7A
P -3150 1250
F 0 "U4" H -3350 1600 50  0000 L CNN
F 1 "MCP6273-E_CH" V -3300 925 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H -3500 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H -3500 1250 50  0001 C CNN
	2    -3150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3850 2600 -3625 2600
Wire Wire Line
	-5275 1825 -5000 1825
Wire Wire Line
	-4600 2500 -4450 2500
Wire Wire Line
	-5000 1825 -5000 2500
$Comp
L Switch:SW_Push SW1
U 1 1 5FA56BB5
P 2500 2275
F 0 "SW1" H 2500 2560 50  0000 C CNN
F 1 "SW_Push" H 2500 2469 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2500 2475 50  0001 C CNN
F 3 "~" H 2500 2475 50  0001 C CNN
	1    2500 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5FA57EF9
P 2500 2400
F 0 "C15" H 2550 2500 50  0000 L CNN
F 1 "0.1u" H 2575 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2538 2250 50  0001 C CNN
F 3 "~" H 2500 2400 50  0001 C CNN
	1    2500 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FA58303
P 2175 2450
F 0 "#PWR0109" H 2175 2200 50  0001 C CNN
F 1 "GND" H 2180 2277 50  0000 C CNN
F 2 "" H 2175 2450 50  0001 C CNN
F 3 "" H 2175 2450 50  0001 C CNN
	1    2175 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2275 2175 2275
Wire Wire Line
	2175 2275 2175 2400
Wire Wire Line
	2350 2400 2175 2400
Connection ~ 2175 2400
Wire Wire Line
	2175 2400 2175 2450
Wire Wire Line
	2700 2275 2800 2275
Wire Wire Line
	2650 2400 2800 2400
Wire Wire Line
	2800 2400 2800 2275
Connection ~ 2800 2275
Wire Wire Line
	2800 2275 2975 2275
Text Label 2975 2275 0    47   ~ 0
EN
$Comp
L Switch:SW_Push SW2
U 1 1 5FA8969A
P 3550 2275
F 0 "SW2" H 3550 2560 50  0000 C CNN
F 1 "SW_Push" H 3550 2469 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3550 2475 50  0001 C CNN
F 3 "~" H 3550 2475 50  0001 C CNN
	1    3550 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5FA896A0
P 3550 2400
F 0 "C16" H 3600 2500 50  0000 L CNN
F 1 "0.1u" H 3625 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 2250 50  0001 C CNN
F 3 "~" H 3550 2400 50  0001 C CNN
	1    3550 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5FA896A6
P 3225 2450
F 0 "#PWR0123" H 3225 2200 50  0001 C CNN
F 1 "GND" H 3230 2277 50  0000 C CNN
F 2 "" H 3225 2450 50  0001 C CNN
F 3 "" H 3225 2450 50  0001 C CNN
	1    3225 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2275 3225 2275
Wire Wire Line
	3225 2275 3225 2400
Wire Wire Line
	3400 2400 3225 2400
Connection ~ 3225 2400
Wire Wire Line
	3225 2400 3225 2450
Wire Wire Line
	3750 2275 3850 2275
Wire Wire Line
	3700 2400 3850 2400
Wire Wire Line
	3850 2400 3850 2275
Connection ~ 3850 2275
Wire Wire Line
	3850 2275 4025 2275
Text Label 4025 2275 0    47   ~ 0
IO0
Text Label 1325 4775 0    47   ~ 0
IO0
Wire Wire Line
	8675 3125 8675 3275
Wire Wire Line
	1125 800  2025 800 
Wire Wire Line
	-4575 2700 -4575 2800
Wire Wire Line
	-5850 2600 -5850 2725
Text Label -4575 2800 2    47   ~ 0
1V65_REF
Text Label -5850 2725 2    47   ~ 0
1V65_REF
Text Label 1325 6575 2    47   ~ 0
1V65_REF
Text Label 3125 5575 2    47   ~ 0
EN
Wire Wire Line
	3400 5575 3125 5575
$EndSCHEMATC
