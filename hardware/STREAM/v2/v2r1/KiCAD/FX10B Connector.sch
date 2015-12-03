EESchema Schematic File Version 2
LIBS:Stream
LIBS:Universal
LIBS:MYRIAD_RF-cache
LIBS:Zipper-cache
LIBS:DigiRED_v2.0-cache
LIBS:LMS7002EVB
LIBS:Stream-cache
EELAYER 27 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 2 17
Title "Stream v.1"
Date "19 jun 2014"
Rev "0.23"
Comp "Lime Microsystems Ltd."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L FX10B_80S_8 J?
U 1 1 536F056A
P 4175 5450
F 0 "J?" H 4185 8250 60  0000 C CNN
F 1 "FX10B_80S_8" H 4155 8420 60  0001 C CNN
F 2 "FX10B_80S_8" H 4165 8540 60  0001 C CNN
F 3 "~" H 4175 5450 60  0000 C CNN
F 4 "CONN RECEPT, 80POS, W/O, POST, SMD," H 4205 8650 60  0001 C CNN "Description"
F 5 "Digi-Key" H 4185 8980 60  0001 C CNN "Vendor"
F 6 "FX10B-80S/8-SV(71)" H 4195 8760 60  0001 C CNN "Manufacturer Part Number"
F 7 "H11236-ND" H 4155 9070 60  0001 C CNN "Vendor Part Number"
F 8 "Hirose Electric Co Ltd" H 4185 8870 60  0001 C CNN "Manufacturer"
F 9 "FX10B_80S_8" H 4195 2570 60  0000 C CNN "Component Value"
	1    4175 5450
	1    0    0    -1  
$EndComp
Text Notes 3250 2200 0    118  ~ 0
Myriad RF Connector
Text GLabel 3225 8050 0    43   Input ~ 0
LMS_RXEN
Text GLabel 5375 5450 2    43   Input ~ 0
IQSEL_Enable2
Text GLabel 5175 8050 2    43   Input ~ 0
LMS_TXEN
Text GLabel 5175 4150 2    43   Input ~ 0
IQSEL_Enable1
Text GLabel 3025 7050 0    43   Input ~ 0
LMS_RESET
Text GLabel 5175 6750 2    43   Input ~ 0
RX_CLK
Text GLabel 3225 6750 0    43   Input ~ 0
TX_CLK
NoConn ~ 4975 3250
NoConn ~ 3375 3350
NoConn ~ 3375 3250
$Comp
L GND #PWR?
U 1 1 537D851E
P 3100 3550
F 0 "#PWR?" H 3100 3650 40  0001 C CNN
F 1 "GND" H 3100 3480 40  0000 C CNN
F 2 "~" H 3100 3550 60  0000 C CNN
F 3 "~" H 3100 3550 60  0000 C CNN
	1    3100 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 537D8544
P 3100 4850
F 0 "#PWR?" H 3100 4950 40  0001 C CNN
F 1 "GND" H 3100 4780 40  0000 C CNN
F 2 "~" H 3100 4850 60  0000 C CNN
F 3 "~" H 3100 4850 60  0000 C CNN
	1    3100 4850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 537D854A
P 5250 3550
F 0 "#PWR?" H 5250 3650 40  0001 C CNN
F 1 "GND" H 5250 3480 40  0000 C CNN
F 2 "~" H 5250 3550 60  0000 C CNN
F 3 "~" H 5250 3550 60  0000 C CNN
	1    5250 3550
	0    -1   -1   0   
$EndComp
Text GLabel 2700 7950 0    43   Input ~ 0
MIPI_SCK
Text GLabel 2700 7850 0    43   Input ~ 0
MIPI_DATA
NoConn ~ 3375 3850
NoConn ~ 3375 3950
NoConn ~ 3375 4150
NoConn ~ 3375 4250
NoConn ~ 3375 5450
NoConn ~ 3375 5550
NoConn ~ 3375 6950
NoConn ~ 4975 6850
NoConn ~ 4975 5550
NoConn ~ 4975 4250
NoConn ~ 4975 3950
NoConn ~ 4975 3850
NoConn ~ 4975 3350
$Comp
L GND #PWR?
U 1 1 537E81AA
P 3100 6150
F 0 "#PWR?" H 3100 6250 40  0001 C CNN
F 1 "GND" H 3100 6080 40  0000 C CNN
F 2 "~" H 3100 6150 60  0000 C CNN
F 3 "~" H 3100 6150 60  0000 C CNN
	1    3100 6150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 537E861A
