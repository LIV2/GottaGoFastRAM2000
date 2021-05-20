EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "GottaGoFastRAMZ2"
Date "2021-01-31"
Rev "1"
Comp "LIV2"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2400 1400 1400 1400
Wire Wire Line
	750  1300 750  1400
Connection ~ 750  6200
Wire Wire Line
	750  6200 750  6500
Connection ~ 750  5700
Wire Wire Line
	750  5700 750  5800
Wire Wire Line
	1400 5800 750  5800
Connection ~ 750  5800
Wire Wire Line
	750  5800 750  6200
Connection ~ 750  5600
Wire Wire Line
	750  5600 750  5700
Wire Wire Line
	1400 5500 750  5500
Connection ~ 750  5500
Wire Wire Line
	750  5500 750  5600
Wire Wire Line
	1400 4900 750  4900
Connection ~ 750  4900
Wire Wire Line
	750  4900 750  5500
Wire Wire Line
	1400 3700 750  3700
Connection ~ 750  3700
Wire Wire Line
	750  3700 750  4300
Wire Wire Line
	1400 3100 750  3100
Connection ~ 750  3100
Wire Wire Line
	750  3100 750  3700
Wire Wire Line
	1400 2500 750  2500
Connection ~ 750  2500
Wire Wire Line
	750  2500 750  3100
Wire Wire Line
	1400 1900 750  1900
Connection ~ 750  1900
Wire Wire Line
	750  1900 750  2500
Wire Wire Line
	2600 1500 2600 1200
$Comp
L power:+5V #PWR05
U 1 1 6019E07D
P 2600 1200
F 0 "#PWR05" H 2600 1050 50  0001 C CNN
F 1 "+5V" H 2615 1373 50  0000 C CNN
F 2 "" H 2600 1200 50  0001 C CNN
F 3 "" H 2600 1200 50  0001 C CNN
	1    2600 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6019EDD9
P 750 6500
F 0 "#PWR01" H 750 6250 50  0001 C CNN
F 1 "GND" H 755 6327 50  0000 C CNN
F 2 "" H 750 6500 50  0001 C CNN
F 3 "" H 750 6500 50  0001 C CNN
	1    750  6500
	1    0    0    -1  
$EndComp
Text Label 2400 1800 0    50   ~ 0
~CFGIN
Text Label 1400 1800 2    50   ~ 0
~CFGOUT
Text Label 1400 1700 2    50   ~ 0
~SLAVE
Text Label 2400 5900 0    50   ~ 0
~RESET
Text Label 1400 5900 2    50   ~ 0
DOE
Text Label 2400 4800 0    50   ~ 0
~UDS
Text Label 2400 4700 0    50   ~ 0
~LDS
Text Label 2400 4600 0    50   ~ 0
READ
Text Label 1400 5000 2    50   ~ 0
D0
Text Label 1400 5100 2    50   ~ 0
D1
Text Label 1400 5200 2    50   ~ 0
D2
Text Label 1400 5300 2    50   ~ 0
D3
Text Label 1400 5400 2    50   ~ 0
D4
Text Label 2400 5500 0    50   ~ 0
D5
Text Label 2400 5400 0    50   ~ 0
D6
Text Label 2400 5300 0    50   ~ 0
D7
Text Label 2400 5200 0    50   ~ 0
D8
Text Label 2400 5100 0    50   ~ 0
D9
Text Label 2400 5000 0    50   ~ 0
D10
Text Label 2400 4900 0    50   ~ 0
~AS
Text Label 1400 4800 2    50   ~ 0
D11
Text Label 1400 4700 2    50   ~ 0
D12
Text Label 1400 4600 2    50   ~ 0
D13
Text Label 1400 4500 2    50   ~ 0
D14
Text Label 1400 4400 2    50   ~ 0
D15
Wire Wire Line
	1400 4300 750  4300
Connection ~ 750  4300
Wire Wire Line
	750  4300 750  4900
Text Label 1400 2700 2    50   ~ 0
A1
Text Label 1400 2600 2    50   ~ 0
A2
Text Label 1400 2400 2    50   ~ 0
A6
Text Label 1400 2300 2    50   ~ 0
A5
Text Label 2400 2400 0    50   ~ 0
A4
Text Label 2400 2500 0    50   ~ 0
A3
Text Label 2400 2600 0    50   ~ 0
A7
Text Label 2400 2700 0    50   ~ 0
A8
Text Label 2400 2800 0    50   ~ 0
A9
Text Label 2400 2900 0    50   ~ 0
A10
Text Label 2400 3000 0    50   ~ 0
A11
Text Label 2400 3100 0    50   ~ 0
A12
Text Label 1400 3200 2    50   ~ 0
A13
Text Label 1400 3300 2    50   ~ 0
A14
Text Label 1400 3400 2    50   ~ 0
A15
Text Label 1400 3500 2    50   ~ 0
A16
Text Label 1400 3600 2    50   ~ 0
A17
Text Label 2400 3800 0    50   ~ 0
A18
Text Label 2400 3900 0    50   ~ 0
A19
Text Label 2400 4000 0    50   ~ 0
A20
Text Label 2400 4100 0    50   ~ 0
A21
Text Label 1400 4100 2    50   ~ 0
A22
Text Label 1400 4200 2    50   ~ 0
A23
Text Label 2400 4500 0    50   ~ 0
B~DTACK
Text Label 1400 2100 2    50   ~ 0
B~OVR
Text Label 2400 2000 0    50   ~ 0
~C1
Text Label 2400 1900 0    50   ~ 0
~C3
$Comp
L power:GND #PWR015
U 1 1 60269772
P 4000 5100
F 0 "#PWR015" H 4000 4850 50  0001 C CNN
F 1 "GND" H 4005 4927 50  0000 C CNN
F 2 "" H 4000 5100 50  0001 C CNN
F 3 "" H 4000 5100 50  0001 C CNN
	1    4000 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6026A057
P 4000 2900
F 0 "#PWR013" H 4000 2650 50  0001 C CNN
F 1 "GND" H 4005 2727 50  0000 C CNN
F 2 "" H 4000 2900 50  0001 C CNN
F 3 "" H 4000 2900 50  0001 C CNN
	1    4000 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U4
U 1 1 6025BD84
P 4000 4300
F 0 "U4" H 3900 5100 50  0000 C CNN
F 1 "74LS245" H 3800 5000 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4000 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4000 4300 50  0001 C CNN
	1    4000 4300
	-1   0    0    -1  
