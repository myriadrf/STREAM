EESchema Schematic File Version 2
LIBS:Stream
LIBS:LMS7002EVB
LIBS:Stream-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 16
Title "Stream v2"
Date "27 feb 2015"
Rev "1"
Comp "Lime Microsystems Ltd."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR0435
U 1 1 53A98A22
P 8775 4675
F 0 "#PWR0435" H 8775 4775 40  0001 C CNN
F 1 "GND" H 8775 4605 40  0000 C CNN
F 2 "~" H 8775 4675 60  0000 C CNN
F 3 "~" H 8775 4675 60  0000 C CNN
	1    8775 4675
	1    0    0    -1  
$EndComp
$Comp
L 0R_0402_NF R190
U 1 1 53A98A30
P 5575 1750
F 0 "R190" V 5625 2000 50  0000 C CNN
F 1 "0R_0402_NF" V 5400 1725 50  0001 C CNN
F 2 "R_SM0402" V 5325 1700 60  0001 C CNN
F 3 "~" H 5575 1750 60  0000 C CNN
F 4 "Digi-Key" V 5755 1850 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5855 1950 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5955 2050 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6055 2150 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6155 2250 60  0001 C CNN "Description"
F 9 "0R" V 5585 1805 50  0000 C CNN "Component Value"
F 10 "NF" V 5585 1655 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6300 2450 60  0001 C CNN "Assemble"
	1    5575 1750
	0    -1   1    0   
$EndComp
Text GLabel 5825 1350 0    43   Output ~ 0
LMS_SyntCLK1
Text GLabel 5825 1450 0    43   Output ~ 0
LMS_SyntCLK2
Text GLabel 4875 4050 0    43   Output ~ 0
LMS_SPI_CS
Text GLabel 5200 3350 0    43   BiDi ~ 0
LMS_SPI_MISO
Text GLabel 5175 3150 0    43   Output ~ 0
LMS_RESET
Text GLabel 5200 1750 0    43   BiDi ~ 0
LMS_SPI_MOSI
Text GLabel 7600 2750 2    43   Output ~ 0
LMS_SBEN
Text GLabel 5200 2150 0    43   Input ~ 0
LMS_SPI_SCK
Text GLabel 7075 2250 2    43   Output ~ 0
MCLK1
Text GLabel 5825 2650 0    43   Input ~ 0
FCLK2
Text GLabel 5450 3850 0    43   BiDi ~ 0
TXNRX1
Text GLabel 7450 2050 2    43   BiDi ~ 0
TXNRX2
Text GLabel 5825 2550 0    43   Input ~ 0
LMS_dio_buff_oe
Text GLabel 5825 2250 0    43   Input ~ 0
LMS_g_pwr_dwn
Text GLabel 5825 1550 0    43   Input ~ 0
LMS_iqsel2_dir
Text GLabel 5825 3250 0    43   Input ~ 0
LMS_iqsel1_dir
Text GLabel 5825 2950 0    43   Output ~ 0
MCLK2
Text GLabel 5825 1650 0    43   Input ~ 0
LMS_dio_dir_ctrl1
Text GLabel 5475 3450 0    43   Input ~ 0
LMS_dio_dir_ctrl2
Text GLabel 7450 2950 2    43   Input ~ 0
FCLK1
$Comp
L 0R_0402_NF R191
U 1 1 53A98A54
P 5575 2150
F 0 "R191" V 5525 2400 50  0000 C CNN
F 1 "0R_0402_NF" V 5400 2125 50  0001 C CNN
F 2 "R_SM0402" V 5325 2100 60  0001 C CNN
F 3 "~" H 5575 2150 60  0000 C CNN
F 4 "Digi-Key" V 5755 2250 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5855 2350 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5955 2450 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6055 2550 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6155 2650 60  0001 C CNN "Description"
F 9 "0R" V 5585 2205 50  0000 C CNN "Component Value"
F 10 "NF" V 5585 2055 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6300 2850 60  0001 C CNN "Assemble"
	1    5575 2150
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R192
U 1 1 53A98A62
P 5600 3150
F 0 "R192" V 5575 3475 50  0000 C CNN
F 1 "0R_0402_NF" V 5425 3125 50  0001 C CNN
F 2 "R_SM0402" V 5350 3100 60  0001 C CNN
F 3 "~" H 5600 3150 60  0000 C CNN
F 4 "Digi-Key" V 5780 3250 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5880 3350 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5980 3450 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6080 3550 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6180 3650 60  0001 C CNN "Description"
F 9 "0R" V 5610 3205 50  0000 C CNN "Component Value"
F 10 "NF" V 5610 3055 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6325 3850 60  0001 C CNN "Assemble"
	1    5600 3150
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R193
U 1 1 53A98A70
P 5600 3350
F 0 "R193" V 5575 3675 50  0000 C CNN
F 1 "0R_0402_NF" V 5425 3325 50  0001 C CNN
F 2 "R_SM0402" V 5350 3300 60  0001 C CNN
F 3 "~" H 5600 3350 60  0000 C CNN
F 4 "Digi-Key" V 5780 3450 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5880 3550 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5980 3650 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6080 3750 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6180 3850 60  0001 C CNN "Description"
F 9 "0R" V 5610 3405 50  0000 C CNN "Component Value"
F 10 "NF" V 5610 3255 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6325 4050 60  0001 C CNN "Assemble"
	1    5600 3350
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R189
U 1 1 53A98A7E
P 5250 4050
F 0 "R189" V 5225 4300 50  0000 C CNN
F 1 "0R_0402_NF" V 5075 4025 50  0001 C CNN
F 2 "R_SM0402" V 5000 4000 60  0001 C CNN
F 3 "~" H 5250 4050 60  0000 C CNN
F 4 "Digi-Key" V 5430 4150 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5530 4250 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5630 4350 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 5730 4450 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 5830 4550 60  0001 C CNN "Description"
F 9 "0R" V 5260 4105 50  0000 C CNN "Component Value"
F 10 "NF" V 5260 3955 50  0000 C CNN "Placement"
F 11 "NOFIT" V 5975 4750 60  0001 C CNN "Assemble"
	1    5250 4050
	0    -1   1    0   
$EndComp
$Comp
L 0R_0402_NF R194
U 1 1 53A98A8C
P 7300 2750
F 0 "R194" V 7275 2550 50  0000 C CNN
F 1 "0R_0402_NF" V 7125 2725 50  0001 C CNN
F 2 "R_SM0402" V 7050 2700 60  0001 C CNN
F 3 "~" H 7300 2750 60  0000 C CNN
F 4 "Digi-Key" V 7480 2850 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 7580 2950 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 7680 3050 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 7780 3150 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 7880 3250 60  0001 C CNN "Description"
F 9 "0R" V 7310 2805 50  0000 C CNN "Component Value"
F 10 "NF" V 7310 2655 50  0000 C CNN "Placement"
F 11 "NOFIT" V 8025 3450 60  0001 C CNN "Assemble"
	1    7300 2750
	0    -1   1    0   
$EndComp
Text GLabel 8850 2825 0    43   Input ~ 0
FMC_I2C_SDA
Text GLabel 8850 2925 0    43   Input ~ 0
FMC_I2C_SCL
$Comp
L 10K_0402_NF R195
U 1 1 53A98AA8
P 8450 3925
F 0 "R195" H 8450 3850 50  0000 C CNN
F 1 "10K_0402_NF" H 8490 4065 50  0001 C CNN
F 2 "R_SM0402" H 8460 4145 60  0001 C CNN
F 3 "~" V 8470 3895 60  0000 C CNN
F 4 "Digi-Key" H 8440 4525 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 8440 4635 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8440 4435 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 8430 4345 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 10.0K OHM, 1/16W, 1%, 0402, SMD," H 8460 4255 60  0001 C CNN "Description"
F 9 "10K" H 8375 3925 50  0000 C CNN "Component Value"
F 10 "NF" H 8550 3925 50  0000 C CNN "Install"
F 11 "NOFIT" H 8460 4725 60  0001 C CNN "Assemble"
	1    8450 3925
	1    0    0    -1  