P 3100 7450
F 0 "#PWR?" H 3100 7550 40  0001 C CNN
F 1 "GND" H 3100 7380 40  0000 C CNN
F 2 "~" H 3100 7450 60  0000 C CNN
F 3 "~" H 3100 7450 60  0000 C CNN
	1    3100 7450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 537E8621
P 3250 8325
F 0 "#PWR?" H 3250 8425 40  0001 C CNN
F 1 "GND" H 3250 8255 40  0000 C CNN
F 2 "~" H 3250 8325 60  0000 C CNN
F 3 "~" H 3250 8325 60  0000 C CNN
	1    3250 8325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 537E87FA
P 5100 8325
F 0 "#PWR?" H 5100 8425 40  0001 C CNN
F 1 "GND" H 5100 8255 40  0000 C CNN
F 2 "~" H 5100 8325 60  0000 C CNN
F 3 "~" H 5100 8325 60  0000 C CNN
	1    5100 8325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 537E8C96
P 5250 4850
F 0 "#PWR?" H 5250 4950 40  0001 C CNN
F 1 "GND" H 5250 4780 40  0000 C CNN
F 2 "~" H 5250 4850 60  0000 C CNN
F 3 "~" H 5250 4850 60  0000 C CNN
	1    5250 4850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 537E8E7A
P 5250 6150
F 0 "#PWR?" H 5250 6250 40  0001 C CNN
F 1 "GND" H 5250 6080 40  0000 C CNN
F 2 "~" H 5250 6150 60  0000 C CNN
F 3 "~" H 5250 6150 60  0000 C CNN
	1    5250 6150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 537EA5A3
P 5250 7450
F 0 "#PWR?" H 5250 7550 40  0001 C CNN
F 1 "GND" H 5250 7380 40  0000 C CNN
F 2 "~" H 5250 7450 60  0000 C CNN
F 3 "~" H 5250 7450 60  0000 C CNN
	1    5250 7450
	0    -1   -1   0   
$EndComp
Text Label 5475 5650 2    51   ~ 0
DIQ2_D0
Text Label 2875 5650 0    51   ~ 0
DIQ2_D1
Text Label 2875 5750 0    51   ~ 0
DIQ2_D3
Text Label 5475 5950 2    51   ~ 0
DIQ2_D4
Text Label 2875 5950 0    51   ~ 0
DIQ2_D5
Text Label 5475 6350 2    51   ~ 0
DIQ2_D6
Text Label 2875 6350 0    51   ~ 0
DIQ2_D7
Text Label 5475 6450 2    51   ~ 0
DIQ2_D8
Text Label 2875 6450 0    51   ~ 0
DIQ2_D9
Text Label 5475 6550 2    51   ~ 0
DIQ2_D10
Text Label 2875 6550 0    51   ~ 0
DIQ2_D11
Text Label 5450 4350 2    51   ~ 0
DIQ1_D0
Text Label 2925 4350 0    51   ~ 0
DIQ1_D1
Text Label 5450 4450 2    51   ~ 0
DIQ1_D2
Text Label 2925 4450 0    51   ~ 0
DIQ1_D3
Text Label 5450 4650 2    51   ~ 0
DIQ1_D4
Text Label 2925 4650 0    51   ~ 0
DIQ1_D5
Text Label 5475 5050 2    51   ~ 0
DIQ1_D6
Text Label 2925 5050 0    51   ~ 0
DIQ1_D7
Text Label 5475 5150 2    51   ~ 0
DIQ1_D8
Text Label 2925 5150 0    51   ~ 0
DIQ1_D9
Text Label 5475 5250 2    51   ~ 0
DIQ1_D10
Text Label 2925 5250 0    51   ~ 0
DIQ1_D11
Text Label 5475 5750 2    51   ~ 0
DIQ2_D2
Text Label 6950 5675 0    51   ~ 0
DIQ2_D0
Text Label 6950 5775 0    51   ~ 0
DIQ2_D1
Text Label 6950 5975 0    51   ~ 0
DIQ2_D3
Text Label 6950 6075 0    51   ~ 0
DIQ2_D4
Text Label 6950 6175 0    51   ~ 0
DIQ2_D5
Text Label 6950 6275 0    51   ~ 0
DIQ2_D6
Text Label 6950 6375 0    51   ~ 0
DIQ2_D7
Text Label 6950 6475 0    51   ~ 0
DIQ2_D8
Text Label 6950 6575 0    51   ~ 0
DIQ2_D9
Text Label 6950 6675 0    51   ~ 0
DIQ2_D10
Text Label 6950 6775 0    51   ~ 0
DIQ2_D11
Text Label 6925 3275 0    51   ~ 0
DIQ1_D0
Text Label 6925 3375 0    51   ~ 0
DIQ1_D1
Text Label 6925 3475 0    51   ~ 0
DIQ1_D2
Text Label 6925 3575 0    51   ~ 0
DIQ1_D3
Text Label 6925 3675 0    51   ~ 0
DIQ1_D4
Text Label 6925 3775 0    51   ~ 0
DIQ1_D5
Text Label 6925 3875 0    51   ~ 0
DIQ1_D6
Text Label 6925 3975 0    51   ~ 0
DIQ1_D7
Text Label 6925 4075 0    51   ~ 0
DIQ1_D8
Text Label 6925 4175 0    51   ~ 0
DIQ1_D9
Text Label 6925 4275 0    51   ~ 0
DIQ1_D10
Text Label 6925 4375 0    51   ~ 0
DIQ1_D11
Text Label 6950 5875 0    51   ~ 0
DIQ2_D2
Entry Wire Line
	7275 3275 7375 3175