$EndComp
Text Label 4500 4800 0    50   ~ 0
~BUFOE
Text Label 4500 2600 0    50   ~ 0
~BUFOE
Text Label 4500 2500 0    50   ~ 0
READ
Text Label 4500 4700 0    50   ~ 0
READ
$Comp
L 74xx:74LS245 U3
U 1 1 6025A2C8
P 4000 2100
F 0 "U3" H 3900 2900 50  0000 C CNN
F 1 "74LS245" H 3800 2800 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4000 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4000 2100 50  0001 C CNN
	1    4000 2100
	-1   0    0    -1  
$EndComp
Text Label 3500 1600 2    50   ~ 0
D0
Text Label 3500 1700 2    50   ~ 0
D1
Text Label 3500 1800 2    50   ~ 0
D2
Text Label 3500 1900 2    50   ~ 0
D3
Text Label 3500 4500 2    50   ~ 0
D8
Text Label 3500 4400 2    50   ~ 0
D9
Text Label 3500 4300 2    50   ~ 0
D10
Text Label 3500 4200 2    50   ~ 0
D11
Text Label 3500 4100 2    50   ~ 0
D12
Text Label 3500 4000 2    50   ~ 0
D13
Text Label 3500 3900 2    50   ~ 0
D14
Text Label 3500 3800 2    50   ~ 0
D15
Text Label 4500 1600 0    50   ~ 0
BD0
Text Label 4500 1700 0    50   ~ 0
BD1
Text Label 4500 1800 0    50   ~ 0
BD2
Text Label 4500 1900 0    50   ~ 0
BD3
Text Label 4500 2000 0    50   ~ 0
BD4
Text Label 4500 2300 0    50   ~ 0
BD5
Text Label 4500 2200 0    50   ~ 0
BD6
Text Label 4500 2100 0    50   ~ 0
BD7
Text Label 4500 4200 0    50   ~ 0
BD11
Text Label 4500 4100 0    50   ~ 0
BD12
Text Label 4500 4000 0    50   ~ 0
BD13
Text Label 4500 3900 0    50   ~ 0
BD14
Text Label 4500 3800 0    50   ~ 0
BD15
$Comp
L Device:C C17
U 1 1 602AC53B
P 4950 4150
F 0 "C17" H 5065 4196 50  0000 L CNN
F 1 "0.1u" H 5065 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4988 4000 50  0001 C CNN
F 3 "~" H 4950 4150 50  0001 C CNN
	1    4950 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 602AC545
P 4950 4000
F 0 "#PWR018" H 4950 3850 50  0001 C CNN
F 1 "+5V" H 4965 4173 50  0000 C CNN
F 2 "" H 4950 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 602AC54F
P 4950 4300
F 0 "#PWR019" H 4950 4050 50  0001 C CNN
F 1 "GND" H 4955 4127 50  0000 C CNN
F 2 "" H 4950 4300 50  0001 C CNN
F 3 "" H 4950 4300 50  0001 C CNN
	1    4950 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 602B2963
P 5000 1950
F 0 "C18" H 5115 1996 50  0000 L CNN
F 1 "0.1u" H 5115 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5038 1800 50  0001 C CNN
F 3 "~" H 5000 1950 50  0001 C CNN
	1    5000 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 602B296D
P 5000 1800
F 0 "#PWR020" H 5000 1650 50  0001 C CNN
F 1 "+5V" H 5015 1973 50  0000 C CNN
F 2 "" H 5000 1800 50  0001 C CNN
F 3 "" H 5000 1800 50  0001 C CNN
	1    5000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 602B2977
P 5000 2100
F 0 "#PWR021" H 5000 1850 50  0001 C CNN
F 1 "GND" H 5005 1927 50  0000 C CNN
F 2 "" H 5000 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0001 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
$Comp
L HYB5118160BSJ:HYB5118160BSJ U6
U 1 1 602DC602
P 9850 2600
F 0 "U6" H 9850 3965 50  0000 C CNN
F 1 "HYB5118160BSJ" H 9850 3874 50  0000 C CNN
F 2 "GottaGoFastZ2:SOJ-42-LongPads" H 9850 2600 50  0001 C CNN
F 3 "DOCUMENTATION" H 9850 2600 50  0001 C CNN
	1    9850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3600 8700 3600
Wire Wire Line
	8700 3600 8700 2100
Connection ~ 8700 1600
Wire Wire Line
	8700 1600 8700 1300
Wire Wire Line
	9100 2100 8700 2100
Connection ~ 8700 2100
Wire Wire Line
	8700 2100 8700 1600
Wire Wire Line
	10600 1600 11050 1600
Wire Wire Line
	11050 1600 11050 2100
Wire Wire Line
	10600 3600 11050 3600
Connection ~ 11050 3600
Wire Wire Line
	11050 3600 11050 3900
Connection ~ 11050 2100
Wire Wire Line
	11050 2100 11050 2900
NoConn ~ 10600 2600
NoConn ~ 9100 2700
NoConn ~ 9100 2600
Wire Wire Line
	10600 2900 11050 2900
Connection ~ 11050 2900
Wire Wire Line
	11050 2900 11050 3600
Text Label 9100 3200 2    50   ~ 0
MA0
Text Label 9100 3300 2    50   ~ 0
MA1
Text Label 9100 3400 2    50   ~ 0
MA2
Text Label 9100 3500 2    50   ~ 0
MA3
Text Label 10600 3500 0    50   ~ 0
MA4
Text Label 10600 3400 0    50   ~ 0
MA5
Text Label 10600 3300 0    50   ~ 0
MA6
Text Label 10600 3200 0    50   ~ 0
MA7
Text Label 10600 3100 0    50   ~ 0
MA8
Text Label 10600 3000 0    50   ~ 0
MA9
Text Label 10600 2800 0    50   ~ 0
~UCAS
Text Label 10600 2700 0    50   ~ 0
~LCAS
Text Label 9100 2800 2    50   ~ 0
~MEMWR
Text Label 9100 2900 2    50   ~ 0
~RAS1
$Comp
L power:+5V #PWR028
U 1 1 6032DD97
P 8700 1300
F 0 "#PWR028" H 8700 1150 50  0001 C CNN
F 1 "+5V" H 8715 1473 50  0000 C CNN
F 2 "" H 8700 1300 50  0001 C CNN
F 3 "" H 8700 1300 50  0001 C CNN
	1    8700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 6032EF3F
P 11050 3900
F 0 "#PWR032" H 11050 3650 50  0001 C CNN
F 1 "GND" H 11055 3727 50  0000 C CNN
F 2 "" H 11050 3900 50  0001 C CNN
F 3 "" H 11050 3900 50  0001 C CNN
	1    11050 3900
	1    0    0    -1  