$EndComp
$Comp
L 10K_0402_NF R197
U 1 1 53A98AC2
P 8450 3825
F 0 "R197" H 8450 3900 50  0000 C CNN
F 1 "10K_0402_NF" H 8490 3965 50  0001 C CNN
F 2 "R_SM0402" H 8460 4045 60  0001 C CNN
F 3 "~" V 8470 3795 60  0000 C CNN
F 4 "Digi-Key" H 8440 4425 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 8440 4535 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8440 4335 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 8430 4245 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 10.0K OHM, 1/16W, 1%, 0402, SMD," H 8460 4155 60  0001 C CNN "Description"
F 9 "10K" H 8375 3825 50  0000 C CNN "Component Value"
F 10 "NF" H 8550 3825 50  0000 C CNN "Install"
F 11 "NOFIT" H 8460 4625 60  0001 C CNN "Assemble"
	1    8450 3825
	1    0    0    -1  
$EndComp
$Comp
L 0R_0402_NF R199
U 1 1 53A98ACE
P 10625 1425
F 0 "R199" V 10550 1525 50  0000 C CNN
F 1 "0R_0402_NF" V 10450 1400 50  0001 C CNN
F 2 "R_SM0402" V 10375 1375 60  0001 C CNN
F 3 "~" H 10625 1425 60  0000 C CNN
F 4 "Digi-Key" V 10805 1525 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 10905 1625 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 11005 1725 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 11105 1825 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 11205 1925 60  0001 C CNN "Description"
F 9 "0R" V 10635 1430 50  0000 C CNN "Component Value"
	1    10625 1425
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR0436
U 1 1 53A98AD4
P 9000 4675
F 0 "#PWR0436" H 9000 4775 40  0001 C CNN
F 1 "GND" H 9000 4605 40  0000 C CNN
F 2 "~" H 9000 4675 60  0000 C CNN
F 3 "~" H 9000 4675 60  0000 C CNN
	1    9000 4675
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0437
U 1 1 53A98ADA
P 10825 5850
F 0 "#PWR0437" H 10825 5950 40  0001 C CNN
F 1 "GND" H 10825 5780 40  0000 C CNN
F 2 "~" H 10825 5850 60  0000 C CNN
F 3 "~" H 10825 5850 60  0000 C CNN
	1    10825 5850
	0    -1   1    0   
$EndComp
Text Label 6075 5900 0    51   ~ 0
DIQ2_D0
Text Label 6075 6000 0    51   ~ 0
DIQ2_D1
Text Label 6075 6200 0    51   ~ 0
DIQ2_D3
Text Label 6075 6300 0    51   ~ 0
DIQ2_D4
Text Label 6075 6400 0    51   ~ 0
DIQ2_D5
Text Label 6075 6500 0    51   ~ 0
DIQ2_D6
Text Label 6075 6600 0    51   ~ 0
DIQ2_D7
Text Label 6075 6700 0    51   ~ 0
DIQ2_D8
Text Label 6075 6800 0    51   ~ 0
DIQ2_D9
Text Label 6075 6900 0    51   ~ 0
DIQ2_D10
Text Label 6075 7000 0    51   ~ 0
DIQ2_D11
Text Label 5050 5900 0    51   ~ 0
DIQ1_D0
Text Label 5050 6000 0    51   ~ 0
DIQ1_D1
Text Label 5050 6100 0    51   ~ 0
DIQ1_D2
Text Label 5050 6200 0    51   ~ 0
DIQ1_D3
Text Label 5050 6300 0    51   ~ 0
DIQ1_D4
Text Label 5050 6400 0    51   ~ 0
DIQ1_D5
Text Label 5050 6500 0    51   ~ 0
DIQ1_D6
Text Label 5050 6600 0    51   ~ 0
DIQ1_D7
Text Label 5050 6700 0    51   ~ 0
DIQ1_D8
Text Label 5050 6800 0    51   ~ 0
DIQ1_D9
Text Label 5050 6900 0    51   ~ 0
DIQ1_D10
Text Label 5050 7000 0    51   ~ 0
DIQ1_D11
Text Label 6075 6100 0    51   ~ 0
DIQ2_D2
Entry Wire Line
	5400 5900 5500 5800
Entry Wire Line
	5400 6000 5500 5900
Entry Wire Line
	5400 6100 5500 6000
Entry Wire Line
	5400 6200 5500 6100
Entry Wire Line
	5400 6300 5500 6200
Entry Wire Line
	5400 6400 5500 6300
Entry Wire Line
	5400 6500 5500 6400
Entry Wire Line
	5400 6600 5500 6500
Entry Wire Line
	5400 6700 5500 6600
Entry Wire Line
	5400 6800 5500 6700
Entry Wire Line
	5400 6900 5500 6800
Entry Wire Line
	5400 7000 5500 6900
Entry Wire Line
	6425 5900 6525 5800
Entry Wire Line
	6425 6000 6525 5900
Entry Wire Line
	6425 6100 6525 6000
Entry Wire Line
	6425 6200 6525 6100
Entry Wire Line
	6425 6300 6525 6200
Entry Wire Line
	6425 6400 6525 6300
Entry Wire Line
	6425 6500 6525 6400
Entry Wire Line
	6425 6600 6525 6500
Entry Wire Line
	6425 6700 6525 6600
Entry Wire Line
	6425 6800 6525 6700
Entry Wire Line
	6425 6900 6525 6800
Entry Wire Line
	6425 7000 6525 6900
Text HLabel 5400 5725 0    51   Input ~ 0
DIQ1_D[0..11]
Text HLabel 6425 5750 0    51   Output ~ 0
DIQ2_D[0..11]
Text Label 7450 4750 2    51   ~ 0
DIQ1_D0
Text Label 7450 4950 2    51   ~ 0
DIQ1_D1
Text Label 7450 4650 2    51   ~ 0
DIQ1_D2
Text Label 7450 4850 2    51   ~ 0
DIQ1_D3
Text Label 7450 4350 2    51   ~ 0
DIQ1_D4
Text Label 7450 4450 2    51   ~ 0
DIQ1_D5
Text Label 7450 3950 2    51   ~ 0
DIQ1_D6
Text Label 7450 4150 2    51   ~ 0
DIQ1_D7
Text Label 7450 3850 2    51   ~ 0
DIQ1_D8
Text Label 7450 4050 2    51   ~ 0
DIQ1_D9
Text Label 7450 3050 2    51   ~ 0
DIQ1_D10
Text Label 7450 3250 2    51   ~ 0
DIQ1_D11
Text Label 7450 2450 2    51   ~ 0
DIQ2_D0
Text Label 7450 2550 2    51   ~ 0
DIQ2_D1
Text Label 7450 1750 2    51   ~ 0
DIQ2_D3
Text Label 5475 4550 0    51   ~ 0
DIQ2_D4
Text Label 7450 2150 2    51   ~ 0
DIQ2_D5
Text Label 7450 1250 2    51   ~ 0
DIQ2_D6
Text Label 5475 4450 0    51   ~ 0
DIQ2_D7
Text Label 5475 3650 0    51   ~ 0
DIQ2_D8
Text Label 7450 1150 2    51   ~ 0
DIQ2_D9
Text Label 5475 3950 0    51   ~ 0
DIQ2_D10
Text Label 5475 3550 0    51   ~ 0
DIQ2_D11
Text Label 7450 1850 2    51   ~ 0
DIQ2_D2
Text GLabel 5825 3050 0    43   Input ~ 0
IQSEL_Enable2
Text Notes 5025 5625 0    79   ~ 0
TX DAC
Text Notes 6025 5675 0    79   ~ 0
RX ADC
Text GLabel 7475 2350 2    43   Input ~ 0
IQSEL_Enable1
Wire Wire Line
	5900 1350 5825 1350