Entry Wire Line
	7275 3375 7375 3275
Entry Wire Line
	7275 3475 7375 3375
Entry Wire Line
	7275 3575 7375 3475
Entry Wire Line
	7275 3675 7375 3575
Entry Wire Line
	7275 3775 7375 3675
Entry Wire Line
	7275 3875 7375 3775
Entry Wire Line
	7275 3975 7375 3875
Entry Wire Line
	7275 4075 7375 3975
Entry Wire Line
	7275 4175 7375 4075
Entry Wire Line
	7275 4275 7375 4175
Entry Wire Line
	7275 4375 7375 4275
Entry Wire Line
	7300 5675 7400 5575
Entry Wire Line
	7300 5775 7400 5675
Entry Wire Line
	7300 5875 7400 5775
Entry Wire Line
	7300 5975 7400 5875
Entry Wire Line
	7300 6075 7400 5975
Entry Wire Line
	7300 6175 7400 6075
Entry Wire Line
	7300 6275 7400 6175
Entry Wire Line
	7300 6375 7400 6275
Entry Wire Line
	7300 6475 7400 6375
Entry Wire Line
	7300 6575 7400 6475
Entry Wire Line
	7300 6675 7400 6575
Entry Wire Line
	7300 6775 7400 6675
Text HLabel 7275 3100 0    51   Input ~ 0
DIQ1_D[0..11]
Text HLabel 7300 5525 0    51   Output ~ 0
DIQ2_D[0..11]
Text Notes 6900 2900 0    79   ~ 0
TX DAC
Text Notes 6900 5350 0    79   ~ 0
RX ADC
Text GLabel 3025 7150 0    43   BiDi ~ 0
LMS_SPI_MOSI
Text GLabel 3025 7650 0    43   Input ~ 0
LMS_SPI_SCK
Text GLabel 3025 7250 0    43   BiDi ~ 0
LMS_SPI_MISO
Text GLabel 3025 7750 0    43   Input ~ 0
LMS_SPI_CS
Text GLabel 5200 7850 2    43   Input ~ 0
CLK_IN
Wire Wire Line
	4975 4350 5450 4350
Wire Wire Line
	4975 4450 5450 4450
Wire Wire Line
	4975 4150 5175 4150
Wire Wire Line
	4975 4650 5450 4650
Wire Wire Line
	5375 5450 4975 5450
Wire Wire Line
	4975 5250 5475 5250
Wire Wire Line
	4975 5150 5475 5150
Wire Wire Line
	4975 5050 5475 5050
Wire Wire Line
	5175 8050 4975 8050
Wire Wire Line
	2925 5250 3375 5250
Wire Wire Line
	2925 5150 3375 5150
