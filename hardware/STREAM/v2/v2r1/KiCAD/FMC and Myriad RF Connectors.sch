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
$Descr A4 11693 8268
encoding utf-8
Sheet 17 20
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
L GND #PWR?
U 1 1 536164F0
P 8725 4825
F 0 "#PWR?" H 8725 4925 40  0001 C CNN
F 1 "GND" H 8725 4755 40  0000 C CNN
F 2 "~" H 8725 4825 60  0000 C CNN
F 3 "~" H 8725 4825 60  0000 C CNN
	1    8725 4825
	1    0    0    -1  
$EndComp
$Comp
L 0R_0402_NF R?
U 1 1 5361C3BE
P 5525 1900
F 0 "R?" V 5575 2225 50  0000 C CNN
F 1 "0R_0402_NF" V 5350 1875 50  0001 C CNN
F 2 "R_SM0402" V 5275 1850 60  0001 C CNN
F 3 "~" H 5525 1900 60  0000 C CNN
F 4 "Digi-Key" V 5705 2000 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5805 2100 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5905 2200 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6005 2300 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6105 2400 60  0001 C CNN "Description"
F 9 "0R" V 5535 1955 50  0000 C CNN "Component Value"
F 10 "NF" V 5535 1805 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6250 2600 60  0001 C CNN "Assemble"
	1    5525 1900
	0    -1   1    0   
$EndComp
Text GLabel 5775 1500 0    43   Output ~ 0
LMS_SyntCLK1
Text GLabel 5775 1600 0    43   Output ~ 0
LMS_SyntCLK2
Text GLabel 4825 4200 0    43   Output ~ 0
LMS_SPI_CS
Text GLabel 5150 1900 0    43   BiDi ~ 0
LMS_SPI_MISO
Text GLabel 5125 3300 0    43   Output ~ 0
LMS_RESET
Text GLabel 5150 3500 0    43   BiDi ~ 0
LMS_SPI_MOSI
Text GLabel 7550 2900 2    43   Output ~ 0
LMS_SBEN
Text GLabel 5150 2300 0    43   Input ~ 0
LMS_SPI_SCK
Text GLabel 7025 2400 2    43   Output ~ 0
MCLK1
Text GLabel 5775 2800 0    43   Input ~ 0
FCLK2
Text GLabel 5400 4000 0    43   BiDi ~ 0
TXNRX1
Text GLabel 7400 2200 2    43   BiDi ~ 0
TXNRX2
Text GLabel 5775 2200 0    43   Input ~ 0
INTR
Text GLabel 5775 2700 0    43   Input ~ 0
LMS_dio_buff_oe
Text GLabel 5775 2000 0    43   Input ~ 0
DIG_RST
Text GLabel 5775 2400 0    43   Input ~ 0
LMS_g_pwr_dwn
Text GLabel 5775 1700 0    43   Input ~ 0
LMS_iqsel2_dir
Text GLabel 5775 3400 0    43   Input ~ 0
LMS_iqsel1_dir
Text GLabel 5775 3100 0    43   Output ~ 0
MCLK2
Text GLabel 5775 1800 0    43   Input ~ 0
LMS_dio_dir_ctrl1
Text GLabel 5425 3600 0    43   Input ~ 0
LMS_dio_dir_ctrl2
Text GLabel 7400 3100 2    43   Input ~ 0
FCLK1
$Comp
L 0R_0402_NF R?
U 1 1 538821AC
P 5525 2300
F 0 "R?" V 5575 2625 50  0000 C CNN
F 1 "0R_0402_NF" V 5350 2275 50  0001 C CNN
F 2 "R_SM0402" V 5275 2250 60  0001 C CNN
F 3 "~" H 5525 2300 60  0000 C CNN
F 4 "Digi-Key" V 5705 2400 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5805 2500 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5905 2600 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6005 2700 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6105 2800 60  0001 C CNN "Description"
F 9 "0R" V 5535 2355 50  0000 C CNN "Component Value"
F 10 "NF" V 5535 2205 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6250 3000 60  0001 C CNN "Assemble"
	1    5525 2300
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R?
U 1 1 53886B34
P 5550 3300
F 0 "R?" V 5525 3625 50  0000 C CNN
F 1 "0R_0402_NF" V 5375 3275 50  0001 C CNN
F 2 "R_SM0402" V 5300 3250 60  0001 C CNN
F 3 "~" H 5550 3300 60  0000 C CNN
F 4 "Digi-Key" V 5730 3400 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5830 3500 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5930 3600 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6030 3700 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6130 3800 60  0001 C CNN "Description"
F 9 "0R" V 5560 3355 50  0000 C CNN "Component Value"
F 10 "NF" V 5560 3205 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6275 4000 60  0001 C CNN "Assemble"
	1    5550 3300
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R?
U 1 1 53886C18
P 5550 3500
F 0 "R?" V 5525 3825 50  0000 C CNN
F 1 "0R_0402_NF" V 5375 3475 50  0001 C CNN
F 2 "R_SM0402" V 5300 3450 60  0001 C CNN
F 3 "~" H 5550 3500 60  0000 C CNN
F 4 "Digi-Key" V 5730 3600 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5830 3700 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5930 3800 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6030 3900 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6130 4000 60  0001 C CNN "Description"
F 9 "0R" V 5560 3555 50  0000 C CNN "Component Value"
F 10 "NF" V 5560 3405 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6275 4200 60  0001 C CNN "Assemble"
	1    5550 3500
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R?
U 1 1 53889D3F
P 5200 4200
F 0 "R?" V 5175 4525 50  0000 C CNN
F 1 "0R_0402_NF" V 5025 4175 50  0001 C CNN
F 2 "R_SM0402" V 4950 4150 60  0001 C CNN
F 3 "~" H 5200 4200 60  0000 C CNN
F 4 "Digi-Key" V 5380 4300 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5480 4400 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5580 4500 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 5680 4600 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 5780 4700 60  0001 C CNN "Description"
F 9 "0R" V 5210 4255 50  0000 C CNN "Component Value"
F 10 "NF" V 5210 4105 50  0000 C CNN "Placement"
F 11 "NOFIT" V 5925 4900 60  0001 C CNN "Assemble"
	1    5200 4200
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R?
U 1 1 5389492E
P 7250 2900
F 0 "R?" V 7225 2700 50  0000 C CNN
F 1 "0R_0402_NF" V 7075 2875 50  0001 C CNN
F 2 "R_SM0402" V 7000 2850 60  0001 C CNN
F 3 "~" H 7250 2900 60  0000 C CNN
F 4 "Digi-Key" V 7430 3000 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 7530 3100 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 7630 3200 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 7730 3300 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 7830 3400 60  0001 C CNN "Description"
F 9 "0R" V 7260 2955 50  0000 C CNN "Component Value"
F 10 "NF" V 7260 2805 50  0000 C CNN "Placement"
F 11 "NOFIT" V 7975 3600 60  0001 C CNN "Assemble"
	1    7250 2900
	0    -1   1    0   