Wire Wire Line
	5825 1450 5900 1450
Wire Wire Line
	5900 1550 5825 1550
Wire Wire Line
	5825 1650 5900 1650
Wire Wire Line
	5900 1750 5825 1750
Wire Wire Line
	5325 1750 5200 1750
Wire Wire Line
	5900 2150 5825 2150
Wire Wire Line
	5325 2150 5200 2150
Wire Wire Line
	5900 2250 5825 2250
Wire Wire Line
	5900 2550 5825 2550
Wire Wire Line
	5825 2650 5900 2650
Wire Wire Line
	5900 2750 5825 2750
Wire Wire Line
	5900 2950 5825 2950
Wire Wire Line
	5900 3050 5825 3050
Wire Wire Line
	5900 3150 5850 3150
Wire Wire Line
	5350 3150 5175 3150
Wire Wire Line
	5825 3250 5900 3250
Wire Wire Line
	5850 3350 5900 3350
Wire Wire Line
	5200 3350 5350 3350
Wire Wire Line
	5475 3450 5900 3450
Wire Wire Line
	5475 3550 5900 3550
Wire Wire Line
	5475 3650 5900 3650
Wire Wire Line
	5450 3850 5900 3850
Wire Wire Line
	5475 3950 5900 3950
Wire Wire Line
	5000 4050 4875 4050
Wire Wire Line
	5500 4050 5900 4050
Wire Wire Line
	5425 4150 5900 4150
Wire Wire Line
	5425 4250 5900 4250
Wire Wire Line
	5425 4350 5900 4350
Wire Wire Line
	5475 4450 5900 4450
Wire Wire Line
	5475 4550 5900 4550
Wire Wire Line
	7000 1150 7450 1150
Wire Wire Line
	7000 1250 7450 1250
Wire Wire Line
	7000 1350 7450 1350
Wire Wire Line
	7000 1450 7450 1450
Wire Wire Line
	7000 1850 7450 1850
Wire Wire Line
	7000 1750 7450 1750
Wire Wire Line
	7000 2150 7450 2150
Wire Wire Line
	7000 2550 7450 2550
Wire Wire Line
	7000 2450 7450 2450
Wire Wire Line
	7000 2650 7450 2650
Wire Wire Line
	7050 2750 7000 2750
Wire Wire Line
	7600 2750 7550 2750
Wire Wire Line
	7000 2950 7450 2950
Wire Wire Line
	7000 3150 7450 3150
Wire Wire Line
	7000 3050 7450 3050
Wire Wire Line
	7000 3250 7450 3250
Wire Wire Line
	7000 3350 7450 3350
Wire Wire Line
	7000 3450 7450 3450
Wire Wire Line
	7075 2250 7000 2250
Wire Wire Line
	7000 2350 7475 2350
Wire Wire Line
	7000 2050 7450 2050
Wire Wire Line
	7000 4950 7450 4950
Wire Wire Line
	7000 4850 7450 4850
Wire Wire Line
	7000 4750 7450 4750
Wire Wire Line
	7000 4650 7450 4650
Wire Wire Line
	7000 4450 7450 4450
Wire Wire Line
	7000 4350 7450 4350
Wire Wire Line
	7000 4150 7450 4150
Wire Wire Line
	7000 4050 7450 4050
Wire Wire Line
	7000 3950 7450 3950
Wire Wire Line
	7000 3850 7450 3850
Wire Wire Line
	8850 2825 9175 2825
Wire Wire Line
	8850 2925 9175 2925
Wire Wire Line
	10375 1425 10275 1425
Wire Wire Line
	10325 1425 10325 1725
Wire Wire Line
	10325 1525 10275 1525
Connection ~ 10325 1425
Wire Wire Line
	10325 1625 10275 1625
Connection ~ 10325 1525
Connection ~ 10325 1625
Wire Wire Line
	10950 1325 10950 1425
Wire Wire Line
	10950 1425 10875 1425
Wire Wire Line
	9000 4550 9000 4625
Wire Wire Line
	8775 4550 8775 4625
Connection ~ 8775 3925
Connection ~ 9000 3825
Wire Wire Line
	7775 5925 7775 5850
Connection ~ 7775 5850
Wire Wire Line
	9075 5925 9075 5850
Connection ~ 9075 5850
Wire Wire Line
	10175 5925 10175 5850
Connection ~ 10175 5850
Wire Wire Line
	10075 5925 10075 5850
Connection ~ 10075 5850
Wire Wire Line
	9975 5925 9975 5850
Connection ~ 9975 5850
Wire Wire Line
	9875 5925 9875 5850
Connection ~ 9875 5850
Wire Wire Line
	9775 5925 9775 5850
Connection ~ 9775 5850
Wire Wire Line
	8775 5925 8775 5850
Connection ~ 8775 5850
Wire Wire Line
	8675 5925 8675 5850
Connection ~ 8675 5850
Wire Wire Line
	8575 5925 8575 5850
Connection ~ 8575 5850
Wire Wire Line
	8475 5925 8475 5850
Connection ~ 8475 5850
Wire Wire Line
	8375 5925 8375 5850
Connection ~ 8375 5850
Wire Wire Line
	8275 5925 8275 5850
Connection ~ 8275 5850
Wire Wire Line
	8175 5925 8175 5850
Connection ~ 8175 5850
Wire Wire Line
	8075 5925 8075 5850
Connection ~ 8075 5850
Wire Wire Line
	7975 5925 7975 5850
Connection ~ 7975 5850
Wire Wire Line
	7875 5925 7875 5850
Connection ~ 7875 5850
Wire Wire Line
	8975 5925 8975 5850
Connection ~ 8975 5850
Wire Wire Line
	8875 5925 8875 5850
Connection ~ 8875 5850
Wire Wire Line
	9675 5925 9675 5850
Connection ~ 9675 5850
Wire Wire Line
	9575 5925 9575 5850
Connection ~ 9575 5850
Wire Wire Line
	9475 5925 9475 5850
Connection ~ 9475 5850
Wire Wire Line
	9375 5925 9375 5850
Connection ~ 9375 5850
Wire Wire Line
	9275 5925 9275 5850
Connection ~ 9275 5850
Wire Wire Line
	9175 5925 9175 5850
Connection ~ 9175 5850
Wire Wire Line
	7575 5925 7575 5850
Connection ~ 7575 5850
Wire Wire Line
	7475 5925 7475 5850
Wire Wire Line
	7675 5925 7675 5850
Connection ~ 7675 5850
Wire Wire Line
	5050 5900 5400 5900
Wire Wire Line
	5050 6000 5400 6000
Wire Wire Line
	5050 6100 5400 6100
Wire Wire Line
	5050 6200 5400 6200
Wire Wire Line
	5050 6300 5400 6300
Wire Wire Line
	5050 6400 5400 6400