Wire Wire Line
	2925 5050 3375 5050
Wire Wire Line
	2925 4650 3375 4650
Wire Wire Line
	2925 4450 3375 4450
Wire Wire Line
	2925 4350 3375 4350
Wire Wire Line
	5150 2725 5150 3050
Wire Wire Line
	5150 3050 4975 3050
Wire Wire Line
	4975 2950 5150 2950
Connection ~ 5150 2950
Wire Wire Line
	3175 3050 3375 3050
Wire Wire Line
	3175 2725 3175 3050
Wire Wire Line
	3375 2950 3175 2950
Connection ~ 3175 2950
Wire Wire Line
	2875 5650 3375 5650
Wire Wire Line
	2875 5750 3375 5750
Wire Wire Line
	2875 5950 3375 5950
Wire Wire Line
	2875 6350 3375 6350
Wire Wire Line
	2875 6550 3375 6550
Wire Wire Line
	3375 8050 3225 8050
Wire Wire Line
	4975 5650 5475 5650
Wire Wire Line
	4975 5750 5475 5750
Wire Wire Line
	4975 5950 5475 5950
Wire Wire Line
	4975 6350 5475 6350
Wire Wire Line
	4975 6450 5475 6450
Wire Wire Line
	4975 6550 5475 6550
Wire Wire Line
	3025 7050 3375 7050
Wire Wire Line
	3375 7150 3025 7150
Wire Wire Line
	3025 7250 3375 7250
Wire Wire Line
	3025 7650 3375 7650
Wire Wire Line
	3375 7750 3025 7750
Wire Wire Line
	2700 7850 3375 7850
Wire Wire Line
	3375 7950 2700 7950
Wire Wire Line
	3375 3150 3250 3150
Wire Wire Line
	3250 3150 3250 4050
Wire Wire Line
	3150 3550 3375 3550
Connection ~ 3250 3550
Wire Wire Line
	3250 3750 3375 3750
Wire Wire Line
	3250 4050 3375 4050
Connection ~ 3250 3750
Wire Wire Line
	3150 4850 3375 4850
Wire Wire Line
	3375 4550 3300 4550
Wire Wire Line
	3300 4550 3300 5350
Connection ~ 3300 4850
Wire Wire Line
	3300 5350 3375 5350
Wire Wire Line
	3150 6150 3375 6150
Wire Wire Line
	3375 5850 3300 5850
Wire Wire Line
	3300 5850 3300 6850
Connection ~ 3300 6150
Wire Wire Line
	3300 6650 3375 6650
Wire Wire Line
	3375 6750 3225 6750
Wire Wire Line
	5175 6750 4975 6750
Wire Wire Line
	3300 6850 3375 6850
Connection ~ 3300 6650
Wire Wire Line
	3150 7450 3375 7450
Wire Wire Line
	3375 8175 3250 8175
Wire Wire Line
	3250 8175 3250 8275
Wire Wire Line
	5100 8175 5100 8275
Wire Wire Line
	5100 8175 4975 8175
Wire Wire Line
	4975 3550 5200 3550
Wire Wire Line
	4975 3150 5075 3150
Wire Wire Line
	5075 3150 5075 4050
Connection ~ 5075 3550
Wire Wire Line
	5075 3750 4975 3750
Wire Wire Line
	5075 4050 4975 4050
Connection ~ 5075 3750
Wire Wire Line
	4975 4850 5200 4850
Wire Wire Line
	4975 4550 5075 4550
Wire Wire Line
	5075 4550 5075 5350
Connection ~ 5075 4850
Wire Wire Line
	5075 5350 4975 5350
Wire Wire Line
	4975 6150 5200 6150
Wire Wire Line
	4975 5850 5075 5850
Wire Wire Line
	5075 5850 5075 6950
Connection ~ 5075 6150
Wire Wire Line
	5075 6650 4975 6650
Wire Wire Line
	5075 6950 4975 6950
Connection ~ 5075 6650
Wire Wire Line
	4975 7450 5200 7450
Wire Wire Line
	4975 7750 5075 7750
Wire Wire Line
	5075 7450 5075 7950
Connection ~ 5075 7450
Wire Wire Line
	5075 7950 4975 7950
Connection ~ 5075 7750
Wire Wire Line
	2875 6450 3375 6450
Wire Wire Line
	6925 3275 7275 3275