$EndComp
Text GLabel 9000 2975 0    43   Input ~ 0
LMS_I2C_DATA
Text GLabel 9000 3075 0    43   Input ~ 0
LMS_I2C_CLK
$Comp
L 10K_0402 R?
U 1 1 5389E2F5
P 8725 4450
F 0 "R?" V 8725 4550 50  0000 C CNN
F 1 "10K_0402" H 8715 4670 50  0001 C CNN
F 2 "R_SM0402" H 8725 4750 60  0001 C CNN
F 3 "~" V 8725 4450 60  0000 C CNN
F 4 "Digi-Key" H 8725 5160 60  0001 C CNN "Vendor"
F 5 "311-330JRCT-ND" H 8735 5260 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8715 5070 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-07330RL" H 8685 4970 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 330 OHM, 1/16W, 5%, 0402, SMD," H 8705 4860 60  0001 C CNN "Description"
F 9 "10K" H 8735 4450 50  0000 C CNN "Component Value"
	1    8725 4450
	0    1    1    0   
$EndComp
$Comp
L 10K_0402_NF R?
U 1 1 5389E328
P 8725 3650
F 0 "R?" V 8650 3750 50  0000 C CNN
F 1 "10K_0402_NF" H 8765 3790 50  0001 C CNN
F 2 "R_SM0402" H 8735 3870 60  0001 C CNN
F 3 "~" V 8745 3620 60  0000 C CNN
F 4 "Digi-Key" H 8715 4250 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 8715 4360 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8715 4160 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 8705 4070 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 10.0K OHM, 1/16W, 1%, 0402, SMD," H 8735 3980 60  0001 C CNN "Description"
F 9 "10K" H 8730 3645 50  0000 C CNN "Component Value"
F 10 "NF" V 8825 3750 50  0000 C CNN "Install"
F 11 "NOFIT" H 8735 4450 60  0001 C CNN "Assemble"
	1    8725 3650
	0    1    1    0   
$EndComp
$Comp
L 10K_0402 R?
U 1 1 5389E3F1
P 8950 4450
F 0 "R?" V 8950 4550 50  0000 C CNN
F 1 "10K_0402" H 8940 4670 50  0001 C CNN
F 2 "R_SM0402" H 8950 4750 60  0001 C CNN
F 3 "~" V 8950 4450 60  0000 C CNN
F 4 "Digi-Key" H 8950 5160 60  0001 C CNN "Vendor"
F 5 "311-330JRCT-ND" H 8960 5260 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8940 5070 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-07330RL" H 8910 4970 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 330 OHM, 1/16W, 5%, 0402, SMD," H 8930 4860 60  0001 C CNN "Description"
F 9 "10K" H 8960 4450 50  0000 C CNN "Component Value"
	1    8950 4450
	0    1    1    0   
$EndComp
$Comp
L 10K_0402_NF R?
U 1 1 5389E3FF
P 8950 3650
F 0 "R?" V 8900 3750 50  0000 C CNN
F 1 "10K_0402_NF" H 8990 3790 50  0001 C CNN
F 2 "R_SM0402" H 8960 3870 60  0001 C CNN
F 3 "~" V 8970 3620 60  0000 C CNN
F 4 "Digi-Key" H 8940 4250 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 8940 4360 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8940 4160 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 8930 4070 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 10.0K OHM, 1/16W, 1%, 0402, SMD," H 8960 3980 60  0001 C CNN "Description"
F 9 "10K" H 8955 3645 50  0000 C CNN "Component Value"
F 10 "NF" V 9050 3750 50  0000 C CNN "Install"
F 11 "NOFIT" H 8960 4450 60  0001 C CNN "Assemble"
	1    8950 3650
	0    1    1    0   
$EndComp
$Comp
L 0R_0402_NF R?
U 1 1 5389E455
P 10575 1575
F 0 "R?" V 10500 1675 50  0000 C CNN
F 1 "0R_0402_NF" V 10400 1550 50  0001 C CNN
F 2 "R_SM0402" V 10325 1525 60  0001 C CNN
F 3 "~" H 10575 1575 60  0000 C CNN
F 4 "Digi-Key" V 10755 1675 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 10855 1775 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 10955 1875 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 11055 1975 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 11155 2075 60  0001 C CNN "Description"
F 9 "0R" V 10585 1580 50  0000 C CNN "Component Value"
	1    10575 1575
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5389E7FB
P 8950 4825
F 0 "#PWR?" H 8950 4925 40  0001 C CNN
F 1 "GND" H 8950 4755 40  0000 C CNN
F 2 "~" H 8950 4825 60  0000 C CNN
F 3 "~" H 8950 4825 60  0000 C CNN
	1    8950 4825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 538A0449
P 10775 6000
F 0 "#PWR?" H 10775 6100 40  0001 C CNN
F 1 "GND" H 10775 5930 40  0000 C CNN
F 2 "~" H 10775 6000 60  0000 C CNN
F 3 "~" H 10775 6000 60  0000 C CNN
	1    10775 6000
	0    -1   1    0   
$EndComp
Text Label 6025 6050 0    51   ~ 0
DIQ2_D0
Text Label 6025 6150 0    51   ~ 0
DIQ2_D1
Text Label 6025 6350 0    51   ~ 0
DIQ2_D3
Text Label 6025 6450 0    51   ~ 0
DIQ2_D4
Text Label 6025 6550 0    51   ~ 0
DIQ2_D5
Text Label 6025 6650 0    51   ~ 0
DIQ2_D6
Text Label 6025 6750 0    51   ~ 0
DIQ2_D7
Text Label 6025 6850 0    51   ~ 0
DIQ2_D8
Text Label 6025 6950 0    51   ~ 0
DIQ2_D9
Text Label 6025 7050 0    51   ~ 0
DIQ2_D10
Text Label 6025 7150 0    51   ~ 0
DIQ2_D11
Text Label 5000 6050 0    51   ~ 0
DIQ1_D0
Text Label 5000 6150 0    51   ~ 0
DIQ1_D1
Text Label 5000 6250 0    51   ~ 0
DIQ1_D2
Text Label 5000 6350 0    51   ~ 0
DIQ1_D3
Text Label 5000 6450 0    51   ~ 0
DIQ1_D4
Text Label 5000 6550 0    51   ~ 0
DIQ1_D5
Text Label 5000 6650 0    51   ~ 0
DIQ1_D6
Text Label 5000 6750 0    51   ~ 0
DIQ1_D7
Text Label 5000 6850 0    51   ~ 0
DIQ1_D8
Text Label 5000 6950 0    51   ~ 0
DIQ1_D9
Text Label 5000 7050 0    51   ~ 0
DIQ1_D10
Text Label 5000 7150 0    51   ~ 0
DIQ1_D11
Text Label 6025 6250 0    51   ~ 0
DIQ2_D2
Entry Wire Line
	5350 6050 5450 5950