Wire Wire Line
	5050 6500 5400 6500
Wire Wire Line
	5050 6600 5400 6600
Wire Wire Line
	5050 6700 5400 6700
Wire Wire Line
	5050 6800 5400 6800
Wire Wire Line
	5050 6900 5400 6900
Wire Wire Line
	5050 7000 5400 7000
Wire Wire Line
	6075 5900 6425 5900
Wire Wire Line
	6075 6000 6425 6000
Wire Wire Line
	6075 6100 6425 6100
Wire Wire Line
	6075 6200 6425 6200
Wire Wire Line
	6075 6300 6425 6300
Wire Wire Line
	6075 6400 6425 6400
Wire Wire Line
	6075 6500 6425 6500
Wire Wire Line
	6075 6600 6425 6600
Wire Wire Line
	6075 6700 6425 6700
Wire Wire Line
	6075 6800 6425 6800
Wire Wire Line
	6075 6900 6425 6900
Wire Wire Line
	6075 7000 6425 7000
Wire Bus Line
	6525 5750 6525 6925
Wire Bus Line
	5500 5725 5500 6900
Wire Bus Line
	5500 5725 5400 5725
Wire Bus Line
	6525 5750 6425 5750
Text GLabel 5825 2750 0    43   Input ~ 0
LMS_RXEN
Text GLabel 7450 3150 2    43   Input ~ 0
LMS_TXEN
Text Label 9525 4800 0    51   ~ 0
LMS_GPIO0
Text Label 9525 4900 0    51   ~ 0
LMS_GPIO1
Text Label 9525 5000 0    51   ~ 0
LMS_GPIO2
Text Label 9525 5100 0    51   ~ 0
LMS_GPIO3
Text Label 9525 5200 0    51   ~ 0
LMS_GPIO4
Text Label 9525 5300 0    51   ~ 0
LMS_GPIO5
Text Label 9525 5400 0    51   ~ 0
LMS_GPIO6
Text Label 9525 5500 0    51   ~ 0
LMS_GPIO7
Text Label 5425 4150 0    51   ~ 0
LMS_GPIO0
Text Label 5425 4350 0    51   ~ 0
LMS_GPIO1
Text Label 5425 4250 0    51   ~ 0
LMS_GPIO2
Text Label 7450 1350 2    51   ~ 0
LMS_GPIO3
Text Label 7450 1450 2    51   ~ 0
LMS_GPIO4
Text Label 7450 2650 2    51   ~ 0
LMS_GPIO5
Text Label 7450 3350 2    51   ~ 0
LMS_GPIO6
Text Label 7450 3450 2    51   ~ 0
LMS_GPIO7
Wire Wire Line
	9525 4800 9975 4800
Wire Wire Line
	9525 4900 9975 4900
Wire Wire Line
	9525 5000 9975 5000
Wire Wire Line
	9525 5100 9975 5100
Wire Wire Line
	9525 5200 9975 5200
Wire Wire Line
	9525 5300 9975 5300
Wire Wire Line
	9525 5400 9975 5400
Wire Wire Line
	9525 5500 9975 5500
Wire Wire Line
	8750 1925 8750 2225
Wire Wire Line
	8750 2125 9175 2125
Wire Wire Line
	8725 2225 9175 2225
Connection ~ 8750 2125
$Comp
L PINHEADER_1X2_TH J22
U 1 1 53A98C0C
P 8550 1875
F 0 "J22" H 8570 2015 60  0000 C CNN
F 1 "PINHEADER_1X2_TH" H 8590 2125 60  0001 C CNN
F 2 "Pinhead_1x2_TH" H 8580 2225 60  0001 C CNN
F 3 "~" H 8550 1875 60  0000 C CNN
F 4 "5-146285-2" H 8580 2455 60  0001 C CNN "Manufacturer Part Number"
F 5 "5-146285-2-ND" H 8560 2785 60  0001 C CNN "Vendor Part Number"
F 6 "CONN, HEADR, BRKWAY, .100 2POS, STR," H 8590 2345 60  0001 C CNN "Description"
F 7 "Digi-Key" H 8540 2675 60  0001 C CNN "Vendor"
F 8 "TE Connectivity" H 8560 2565 60  0001 C CNN "Manufacturer"
F 9 "PinH_2_TH" V 8450 1875 60  0001 C CNN "Component Value"
	1    8550 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1925 8750 1925
Wire Wire Line
	8700 1825 8750 1825
Wire Wire Line
	8750 1825 8750 1675
NoConn ~ 5900 1150
NoConn ~ 5900 1250
NoConn ~ 7000 1550
NoConn ~ 7000 1650
NoConn ~ 7000 4550
NoConn ~ 7000 4250
NoConn ~ 7000 3550
NoConn ~ 7000 3650
NoConn ~ 9175 2425
NoConn ~ 9175 3125
NoConn ~ 9175 3225
NoConn ~ 9175 3325
NoConn ~ 9175 3425
NoConn ~ 9175 3625
$Comp
L GND #PWR0438
U 1 1 53A98C37
P 10350 4050
F 0 "#PWR0438" H 10350 4150 40  0001 C CNN
F 1 "GND" H 10350 3980 40  0000 C CNN
F 2 "~" H 10350 4050 60  0000 C CNN
F 3 "~" H 10350 4050 60  0000 C CNN
	1    10350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3925 10350 4000
Wire Wire Line
	10350 3925 10275 3925
NoConn ~ 10275 3725
NoConn ~ 10275 3525
NoConn ~ 10275 3425
NoConn ~ 10275 3325
NoConn ~ 10275 3225
NoConn ~ 10275 3025
NoConn ~ 10275 2925
NoConn ~ 10275 2825
NoConn ~ 10275 2725
NoConn ~ 10275 2625
NoConn ~ 10275 2425
NoConn ~ 10275 2125
NoConn ~ 10275 1925
NoConn ~ 10275 2025
$Comp
L FX10B_80S_8 J20
U 1 1 53A98C54
P 2500 4075
F 0 "J20" H 2510 6875 60  0000 C CNN
F 1 "FX10B_80S_8" H 2480 7045 60  0001 C CNN
F 2 "FX10B_80S_8" H 2490 7165 60  0001 C CNN
F 3 "~" H 2500 4075 60  0000 C CNN
F 4 "CONN RECEPT, 80POS, W/O, POST, SMD," H 2530 7275 60  0001 C CNN "Description"
F 5 "Digi-Key" H 2510 7605 60  0001 C CNN "Vendor"
F 6 "FX10B-80S/8-SV(71)" H 2520 7385 60  0001 C CNN "Manufacturer Part Number"
F 7 "H11236-ND" H 2480 7695 60  0001 C CNN "Vendor Part Number"
F 8 "Hirose Electric Co Ltd" H 2510 7495 60  0001 C CNN "Manufacturer"
F 9 "FX10B_80S_8" H 2520 1195 60  0000 C CNN "Component Value"
	1    2500 4075
	1    0    0    -1  