Wire Wire Line
	6925 3375 7275 3375
Wire Wire Line
	6925 3475 7275 3475
Wire Wire Line
	6925 3575 7275 3575
Wire Wire Line
	6925 3675 7275 3675
Wire Wire Line
	6925 3775 7275 3775
Wire Wire Line
	6925 3875 7275 3875
Wire Wire Line
	6925 3975 7275 3975
Wire Wire Line
	6925 4075 7275 4075
Wire Wire Line
	6925 4175 7275 4175
Wire Wire Line
	6925 4275 7275 4275
Wire Wire Line
	6925 4375 7275 4375
Wire Wire Line
	6950 5675 7300 5675
Wire Wire Line
	6950 5775 7300 5775
Wire Wire Line
	6950 5875 7300 5875
Wire Wire Line
	6950 5975 7300 5975
Wire Wire Line
	6950 6075 7300 6075
Wire Wire Line
	6950 6175 7300 6175
Wire Wire Line
	6950 6275 7300 6275
Wire Wire Line
	6950 6375 7300 6375
Wire Wire Line
	6950 6475 7300 6475
Wire Wire Line
	6950 6575 7300 6575
Wire Wire Line
	6950 6675 7300 6675
Wire Wire Line
	6950 6775 7300 6775
Wire Bus Line
	7400 5525 7400 6700
Wire Bus Line
	7375 3100 7375 4275
Wire Bus Line
	7375 3100 7275 3100
Wire Bus Line
	7400 5525 7300 5525
Wire Wire Line
	4975 7050 5200 7050
Wire Wire Line
	5200 7150 4975 7150
Wire Wire Line
	4975 7250 5200 7250
Wire Wire Line
	5200 7650 4975 7650
Wire Wire Line
	4975 7850 5200 7850
Text Label 6875 8000 0    51   ~ 0
LMS_GPIO0
Text Label 6875 8100 0    51   ~ 0
LMS_GPIO1
Text Label 6875 8200 0    51   ~ 0
LMS_GPIO2
Text Label 6875 8300 0    51   ~ 0
LMS_GPIO3
Entry Wire Line
	7325 8000 7425 7900
Entry Wire Line
	7325 8100 7425 8000
Entry Wire Line
	7325 8200 7425 8100
Entry Wire Line
	7325 8300 7425 8200
Wire Wire Line
	6875 8000 7325 8000
Wire Wire Line
	6875 8100 7325 8100
Wire Wire Line
	6875 8200 7325 8200
Wire Wire Line
	6875 8300 7325 8300
Text HLabel 7325 7800 0    51   BiDi ~ 0
LMS_GPIO[0..3]
Text Notes 6800 7725 0    79   ~ 0
LMS GPIO
Wire Bus Line
	7325 7800 7425 7800
Wire Bus Line
	7425 7800 7425 8200
Text Label 5650 7050 2    51   ~ 0
LMS_GPIO0
Text Label 5650 7150 2    51   ~ 0
LMS_GPIO1
Text Label 5650 7250 2    51   ~ 0
LMS_GPIO2
Text Label 5650 7650 2    51   ~ 0
LMS_GPIO3
Wire Wire Line
	5650 7050 5200 7050
Wire Wire Line
	5650 7150 5200 7150
Wire Wire Line
	5650 7250 5200 7250
Wire Wire Line
	5650 7650 5200 7650
$Comp
L VCC5_M VCC5_M?
U 1 1 539DC890
P 3175 2725
F 0 "VCC5_M?" H 3175 2675 20  0001 C CNN
F 1 "VCC5_M" H 3175 2850 50  0000 C CNN
F 2 "~" H 3175 2725 60  0000 C CNN
F 3 "~" H 3175 2725 60  0000 C CNN
	1    3175 2725
	1    0    0    -1  
$EndComp
$Comp
L VCC5_M VCC5_M?
U 1 1 539DC89F
P 5150 2725
F 0 "VCC5_M?" H 5150 2675 20  0001 C CNN
F 1 "VCC5_M" H 5150 2850 50  0000 C CNN
F 2 "~" H 5150 2725 60  0000 C CNN
F 3 "~" H 5150 2725 60  0000 C CNN
	1    5150 2725
	1    0    0    -1  
$EndComp
$EndSCHEMATC