$EndComp
$Comp
L HYB5118160BSJ:HYB5118160BSJ U8
U 1 1 60332D21
P 12700 2600
F 0 "U8" H 12700 3965 50  0000 C CNN
F 1 "HYB5118160BSJ" H 12700 3874 50  0000 C CNN
F 2 "GottaGoFastZ2:SOJ-42-LongPads" H 12700 2600 50  0001 C CNN
F 3 "DOCUMENTATION" H 12700 2600 50  0001 C CNN
	1    12700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 3600 11550 3600
Wire Wire Line
	11550 3600 11550 2100
Wire Wire Line
	11950 1600 11550 1600
Connection ~ 11550 1600
Wire Wire Line
	11550 1600 11550 1300
Wire Wire Line
	11950 2100 11550 2100
Connection ~ 11550 2100
Wire Wire Line
	11550 2100 11550 1600
Wire Wire Line
	13450 1600 13900 1600
Wire Wire Line
	13900 1600 13900 2100
Wire Wire Line
	13450 3600 13900 3600
Connection ~ 13900 3600
Wire Wire Line
	13900 3600 13900 3900
Wire Wire Line
	13450 2100 13900 2100
Connection ~ 13900 2100
Wire Wire Line
	13900 2100 13900 2900
NoConn ~ 13450 2600
NoConn ~ 11950 2700
NoConn ~ 11950 2600
Wire Wire Line
	13450 2900 13900 2900
Connection ~ 13900 2900
Wire Wire Line
	13900 2900 13900 3600
Text Label 11950 3200 2    50   ~ 0
MA0
Text Label 11950 3300 2    50   ~ 0
MA1
Text Label 11950 3400 2    50   ~ 0
MA2
Text Label 11950 3500 2    50   ~ 0
MA3
Text Label 13450 3500 0    50   ~ 0
MA4
Text Label 13450 3400 0    50   ~ 0
MA5
Text Label 13450 3300 0    50   ~ 0
MA6
Text Label 13450 3200 0    50   ~ 0
MA7
Text Label 13450 3100 0    50   ~ 0
MA8
Text Label 13450 3000 0    50   ~ 0
MA9
Text Label 13450 2800 0    50   ~ 0
~UCAS
Text Label 13450 2700 0    50   ~ 0
~LCAS
Text Label 11950 2800 2    50   ~ 0
~MEMWR
$Comp
L power:+5V #PWR034
U 1 1 60332DBB
P 11550 1300
F 0 "#PWR034" H 11550 1150 50  0001 C CNN
F 1 "+5V" H 11565 1473 50  0000 C CNN
F 2 "" H 11550 1300 50  0001 C CNN
F 3 "" H 11550 1300 50  0001 C CNN
	1    11550 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 60332DC5
P 13900 3900
F 0 "#PWR036" H 13900 3650 50  0001 C CNN
F 1 "GND" H 13905 3727 50  0000 C CNN
F 2 "" H 13900 3900 50  0001 C CNN
F 3 "" H 13900 3900 50  0001 C CNN
	1    13900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6700 8700 6700
Wire Wire Line
	8700 6700 8700 5200
Wire Wire Line
	9100 5200 8700 5200
Connection ~ 8700 5200
Wire Wire Line
	10600 4700 11050 4700
Wire Wire Line
	11050 4700 11050 5200
Wire Wire Line
	10600 6700 11050 6700
Connection ~ 11050 6700
Wire Wire Line
	11050 6700 11050 7000
Wire Wire Line
	10600 5200 11050 5200
Connection ~ 11050 5200
Wire Wire Line
	11050 5200 11050 6000
NoConn ~ 10600 5700
NoConn ~ 9100 5800
NoConn ~ 9100 5700
Wire Wire Line
	10600 6000 11050 6000
Connection ~ 11050 6000
Wire Wire Line
	11050 6000 11050 6700
Text Label 9100 6300 2    50   ~ 0
MA0
Text Label 9100 6400 2    50   ~ 0
MA1
Text Label 9100 6500 2    50   ~ 0
MA2
Text Label 9100 6600 2    50   ~ 0
MA3
Text Label 10600 6600 0    50   ~ 0
MA4
Text Label 10600 6500 0    50   ~ 0
MA5
Text Label 10600 6400 0    50   ~ 0
MA6
Text Label 10600 6300 0    50   ~ 0
MA7
Text Label 10600 6200 0    50   ~ 0
MA8
Text Label 10600 6100 0    50   ~ 0
MA9
Text Label 10600 5900 0    50   ~ 0
~UCAS
Text Label 10600 5800 0    50   ~ 0
~LCAS
Text Label 9100 5900 2    50   ~ 0
~MEMWR
$Comp
L power:+5V #PWR029
U 1 1 6033A795
P 8700 4400
F 0 "#PWR029" H 8700 4250 50  0001 C CNN
F 1 "+5V" H 8715 4573 50  0000 C CNN
F 2 "" H 8700 4400 50  0001 C CNN
F 3 "" H 8700 4400 50  0001 C CNN
	1    8700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 6033A79F
P 11050 7000
F 0 "#PWR033" H 11050 6750 50  0001 C CNN
F 1 "GND" H 11055 6827 50  0000 C CNN
F 2 "" H 11050 7000 50  0001 C CNN
F 3 "" H 11050 7000 50  0001 C CNN
	1    11050 7000
	1    0    0    -1  
$EndComp
$Comp
L HYB5118160BSJ:HYB5118160BSJ U9
U 1 1 6033A7A9
P 12700 5700
F 0 "U9" H 12700 7065 50  0000 C CNN
F 1 "HYB5118160BSJ" H 12700 6974 50  0000 C CNN
F 2 "GottaGoFastZ2:SOJ-42-LongPads" H 12700 5700 50  0001 C CNN
F 3 "DOCUMENTATION" H 12700 5700 50  0001 C CNN
	1    12700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 6700 11550 6700
Wire Wire Line
	11550 6700 11550 5200
Wire Wire Line
	11950 4700 11550 4700
Connection ~ 11550 4700
Wire Wire Line
	11550 4700 11550 4400
Wire Wire Line
	11950 5200 11550 5200
Connection ~ 11550 5200
Wire Wire Line
	11550 5200 11550 4700
Wire Wire Line
	13450 4700 13900 4700
Wire Wire Line
	13900 4700 13900 5200
Wire Wire Line
	13450 6700 13900 6700
Connection ~ 13900 6700
Wire Wire Line
	13900 6700 13900 7000
Wire Wire Line
	13450 5200 13900 5200
Connection ~ 13900 5200
Wire Wire Line
	13900 5200 13900 6000
NoConn ~ 13450 5700
NoConn ~ 11950 5800
NoConn ~ 11950 5700
Wire Wire Line
	13450 6000 13900 6000
Connection ~ 13900 6000
Wire Wire Line
	13900 6000 13900 6700