$EndComp
Text Notes 1600 775  0    118  ~ 0
Myriad RF Connector
Text GLabel 1550 6675 0    43   Input ~ 0
LMS_RXEN
Text GLabel 3700 4075 2    43   Input ~ 0
IQSEL_Enable2
Text GLabel 3500 6675 2    43   Input ~ 0
LMS_TXEN
Text GLabel 3500 2775 2    43   Input ~ 0
IQSEL_Enable1
Text GLabel 1350 5675 0    43   Input ~ 0
LMS_RESET
$Comp
L GND #PWR0439
U 1 1 53A98C65
P 1425 2175
F 0 "#PWR0439" H 1425 2275 40  0001 C CNN
F 1 "GND" H 1425 2105 40  0000 C CNN
F 2 "~" H 1425 2175 60  0000 C CNN
F 3 "~" H 1425 2175 60  0000 C CNN
	1    1425 2175
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0440
U 1 1 53A98C6B
P 1425 3475
F 0 "#PWR0440" H 1425 3575 40  0001 C CNN
F 1 "GND" H 1425 3405 40  0000 C CNN
F 2 "~" H 1425 3475 60  0000 C CNN
F 3 "~" H 1425 3475 60  0000 C CNN
	1    1425 3475
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0441
U 1 1 53A98C71
P 3575 2175
F 0 "#PWR0441" H 3575 2275 40  0001 C CNN
F 1 "GND" H 3575 2105 40  0000 C CNN
F 2 "~" H 3575 2175 60  0000 C CNN
F 3 "~" H 3575 2175 60  0000 C CNN
	1    3575 2175
	0    -1   -1   0   
$EndComp
Text GLabel 1025 6575 0    43   Input ~ 0
MIPI_SCK
Text GLabel 1025 6475 0    43   Input ~ 0
MIPI_DATA
NoConn ~ 1700 2775
NoConn ~ 1700 2875
NoConn ~ 1700 4175
NoConn ~ 3300 4175
$Comp
L GND #PWR0442
U 1 1 53A98C86
P 1425 4775
F 0 "#PWR0442" H 1425 4875 40  0001 C CNN
F 1 "GND" H 1425 4705 40  0000 C CNN
F 2 "~" H 1425 4775 60  0000 C CNN
F 3 "~" H 1425 4775 60  0000 C CNN
	1    1425 4775
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0443
U 1 1 53A98C8C
P 1425 6075
F 0 "#PWR0443" H 1425 6175 40  0001 C CNN
F 1 "GND" H 1425 6005 40  0000 C CNN
F 2 "~" H 1425 6075 60  0000 C CNN
F 3 "~" H 1425 6075 60  0000 C CNN
	1    1425 6075
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0444
U 1 1 53A98C92
P 1575 6950
F 0 "#PWR0444" H 1575 7050 40  0001 C CNN
F 1 "GND" H 1575 6880 40  0000 C CNN
F 2 "~" H 1575 6950 60  0000 C CNN
F 3 "~" H 1575 6950 60  0000 C CNN
	1    1575 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0445
U 1 1 53A98C98
P 3425 6950
F 0 "#PWR0445" H 3425 7050 40  0001 C CNN
F 1 "GND" H 3425 6880 40  0000 C CNN
F 2 "~" H 3425 6950 60  0000 C CNN
F 3 "~" H 3425 6950 60  0000 C CNN
	1    3425 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0446
U 1 1 53A98C9E
P 3575 3475
F 0 "#PWR0446" H 3575 3575 40  0001 C CNN
F 1 "GND" H 3575 3405 40  0000 C CNN
F 2 "~" H 3575 3475 60  0000 C CNN
F 3 "~" H 3575 3475 60  0000 C CNN
	1    3575 3475
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0447
U 1 1 53A98CA4
P 3575 4775
F 0 "#PWR0447" H 3575 4875 40  0001 C CNN
F 1 "GND" H 3575 4705 40  0000 C CNN
F 2 "~" H 3575 4775 60  0000 C CNN
F 3 "~" H 3575 4775 60  0000 C CNN
	1    3575 4775
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0448
U 1 1 53A98CAA
P 3575 6075
F 0 "#PWR0448" H 3575 6175 40  0001 C CNN
F 1 "GND" H 3575 6005 40  0000 C CNN
F 2 "~" H 3575 6075 60  0000 C CNN
F 3 "~" H 3575 6075 60  0000 C CNN
	1    3575 6075
	0    -1   -1   0   
$EndComp
Text Label 3800 4275 2    51   ~ 0
DIQ2_D0
Text Label 1200 4275 0    51   ~ 0
DIQ2_D1
Text Label 1200 4375 0    51   ~ 0
DIQ2_D3
Text Label 3800 4575 2    51   ~ 0
DIQ2_D4
Text Label 1200 4575 0    51   ~ 0
DIQ2_D5
Text Label 3800 4975 2    51   ~ 0
DIQ2_D6
Text Label 1200 4975 0    51   ~ 0
DIQ2_D7
Text Label 3800 5075 2    51   ~ 0
DIQ2_D8
Text Label 1200 5075 0    51   ~ 0
DIQ2_D9
Text Label 3800 5175 2    51   ~ 0
DIQ2_D10
Text Label 1200 5175 0    51   ~ 0
DIQ2_D11
Text Label 3775 2975 2    51   ~ 0
DIQ1_D0
Text Label 1250 2975 0    51   ~ 0
DIQ1_D1
Text Label 3775 3075 2    51   ~ 0
DIQ1_D2
Text Label 1250 3075 0    51   ~ 0
DIQ1_D3
Text Label 3775 3275 2    51   ~ 0
DIQ1_D4
Text Label 1250 3275 0    51   ~ 0
DIQ1_D5
Text Label 3800 3675 2    51   ~ 0
DIQ1_D6
Text Label 1250 3675 0    51   ~ 0
DIQ1_D7
Text Label 3800 3775 2    51   ~ 0
DIQ1_D8
Text Label 1250 3775 0    51   ~ 0
DIQ1_D9
Text Label 3800 3875 2    51   ~ 0
DIQ1_D10
Text Label 1250 3875 0    51   ~ 0
DIQ1_D11
Text Label 3800 4375 2    51   ~ 0
DIQ2_D2
Text GLabel 1350 5775 0    43   BiDi ~ 0
LMS_SPI_MOSI
Text GLabel 1350 6275 0    43   Input ~ 0
LMS_SPI_SCK
Text GLabel 1350 5875 0    43   BiDi ~ 0
LMS_SPI_MISO
Text GLabel 1350 6375 0    43   Input ~ 0
LMS_SPI_CS
Text GLabel 3525 6475 2    43   Input ~ 0
CLK_IN
Wire Wire Line
	3300 2975 3775 2975
Wire Wire Line
	3300 3075 3775 3075
Wire Wire Line
	3300 2775 3500 2775
Wire Wire Line
	3300 3275 3775 3275
Wire Wire Line
	3700 4075 3300 4075
Wire Wire Line
	3300 3875 3800 3875
Wire Wire Line
	3300 3775 3800 3775
Wire Wire Line
	3300 3675 3800 3675
Wire Wire Line
	3500 6675 3300 6675
Wire Wire Line
	1250 3875 1700 3875
Wire Wire Line
	1250 3775 1700 3775
Wire Wire Line
	1250 3675 1700 3675
Wire Wire Line
	1250 3275 1700 3275
Wire Wire Line
	1250 3075 1700 3075
Wire Wire Line
	1250 2975 1700 2975
Wire Wire Line
	3475 1350 3475 1675
Wire Wire Line
	3475 1675 3300 1675
Wire Wire Line
	3300 1575 3475 1575
Connection ~ 3475 1575
Wire Wire Line
	1500 1675 1700 1675
Wire Wire Line
	1500 1350 1500 1875
Wire Wire Line
	1700 1575 1500 1575
Connection ~ 1500 1575
Wire Wire Line
	1200 4275 1700 4275
Wire Wire Line
	1200 4375 1700 4375
Wire Wire Line
	1200 4575 1700 4575
Wire Wire Line
	1200 4975 1700 4975