Entry Wire Line
	5350 6150 5450 6050
Entry Wire Line
	5350 6250 5450 6150
Entry Wire Line
	5350 6350 5450 6250
Entry Wire Line
	5350 6450 5450 6350
Entry Wire Line
	5350 6550 5450 6450
Entry Wire Line
	5350 6650 5450 6550
Entry Wire Line
	5350 6750 5450 6650
Entry Wire Line
	5350 6850 5450 6750
Entry Wire Line
	5350 6950 5450 6850
Entry Wire Line
	5350 7050 5450 6950
Entry Wire Line
	5350 7150 5450 7050
Entry Wire Line
	6375 6050 6475 5950
Entry Wire Line
	6375 6150 6475 6050
Entry Wire Line
	6375 6250 6475 6150
Entry Wire Line
	6375 6350 6475 6250
Entry Wire Line
	6375 6450 6475 6350
Entry Wire Line
	6375 6550 6475 6450
Entry Wire Line
	6375 6650 6475 6550
Entry Wire Line
	6375 6750 6475 6650
Entry Wire Line
	6375 6850 6475 6750
Entry Wire Line
	6375 6950 6475 6850
Entry Wire Line
	6375 7050 6475 6950
Entry Wire Line
	6375 7150 6475 7050
Text HLabel 5350 5875 0    51   Input ~ 0
DIQ1_D[0..11]
Text HLabel 6375 5900 0    51   Output ~ 0
DIQ2_D[0..11]
Text Label 7400 4900 2    51   ~ 0
DIQ1_D0
Text Label 7400 5100 2    51   ~ 0
DIQ1_D1
Text Label 7400 4800 2    51   ~ 0
DIQ1_D2
Text Label 7400 5000 2    51   ~ 0
DIQ1_D3
Text Label 7400 4500 2    51   ~ 0
DIQ1_D4
Text Label 7400 4600 2    51   ~ 0
DIQ1_D5
Text Label 7400 4100 2    51   ~ 0
DIQ1_D6
Text Label 7400 4300 2    51   ~ 0
DIQ1_D7
Text Label 7400 4000 2    51   ~ 0
DIQ1_D8
Text Label 7400 4200 2    51   ~ 0
DIQ1_D9
Text Label 7400 3200 2    51   ~ 0
DIQ1_D10
Text Label 7400 3400 2    51   ~ 0
DIQ1_D11
Text Label 7400 2600 2    51   ~ 0
DIQ2_D0
Text Label 7400 2700 2    51   ~ 0
DIQ2_D1
Text Label 7400 1900 2    51   ~ 0
DIQ2_D3
Text Label 5425 4700 0    51   ~ 0
DIQ2_D4
Text Label 7400 2300 2    51   ~ 0
DIQ2_D5
Text Label 7400 1400 2    51   ~ 0
DIQ2_D6
Text Label 5425 4600 0    51   ~ 0
DIQ2_D7
Text Label 5425 3800 0    51   ~ 0
DIQ2_D8
Text Label 7400 1300 2    51   ~ 0
DIQ2_D9
Text Label 5425 4100 0    51   ~ 0
DIQ2_D10
Text Label 5425 3700 0    51   ~ 0
DIQ2_D11
Text Label 7400 2000 2    51   ~ 0
DIQ2_D2
Text GLabel 5775 3200 0    43   Input ~ 0
IQSEL_Enable2
Text Notes 4975 5775 0    79   ~ 0
TX DAC
Text Notes 5975 5825 0    79   ~ 0
RX ADC
Text GLabel 7425 2500 2    43   Input ~ 0
IQSEL_Enable1
Wire Wire Line
	5850 1500 5775 1500
Wire Wire Line
	5775 1600 5850 1600
Wire Wire Line
	5850 1700 5775 1700
Wire Wire Line
	5775 1800 5850 1800
Wire Wire Line
	5850 1900 5775 1900
Wire Wire Line
	5275 1900 5150 1900
Wire Wire Line
	5850 2000 5775 2000
Wire Wire Line
	5850 2200 5775 2200
Wire Wire Line
	5850 2300 5775 2300
Wire Wire Line
	5275 2300 5150 2300
Wire Wire Line
	5850 2400 5775 2400
Wire Wire Line
	5850 2700 5775 2700
Wire Wire Line
	5775 2800 5850 2800
Wire Wire Line
	5850 2900 5775 2900
Wire Wire Line
	5850 3100 5775 3100
Wire Wire Line
	5850 3200 5775 3200
Wire Wire Line
	5850 3300 5800 3300
Wire Wire Line
	5300 3300 5125 3300
Wire Wire Line
	5775 3400 5850 3400
Wire Wire Line
	5800 3500 5850 3500
Wire Wire Line
	5150 3500 5300 3500
Wire Wire Line
	5425 3600 5850 3600
Wire Wire Line
	5425 3700 5850 3700
Wire Wire Line
	5425 3800 5850 3800
Wire Wire Line
	5400 4000 5850 4000
Wire Wire Line
	5425 4100 5850 4100
Wire Wire Line
	4950 4200 4825 4200
Wire Wire Line
	5450 4200 5850 4200
Wire Wire Line
	5375 4300 5850 4300
Wire Wire Line
	5375 4400 5850 4400
Wire Wire Line
	5375 4500 5850 4500
Wire Wire Line
	5425 4600 5850 4600
Wire Wire Line
	5425 4700 5850 4700
Wire Wire Line
	6950 1300 7400 1300
Wire Wire Line
	6950 1400 7400 1400
Wire Wire Line
	6950 1500 7400 1500
Wire Wire Line
	6950 1600 7400 1600
Wire Wire Line
	6950 2000 7400 2000
Wire Wire Line
	6950 1900 7400 1900
Wire Wire Line
	6950 2300 7400 2300
Wire Wire Line
	6950 2700 7400 2700
Wire Wire Line
	6950 2600 7400 2600
Wire Wire Line
	6950 2800 7400 2800
Wire Wire Line
	7000 2900 6950 2900
Wire Wire Line
	7550 2900 7500 2900
Wire Wire Line
	6950 3100 7400 3100
Wire Wire Line
	6950 3300 7400 3300
Wire Wire Line
	6950 3200 7400 3200
Wire Wire Line
	6950 3400 7400 3400