Text Label 11950 6300 2    50   ~ 0
MA0
Text Label 11950 6400 2    50   ~ 0
MA1
Text Label 11950 6500 2    50   ~ 0
MA2
Text Label 11950 6600 2    50   ~ 0
MA3
Text Label 13450 6600 0    50   ~ 0
MA4
Text Label 13450 6500 0    50   ~ 0
MA5
Text Label 13450 6400 0    50   ~ 0
MA6
Text Label 13450 6300 0    50   ~ 0
MA7
Text Label 13450 6200 0    50   ~ 0
MA8
Text Label 13450 6100 0    50   ~ 0
MA9
Text Label 13450 5900 0    50   ~ 0
~UCAS
Text Label 13450 5800 0    50   ~ 0
~LCAS
Text Label 11950 5900 2    50   ~ 0
~MEMWR
Text Label 11950 6000 2    50   ~ 0
~RAS4
$Comp
L power:+5V #PWR035
U 1 1 6033A7E7
P 11550 4400
F 0 "#PWR035" H 11550 4250 50  0001 C CNN
F 1 "+5V" H 11565 4573 50  0000 C CNN
F 2 "" H 11550 4400 50  0001 C CNN
F 3 "" H 11550 4400 50  0001 C CNN
	1    11550 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6033A7F1
P 13900 7000
F 0 "#PWR037" H 13900 6750 50  0001 C CNN
F 1 "GND" H 13905 6827 50  0000 C CNN
F 2 "" H 13900 7000 50  0001 C CNN
F 3 "" H 13900 7000 50  0001 C CNN
	1    13900 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6034BC31
P 3650 9900
F 0 "C6" H 3765 9946 50  0000 L CNN
F 1 "0.1u" H 3765 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3688 9750 50  0001 C CNN
F 3 "~" H 3650 9900 50  0001 C CNN
	1    3650 9900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6034C7E4
P 4050 9900
F 0 "C9" H 4165 9946 50  0000 L CNN
F 1 "0.1u" H 4165 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4088 9750 50  0001 C CNN
F 3 "~" H 4050 9900 50  0001 C CNN
	1    4050 9900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6034CB6B
P 4450 9900
F 0 "C12" H 4565 9946 50  0000 L CNN
F 1 "0.1u" H 4565 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4488 9750 50  0001 C CNN
F 3 "~" H 4450 9900 50  0001 C CNN
	1    4450 9900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 6034CF75
P 4850 9900
F 0 "C15" H 4965 9946 50  0000 L CNN
F 1 "0.1u" H 4965 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 9750 50  0001 C CNN
F 3 "~" H 4850 9900 50  0001 C CNN
	1    4850 9900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 6034D386
P 5300 9900
F 0 "C20" H 5415 9946 50  0000 L CNN
F 1 "0.1u" H 5415 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5338 9750 50  0001 C CNN
F 3 "~" H 5300 9900 50  0001 C CNN
	1    5300 9900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 6034D8B0
P 5700 9900
F 0 "C23" H 5815 9946 50  0000 L CNN
F 1 "0.1u" H 5815 9855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 9750 50  0001 C CNN
F 3 "~" H 5700 9900 50  0001 C CNN
	1    5700 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 9750 5300 9750
Connection ~ 4050 9750
Wire Wire Line
	4050 9750 3650 9750
Connection ~ 4450 9750
Wire Wire Line
	4450 9750 4050 9750
Connection ~ 4850 9750
Wire Wire Line
	4850 9750 4450 9750
Connection ~ 5300 9750
Wire Wire Line
	5300 9750 4850 9750
Wire Wire Line
	3650 10050 4050 10050
Connection ~ 4050 10050
Wire Wire Line
	4050 10050 4450 10050
Connection ~ 4450 10050
Wire Wire Line
	4450 10050 4850 10050
Connection ~ 4850 10050
Wire Wire Line
	4850 10050 5300 10050
Connection ~ 5300 10050
Wire Wire Line
	5300 10050 5700 10050
$Comp
L power:GND #PWR024
U 1 1 60362259
P 5700 10050
F 0 "#PWR024" H 5700 9800 50  0001 C CNN
F 1 "GND" H 5705 9877 50  0000 C CNN
F 2 "" H 5700 10050 50  0001 C CNN
F 3 "" H 5700 10050 50  0001 C CNN
	1    5700 10050
	1    0    0    -1  
$EndComp
Connection ~ 5700 10050
$Comp
L power:+5V #PWR08
U 1 1 60362FBC
P 3650 9750
F 0 "#PWR08" H 3650 9600 50  0001 C CNN
F 1 "+5V" H 3665 9923 50  0000 C CNN
F 2 "" H 3650 9750 50  0001 C CNN
F 3 "" H 3650 9750 50  0001 C CNN
	1    3650 9750
	1    0    0    -1  
$EndComp
Connection ~ 3650 9750
$Comp
L Device:C C7
U 1 1 60363AF5
P 3650 10550
F 0 "C7" H 3765 10596 50  0000 L CNN
F 1 "0.1u" H 3765 10505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3688 10400 50  0001 C CNN
F 3 "~" H 3650 10550 50  0001 C CNN
	1    3650 10550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 60363B0D
P 4050 10550
F 0 "C10" H 4165 10596 50  0000 L CNN
F 1 "0.1u" H 4165 10505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4088 10400 50  0001 C CNN
F 3 "~" H 4050 10550 50  0001 C CNN
	1    4050 10550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 60363B17
P 4450 10550
F 0 "C13" H 4565 10596 50  0000 L CNN
F 1 "0.1u" H 4565 10505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4488 10400 50  0001 C CNN
F 3 "~" H 4450 10550 50  0001 C CNN
	1    4450 10550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 60363B21
P 4850 10550
F 0 "C16" H 4965 10596 50  0000 L CNN
F 1 "0.1u" H 4965 10505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 10400 50  0001 C CNN
F 3 "~" H 4850 10550 50  0001 C CNN
	1    4850 10550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 60363B2B
P 5300 10550
F 0 "C21" H 5415 10596 50  0000 L CNN
F 1 "0.1u" H 5415 10505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5338 10400 50  0001 C CNN
F 3 "~" H 5300 10550 50  0001 C CNN
	1    5300 10550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 60363B35
P 5700 10550
F 0 "C24" H 5815 10596 50  0000 L CNN
F 1 "0.1u" H 5815 10505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 10400 50  0001 C CNN
F 3 "~" H 5700 10550 50  0001 C CNN
	1    5700 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 10400 5300 10400
Connection ~ 4050 10400
Wire Wire Line
	4050 10400 3650 10400
Connection ~ 4450 10400
Wire Wire Line
	4450 10400 4050 10400
Connection ~ 4850 10400
Wire Wire Line
	4850 10400 4450 10400