Wire Wire Line
	1200 5175 1700 5175
Wire Wire Line
	1700 6675 1550 6675
Wire Wire Line
	3300 4275 3800 4275
Wire Wire Line
	3300 4375 3800 4375
Wire Wire Line
	3300 4575 3800 4575
Wire Wire Line
	3300 4975 3800 4975
Wire Wire Line
	3300 5075 3800 5075
Wire Wire Line
	3300 5175 3800 5175
Wire Wire Line
	1350 5675 1700 5675
Wire Wire Line
	1700 5775 1350 5775
Wire Wire Line
	1350 5875 1700 5875
Wire Wire Line
	1350 6275 1700 6275
Wire Wire Line
	1700 6375 1350 6375
Wire Wire Line
	1025 6475 1700 6475
Wire Wire Line
	1700 6575 1025 6575
Wire Wire Line
	1700 1775 1575 1775
Wire Wire Line
	1575 1775 1575 2675
Wire Wire Line
	1475 2175 1700 2175
Connection ~ 1575 2175
Wire Wire Line
	1575 2375 1700 2375
Wire Wire Line
	1575 2675 1700 2675
Connection ~ 1575 2375
Wire Wire Line
	1475 3475 1700 3475
Wire Wire Line
	1700 3175 1625 3175
Connection ~ 1625 3475
Wire Wire Line
	1475 4775 1700 4775
Wire Wire Line
	1700 4475 1625 4475
Wire Wire Line
	1625 4475 1625 5475
Connection ~ 1625 4775
Wire Wire Line
	1625 5275 1700 5275
Wire Wire Line
	1700 5375 1550 5375
Wire Wire Line
	3500 5375 3300 5375
Wire Wire Line
	1625 5475 1700 5475
Connection ~ 1625 5275
Wire Wire Line
	1475 6075 1700 6075
Wire Wire Line
	1700 6800 1575 6800
Wire Wire Line
	1575 6800 1575 6900
Wire Wire Line
	3425 6800 3425 6900
Wire Wire Line
	3425 6800 3300 6800
Wire Wire Line
	3300 2175 3525 2175
Wire Wire Line
	3300 1775 3400 1775
Wire Wire Line
	3400 1775 3400 2675
Connection ~ 3400 2175
Wire Wire Line
	3400 2375 3300 2375
Wire Wire Line
	3400 2675 3300 2675
Connection ~ 3400 2375
Wire Wire Line
	3300 3475 3525 3475
Wire Wire Line
	3300 3175 3400 3175
Wire Wire Line
	3400 3175 3400 3975
Connection ~ 3400 3475
Wire Wire Line
	3400 3975 3300 3975
Wire Wire Line
	3300 4775 3525 4775
Wire Wire Line
	3300 4475 3400 4475
Wire Wire Line
	3400 4475 3400 5575
Connection ~ 3400 4775
Wire Wire Line
	3400 5275 3300 5275
Wire Wire Line
	3400 5575 3300 5575
Connection ~ 3400 5275
Wire Wire Line
	3300 6075 3525 6075
Wire Wire Line
	3300 6375 3400 6375
Connection ~ 3400 6075
Wire Wire Line
	1200 5075 1700 5075
Wire Wire Line
	3300 5675 3975 5675
Wire Wire Line
	3300 5775 3975 5775
Wire Wire Line
	3300 5875 3975 5875
Wire Wire Line
	3300 6275 3975 6275
Wire Wire Line
	3300 6475 3525 6475
Text Label 3975 5675 2    51   ~ 0
LMS_GPIO0
Text Label 3975 5775 2    51   ~ 0
LMS_GPIO1
Text Label 3975 5875 2    51   ~ 0
LMS_GPIO2
Text Label 3975 6275 2    51   ~ 0
LMS_GPIO3
Text Notes 7500 725  0    118  ~ 0
FMC Connector
$Comp
L FMC_FEMALE_LOW_COUNT J21
U 1 1 53A98D47
P 6050 1050
F 0 "J21" H 6150 1100 50  0000 C CNN
F 1 "FMC_FEMALE_LOW_COUNT" H 6450 1400 60  0001 C CNN
F 2 "FMC_Female" H 6450 1500 60  0001 C CNN
F 3 "~" H 6300 1050 60  0000 C CNN
F 4 "ASP-134603-01" H 6450 1700 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134603-01" H 6500 2000 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 6450 1600 60  0001 C CNN "Description"
F 7 "Samtec" H 6400 1900 60  0001 C CNN "Vendor"
F 8 "Samtec" H 6400 1800 60  0001 C CNN "Manufacturer"
F 9 "ASP-134603-01_Socket" H 6475 -3000 50  0000 C CNN "Component Value"
	1    6050 1050
	1    0    0    -1  
$EndComp
$Comp
L FMC_FEMALE_LOW_COUNT J21
U 5 1 53A98D53
P 9325 1325
F 0 "J21" H 9425 1375 50  0000 C CNN
F 1 "FMC_FEMALE_LOW_COUNT" H 9725 1675 60  0001 C CNN
F 2 "FMC_Female" H 9725 1775 60  0001 C CNN
F 3 "~" H 9575 1325 60  0000 C CNN
F 4 "ASP-134603-01" H 9725 1975 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134603-01" H 9775 2275 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 9725 1875 60  0001 C CNN "Description"
F 7 "Samtec" H 9675 2175 60  0001 C CNN "Vendor"
F 8 "Samtec" H 9675 2075 60  0001 C CNN "Manufacturer"
F 9 "ASP-134603-01_Socket" H 9750 -1450 50  0000 C CNN "Component Value"
	5    9325 1325
	1    0    0    -1  
$EndComp
$Comp
L FMC_FEMALE_LOW_COUNT J21
U 6 1 53A98D5F
P 7400 6475
F 0 "J21" V 7750 6600 50  0000 C CNN
F 1 "FMC_FEMALE_LOW_COUNT" H 7800 6825 60  0001 C CNN
F 2 "FMC_Female" H 7800 6925 60  0001 C CNN
F 3 "~" H 7650 6475 60  0000 C CNN
F 4 "ASP-134603-01" H 7800 7125 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134603-01" H 7850 7425 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 7800 7025 60  0001 C CNN "Description"
F 7 "Samtec" H 7750 7325 60  0001 C CNN "Vendor"
F 8 "Samtec" H 7750 7225 60  0001 C CNN "Manufacturer"
F 9 "ASP-134603-01_Socket" H 7625 2825 50  0000 C CNN "Component Value"
	6    7400 6475
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0449
U 1 1 53A98D65
P 10825 6700
F 0 "#PWR0449" H 10825 6800 40  0001 C CNN
F 1 "GND" H 10825 6630 40  0000 C CNN
F 2 "~" H 10825 6700 60  0000 C CNN
F 3 "~" H 10825 6700 60  0000 C CNN
	1    10825 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7775 6625 7775 6700
Connection ~ 7775 6700
Wire Wire Line
	9075 6625 9075 6700
Connection ~ 9075 6700
Wire Wire Line
	10675 6625 10675 6700
Connection ~ 10675 6700
Wire Wire Line
	10575 6625 10575 6700
Connection ~ 10575 6700
Wire Wire Line
	10475 6625 10475 6700
Connection ~ 10475 6700
Wire Wire Line
	10375 6625 10375 6700
Connection ~ 10375 6700
Wire Wire Line
	10275 6625 10275 6700
Connection ~ 10275 6700
Wire Wire Line
	10175 6625 10175 6700
Connection ~ 10175 6700
Wire Wire Line
	10075 6625 10075 6700