Wire Wire Line
	6950 3500 7400 3500
Wire Wire Line
	6950 3600 7400 3600
Wire Wire Line
	7025 2400 6950 2400
Wire Wire Line
	6950 2500 7425 2500
Wire Wire Line
	6950 2200 7400 2200
Wire Wire Line
	6950 5100 7400 5100
Wire Wire Line
	6950 5000 7400 5000
Wire Wire Line
	6950 4900 7400 4900
Wire Wire Line
	6950 4800 7400 4800
Wire Wire Line
	6950 4600 7400 4600
Wire Wire Line
	6950 4500 7400 4500
Wire Wire Line
	6950 4300 7400 4300
Wire Wire Line
	6950 4200 7400 4200
Wire Wire Line
	6950 4100 7400 4100
Wire Wire Line
	6950 4000 7400 4000
Wire Wire Line
	9125 2975 9000 2975
Wire Wire Line
	9000 3075 9125 3075
Wire Wire Line
	10325 1575 10225 1575
Wire Wire Line
	10275 1575 10275 1875
Wire Wire Line
	10275 1675 10225 1675
Connection ~ 10275 1575
Wire Wire Line
	10275 1775 10225 1775
Connection ~ 10275 1675
Wire Wire Line
	10275 1875 10225 1875
Connection ~ 10275 1775
Wire Wire Line
	10900 1475 10900 1575
Wire Wire Line
	10900 1575 10825 1575
Wire Wire Line
	8425 3300 8950 3300
Wire Wire Line
	8950 3300 8950 3400
Connection ~ 8725 3300
Wire Wire Line
	8950 4700 8950 4775
Wire Wire Line
	8725 4700 8725 4775
Wire Wire Line
	8950 3900 8950 4200
Wire Wire Line
	8725 3900 8725 4200
Connection ~ 8725 4075
Connection ~ 8950 3975
Wire Wire Line
	7725 6075 7725 6000
Connection ~ 7725 6000
Wire Wire Line
	9025 6075 9025 6000
Connection ~ 9025 6000
Wire Wire Line
	10125 6075 10125 6000
Connection ~ 10125 6000
Wire Wire Line
	10025 6075 10025 6000
Connection ~ 10025 6000
Wire Wire Line
	9925 6075 9925 6000
Connection ~ 9925 6000
Wire Wire Line
	9825 6075 9825 6000
Connection ~ 9825 6000
Wire Wire Line
	9725 6075 9725 6000
Connection ~ 9725 6000
Wire Wire Line
	8725 6075 8725 6000
Connection ~ 8725 6000
Wire Wire Line
	8625 6075 8625 6000
Connection ~ 8625 6000
Wire Wire Line
	8525 6075 8525 6000
Connection ~ 8525 6000
Wire Wire Line
	8425 6075 8425 6000
Connection ~ 8425 6000
Wire Wire Line
	8325 6075 8325 6000
Connection ~ 8325 6000
Wire Wire Line
	8225 6075 8225 6000
Connection ~ 8225 6000
Wire Wire Line
	8125 6075 8125 6000
Connection ~ 8125 6000
Wire Wire Line
	8025 6075 8025 6000
Connection ~ 8025 6000
Wire Wire Line
	7925 6075 7925 6000
Connection ~ 7925 6000
Wire Wire Line
	7825 6075 7825 6000
Connection ~ 7825 6000
Wire Wire Line
	8925 6075 8925 6000
Connection ~ 8925 6000
Wire Wire Line
	8825 6075 8825 6000
Connection ~ 8825 6000
Wire Wire Line
	9625 6075 9625 6000
Connection ~ 9625 6000
Wire Wire Line
	9525 6075 9525 6000
Connection ~ 9525 6000
Wire Wire Line
	9425 6075 9425 6000
Connection ~ 9425 6000
Wire Wire Line
	9325 6075 9325 6000
Connection ~ 9325 6000
Wire Wire Line
	9225 6075 9225 6000
Connection ~ 9225 6000
Wire Wire Line
	9125 6075 9125 6000
Connection ~ 9125 6000
Wire Wire Line
	7525 6075 7525 6000
Connection ~ 7525 6000
Wire Wire Line
	7425 6075 7425 6000
Wire Wire Line
	7625 6075 7625 6000
Connection ~ 7625 6000
Wire Wire Line
	5000 6050 5350 6050
Wire Wire Line
	5000 6150 5350 6150
Wire Wire Line
	5000 6250 5350 6250
Wire Wire Line
	5000 6350 5350 6350
Wire Wire Line
	5000 6450 5350 6450
Wire Wire Line
	5000 6550 5350 6550
Wire Wire Line
	5000 6650 5350 6650
Wire Wire Line
	5000 6750 5350 6750
Wire Wire Line
	5000 6850 5350 6850
Wire Wire Line
	5000 6950 5350 6950
Wire Wire Line
	5000 7050 5350 7050
Wire Wire Line
	5000 7150 5350 7150
Wire Wire Line
	6025 6050 6375 6050
Wire Wire Line
	6025 6150 6375 6150
Wire Wire Line
	6025 6250 6375 6250
Wire Wire Line
	6025 6350 6375 6350
Wire Wire Line
	6025 6450 6375 6450
Wire Wire Line
	6025 6550 6375 6550
Wire Wire Line
	6025 6650 6375 6650
Wire Wire Line
	6025 6750 6375 6750
Wire Wire Line
	6025 6850 6375 6850
Wire Wire Line
	6025 6950 6375 6950
Wire Wire Line
	6025 7050 6375 7050
Wire Wire Line
	6025 7150 6375 7150
Wire Bus Line
	6475 5900 6475 7075
Wire Bus Line
	5450 5875 5450 7050
Wire Bus Line
	5450 5875 5350 5875
Wire Bus Line
	6475 5900 6375 5900
Text GLabel 5775 2900 0    43   Input ~ 0
LMS_RXEN
Text GLabel 7400 3300 2    43   Input ~ 0
LMS_TXEN
Text Label 9475 4950 0    51   ~ 0
LMS_GPIO0
Text Label 9475 5050 0    51   ~ 0
LMS_GPIO1
Text Label 9475 5150 0    51   ~ 0
LMS_GPIO2
Text Label 9475 5250 0    51   ~ 0
LMS_GPIO3
Text Label 9475 5350 0    51   ~ 0
LMS_GPIO4
Text Label 9475 5450 0    51   ~ 0
LMS_GPIO5
Text Label 9475 5550 0    51   ~ 0
LMS_GPIO6
Text Label 9475 5650 0    51   ~ 0
LMS_GPIO7
Text Label 5375 4300 0    51   ~ 0
LMS_GPIO0
Text Label 5375 4500 0    51   ~ 0
LMS_GPIO1
Text Label 5375 4400 0    51   ~ 0
LMS_GPIO2
Text Label 7400 1500 2    51   ~ 0
LMS_GPIO3
Text Label 7400 1600 2    51   ~ 0
LMS_GPIO4
Text Label 7400 2800 2    51   ~ 0
LMS_GPIO5
Text Label 7400 3500 2    51   ~ 0
LMS_GPIO6
Text Label 7400 3600 2    51   ~ 0
LMS_GPIO7
Entry Wire Line
	9925 4950 10025 4850