Connection ~ 5300 10400
Wire Wire Line
	5300 10400 4850 10400
Wire Wire Line
	3650 10700 4050 10700
Connection ~ 4050 10700
Wire Wire Line
	4050 10700 4450 10700
Connection ~ 4450 10700
Wire Wire Line
	4450 10700 4850 10700
Connection ~ 4850 10700
Wire Wire Line
	4850 10700 5300 10700
Connection ~ 5300 10700
Wire Wire Line
	5300 10700 5700 10700
$Comp
L power:GND #PWR025
U 1 1 60363B51
P 5700 10700
F 0 "#PWR025" H 5700 10450 50  0001 C CNN
F 1 "GND" H 5705 10527 50  0000 C CNN
F 2 "" H 5700 10700 50  0001 C CNN
F 3 "" H 5700 10700 50  0001 C CNN
	1    5700 10700
	1    0    0    -1  
$EndComp
Connection ~ 5700 10700
$Comp
L power:+5V #PWR09
U 1 1 60363B5C
P 3650 10400
F 0 "#PWR09" H 3650 10250 50  0001 C CNN
F 1 "+5V" H 3665 10573 50  0000 C CNN
F 2 "" H 3650 10400 50  0001 C CNN
F 3 "" H 3650 10400 50  0001 C CNN
	1    3650 10400
	1    0    0    -1  
$EndComp
Connection ~ 3650 10400
Text Notes 4300 10900 2    50   ~ 0
RAM decoupling
$Comp
L Device:CP C1
U 1 1 603D61E6
P 800 10100
F 0 "C1" H 918 10146 50  0000 L CNN
F 1 "100u" H 918 10055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 838 9950 50  0001 C CNN
F 3 "~" H 800 10100 50  0001 C CNN
	1    800  10100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 603D7057
P 800 9950
F 0 "#PWR02" H 800 9800 50  0001 C CNN
F 1 "+5V" H 815 10123 50  0000 C CNN
F 2 "" H 800 9950 50  0001 C CNN
F 3 "" H 800 9950 50  0001 C CNN
	1    800  9950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 60443D83
P 11350 9950
F 0 "J2" H 11322 9878 50  0000 R CNN
F 1 "Conn_01x06_Male" H 11458 10240 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 11350 9950 50  0001 C CNN
F 3 "~" H 11350 9950 50  0001 C CNN
	1    11350 9950
	-1   0    0    -1  
$EndComp
Text Label 11150 9750 2    50   ~ 0
TMS
Text Label 11150 9850 2    50   ~ 0
TDI
Text Label 11150 9950 2    50   ~ 0
TDO
Text Label 11150 10050 2    50   ~ 0
TCK
$Comp
L power:GND #PWR031
U 1 1 6045F0CF
P 11000 10350
F 0 "#PWR031" H 11000 10100 50  0001 C CNN
F 1 "GND" H 11005 10177 50  0000 C CNN
F 2 "" H 11000 10350 50  0001 C CNN
F 3 "" H 11000 10350 50  0001 C CNN
	1    11000 10350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR030
U 1 1 6046B4A9
P 10900 9500
F 0 "#PWR030" H 10900 9350 50  0001 C CNN
F 1 "+3.3V" H 10915 9673 50  0000 C CNN
F 2 "" H 10900 9500 50  0001 C CNN
F 3 "" H 10900 9500 50  0001 C CNN
	1    10900 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 10150 11000 10150
Wire Wire Line
	11000 10150 11000 10350
Wire Wire Line
	10900 9500 10900 10250
Wire Wire Line
	10900 10250 11150 10250
Text Label 3500 2100 2    50   ~ 0
D7
Text Label 3500 2200 2    50   ~ 0
D6
Text Label 3500 2300 2    50   ~ 0
D5
Text Label 3500 2000 2    50   ~ 0
D4
Text Notes 11200 10700 2    50   ~ 0
JTAG
Text Label 4500 4300 0    50   ~ 0
BD10
Text Label 4500 4400 0    50   ~ 0
BD9
Text Label 4500 4500 0    50   ~ 0
BD8
Text Label 9100 2500 2    50   ~ 0
BD0
Text Label 9100 2400 2    50   ~ 0
BD1
Text Label 9100 2300 2    50   ~ 0
BD2
Text Label 9100 2200 2    50   ~ 0
BD3
Text Label 9100 2000 2    50   ~ 0
BD4
Text Label 9100 1900 2    50   ~ 0
BD7
Text Label 9100 1800 2    50   ~ 0
BD6
Text Label 9100 1700 2    50   ~ 0
BD5
Wire Wire Line
	9100 1600 8700 1600
Wire Wire Line
	8700 5200 8700 4700
Wire Wire Line
	8700 4700 8700 4400
Connection ~ 8700 4700
Wire Wire Line
	9100 4700 8700 4700
$Comp
L HYB5118160BSJ:HYB5118160BSJ U7
U 1 1 6033A757
P 9850 5700
F 0 "U7" H 9850 7065 50  0000 C CNN
F 1 "HYB5118160BSJ" H 9850 6974 50  0000 C CNN
F 2 "GottaGoFastZ2:SOJ-42-LongPads" H 9850 5700 50  0001 C CNN
F 3 "DOCUMENTATION" H 9850 5700 50  0001 C CNN
	1    9850 5700
	1    0    0    -1  
$EndComp
Text Label 9100 5100 2    50   ~ 0
BD4
Text Label 9100 5000 2    50   ~ 0
BD7
Text Label 9100 4900 2    50   ~ 0
BD6
Text Label 9100 4800 2    50   ~ 0
BD5
Text Label 11950 2000 2    50   ~ 0
BD4
Text Label 11950 1900 2    50   ~ 0
BD7
Text Label 11950 1800 2    50   ~ 0
BD6
Text Label 11950 1700 2    50   ~ 0
BD5
Text Label 11950 5100 2    50   ~ 0
BD4
Text Label 11950 5000 2    50   ~ 0
BD7
Text Label 11950 4900 2    50   ~ 0
BD6
Text Label 11950 4800 2    50   ~ 0
BD5
Text Label 9100 5600 2    50   ~ 0
BD0
Text Label 9100 5500 2    50   ~ 0
BD1
Text Label 9100 5400 2    50   ~ 0
BD2
Text Label 9100 5300 2    50   ~ 0
BD3
Text Label 11950 5600 2    50   ~ 0
BD0
Text Label 11950 5500 2    50   ~ 0
BD1
Text Label 11950 5400 2    50   ~ 0
BD2
Text Label 11950 5300 2    50   ~ 0
BD3
Text Label 11950 2500 2    50   ~ 0
BD0
Text Label 11950 2400 2    50   ~ 0
BD1
Text Label 11950 2300 2    50   ~ 0
BD2
Text Label 11950 2200 2    50   ~ 0
BD3
Wire Wire Line
	10600 2100 11050 2100