Connection ~ 10075 6700
Wire Wire Line
	9975 6625 9975 6700
Connection ~ 9975 6700
Wire Wire Line
	9875 6625 9875 6700
Connection ~ 9875 6700
Wire Wire Line
	9775 6625 9775 6700
Connection ~ 9775 6700
Wire Wire Line
	8775 6625 8775 6700
Connection ~ 8775 6700
Wire Wire Line
	8675 6625 8675 6700
Connection ~ 8675 6700
Wire Wire Line
	8575 6625 8575 6700
Connection ~ 8575 6700
Wire Wire Line
	8475 6625 8475 6700
Connection ~ 8475 6700
Wire Wire Line
	8375 6625 8375 6700
Connection ~ 8375 6700
Wire Wire Line
	8275 6625 8275 6700
Connection ~ 8275 6700
Wire Wire Line
	8175 6625 8175 6700
Connection ~ 8175 6700
Wire Wire Line
	8075 6625 8075 6700
Connection ~ 8075 6700
Wire Wire Line
	7975 6625 7975 6700
Connection ~ 7975 6700
Wire Wire Line
	7875 6625 7875 6700
Connection ~ 7875 6700
Wire Wire Line
	8975 6625 8975 6700
Connection ~ 8975 6700
Wire Wire Line
	8875 6625 8875 6700
Connection ~ 8875 6700
Wire Wire Line
	9675 6625 9675 6700
Connection ~ 9675 6700
Wire Wire Line
	9575 6625 9575 6700
Connection ~ 9575 6700
Wire Wire Line
	9475 6625 9475 6700
Connection ~ 9475 6700
Wire Wire Line
	9375 6625 9375 6700
Connection ~ 9375 6700
Wire Wire Line
	9275 6625 9275 6700
Connection ~ 9275 6700
Wire Wire Line
	9175 6625 9175 6700
Connection ~ 9175 6700
Wire Wire Line
	7575 6625 7575 6700
Connection ~ 7575 6700
Wire Wire Line
	7475 6625 7475 6700
Wire Wire Line
	7675 6625 7675 6700
Connection ~ 7675 6700
Wire Wire Line
	7475 5850 10775 5850
Wire Wire Line
	7475 6700 10775 6700
Wire Wire Line
	8700 3825 9175 3825
Wire Wire Line
	8700 3925 9175 3925
$Comp
L VCC3P3 #VCC0450
U 1 1 53D6621A
P 8125 3825
F 0 "#VCC0450" H 8125 3775 20  0001 C CNN
F 1 "VCC3P3" V 8175 3925 50  0000 C CNN
F 2 "~" H 8125 3825 60  0000 C CNN
F 3 "~" H 8125 3825 60  0000 C CNN
	1    8125 3825
	0    -1   -1   0   
$EndComp
$Comp
L VCC5_M #VCC0451
U 1 1 53D84DD1
P 1500 1350
F 0 "#VCC0451" H 1500 1300 20  0001 C CNN
F 1 "VCC5_M" H 1500 1475 50  0000 C CNN
F 2 "~" H 1500 1350 60  0000 C CNN
F 3 "~" H 1500 1350 60  0000 C CNN
	1    1500 1350
	1    0    0    -1  
$EndComp
$Comp
L VCC5_M #VCC0452
U 1 1 53D84DE0
P 3475 1350
F 0 "#VCC0452" H 3475 1300 20  0001 C CNN
F 1 "VCC5_M" H 3475 1475 50  0000 C CNN
F 2 "~" H 3475 1350 60  0000 C CNN
F 3 "~" H 3475 1350 60  0000 C CNN
	1    3475 1350
	1    0    0    -1  
$EndComp
$Comp
L VCC #VCC0453
U 1 1 53D86570
P 8750 1675
F 0 "#VCC0453" H 8750 1625 20  0001 C CNN
F 1 "VCC" H 8750 1800 50  0000 C CNN
F 2 "~" H 8750 1675 60  0000 C CNN
F 3 "~" H 8750 1675 60  0000 C CNN
	1    8750 1675
	1    0    0    -1  
$EndComp
Text GLabel 3500 5375 2    43   Input ~ 0
FCLK2
Text GLabel 1550 5375 0    43   Input ~ 0
FCLK1
Text GLabel 1550 5575 0    43   Output ~ 0
MCLK1
Wire Wire Line
	1550 5575 1700 5575
Text GLabel 3500 5475 2    43   Output ~ 0
MCLK2
Wire Wire Line
	3300 5475 3500 5475
Text GLabel 3800 2875 2    43   Input ~ 0
SPI_EN_BRD
Text GLabel 1400 2575 0    43   Input ~ 0
LMS_g_pwr_dwn
Text GLabel 3575 2575 2    43   BiDi ~ 0
TXNRX1
Text GLabel 3575 2475 2    43   BiDi ~ 0
TXNRX2
Wire Wire Line
	1700 2575 1400 2575
Wire Wire Line
	3300 2575 3575 2575
Wire Wire Line
	3575 2475 3300 2475
Wire Wire Line
	9100 1925 9175 1925
Wire Wire Line
	9100 1250 9100 1925
Wire Wire Line
	9100 1425 9175 1425
Wire Wire Line
	9175 1625 9100 1625
Connection ~ 9100 1625
Wire Wire Line
	9175 1725 9100 1725
Connection ~ 9100 1725
Wire Wire Line
	9175 1825 9100 1825
Connection ~ 9100 1825
$Comp
L VCC3P3 #VCC0454
U 1 1 53EEF075
P 9100 1250
F 0 "#VCC0454" H 9100 1200 20  0001 C CNN
F 1 "VCC3P3" H 9100 1375 50  0000 C CNN
F 2 "~" H 9100 1250 60  0000 C CNN
F 3 "~" H 9100 1250 60  0000 C CNN
	1    9100 1250
	1    0    0    -1  
$EndComp
Connection ~ 9100 1425
Text GLabel 5125 2350 0    39   Output ~ 0
RSSI_ADC0
Text GLabel 5125 2450 0    39   Output ~ 0
RSSI_ADC1
Wire Wire Line
	5125 2350 5900 2350
Wire Wire Line
	5125 2450 5900 2450
$Comp
L 12V_FMC #0455
U 1 1 53F073B6
P 8725 2225
F 0 "#0455" H 8725 2175 20  0001 C CNN
F 1 "12V_FMC" V 8725 2500 50  0000 C CNN
F 2 "~" H 8725 2225 60  0000 C CNN
F 3 "~" H 8725 2225 60  0000 C CNN
	1    8725 2225
	0    -1   -1   0   
$EndComp
Connection ~ 8750 2225
$Comp
L 10K_0402 R196
U 1 1 53F3F518
P 8775 4300
F 0 "R196" H 8775 4225 50  0000 C CNN
F 1 "10K_0402" H 8765 4520 50  0001 C CNN
F 2 "R_SM0402" H 8775 4600 60  0001 C CNN
F 3 "~" V 8775 4300 60  0000 C CNN
F 4 "Digi-Key" H 8775 5010 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 8785 5110 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8765 4920 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 8735 4820 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402 SMD" H 8755 4710 60  0001 C CNN "Description"
F 9 "10K" H 8785 4300 50  0000 C CNN "Component Value"
	1    8775 4300
	0    1    1    0   