Entry Wire Line
	9925 5050 10025 4950
Entry Wire Line
	9925 5150 10025 5050
Entry Wire Line
	9925 5250 10025 5150
Entry Wire Line
	9925 5350 10025 5250
Entry Wire Line
	9925 5450 10025 5350
Entry Wire Line
	9925 5550 10025 5450
Entry Wire Line
	9925 5650 10025 5550
Wire Wire Line
	9475 4950 9925 4950
Wire Wire Line
	9475 5050 9925 5050
Wire Wire Line
	9475 5150 9925 5150
Wire Wire Line
	9475 5250 9925 5250
Wire Wire Line
	9475 5350 9925 5350
Wire Wire Line
	9475 5450 9925 5450
Wire Wire Line
	9475 5550 9925 5550
Wire Wire Line
	9475 5650 9925 5650
Text HLabel 9925 4750 0    51   BiDi ~ 0
LMS_GPIO[0..7]
Text Notes 9400 4675 0    79   ~ 0
LMS GPIO
Wire Bus Line
	9925 4750 10025 4750
Wire Bus Line
	10025 4750 10025 5550
$Comp
L VCC12_FMC VCC12_FMC?
U 1 1 539DAA6A
P 8700 1825
F 0 "VCC12_FMC?" H 8700 1775 20  0001 C CNN
F 1 "VCC12_FMC" H 8700 1950 50  0000 C CNN
F 2 "~" H 8700 1825 60  0000 C CNN
F 3 "~" H 8700 1825 60  0000 C CNN
	1    8700 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2075 8700 2375
Wire Wire Line
	8700 2275 9125 2275
Wire Wire Line
	8700 2375 9125 2375
Connection ~ 8700 2275
$Comp
L PINHEADER_1X2_TH J?
U 1 1 53A3DFBF
P 8500 2025
F 0 "J?" H 8520 2165 60  0000 C CNN
F 1 "PINHEADER_1X2_TH" H 8540 2275 60  0001 C CNN
F 2 "Pinhead_1x2_TH" H 8530 2375 60  0001 C CNN
F 3 "~" H 8500 2025 60  0000 C CNN
F 4 "5-146285-2" H 8530 2605 60  0001 C CNN "Manufacturer Part Number"
F 5 "5-146285-2-ND" H 8510 2935 60  0001 C CNN "Vendor Part Number"
F 6 "CONN, HEADR, BRKWAY, .100 2POS, STR," H 8540 2495 60  0001 C CNN "Description"
F 7 "Digi-Key" H 8490 2825 60  0001 C CNN "Vendor"
F 8 "TE Connectivity" H 8510 2715 60  0001 C CNN "Manufacturer"
F 9 "PinH_2_TH" V 8400 2025 60  0001 C CNN "Component Value"
	1    8500 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2075 8700 2075
Wire Wire Line
	8650 1975 8700 1975
Wire Wire Line
	8700 1975 8700 1825
$Comp
L VCC3P3_FMC VCC3P3_FMC?
U 1 1 53A4011B
P 10900 1475
F 0 "VCC3P3_FMC?" H 10900 1425 20  0001 C CNN
F 1 "VCC3P3_FMC" H 10900 1600 50  0000 C CNN
F 2 "~" H 10900 1475 60  0000 C CNN
F 3 "~" H 10900 1475 60  0000 C CNN
	1    10900 1475
	1    0    0    -1  
$EndComp
$Comp
L VCC3P3_FMC VCC3P3_FMC?
U 1 1 53A41EE3
P 8425 3300
F 0 "VCC3P3_FMC?" H 8425 3250 20  0001 C CNN
F 1 "VCC3P3_FMC" V 8500 3375 50  0000 C CNN
F 2 "~" H 8425 3300 60  0000 C CNN
F 3 "~" H 8425 3300 60  0000 C CNN
	1    8425 3300
	0    -1   -1   0   
$EndComp
NoConn ~ 5850 1300
NoConn ~ 5850 1400
NoConn ~ 6950 1700
NoConn ~ 6950 1800
NoConn ~ 5850 2500
NoConn ~ 5850 2600
NoConn ~ 6950 4700
NoConn ~ 6950 4400
NoConn ~ 6950 3700
NoConn ~ 6950 3800
NoConn ~ 9125 1575
NoConn ~ 9125 1775
NoConn ~ 9125 1875
NoConn ~ 9125 1975
NoConn ~ 9125 2075
NoConn ~ 9125 2575
NoConn ~ 9125 2775
NoConn ~ 9125 3275
NoConn ~ 9125 3375
NoConn ~ 9125 3475
NoConn ~ 9125 3575
NoConn ~ 9125 3775
$Comp
L GND #PWR?
U 1 1 53A30D2A
P 10300 4200
F 0 "#PWR?" H 10300 4300 40  0001 C CNN
F 1 "GND" H 10300 4130 40  0000 C CNN
F 2 "~" H 10300 4200 60  0000 C CNN
F 3 "~" H 10300 4200 60  0000 C CNN
	1    10300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4075 10300 4150
Wire Wire Line
	10300 4075 10225 4075
NoConn ~ 10225 3875
NoConn ~ 10225 3675
NoConn ~ 10225 3575
NoConn ~ 10225 3475
NoConn ~ 10225 3375
NoConn ~ 10225 3175
NoConn ~ 10225 3075
NoConn ~ 10225 2975
NoConn ~ 10225 2875
NoConn ~ 10225 2775
NoConn ~ 10225 2575
NoConn ~ 10225 2375
NoConn ~ 10225 2275
NoConn ~ 10225 2075
NoConn ~ 10225 2175
$Comp
L FX10B_80S_8 J?
U 1 1 53A7B43C
P 2450 4225
F 0 "J?" H 2460 7025 60  0000 C CNN
F 1 "FX10B_80S_8" H 2430 7195 60  0001 C CNN
F 2 "FX10B_80S_8" H 2440 7315 60  0001 C CNN
F 3 "~" H 2450 4225 60  0000 C CNN
F 4 "CONN RECEPT, 80POS, W/O, POST, SMD," H 2480 7425 60  0001 C CNN "Description"
F 5 "Digi-Key" H 2460 7755 60  0001 C CNN "Vendor"
F 6 "FX10B-80S/8-SV(71)" H 2470 7535 60  0001 C CNN "Manufacturer Part Number"
F 7 "H11236-ND" H 2430 7845 60  0001 C CNN "Vendor Part Number"
F 8 "Hirose Electric Co Ltd" H 2460 7645 60  0001 C CNN "Manufacturer"
F 9 "FX10B_80S_8" H 2470 1345 60  0000 C CNN "Component Value"
	1    2450 4225
	1    0    0    -1  