Text Label 9100 6000 2    50   ~ 0
~RAS2
Text Label 11950 2900 2    50   ~ 0
~RAS3
Text Label 10600 5100 0    50   ~ 0
BD12
Text Label 10600 4800 0    50   ~ 0
BD15
Text Label 10600 4900 0    50   ~ 0
BD14
Text Label 10600 5000 0    50   ~ 0
BD13
Text Label 10600 5300 0    50   ~ 0
BD11
Text Label 10600 5400 0    50   ~ 0
BD10
Text Label 10600 5500 0    50   ~ 0
BD9
Text Label 10600 5600 0    50   ~ 0
BD8
Text Label 13450 5100 0    50   ~ 0
BD12
Text Label 13450 4800 0    50   ~ 0
BD15
Text Label 13450 4900 0    50   ~ 0
BD14
Text Label 13450 5000 0    50   ~ 0
BD13
Text Label 13450 5300 0    50   ~ 0
BD11
Text Label 13450 5400 0    50   ~ 0
BD10
Text Label 13450 5500 0    50   ~ 0
BD9
Text Label 13450 5600 0    50   ~ 0
BD8
Text Label 13450 2200 0    50   ~ 0
BD11
Text Label 13450 2300 0    50   ~ 0
BD10
Text Label 13450 2400 0    50   ~ 0
BD9
Text Label 13450 2500 0    50   ~ 0
BD8
Text Label 13450 2000 0    50   ~ 0
BD12
Text Label 13450 1700 0    50   ~ 0
BD15
Text Label 13450 1800 0    50   ~ 0
BD14
Text Label 13450 1900 0    50   ~ 0
BD13
Text Label 10600 2500 0    50   ~ 0
BD8
Text Label 10600 2400 0    50   ~ 0
BD9
Text Label 10600 2300 0    50   ~ 0
BD10
Text Label 10600 2200 0    50   ~ 0
BD11
Text Label 10600 2000 0    50   ~ 0
BD12
Text Label 10600 1700 0    50   ~ 0
BD15
Text Label 10600 1800 0    50   ~ 0
BD14
Text Label 10600 1900 0    50   ~ 0
BD13
$Comp
L power:+5V #PWR012
U 1 1 60A8AC27
P 4000 1300
F 0 "#PWR012" H 4000 1150 50  0001 C CNN
F 1 "+5V" H 4015 1473 50  0000 C CNN
F 2 "" H 4000 1300 50  0001 C CNN
F 3 "" H 4000 1300 50  0001 C CNN
	1    4000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 60A8B144
P 4000 3500
F 0 "#PWR014" H 4000 3350 50  0001 C CNN
F 1 "+5V" H 4015 3673 50  0000 C CNN
F 2 "" H 4000 3500 50  0001 C CNN
F 3 "" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
Text Label 5650 4150 2    50   ~ 0
~LCAS
Text Label 5650 4250 2    50   ~ 0
~UCAS
Text Label 5650 4550 2    50   ~ 0
~RAS3
Text Notes 4250 9450 2    50   ~ 0
CPLD decoupling
$Comp
L power:GND #PWR017
U 1 1 601B8E74
P 4700 9300
F 0 "#PWR017" H 4700 9050 50  0001 C CNN
F 1 "GND" H 4705 9127 50  0000 C CNN
F 2 "" H 4700 9300 50  0001 C CNN
F 3 "" H 4700 9300 50  0001 C CNN
	1    4700 9300
	1    0    0    -1  
$EndComp
Connection ~ 4700 9300
Wire Wire Line
	4300 9300 4700 9300
Connection ~ 4300 9300
Wire Wire Line
	3900 9300 4300 9300
Connection ~ 3900 9300
Wire Wire Line
	3500 9300 3900 9300
Wire Wire Line
	4700 9000 4300 9000
Connection ~ 4700 9000
Wire Wire Line
	4300 9000 3900 9000
Connection ~ 4300 9000
Wire Wire Line
	3900 9000 3500 9000
Connection ~ 3900 9000
$Comp
L Device:C C14
U 1 1 601B6001
P 4700 9150
F 0 "C14" H 4815 9196 50  0000 L CNN
F 1 "0.1u" H 4815 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4738 9000 50  0001 C CNN
F 3 "~" H 4700 9150 50  0001 C CNN
	1    4700 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 601B5A73
P 4300 9150
F 0 "C11" H 4415 9196 50  0000 L CNN
F 1 "0.1u" H 4415 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4338 9000 50  0001 C CNN
F 3 "~" H 4300 9150 50  0001 C CNN
	1    4300 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 601B56CE
P 3900 9150
F 0 "C8" H 4015 9196 50  0000 L CNN
F 1 "0.1u" H 4015 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3938 9000 50  0001 C CNN
F 3 "~" H 3900 9150 50  0001 C CNN
	1    3900 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 601B5299
P 3500 9150
F 0 "C5" H 3615 9196 50  0000 L CNN
F 1 "0.1u" H 3615 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3538 9000 50  0001 C CNN
F 3 "~" H 3500 9150 50  0001 C CNN
	1    3500 9150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 601B9618
P 4700 9000
F 0 "#PWR016" H 4700 8850 50  0001 C CNN
F 1 "+3.3V" H 4715 9173 50  0000 C CNN
F 2 "" H 4700 9000 50  0001 C CNN
F 3 "" H 4700 9000 50  0001 C CNN
	1    4700 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 9300 5900 9300
Connection ~ 5500 9300
Connection ~ 5100 9300
Wire Wire Line
	5100 9300 5500 9300
Wire Wire Line
	4700 9300 5100 9300
Connection ~ 5500 9000
Wire Wire Line
	5100 9000 4700 9000
Connection ~ 5100 9000
Wire Wire Line
	5500 9000 5100 9000
Wire Wire Line
	5900 9000 5500 9000
$Comp
L Device:C C25
U 1 1 601B6DC0
P 5900 9150
F 0 "C25" H 6015 9196 50  0000 L CNN
F 1 "0.1u" H 6015 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5938 9000 50  0001 C CNN
F 3 "~" H 5900 9150 50  0001 C CNN
	1    5900 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 601B692D
P 5500 9150
F 0 "C22" H 5615 9196 50  0000 L CNN
F 1 "0.1u" H 5615 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5538 9000 50  0001 C CNN
F 3 "~" H 5500 9150 50  0001 C CNN
	1    5500 9150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 601B6533
P 5100 9150
F 0 "C19" H 5215 9196 50  0000 L CNN
F 1 "0.1u" H 5215 9105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5138 9000 50  0001 C CNN
F 3 "~" H 5100 9150 50  0001 C CNN
	1    5100 9150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 601BCC5B