$EndComp
$Comp
L 10K_0402 R198
U 1 1 53F3F59F
P 9000 4300
F 0 "R198" H 9000 4225 50  0000 C CNN
F 1 "10K_0402" H 8990 4520 50  0001 C CNN
F 2 "R_SM0402" H 9000 4600 60  0001 C CNN
F 3 "~" V 9000 4300 60  0000 C CNN
F 4 "Digi-Key" H 9000 5010 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 9010 5110 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8990 4920 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 8960 4820 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402 SMD" H 8980 4710 60  0001 C CNN "Description"
F 9 "10K" H 9010 4300 50  0000 C CNN "Component Value"
	1    9000 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 6075 3400 6575
Text GLabel 9975 4800 2    31   Input ~ 0
LMS_GPIO0
Text GLabel 9975 4900 2    31   Input ~ 0
LMS_GPIO1
Text GLabel 9975 5000 2    31   Input ~ 0
LMS_GPIO2
Text GLabel 9975 5100 2    31   Input ~ 0
LMS_GPIO3
Text GLabel 9975 5200 2    31   Input ~ 0
LMS_GPIO4
Text GLabel 9975 5300 2    31   Input ~ 0
LMS_GPIO5
Text GLabel 9975 5400 2    31   Input ~ 0
LMS_GPIO6
Text GLabel 9975 5500 2    31   Input ~ 0
LMS_GPIO7
NoConn ~ 5900 2050
$Comp
L PWR_FLAG #FLG0456
U 1 1 544304CD
P 8875 2050
F 0 "#FLG0456" H 8875 1975 30  0001 C CNN
F 1 "PWR_FLAG" H 8875 2100 30  0000 C CNN
F 2 "~" H 8875 2050 60  0000 C CNN
F 3 "~" H 8875 2050 60  0000 C CNN
	1    8875 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 2075 8875 2125
Connection ~ 8875 2125
Text GLabel 3575 1875 2    39   Output ~ 0
RSSI_ADC0
Text GLabel 3575 1975 2    39   Output ~ 0
RSSI_ADC1
Wire Wire Line
	3300 1875 3575 1875
Wire Wire Line
	3575 1975 3300 1975
Text GLabel 9050 2625 0    39   Output ~ 0
PRSNT_M2C_L
Wire Wire Line
	9175 2625 9050 2625
$Comp
L 0R_0402_NF R146
U 1 1 54449142
P 10600 2225
F 0 "R146" V 10525 2225 50  0000 C CNN
F 1 "0R_0402_NF" V 10425 2200 50  0001 C CNN
F 2 "R_SM0402" V 10350 2175 60  0001 C CNN
F 3 "~" H 10600 2225 60  0000 C CNN
F 4 "Digi-Key" V 10780 2325 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 10880 2425 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 10980 2525 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 11080 2625 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 11180 2725 60  0001 C CNN "Description"
F 9 "0R" V 10600 2150 50  0000 C CNN "Component Value"
F 10 "NF" V 10600 2300 50  0000 C CNN "Placement"
F 11 "NOFIT" V 11325 2925 60  0001 C CNN "Assemble"
	1    10600 2225
	0    1    1    0   
$EndComp
Wire Wire Line
	10325 1725 10275 1725
Wire Wire Line
	10350 2225 10275 2225
$Comp
L VCC3P3 #VCC0457
U 1 1 54449D6C
P 10925 2175
F 0 "#VCC0457" H 10925 2125 20  0001 C CNN
F 1 "VCC3P3" H 10925 2300 50  0000 C CNN
F 2 "~" H 10925 2175 60  0000 C CNN
F 3 "~" H 10925 2175 60  0000 C CNN
	1    10925 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2225 10925 2225
Wire Wire Line
	10925 2225 10925 2175
Wire Wire Line
	3400 6575 3300 6575
Connection ~ 3400 6375
Text GLabel 1475 4075 0    43   Output ~ 0
MyriadPRSNT
Wire Wire Line
	1625 3175 1625 3475
Wire Wire Line
	1475 4075 1700 4075
Wire Wire Line
	1700 3975 1625 3975
Wire Wire Line
	1625 3975 1625 4075
Connection ~ 1625 4075
Wire Wire Line
	9000 4050 9000 3825
Wire Wire Line
	8775 4050 8775 3925
Wire Wire Line
	8200 3825 8125 3825
Wire Wire Line
	8200 3925 8150 3925
Wire Wire Line
	8150 3925 8150 3825
Connection ~ 8150 3825
Wire Wire Line
	8850 3100 8950 3100
Wire Wire Line
	8950 3100 8950 2825
Connection ~ 8950 2825
Wire Wire Line
	8850 3275 9000 3275
Wire Wire Line
	9000 3275 9000 2925
Connection ~ 9000 2925
$Comp
L VCC3P3 #VCC0458
U 1 1 54ADF36C
P 8250 3100
F 0 "#VCC0458" H 8250 3050 20  0001 C CNN
F 1 "VCC3P3" V 8300 3200 50  0000 C CNN
F 2 "~" H 8250 3100 60  0000 C CNN
F 3 "~" H 8250 3100 60  0000 C CNN
	1    8250 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 3100 8350 3100
Wire Wire Line
	8350 3275 8300 3275
Wire Wire Line
	8300 3275 8300 3100
Connection ~ 8300 3100
NoConn ~ 1700 2475
Wire Wire Line
	3300 2875 3800 2875
NoConn ~ 5900 1850
Wire Wire Line
	1500 1875 1700 1875
Connection ~ 1500 1675
Wire Wire Line
	1700 1975 1500 1975
Wire Wire Line
	1500 1975 1500 1850
Connection ~ 1500 1850
$Comp
L 4K7_0402 R163
U 1 1 54CEE5B0
P 8600 3100
F 0 "R163" H 8598 3173 50  0000 C CNN
F 1 "4K7_0402" H 8610 3290 50  0001 C CNN
F 2 "R_SM0402" H 8610 3400 60  0001 C CNN
F 3 "~" V 8590 3090 60  0000 C CNN
F 4 "DigiKey" H 8600 3830 60  0001 C CNN "Vendor"
F 5 "311-4.7KJRCT-ND" H 8630 3920 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8620 3730 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-074K7L" H 8600 3620 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 4.7K OHM, 1/16W, 5%, 0402, SMD," H 8630 3500 60  0001 C CNN "Description"
F 9 "4K7" H 8600 3098 50  0000 C CNN "Component Value"
	1    8600 3100
	1    0    0    -1  
$EndComp
$Comp
L 4K7_0402 R167
U 1 1 54CEE60B
P 8600 3275
F 0 "R167" H 8598 3348 50  0000 C CNN
F 1 "4K7_0402" H 8610 3465 50  0001 C CNN
F 2 "R_SM0402" H 8610 3575 60  0001 C CNN
F 3 "~" V 8590 3265 60  0000 C CNN
F 4 "DigiKey" H 8600 4005 60  0001 C CNN "Vendor"
F 5 "311-4.7KJRCT-ND" H 8630 4095 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 8620 3905 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-074K7L" H 8600 3795 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 4.7K OHM, 1/16W, 5%, 0402, SMD," H 8630 3675 60  0001 C CNN "Description"
F 9 "4K7" H 8600 3273 50  0000 C CNN "Component Value"
	1    8600 3275
	1    0    0    -1  
$EndComp
$Comp
L VDIO #VDIO0459
U 1 1 54D1B17B
P 10950 1325
F 0 "#VDIO0459" H 10950 1275 20  0001 C CNN
F 1 "VDIO" H 10950 1450 50  0000 C CNN
F 2 "~" H 10950 1325 60  0000 C CNN
F 3 "~" H 10950 1325 60  0000 C CNN
	1    10950 1325
	1    0    0    -1  
$EndComp
$EndSCHEMATC