$EndComp
Text Notes 1550 925  0    118  ~ 0
Myriad RF Connector
Text GLabel 1500 6825 0    43   Input ~ 0
LMS_RXEN
Text GLabel 3650 4225 2    43   Input ~ 0
IQSEL_Enable2
Text GLabel 3450 6825 2    43   Input ~ 0
LMS_TXEN
Text GLabel 3450 2925 2    43   Input ~ 0
IQSEL_Enable1
Text GLabel 1300 5825 0    43   Input ~ 0
LMS_RESET
Text GLabel 3450 5525 2    43   Input ~ 0
RX_CLK
Text GLabel 1500 5525 0    43   Input ~ 0
TX_CLK
NoConn ~ 3250 2025
NoConn ~ 1650 2125
NoConn ~ 1650 2025
$Comp
L GND #PWR?
U 1 1 53A7B44D
P 1375 2325
F 0 "#PWR?" H 1375 2425 40  0001 C CNN
F 1 "GND" H 1375 2255 40  0000 C CNN
F 2 "~" H 1375 2325 60  0000 C CNN
F 3 "~" H 1375 2325 60  0000 C CNN
	1    1375 2325
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B453
P 1375 3625
F 0 "#PWR?" H 1375 3725 40  0001 C CNN
F 1 "GND" H 1375 3555 40  0000 C CNN
F 2 "~" H 1375 3625 60  0000 C CNN
F 3 "~" H 1375 3625 60  0000 C CNN
	1    1375 3625
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B459
P 3525 2325
F 0 "#PWR?" H 3525 2425 40  0001 C CNN
F 1 "GND" H 3525 2255 40  0000 C CNN
F 2 "~" H 3525 2325 60  0000 C CNN
F 3 "~" H 3525 2325 60  0000 C CNN
	1    3525 2325
	0    -1   -1   0   
$EndComp
Text GLabel 975  6725 0    43   Input ~ 0
MIPI_SCK
Text GLabel 975  6625 0    43   Input ~ 0
MIPI_DATA
NoConn ~ 1650 2625
NoConn ~ 1650 2725
NoConn ~ 1650 2925
NoConn ~ 1650 3025
NoConn ~ 1650 4225
NoConn ~ 1650 4325
NoConn ~ 1650 5725
NoConn ~ 3250 5625
NoConn ~ 3250 4325
NoConn ~ 3250 3025
NoConn ~ 3250 2725
NoConn ~ 3250 2625
NoConn ~ 3250 2125
$Comp
L GND #PWR?
U 1 1 53A7B46E
P 1375 4925
F 0 "#PWR?" H 1375 5025 40  0001 C CNN
F 1 "GND" H 1375 4855 40  0000 C CNN
F 2 "~" H 1375 4925 60  0000 C CNN
F 3 "~" H 1375 4925 60  0000 C CNN
	1    1375 4925
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B474
P 1375 6225
F 0 "#PWR?" H 1375 6325 40  0001 C CNN
F 1 "GND" H 1375 6155 40  0000 C CNN
F 2 "~" H 1375 6225 60  0000 C CNN
F 3 "~" H 1375 6225 60  0000 C CNN
	1    1375 6225
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B47A
P 1525 7100
F 0 "#PWR?" H 1525 7200 40  0001 C CNN
F 1 "GND" H 1525 7030 40  0000 C CNN
F 2 "~" H 1525 7100 60  0000 C CNN
F 3 "~" H 1525 7100 60  0000 C CNN
	1    1525 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B480
P 3375 7100
F 0 "#PWR?" H 3375 7200 40  0001 C CNN
F 1 "GND" H 3375 7030 40  0000 C CNN
F 2 "~" H 3375 7100 60  0000 C CNN
F 3 "~" H 3375 7100 60  0000 C CNN
	1    3375 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B486
P 3525 3625
F 0 "#PWR?" H 3525 3725 40  0001 C CNN
F 1 "GND" H 3525 3555 40  0000 C CNN
F 2 "~" H 3525 3625 60  0000 C CNN
F 3 "~" H 3525 3625 60  0000 C CNN
	1    3525 3625
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B48C
P 3525 4925
F 0 "#PWR?" H 3525 5025 40  0001 C CNN
F 1 "GND" H 3525 4855 40  0000 C CNN
F 2 "~" H 3525 4925 60  0000 C CNN
F 3 "~" H 3525 4925 60  0000 C CNN
	1    3525 4925
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 53A7B492
P 3525 6225
F 0 "#PWR?" H 3525 6325 40  0001 C CNN
F 1 "GND" H 3525 6155 40  0000 C CNN
F 2 "~" H 3525 6225 60  0000 C CNN
F 3 "~" H 3525 6225 60  0000 C CNN
	1    3525 6225
	0    -1   -1   0   
$EndComp
Text Label 3750 4425 2    51   ~ 0
DIQ2_D0
Text Label 1150 4425 0    51   ~ 0
DIQ2_D1
Text Label 1150 4525 0    51   ~ 0
DIQ2_D3
Text Label 3750 4725 2    51   ~ 0
DIQ2_D4
Text Label 1150 4725 0    51   ~ 0
DIQ2_D5
Text Label 3750 5125 2    51   ~ 0
DIQ2_D6
Text Label 1150 5125 0    51   ~ 0
DIQ2_D7
Text Label 3750 5225 2    51   ~ 0
DIQ2_D8
Text Label 1150 5225 0    51   ~ 0
DIQ2_D9
Text Label 3750 5325 2    51   ~ 0
DIQ2_D10
Text Label 1150 5325 0    51   ~ 0
DIQ2_D11
Text Label 3725 3125 2    51   ~ 0
DIQ1_D0
Text Label 1200 3125 0    51   ~ 0
DIQ1_D1
Text Label 3725 3225 2    51   ~ 0
DIQ1_D2
Text Label 1200 3225 0    51   ~ 0
DIQ1_D3
Text Label 3725 3425 2    51   ~ 0
DIQ1_D4
Text Label 1200 3425 0    51   ~ 0
DIQ1_D5
Text Label 3750 3825 2    51   ~ 0
DIQ1_D6
Text Label 1200 3825 0    51   ~ 0
DIQ1_D7
Text Label 3750 3925 2    51   ~ 0
DIQ1_D8
Text Label 1200 3925 0    51   ~ 0
DIQ1_D9
Text Label 3750 4025 2    51   ~ 0
DIQ1_D10
Text Label 1200 4025 0    51   ~ 0
DIQ1_D11
Text Label 3750 4525 2    51   ~ 0
DIQ2_D2
Text GLabel 1300 5925 0    43   BiDi ~ 0
LMS_SPI_MOSI
Text GLabel 1300 6425 0    43   Input ~ 0
LMS_SPI_SCK
Text GLabel 1300 6025 0    43   BiDi ~ 0
LMS_SPI_MISO
Text GLabel 1300 6525 0    43   Input ~ 0
LMS_SPI_CS
Text GLabel 3475 6625 2    43   Input ~ 0
CLK_IN
Wire Wire Line
	3250 3125 3725 3125