P 6350 950
F 0 "#PWR026" H 6350 800 50  0001 C CNN
F 1 "+3.3V" H 6365 1123 50  0000 C CNN
F 2 "" H 6350 950 50  0001 C CNN
F 3 "" H 6350 950 50  0001 C CNN
	1    6350 950 
	1    0    0    -1  
$EndComp
Text Label 5650 3050 2    50   ~ 0
~AS
Text Label 5650 3150 2    50   ~ 0
~UDS
Text Label 5650 3250 2    50   ~ 0
~LDS
Text Label 7650 1950 0    50   ~ 0
READ
Text Label 5650 3350 2    50   ~ 0
A23
Text Label 5650 3450 2    50   ~ 0
A21
Text Label 5650 3650 2    50   ~ 0
A18
Text Label 7650 2250 0    50   ~ 0
A17
Text Label 7650 2350 0    50   ~ 0
A16
Text Label 7650 2550 0    50   ~ 0
A15
Text Label 7650 2650 0    50   ~ 0
A14
Text Label 7650 2750 0    50   ~ 0
A13
Text Label 7650 2850 0    50   ~ 0
A12
Text Label 7650 2950 0    50   ~ 0
A11
Text Label 7650 3050 0    50   ~ 0
A10
Text Label 7650 3250 0    50   ~ 0
A1
Text Label 7650 3150 0    50   ~ 0
A9
Text Label 7650 3350 0    50   ~ 0
A8
Text Label 7650 3450 0    50   ~ 0
A2
Text Label 7650 3550 0    50   ~ 0
A7
Text Label 7650 3650 0    50   ~ 0
A3
Text Label 7650 3850 0    50   ~ 0
A6
Text Label 7650 3950 0    50   ~ 0
A4
Text Label 7650 4050 0    50   ~ 0
A5
Text Label 7650 4750 0    50   ~ 0
~CFGIN
Text Label 7650 4850 0    50   ~ 0
~CFGOUT
Text Label 7650 4950 0    50   ~ 0
~SLAVE
Text Label 5650 2850 2    50   ~ 0
MA4
Text Label 5650 2650 2    50   ~ 0
MA5
Text Label 5650 2450 2    50   ~ 0
MA6
Text Label 5650 2250 2    50   ~ 0
MA7
Text Label 5650 2150 2    50   ~ 0
MA8
Text Label 5650 1950 2    50   ~ 0
MA9
Text Label 5650 2950 2    50   ~ 0
MA3
Text Label 5650 2750 2    50   ~ 0
MA2
Text Label 5650 2550 2    50   ~ 0
MA1
Text Label 5650 2350 2    50   ~ 0
MA0
Text Label 5650 4050 2    50   ~ 0
~RAS1
Text Label 5650 4450 2    50   ~ 0
~RAS2
Text Label 5650 2050 2    50   ~ 0
~RAS4
Text Label 5650 4350 2    50   ~ 0
~MEMWR
Text Label 5650 3950 2    50   ~ 0
BD12
Text Label 5650 3850 2    50   ~ 0
BD13
Text Label 5650 5450 2    50   ~ 0
BD14
Text Label 5650 5350 2    50   ~ 0
BD15
Text Label 7650 6150 0    50   ~ 0
TDO
Text Label 7650 6050 0    50   ~ 0
TCK
Text Label 7650 5950 0    50   ~ 0
TMS
Text Label 7650 5850 0    50   ~ 0
TDI
$Comp
L power:GND #PWR027
U 1 1 601BC569
P 7050 6450
F 0 "#PWR027" H 7050 6200 50  0001 C CNN
F 1 "GND" H 7055 6277 50  0000 C CNN
F 2 "" H 7050 6450 50  0001 C CNN
F 3 "" H 7050 6450 50  0001 C CNN
	1    7050 6450
	1    0    0    -1  
$EndComp
Connection ~ 7050 6450
Connection ~ 6750 6450
Connection ~ 6550 950 
Connection ~ 6750 950 
Wire Wire Line
	6450 950  6550 950 
Wire Wire Line
	6350 950  6450 950 
Connection ~ 6450 950 
Wire Wire Line
	6650 950  6750 950 
Wire Wire Line
	6550 950  6650 950 
Connection ~ 6650 950 
Wire Wire Line
	6750 6450 6850 6450
Connection ~ 6850 6450
Wire Wire Line
	6850 6450 6950 6450
Wire Wire Line
	6950 6450 7050 6450
Connection ~ 6950 6450
Connection ~ 6550 6450
Wire Wire Line
	6650 6450 6750 6450
Wire Wire Line
	6550 6450 6650 6450
Connection ~ 6650 6450
Wire Wire Line
	6850 950  6950 950 
Wire Wire Line
	6750 950  6850 950 
Connection ~ 6850 950 
Wire Wire Line
	6450 6450 6550 6450
Wire Wire Line
	6350 6450 6450 6450
Connection ~ 6450 6450
Connection ~ 6350 950 
$Comp
L CPLD_Xilinx:XC9572XL-TQ100 U5
U 1 1 601A895F
P 6650 3650
F 0 "U5" H 6650 6531 50  0000 C CNN
F 1 "XC9572XL-TQ100" H 6750 6450 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 6650 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 6650 3650 50  0001 C CNN
	1    6650 3650
	1    0    0    -1  
$EndComp
Text Label 5650 5250 2    50   ~ 0
DOE
Text Label 5650 5550 2    50   ~ 0
~RESET
Connection ~ 2400 1500
Wire Wire Line
	2400 1500 2600 1500
Wire Wire Line
	2400 1500 1400 1500
Connection ~ 1400 5600
Wire Wire Line
	1400 5600 750  5600
Wire Wire Line
	2400 5600 1400 5600
Connection ~ 1400 5700
Wire Wire Line
	1400 5700 750  5700
Wire Wire Line
	2400 5700 1400 5700
Connection ~ 1400 6200
Wire Wire Line
	1400 6200 750  6200
Wire Wire Line
	2400 6200 1400 6200
Connection ~ 1400 1300
Wire Wire Line
	750  1300 1400 1300
Wire Wire Line
	1400 1300 2400 1300
$Comp
L Zorro:Zorro2 CON1
U 1 1 601948B4
P 1500 1200
F 0 "CON1" H 1900 1365 50  0000 C CNN
F 1 "Zorro2" H 1900 1274 50  0000 C CNN
F 2 "GottaGoFastZ2:Zorro2-CardEdge" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1400 750  1400
Connection ~ 1400 1400
Connection ~ 750  1400
Wire Wire Line
	750  1400 750  1900
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 604E844A
P 4850 5150
F 0 "J1" H 4950 5300 50  0000 C CNN
F 1 "4MB" H 4958 5240 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4850 5150 50  0001 C CNN
F 3 "~" H 4850 5150 50  0001 C CNN
	1    4850 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 604E94C7
P 5050 5250
F 0 "#PWR022" H 5050 5000 50  0001 C CNN
F 1 "GND" H 5055 5077 50  0000 C CNN
F 2 "" H 5050 5250 50  0001 C CNN
F 3 "" H 5050 5250 50  0001 C CNN
	1    5050 5250
	1    0    0    -1  
$EndComp
Text Label 5650 5150 2    50   ~ 0
4MB
$Comp
L Device:R_Small R1
U 1 1 604F1C04
P 5250 5050
F 0 "R1" H 5309 5096 50  0000 L CNN
F 1 "10K" H 5309 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5250 5050 50  0001 C CNN
F 3 "~" H 5250 5050 50  0001 C CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 604F2841
P 5250 4950
F 0 "#PWR023" H 5250 4800 50  0001 C CNN
F 1 "+3.3V" H 5265 5123 50  0000 C CNN
F 2 "" H 5250 4950 50  0001 C CNN
F 3 "" H 5250 4950 50  0001 C CNN
	1    5250 4950
	1    0    0    -1  
$EndComp
Connection ~ 5250 5150
Wire Wire Line
	5250 5150 5650 5150
Wire Wire Line
	5050 5150 5250 5150
Connection ~ 800  9950
Text Label 7650 4350 0    50   ~ 0
~C1
Text Label 1400 2000 2    50   ~ 0
CDAC
Text Label 7650 4450 0    50   ~ 0
CDAC
Connection ~ 2300 9950
$Comp
L power:+3.3V #PWR04
U 1 1 601B40FD
P 2300 9950
F 0 "#PWR04" H 2300 9800 50  0001 C CNN
F 1 "+3.3V" H 2315 10123 50  0000 C CNN
F 2 "" H 2300 9950 50  0001 C CNN
F 3 "" H 2300 9950 50  0001 C CNN
	1    2300 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 9950 2050 9950
Connection ~ 1750 10250
Wire Wire Line
	2300 10250 1750 10250
$Comp
L Device:C C3
U 1 1 601AFBC9
P 2300 10100
F 0 "C3" H 2415 10146 50  0000 L CNN
F 1 "10u" H 2415 10055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2338 9950 50  0001 C CNN
F 3 "~" H 2300 10100 50  0001 C CNN
	1    2300 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 10250 1750 10400
$Comp
L power:GND #PWR03
U 1 1 601AD31A
P 1750 10400
F 0 "#PWR03" H 1750 10150 50  0001 C CNN
F 1 "GND" H 1755 10227 50  0000 C CNN
F 2 "" H 1750 10400 50  0001 C CNN
F 3 "" H 1750 10400 50  0001 C CNN
	1    1750 10400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 601ABCC4
P 1750 9950
F 0 "U1" H 1750 10192 50  0000 C CNN
F 1 "LM1117-3.3" H 1750 10101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1750 9950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 1750 9950 50  0001 C CNN
	1    1750 9950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 60A41B06
P 1200 10100
F 0 "C2" H 1318 10146 50  0000 L CNN
F 1 "10u" H 1318 10055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1238 9950 50  0001 C CNN
F 3 "~" H 1200 10100 50  0001 C CNN
	1    1200 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  10250 1200 10250
Connection ~ 1200 10250
Wire Wire Line
	1200 10250 1750 10250
Wire Wire Line
	800  9950 1200 9950
Connection ~ 1200 9950
Wire Wire Line
	1200 9950 1450 9950
Text Label 7650 4250 0    50   ~ 0
~OVR
Text Label 7650 4150 0    50   ~ 0
~DTACK
$Comp
L power:GND #PWR07
U 1 1 60A08FAF
P 3050 6250
F 0 "#PWR07" H 3050 6000 50  0001 C CNN
F 1 "GND" H 3055 6077 50  0000 C CNN
F 2 "" H 3050 6250 50  0001 C CNN
F 3 "" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 60A08903
P 3050 5950
F 0 "#PWR06" H 3050 5800 50  0001 C CNN
F 1 "+3.3V" H 3065 6123 50  0000 C CNN
F 2 "" H 3050 5950 50  0001 C CNN
F 3 "" H 3050 5950 50  0001 C CNN
	1    3050 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60A06F08
P 3050 6100
F 0 "C4" H 3165 6146 50  0000 L CNN
F 1 "0.1u" H 3165 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3088 5950 50  0001 C CNN
F 3 "~" H 3050 6100 50  0001 C CNN
	1    3050 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60A03B3C
P 3700 6600
F 0 "#PWR011" H 3700 6350 50  0001 C CNN
F 1 "GND" H 3705 6427 50  0000 C CNN
F 2 "" H 3700 6600 50  0001 C CNN
F 3 "" H 3700 6600 50  0001 C CNN
	1    3700 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 60A03425
P 3700 5850
F 0 "#PWR010" H 3700 5700 50  0001 C CNN
F 1 "+3.3V" H 3715 6023 50  0000 C CNN
F 2 "" H 3700 5850 50  0001 C CNN
F 3 "" H 3700 5850 50  0001 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
Text Label 3400 6500 2    50   ~ 0
~DTACK
Text Label 3400 5950 2    50   ~ 0
~OVR
Text Label 3950 6500 0    50   ~ 0
B~DTACK
Text Label 3950 5950 0    50   ~ 0
B~OVR
$Comp
L 74xGxx:74LVC2G07 U2
U 2 1 604A36EA
P 3700 6500
F 0 "U2" H 3675 6767 50  0000 C CNN
F 1 "74LVC2G07" H 3675 6676 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3700 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3700 6500 50  0001 C CNN
	2    3700 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC2G07 U2
U 1 1 604A338B
P 3700 5950
F 0 "U2" H 3675 6217 50  0000 C CNN
F 1 "74LVC2G07" H 3675 6126 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3700 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3700 5950 50  0001 C CNN
	1    3700 5950
	1    0    0    -1  
$EndComp
Text Label 2400 3500 0    50   ~ 0
~BEER
Text Label 7650 2050 0    50   ~ 0
A22
Text Label 5650 3550 2    50   ~ 0
A19
Text Label 7650 2150 0    50   ~ 0
A20
Text Label 7650 2450 0    50   ~ 0
~BEER
Text Label 7650 4550 0    50   ~ 0
~C3
Text Label 7650 4650 0    50   ~ 0
~BUFOE
Text Notes 3200 7000 0    50   ~ 0
Open collector buffer\nDTACK/OVR need strong drive
$EndSCHEMATC