Wire Wire Line
	3250 3225 3725 3225
Wire Wire Line
	3250 2925 3450 2925
Wire Wire Line
	3250 3425 3725 3425
Wire Wire Line
	3650 4225 3250 4225
Wire Wire Line
	3250 4025 3750 4025
Wire Wire Line
	3250 3925 3750 3925
Wire Wire Line
	3250 3825 3750 3825
Wire Wire Line
	3450 6825 3250 6825
Wire Wire Line
	1200 4025 1650 4025
Wire Wire Line
	1200 3925 1650 3925
Wire Wire Line
	1200 3825 1650 3825
Wire Wire Line
	1200 3425 1650 3425
Wire Wire Line
	1200 3225 1650 3225
Wire Wire Line
	1200 3125 1650 3125
Wire Wire Line
	3425 1500 3425 1825
Wire Wire Line
	3425 1825 3250 1825
Wire Wire Line
	3250 1725 3425 1725
Connection ~ 3425 1725
Wire Wire Line
	1450 1825 1650 1825
Wire Wire Line
	1450 1500 1450 1825
Wire Wire Line
	1650 1725 1450 1725
Connection ~ 1450 1725
Wire Wire Line
	1150 4425 1650 4425
Wire Wire Line
	1150 4525 1650 4525
Wire Wire Line
	1150 4725 1650 4725
Wire Wire Line
	1150 5125 1650 5125
Wire Wire Line
	1150 5325 1650 5325
Wire Wire Line
	1650 6825 1500 6825
Wire Wire Line
	3250 4425 3750 4425
Wire Wire Line
	3250 4525 3750 4525
Wire Wire Line
	3250 4725 3750 4725
Wire Wire Line
	3250 5125 3750 5125
Wire Wire Line
	3250 5225 3750 5225
Wire Wire Line
	3250 5325 3750 5325
Wire Wire Line
	1300 5825 1650 5825
Wire Wire Line
	1650 5925 1300 5925
Wire Wire Line
	1300 6025 1650 6025
Wire Wire Line
	1300 6425 1650 6425
Wire Wire Line
	1650 6525 1300 6525
Wire Wire Line
	975  6625 1650 6625
Wire Wire Line
	1650 6725 975  6725
Wire Wire Line
	1650 1925 1525 1925
Wire Wire Line
	1525 1925 1525 2825
Wire Wire Line
	1425 2325 1650 2325
Connection ~ 1525 2325
Wire Wire Line
	1525 2525 1650 2525
Wire Wire Line
	1525 2825 1650 2825
Connection ~ 1525 2525
Wire Wire Line
	1425 3625 1650 3625
Wire Wire Line
	1650 3325 1575 3325
Wire Wire Line
	1575 3325 1575 4125
Connection ~ 1575 3625
Wire Wire Line
	1575 4125 1650 4125
Wire Wire Line
	1425 4925 1650 4925
Wire Wire Line
	1650 4625 1575 4625
Wire Wire Line
	1575 4625 1575 5625
Connection ~ 1575 4925
Wire Wire Line
	1575 5425 1650 5425
Wire Wire Line
	1650 5525 1500 5525
Wire Wire Line
	3450 5525 3250 5525
Wire Wire Line
	1575 5625 1650 5625
Connection ~ 1575 5425
Wire Wire Line
	1425 6225 1650 6225
Wire Wire Line
	1650 6950 1525 6950
Wire Wire Line
	1525 6950 1525 7050
Wire Wire Line
	3375 6950 3375 7050
Wire Wire Line
	3375 6950 3250 6950
Wire Wire Line
	3250 2325 3475 2325
Wire Wire Line
	3250 1925 3350 1925
Wire Wire Line
	3350 1925 3350 2825
Connection ~ 3350 2325
Wire Wire Line
	3350 2525 3250 2525
Wire Wire Line
	3350 2825 3250 2825
Connection ~ 3350 2525
Wire Wire Line
	3250 3625 3475 3625
Wire Wire Line
	3250 3325 3350 3325
Wire Wire Line
	3350 3325 3350 4125
Connection ~ 3350 3625
Wire Wire Line
	3350 4125 3250 4125
Wire Wire Line
	3250 4925 3475 4925
Wire Wire Line
	3250 4625 3350 4625
Wire Wire Line
	3350 4625 3350 5725
Connection ~ 3350 4925
Wire Wire Line
	3350 5425 3250 5425
Wire Wire Line
	3350 5725 3250 5725
Connection ~ 3350 5425
Wire Wire Line
	3250 6225 3475 6225
Wire Wire Line
	3250 6525 3350 6525
Wire Wire Line
	3350 6225 3350 6725
Connection ~ 3350 6225
Wire Wire Line
	3350 6725 3250 6725
Connection ~ 3350 6525
Wire Wire Line
	1150 5225 1650 5225
Wire Wire Line
	3250 5825 3925 5825
Wire Wire Line
	3250 5925 3925 5925
Wire Wire Line
	3250 6025 3925 6025
Wire Wire Line
	3250 6425 3925 6425
Wire Wire Line
	3250 6625 3475 6625
Text Label 3925 5825 2    51   ~ 0
LMS_GPIO0
Text Label 3925 5925 2    51   ~ 0
LMS_GPIO1
Text Label 3925 6025 2    51   ~ 0
LMS_GPIO2
Text Label 3925 6425 2    51   ~ 0
LMS_GPIO3
$Comp
L VCC5_M VCC5_M?
U 1 1 53A7B580
P 1450 1500
F 0 "VCC5_M?" H 1450 1450 20  0001 C CNN
F 1 "VCC5_M" H 1450 1625 50  0000 C CNN
F 2 "~" H 1450 1500 60  0000 C CNN
F 3 "~" H 1450 1500 60  0000 C CNN
	1    1450 1500
	1    0    0    -1  
$EndComp
$Comp
L VCC5_M VCC5_M?
U 1 1 53A7B586
P 3425 1500
F 0 "VCC5_M?" H 3425 1450 20  0001 C CNN
F 1 "VCC5_M" H 3425 1625 50  0000 C CNN
F 2 "~" H 3425 1500 60  0000 C CNN
F 3 "~" H 3425 1500 60  0000 C CNN
	1    3425 1500
	1    0    0    -1  
$EndComp
Text Notes 7450 875  0    118  ~ 0
FMC Connector
$Comp
L FMC_FEMALE_LOW_COUNT J?
U 1 1 53A80FAC
P 6000 1200
F 0 "J?" H 6100 1250 50  0000 C CNN
F 1 "FMC_FEMALE_LOW_COUNT" H 6400 1550 60  0001 C CNN
F 2 "FMC_Female" H 6400 1650 60  0001 C CNN
F 3 "~" H 6250 1200 60  0000 C CNN
F 4 "ASP-134603-01" H 6400 1850 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134603-01" H 6450 2150 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 6400 1750 60  0001 C CNN "Description"
F 7 "Samtec" H 6350 2050 60  0001 C CNN "Vendor"
F 8 "Samtec" H 6350 1950 60  0001 C CNN "Manufacturer"
F 9 "ASP-134603-01_Socket" H 6425 -2850 50  0000 C CNN "Component Value"
	1    6000 1200
	1    0    0    -1  
$EndComp
$Comp
L FMC_FEMALE_LOW_COUNT J?
U 5 1 53A80FDF
P 9275 1475
F 0 "J?" H 9375 1525 50  0000 C CNN
F 1 "FMC_FEMALE_LOW_COUNT" H 9675 1825 60  0001 C CNN
F 2 "FMC_Female" H 9675 1925 60  0001 C CNN
F 3 "~" H 9525 1475 60  0000 C CNN
F 4 "ASP-134603-01" H 9675 2125 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134603-01" H 9725 2425 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 9675 2025 60  0001 C CNN "Description"
F 7 "Samtec" H 9625 2325 60  0001 C CNN "Vendor"
F 8 "Samtec" H 9625 2225 60  0001 C CNN "Manufacturer"
F 9 "ASP-134603-01_Socket" H 9700 -1300 50  0000 C CNN "Component Value"
	5    9275 1475
	1    0    0    -1  
$EndComp
$Comp
L FMC_FEMALE_LOW_COUNT J?
U 6 1 53A81012
P 7350 6625
F 0 "J?" V 7700 6750 50  0000 C CNN
F 1 "FMC_FEMALE_LOW_COUNT" H 7750 6975 60  0001 C CNN
F 2 "FMC_Female" H 7750 7075 60  0001 C CNN
F 3 "~" H 7600 6625 60  0000 C CNN
F 4 "ASP-134603-01" H 7750 7275 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134603-01" H 7800 7575 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 7750 7175 60  0001 C CNN "Description"
F 7 "Samtec" H 7700 7475 60  0001 C CNN "Vendor"
F 8 "Samtec" H 7700 7375 60  0001 C CNN "Manufacturer"
F 9 "ASP-134603-01_Socket" H 7575 2975 50  0000 C CNN "Component Value"
	6    7350 6625
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 53A81151
P 10775 6850
F 0 "#PWR?" H 10775 6950 40  0001 C CNN
F 1 "GND" H 10775 6780 40  0000 C CNN
F 2 "~" H 10775 6850 60  0000 C CNN
F 3 "~" H 10775 6850 60  0000 C CNN
	1    10775 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7725 6775 7725 6850
Connection ~ 7725 6850
Wire Wire Line
	9025 6775 9025 6850
Connection ~ 9025 6850
Wire Wire Line
	10625 6775 10625 6850
Connection ~ 10625 6850
Wire Wire Line
	10525 6775 10525 6850
Connection ~ 10525 6850
Wire Wire Line
	10425 6775 10425 6850
Connection ~ 10425 6850
Wire Wire Line
	10325 6775 10325 6850
Connection ~ 10325 6850
Wire Wire Line
	10225 6775 10225 6850
Connection ~ 10225 6850
Wire Wire Line
	10125 6775 10125 6850
Connection ~ 10125 6850
Wire Wire Line
	10025 6775 10025 6850
Connection ~ 10025 6850
Wire Wire Line
	9925 6775 9925 6850
Connection ~ 9925 6850
Wire Wire Line
	9825 6775 9825 6850
Connection ~ 9825 6850
Wire Wire Line
	9725 6775 9725 6850
Connection ~ 9725 6850
Wire Wire Line
	8725 6775 8725 6850
Connection ~ 8725 6850
Wire Wire Line
	8625 6775 8625 6850
Connection ~ 8625 6850
Wire Wire Line
	8525 6775 8525 6850
Connection ~ 8525 6850
Wire Wire Line
	8425 6775 8425 6850
Connection ~ 8425 6850
Wire Wire Line
	8325 6775 8325 6850
Connection ~ 8325 6850
Wire Wire Line
	8225 6775 8225 6850
Connection ~ 8225 6850
Wire Wire Line
	8125 6775 8125 6850
Connection ~ 8125 6850
Wire Wire Line
	8025 6775 8025 6850
Connection ~ 8025 6850
Wire Wire Line
	7925 6775 7925 6850
Connection ~ 7925 6850
Wire Wire Line
	7825 6775 7825 6850
Connection ~ 7825 6850
Wire Wire Line
	8925 6775 8925 6850
Connection ~ 8925 6850
Wire Wire Line
	8825 6775 8825 6850
Connection ~ 8825 6850
Wire Wire Line
	9625 6775 9625 6850
Connection ~ 9625 6850
Wire Wire Line
	9525 6775 9525 6850
Connection ~ 9525 6850
Wire Wire Line
	9425 6775 9425 6850
Connection ~ 9425 6850
Wire Wire Line
	9325 6775 9325 6850
Connection ~ 9325 6850
Wire Wire Line
	9225 6775 9225 6850
Connection ~ 9225 6850
Wire Wire Line
	9125 6775 9125 6850
Connection ~ 9125 6850
Wire Wire Line
	7525 6775 7525 6850
Connection ~ 7525 6850
Wire Wire Line
	7425 6775 7425 6850
Wire Wire Line
	7625 6775 7625 6850
Connection ~ 7625 6850
Wire Wire Line
	7425 6000 10725 6000
Wire Wire Line
	7425 6850 10725 6850
Wire Wire Line
	8725 3400 8725 3300
Wire Wire Line
	9125 3975 8950 3975
Wire Wire Line
	8725 4075 9125 4075
$EndSCHEMATC
