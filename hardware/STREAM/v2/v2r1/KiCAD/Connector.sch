EESchema Schematic File Version 2
LIBS:LMS7002EVB
LIBS:LMS7002EVB-cache
EELAYER 27 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 9 10
Title "LMS7002EVBv2"
Date "21 may 2014"
Rev ""
Comp "Lime Microsystems"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PINHEADER2X22 J7
U 1 1 50FE0753
P 6600 1550
F 0 "J7" H 6700 1600 60  0000 C CNN
F 1 "PINHEADER2X22" V 6700 500 60  0000 C CNN
F 2 "" H 6600 1550 60  0001 C CNN
F 3 "" H 6600 1550 60  0001 C CNN
F 4 "RS" H 6800 1700 60  0001 C CNN "Vendor"
F 5 "155-923" H 6900 1800 60  0001 C CNN "Vendor Part Number"
F 6 "Kontek" H 7000 1900 60  0001 C CNN "Manufacturer"
F 7 "6739810180440" H 7100 2000 60  0001 C CNN "Manufacturer Part Number"
F 8 "Pinheader, 2x22, straight, 2.54mm pitch, SMD" H 7200 2100 60  0001 C CNN "Description"
F 9 "Pin Header 2 x 22 SMD" H 7300 2200 60  0001 C CNN "Component Value"
	1    6600 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0354
U 1 1 50FE0786
P 6350 3800
F 0 "#PWR0354" H 6350 3850 30  0001 C CNN
F 1 "GND" H 6350 3730 30  0000 C CNN
F 2 "" H 6350 3800 60  0001 C CNN
F 3 "" H 6350 3800 60  0001 C CNN
	1    6350 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0355
U 1 1 50FE09F2
P 7050 3800
F 0 "#PWR0355" H 7050 3850 30  0001 C CNN
F 1 "GND" H 7050 3730 30  0000 C CNN
F 2 "" H 7050 3800 60  0001 C CNN
F 3 "" H 7050 3800 60  0001 C CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
Text Label 6150 2600 2    45   ~ 0
RXD0
Text Label 6150 2700 2    45   ~ 0
RXD2
Text Label 6150 2800 2    45   ~ 0
RXD4
Text Label 6150 2900 2    45   ~ 0
RXD6
Text Label 6150 3000 2    45   ~ 0
RXD8
Text Label 6200 3100 2    45   ~ 0
RXD10
Text Label 7400 2600 2    45   ~ 0
RXD1
Text Label 7400 2700 2    45   ~ 0
RXD3
Text Label 7400 2800 2    45   ~ 0
RXD5
Text Label 7400 2900 2    45   ~ 0
RXD7
Text Label 7400 3000 2    45   ~ 0
RXD9
Text Label 7400 3100 2    45   ~ 0
RXD11
Text Label 7400 3300 2    45   ~ 0
RXIQSEL
Text Label 7400 3400 2    45   ~ 0
RXEN
Text Label 6150 1600 2    45   ~ 0
TXD0
Text Label 6150 1700 2    45   ~ 0
TXD2
Text Label 6150 1800 2    45   ~ 0
TXD4
Text Label 6150 1900 2    45   ~ 0
TXD6
Text Label 6150 2000 2    45   ~ 0
TXD8
Text Label 6150 2100 2    45   ~ 0
TXD10
Text Label 7400 1600 2    45   ~ 0
TXD1
Text Label 7400 1700 2    45   ~ 0
TXD3
Text Label 7400 1800 2    45   ~ 0
TXD5
Text Label 7400 1900 2    45   ~ 0
TXD7
Text Label 7400 2000 2    45   ~ 0
TXD9
Text Label 7400 2100 2    45   ~ 0
TXD11
Text Label 7400 2300 2    45   ~ 0
TXIQSEL
Text Label 7400 2400 2    45   ~ 0
TXEN
Text Label 7400 3500 2    45   ~ 0
SAEN
Text Label 7400 3600 2    45   ~ 0
SDIO
Text Label 7400 3700 2    45   ~ 0
RESET
Text Label 6150 3600 2    45   ~ 0
SCLK
Text Label 6150 3700 2    45   ~ 0
SDO
$Comp
L GND #PWR0356
U 1 1 50FECB37
P 4000 9000
F 0 "#PWR0356" H 4000 9050 30  0001 C CNN
F 1 "GND" H 4000 8930 30  0000 C CNN
F 2 "" H 4000 9000 60  0001 C CNN
F 3 "" H 4000 9000 60  0001 C CNN
	1    4000 9000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR0357
U 1 1 50FECCBB
P 3250 8450
F 0 "#PWR0357" H 3250 8400 20  0001 C CNN
F 1 "+12V" H 3250 8550 30  0000 C CNN
F 2 "" H 3250 8450 60  0001 C CNN
F 3 "" H 3250 8450 60  0001 C CNN
	1    3250 8450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0358
U 1 1 50FED237
P 4350 9250
F 0 "#PWR0358" H 4350 9300 30  0001 C CNN
F 1 "GND" H 4350 9180 30  0000 C CNN
F 2 "" H 4350 9250 60  0001 C CNN
F 3 "" H 4350 9250 60  0001 C CNN
	1    4350 9250
	1    0    0    -1  
$EndComp
$Comp
L SC4524 U16
U 1 1 50FED88B
P 4550 8450
F 0 "U16" H 4900 8500 60  0000 C CNN
F 1 "SC4524" H 4900 8350 60  0000 C CNN
F 2 "SOIC-8" H 4800 8400 60  0001 C CNN
F 3 "" H 4550 8450 60  0001 C CNN
F 4 "Farnell" H 5000 8600 60  0001 C CNN "Vendor"
F 5 "1892639" H 5100 8700 60  0001 C CNN "Vendor Part Number"
F 6 "SEMTECH" H 5200 8800 60  0001 C CNN "Manufacturer"
F 7 "SC4524CSETRT" H 5300 8900 60  0001 C CNN "Manufacturer Part Number"
F 8 "IC, DC-DC CONV, 2MHz, 8-SOIC" H 5400 9000 60  0001 C CNN "Description"
F 9 "SC4524" H 5500 9100 60  0001 C CNN "Component Value"
	1    4550 8450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0359
U 1 1 50FEDA13
P 4850 9150
F 0 "#PWR0359" H 4850 9200 30  0001 C CNN
F 1 "GND" H 4850 9080 30  0000 C CNN
F 2 "" H 4850 9150 60  0001 C CNN
F 3 "" H 4850 9150 60  0001 C CNN
	1    4850 9150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0360
U 1 1 50FEE078
P 4750 9850
F 0 "#PWR0360" H 4750 9900 30  0001 C CNN
F 1 "GND" H 4750 9780 30  0000 C CNN
F 2 "" H 4750 9850 60  0001 C CNN
F 3 "" H 4750 9850 60  0001 C CNN
	1    4750 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0361
U 1 1 50FEF59F
P 5050 10450
F 0 "#PWR0361" H 5050 10500 30  0001 C CNN
F 1 "GND" H 5050 10380 30  0000 C CNN
F 2 "" H 5050 10450 60  0001 C CNN
F 3 "" H 5050 10450 60  0001 C CNN
	1    5050 10450
	1    0    0    -1  
$EndComp
$Comp
L 22UH_XAL60XX_SERIES L37
U 1 1 50FF2070
P 6300 8650
F 0 "L37" V 6215 8680 50  0000 C CNN
F 1 "22UH_XAL60XX_SERIES" H 6335 8565 50  0001 C CNN
F 2 "XAL60xx series" H 6265 8630 60  0001 C CNN
F 3 "" H 6300 8650 60  0001 C CNN
F 4 "Coilcraft" H 6465 8830 60  0001 C CNN "Vendor"
F 5 "XAL6060-223MEB" H 6565 8930 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 6665 9030 60  0001 C CNN "Manufacturer"
F 7 "XAL6060-223MEB" H 6765 9130 60  0001 C CNN "Manufacturer Part Number"
F 8 "SMT power inductor 22 uH" H 6865 9230 60  0001 C CNN "Description"
F 9 "22uH" V 6365 8630 60  0000 C CNN "Component Value"
	1    6300 8650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0362
U 1 1 50FF3107
P 6600 9800
F 0 "#PWR0362" H 6600 9850 30  0001 C CNN
F 1 "GND" H 6600 9730 30  0000 C CNN
F 2 "" H 6600 9800 60  0001 C CNN
F 3 "" H 6600 9800 60  0001 C CNN
	1    6600 9800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0363
U 1 1 50FF3EB8
P 6900 10000
F 0 "#PWR0363" H 6900 10050 30  0001 C CNN
F 1 "GND" H 6900 9930 30  0000 C CNN
F 2 "" H 6900 10000 60  0001 C CNN
F 3 "" H 6900 10000 60  0001 C CNN
	1    6900 10000
	1    0    0    -1  
$EndComp
$Comp
L TS4148 D1
U 1 1 50FF58A8
P 6200 8100
F 0 "D1" H 6200 8200 50  0000 C CNN
F 1 "TS4148" H 6200 8000 50  0001 C CNN
F 2 "SM0805" H 6100 8100 60  0001 C CNN
F 3 "" H 6200 8100 60  0001 C CNN
F 4 "Farnell" H 6300 8300 60  0001 C CNN "Vendor"
F 5 "8150206RL" H 6400 8400 60  0001 C CNN "Vendor Part Number"
F 6 "TAIWAN SEMICONDUCTOR" H 6500 8500 60  0001 C CNN "Manufacturer"
F 7 "TS4148 RY" H 6600 8600 60  0001 C CNN "Manufacturer Part Number"
F 8 "DIODE 0.5A 0805 100V" H 6700 8700 60  0001 C CNN "Description"
F 9 "TS4148" H 6225 7975 60  0000 C CNN "Component Value"
	1    6200 8100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0364
U 1 1 50FF6153
P 6050 9400
F 0 "#PWR0364" H 6050 9450 30  0001 C CNN
F 1 "GND" H 6050 9330 30  0000 C CNN
F 2 "" H 6050 9400 60  0001 C CNN
F 3 "" H 6050 9400 60  0001 C CNN
	1    6050 9400
	1    0    0    -1  
$EndComp
Text Label 6300 3400 2    45   ~ 0
RXMCLK
Text Label 6300 2200 2    45   ~ 0
TXFCLK
Text Label 6300 2400 2    45   ~ 0
TXMCLK
Text Label 7150 3200 0    45   ~ 0
SyntCLK1
Wire Wire Line
	5950 3400 6450 3400
Wire Wire Line
	6450 2500 6350 2500
Wire Wire Line
	7050 3800 7050 2500
Wire Wire Line
	7050 2500 6950 2500
Wire Wire Line
	6400 900  6400 850 
Wire Wire Line
	6450 2600 5950 2600
Wire Wire Line
	6450 2700 5950 2700
Wire Wire Line
	6450 2800 5950 2800
Wire Wire Line
	6450 2900 5950 2900
Wire Wire Line
	6450 3000 5950 3000
Wire Wire Line
	6450 3100 5950 3100
Wire Wire Line
	6450 1600 5950 1600
Wire Wire Line
	6450 1700 5950 1700
Wire Wire Line
	6450 1800 5950 1800
Wire Wire Line
	6450 1900 5950 1900
Wire Wire Line
	6450 2000 5950 2000
Wire Wire Line
	6450 2100 5950 2100
Wire Wire Line
	6450 3600 5950 3600
Wire Wire Line
	6450 3700 5950 3700
Wire Wire Line
	7450 2600 6950 2600
Wire Wire Line
	7450 2700 6950 2700
Wire Wire Line
	7450 2800 6950 2800
Wire Wire Line
	7450 2900 6950 2900
Wire Wire Line
	7450 3000 6950 3000
Wire Wire Line
	7450 3100 6950 3100
Wire Wire Line
	7450 3300 6950 3300
Wire Wire Line
	7450 3400 6950 3400
Wire Wire Line
	7450 1600 6950 1600
Wire Wire Line
	7450 1700 6950 1700
Wire Wire Line
	7450 1800 6950 1800
Wire Wire Line
	7450 1900 6950 1900
Wire Wire Line
	7450 2000 6950 2000
Wire Wire Line
	7450 2100 6950 2100
Wire Wire Line
	7450 2300 6950 2300
Wire Wire Line
	7450 2400 6950 2400
Wire Wire Line
	7450 3500 6950 3500
Wire Wire Line
	7450 3600 6950 3600
Wire Wire Line
	7450 3700 6950 3700
Wire Wire Line
	4000 8950 4000 9000
Wire Wire Line
	3800 8500 4400 8500
Wire Wire Line
	4000 8500 4000 8550
Wire Wire Line
	3250 8450 3250 8500
Wire Wire Line
	3250 8500 3300 8500
Wire Wire Line
	4350 9200 4350 9250
Connection ~ 4000 8500
Wire Wire Line
	4400 8600 4350 8600
Wire Wire Line
	4350 8600 4350 8800
Wire Wire Line
	4850 9050 4850 9150
Wire Wire Line
	4950 9050 4950 9100
Wire Wire Line
	4950 9100 4850 9100
Connection ~ 4850 9100
Wire Wire Line
	4750 9800 4750 9850
Wire Wire Line
	4750 9050 4750 9300
Wire Wire Line
	5050 9300 5050 9050
Wire Wire Line
	5050 9900 5050 9800
Wire Wire Line
	5050 10300 5050 10450
Wire Wire Line
	5350 9900 5350 10350
Wire Wire Line
	5350 10350 5050 10350
Connection ~ 5050 10350
Wire Wire Line
	5350 9500 5350 9250
Wire Wire Line
	5350 9250 5050 9250
Connection ~ 5050 9250
Wire Wire Line
	5450 8500 5550 8500
Wire Wire Line
	5950 8500 6000 8500
Wire Wire Line
	6000 8500 6000 8650
Wire Wire Line
	5450 8650 6100 8650
Connection ~ 6000 8650
Wire Wire Line
	6600 9300 6600 8650
Connection ~ 6600 8650
Wire Wire Line
	6600 9700 6600 9800
Connection ~ 6900 8650
Wire Wire Line
	6900 8750 6900 8650
Wire Wire Line
	6900 9900 6900 10000
Wire Wire Line
	6900 9400 6900 9250
Wire Wire Line
	5450 8800 6800 8800
Wire Wire Line
	6800 8800 6800 9300
Wire Wire Line
	6800 9300 6900 9300
Connection ~ 6900 9300
Wire Wire Line
	6000 8100 5500 8100
Wire Wire Line
	5500 8100 5500 8500
Connection ~ 5500 8500
Wire Wire Line
	6400 8100 6550 8100
Wire Wire Line
	6550 8100 6550 8650
Connection ~ 6550 8650
Wire Wire Line
	6050 8950 6050 8650
Connection ~ 6050 8650
Wire Wire Line
	6050 9350 6050 9400
Wire Wire Line
	6450 2200 5950 2200
Wire Wire Line
	6350 2500 6350 3800
Wire Wire Line
	6450 2400 5950 2400
Wire Wire Line
	6500 8650 7200 8650
Wire Wire Line
	7600 8250 7600 8750
Wire Wire Line
	7600 8750 7550 8750
Wire Wire Line
	7550 8650 7600 8650
Connection ~ 7600 8650
Wire Wire Line
	7050 8250 7050 8750
Wire Wire Line
	7050 8750 7200 8750
Wire Wire Line
	6950 3200 7450 3200
Text Label 6300 3300 2    45   ~ 0
RXFCLK
Wire Wire Line
	6450 3300 5950 3300
Wire Wire Line
	6950 2200 7450 2200
Text Label 7200 2200 0    45   ~ 0
SyntCLK2
$Comp
L +5V_USB #PWR0365
U 1 1 5201B0C0
P 7050 8250
F 0 "#PWR0365" H 7050 8340 20  0001 C CNN
F 1 "+5V_USB" H 7050 8340 30  0000 C CNN
F 2 "" H 7050 8250 60  0000 C CNN
F 3 "" H 7050 8250 60  0000 C CNN
	1    7050 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3200 5950 3200
Text Label 5950 3200 0    60   ~ 0
TXNRX1
Wire Wire Line
	6450 3500 5950 3500
Text Label 5950 3500 0    60   ~ 0
TXNRX2
Wire Wire Line
	6400 1400 6400 2300
Wire Wire Line
	6400 2300 6450 2300
$Comp
L PWR #PWR0366
U 1 1 520C5575
P 7600 8250
F 0 "#PWR0366" H 7600 8340 20  0001 C CNN
F 1 "PWR" H 7600 8340 30  0000 C CNN
F 2 "" H 7600 8250 60  0000 C CNN
F 3 "" H 7600 8250 60  0000 C CNN
	1    7600 8250
	1    0    0    -1  
$EndComp
$Comp
L VDIO #PWR0367
U 1 1 5216A414
P 6400 850
F 0 "#PWR0367" H 6400 990 20  0001 C CNN
F 1 "VDIO" H 6400 960 30  0000 C CNN
F 2 "" H 6400 850 60  0000 C CNN
F 3 "" H 6400 850 60  0000 C CNN
	1    6400 850 
	1    0    0    -1  
$EndComp
$Comp
L 0R_0402 R97
U 1 1 5219D534
P 3550 8500
F 0 "R97" H 3550 8400 50  0000 C CNN
F 1 "0R_0402" H 3525 8775 50  0001 C CNN
F 2 "SMD0402" H 3500 8750 60  0001 C CNN
F 3 "~" H 3550 8500 60  0000 C CNN
F 4 "Digi-Key" H 3550 9160 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 3570 9230 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 3560 9070 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 3570 8940 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 3550 8840 60  0001 C CNN "Description"
F 9 "0R" H 3550 8500 50  0000 C CNN "Component Value"
	1    3550 8500
	-1   0    0    1   
$EndComp
$Comp
L 0R_0402 R86
U 1 1 5219D5A9
P 6400 1150
F 0 "R86" H 6400 1250 50  0000 C CNN
F 1 "0R_0402" H 6375 1425 50  0001 C CNN
F 2 "SMD0402" H 6350 1400 60  0001 C CNN
F 3 "~" H 6400 1150 60  0000 C CNN
F 4 "Digi-Key" H 6400 1810 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 6420 1880 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 6410 1720 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 6420 1590 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 6400 1490 60  0001 C CNN "Description"
F 9 "0R" H 6400 1150 50  0000 C CNN "Component Value"
	1    6400 1150
	0    -1   -1   0   
$EndComp
$Comp
L 22PF_0402 C144
U 1 1 5219EAC3
P 5350 9700
F 0 "C144" H 5400 9800 50  0000 L CNN
F 1 "22PF_0402" H 5550 9750 50  0001 L CNN
F 2 "SMD0402" H 5300 9700 39  0001 C CNN
F 3 "~" H 5350 9700 60  0000 C CNN
F 4 "DigiKey" H 5500 9900 60  0001 C CNN "Vendor"
F 5 "311-1018-1-ND" H 5600 10000 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 5700 10100 60  0001 C CNN "Manufacturer"
F 7 "CC0402JRNPO9BN220" H 5800 10200 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER, 22PF, 50V, 5%, NPO, 0402," H 5900 10300 60  0001 C CNN "Description"
F 9 "22pF" H 5475 9600 50  0000 C CNN "Component Value"
	1    5350 9700
	1    0    0    -1  
$EndComp
$Comp
L 28K_0402 R100
U 1 1 521A06A1
P 5050 9550
F 0 "R100" H 5040 9620 50  0000 C CNN
F 1 "28K_0402" H 5025 9725 50  0001 C CNN
F 2 "SMD0402" H 5000 9800 60  0001 C CNN
F 3 "~" V 5050 9550 60  0000 C CNN
F 4 "Digi-Key" H 5050 10210 60  0001 C CNN "Vendor"
F 5 "311-28.0KLRCT-ND" H 5070 10280 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 5060 10120 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0728KL" H 5070 9990 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 28.0K, OHM, 1/16W, 1%, 0402, SMD," H 5050 9890 60  0001 C CNN "Description"
F 9 "28K" H 5050 9540 50  0000 C CNN "Component Value"
	1    5050 9550
	0    -1   -1   0   
$EndComp
$Comp
L 15K8_0402 R99
U 1 1 521A0724
P 4750 9550
F 0 "R99" H 4740 9620 50  0000 C CNN
F 1 "15K8_0402" H 4725 9725 50  0001 C CNN
F 2 "SMD0402" H 4700 9800 60  0001 C CNN
F 3 "~" V 4750 9550 60  0000 C CNN
F 4 "Digi-Key" H 4750 10210 60  0001 C CNN "Vendor"
F 5 "541-15.8KLCT-ND" H 4770 10280 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay Dale" H 4760 10120 60  0001 C CNN "Manufacturer"
F 7 "CRCW040215K8FKED" H 4770 9990 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 15.8K OHM, 1/16W, 1%, 0402, SMD," H 4750 9890 60  0001 C CNN "Description"
F 9 "15K8" H 4750 9540 50  0000 C CNN "Component Value"
	1    4750 9550
	0    -1   -1   0   
$EndComp
$Comp
L 10UF_1206 C141
U 1 1 521A19B9
P 4000 8750
F 0 "C141" H 4050 8850 50  0000 L CNN
F 1 "10UF_1206" H 4200 8800 50  0001 L CNN
F 2 "SMD1206" H 3950 8750 60  0001 C CNN
F 3 "~" H 4000 8750 60  0000 C CNN
F 4 "Digi-Key" H 4150 8950 60  0001 C CNN "Vendor"
F 5 "311-1376-1-ND" H 4250 9050 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 4350 9150 60  0001 C CNN "Manufacturer"
F 7 "CC1206ZKY5V7BB106" H 4450 9250 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP, CER, 10UF, 16V, Y5V, 1206," H 4550 9350 60  0001 C CNN "Description"
F 9 "10uF" H 4125 8650 60  0000 C CNN "Component Value"
	1    4000 8750
	1    0    0    -1  
$EndComp
$Comp
L 22NF_0402 C142
U 1 1 521A1A10
P 4350 9000
F 0 "C142" H 4350 9100 50  0000 L CNN
F 1 "22NF_0402" H 4550 9050 50  0001 L CNN
F 2 "SMD0402" H 4300 9000 60  0001 C CNN
F 3 "~" H 4350 9000 60  0000 C CNN
F 4 "DigiKey" H 4450 9500 60  0001 C CNN "Vendor"
F 5 "311-1378-1-ND" H 4500 9600 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 4400 9400 60  0001 C CNN "Manufacturer"
F 7 "CC0402KRX7R9BB103" H 4450 9300 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER, 0.022UF, 16V, 10%, X7R, 0402," H 4550 9200 60  0001 C CNN "Description"
F 9 "22nF" H 4475 8900 50  0000 C CNN "Component Value"
	1    4350 9000
	1    0    0    -1  
$EndComp
$Comp
L 22UF_0805 C143
U 1 1 521A3FBE
P 6600 9500
F 0 "C143" H 6650 9600 50  0000 L CNN
F 1 "22UF_0805" H 6800 9550 50  0001 L CNN
F 2 "SMD0805" H 6550 9500 60  0001 C CNN
F 3 "~" H 6600 9500 60  0000 C CNN
F 4 "Digi-Key" H 6750 9700 60  0001 C CNN "Vendor"
F 5 "445-1422-1-ND" H 6850 9800 60  0001 C CNN "Vendor Part Number"
F 6 "TDK Corporation" H 6950 9900 60  0001 C CNN "Manufacturer"
F 7 "C2012X5R0J226M125AC" H 7050 10000 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER, 22UF, 6.3V, 20%, X5R, 0805," H 7150 10100 60  0001 C CNN "Description"
F 9 "22uF" H 6725 9400 50  0000 C CNN "Component Value"
	1    6600 9500
	1    0    0    -1  
$EndComp
$Comp
L 22K1_0402 R98
U 1 1 521A4015
P 6900 9000
F 0 "R98" H 6900 8900 50  0000 C CNN
F 1 "22K1_0402" H 6875 9175 50  0001 C CNN
F 2 "SMD0402" H 6850 9250 60  0001 C CNN
F 3 "~" V 6900 9000 60  0000 C CNN
F 4 "Digi-Key" H 6900 9660 60  0001 C CNN "Vendor"
F 5 "311-22.1KLRCT-ND" H 6920 9730 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 6910 9570 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0722K1L" H 6920 9440 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 22.1K, OHM, 1/16W, 1%, 0402, SMD," H 6900 9340 60  0001 C CNN "Description"
F 9 "22K1" H 6900 8990 50  0000 C CNN "Component Value"
	1    6900 9000
	0    -1   -1   0   
$EndComp
$Comp
L 5K49_0402 R101
U 1 1 521A4082
P 6900 9650
F 0 "R101" H 6900 9550 50  0000 C CNN
F 1 "5K49_0402" H 6875 9825 50  0001 C CNN
F 2 "SMD0402" H 6850 9900 60  0001 C CNN
F 3 "~" V 6900 9650 60  0000 C CNN
F 4 "Digi-Key" H 6900 10310 60  0001 C CNN "Vendor"
F 5 "311-5.49KLRCT-ND" H 6920 10380 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 6910 10220 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-075K49L" H 6920 10090 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 5.49K, OHM, 1/16W, 1%, 0402, SMD," H 6900 9990 60  0001 C CNN "Description"
F 9 "5K49" H 6900 9640 50  0000 C CNN "Component Value"
	1    6900 9650
	0    -1   -1   0   
$EndComp
$Comp
L PINHEADER_2X2 JP2
U 1 1 521A40EF
P 7300 8600
F 0 "JP2" H 7375 8650 60  0000 C CNN
F 1 "PINHEADER_2X2" H 7350 8350 60  0000 C CNN
F 2 "PINHEADER_2X2" H 7300 8600 60  0001 C CNN
F 3 "~" H 7300 8600 60  0000 C CNN
F 4 "Digi-Key" H 7475 8750 60  0001 C CNN "Vendor"
F 5 "WM9514-ND" H 7575 8850 60  0001 C CNN "Vendor Part Number"
F 6 "Molex Inc" H 7675 8950 60  0001 C CNN "Manufacturer"
F 7 "0015912040" H 7775 9050 60  0001 C CNN "Manufacturer Part Number"
F 8 "CONN HEADER 4POS TIN SMD" H 7875 9150 60  0001 C CNN "Description"
	1    7300 8600
	1    0    0    -1  
$EndComp
$Comp
L 20BQ030 D2
U 1 1 521A55A1
P 6050 9150
F 0 "D2" H 6050 9250 50  0000 C CNN
F 1 "20BQ030" H 6050 9050 50  0001 C CNN
F 2 "SMB" H 5950 9150 60  0001 C CNN
F 3 "~" H 6050 9150 60  0000 C CNN
F 4 "Digi-Key" H 6150 9350 60  0001 C CNN "Vendor"
F 5 "20BQ030PBFCT-ND" H 6250 9450 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay Semiconductor Diodes Division" H 6350 9550 60  0001 C CNN "Manufacturer"
F 7 "VS-20BQ030TRPBF" H 6450 9650 60  0001 C CNN "Manufacturer Part Number"
F 8 "DIODE SCHOTTKY, 30V, 2A, DO214AA," H 6550 9750 60  0001 C CNN "Description"
F 9 "20BQ030" H 6075 9025 60  0000 C CNN "Component Value"
	1    6050 9150
	0    -1   -1   0   
$EndComp
$Comp
L 0.33UF_0603 C140
U 1 1 521A55D4
P 5750 8500
F 0 "C140" H 5800 8600 50  0000 L CNN
F 1 "0.33UF_0603" H 5950 8550 50  0001 L CNN
F 2 "SMD0603" H 5700 8500 60  0001 C CNN
F 3 "~" H 5750 8500 60  0000 C CNN
F 4 "Farnell" H 5900 8700 60  0001 C CNN "Vendor"
F 5 "1759404RL" H 6000 8800 60  0001 C CNN "Vendor Part Number"
F 6 "MULTICOMP" H 6100 8900 60  0001 C CNN "Manufacturer"
F 7 "MCCA000526" H 6200 9000 60  0001 C CNN "Manufacturer Part Number"
F 8 "MLCC 0603 X5R 16V 0.33UF" H 6300 9100 60  0001 C CNN "Description"
F 9 "0.33uF" H 5925 8400 50  0000 C CNN "Component Value"
	1    5750 8500
	0    -1   -1   0   
$EndComp
$Comp
L 2.2NF_0402 C145
U 1 1 531B39E0
P 5050 10100
F 0 "C145" H 5100 10200 50  0000 L CNN
F 1 "2.2NF_0402" H 5250 10150 50  0001 L CNN
F 2 "SMD0402" H 5000 10100 60  0001 C CNN
F 3 "~" H 5050 10100 60  0000 C CNN
F 4 "Digi-Key" H 5200 10300 60  0001 C CNN "Vendor"
F 5 "1276-1054-1-ND" H 5300 10400 60  0001 C CNN "Vendor Part Number"
F 6 "Samsung Electro-Mechanics America, Inc" H 5400 10500 60  0001 C CNN "Manufacturer"
F 7 "CL05B222KB5NNNC" H 5500 10600 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER 2200PF 50V 10% X7R 0402" H 5600 10700 60  0001 C CNN "Description"
F 9 "2.2nF" H 5175 10000 50  0000 C CNN "Component Value"
	1    5050 10100
	1    0    0    -1  
$EndComp
Text GLabel 4400 5000 2    45   Output ~ 0
TXD0
Text GLabel 4400 5200 2    45   Output ~ 0
TXD1
Text GLabel 4400 4900 2    45   Output ~ 0
TXD2
Text GLabel 4400 5100 2    45   Output ~ 0
TXD3
Text GLabel 4400 4600 2    45   Output ~ 0
TXD4
Text GLabel 4400 4700 2    45   Output ~ 0
TXD5
Text GLabel 4400 4200 2    45   Output ~ 0
TXD6
Text GLabel 4400 4400 2    45   Output ~ 0
TXD7
Text GLabel 4400 4100 2    45   Output ~ 0
TXD8
Text GLabel 4400 4300 2    45   Output ~ 0
TXD9
Text GLabel 4400 3300 2    45   Output ~ 0
TXD10
Text GLabel 4400 3500 2    45   Output ~ 0
TXD11
Text GLabel 4400 2700 2    45   Input ~ 0
RXD0
Text GLabel 4400 2800 2    45   Input ~ 0
RXD1
Text GLabel 4400 2100 2    45   Input ~ 0
RXD2
Text GLabel 4400 2000 2    45   Input ~ 0
RXD3
Text GLabel 3100 4800 0    45   Input ~ 0
RXD4
Text GLabel 4400 2400 2    45   Input ~ 0
RXD5
Text GLabel 4400 1500 2    45   Input ~ 0
RXD6
Text GLabel 3100 4700 0    45   Input ~ 0
RXD7
Text GLabel 3100 3900 0    45   Input ~ 0
RXD8
Text GLabel 4400 1400 2    45   Input ~ 0
RXD9
Text GLabel 3100 4200 0    45   Input ~ 0
RXD10
Text GLabel 3100 3800 0    45   Input ~ 0
RXD11
Text GLabel 4400 3400 2    45   Output ~ 0
TXEN
Text GLabel 4400 2600 2    45   Output ~ 0
TXIQSEL
Text GLabel 3100 3000 0    45   Output ~ 0
RXEN
Text GLabel 3100 3300 0    45   Output ~ 0
RXIQSEL
Text GLabel 2450 4300 0    45   Output ~ 0
SAEN
Text GLabel 2450 3600 0    45   BiDi ~ 0
SDO
Text GLabel 2450 2400 0    45   Output ~ 0
SCLK
Text GLabel 2450 3400 0    45   Output ~ 0
RESET
Text GLabel 2450 2000 0    45   BiDi ~ 0
SDIO
Text GLabel 5050 3000 2    45   Output ~ 0
SBEN
Text GLabel 3100 1600 0    45   Input ~ 0
SyntCLK1
Text GLabel 3100 1700 0    45   Input ~ 0
SyntCLK2
Text GLabel 4400 2500 2    45   Input ~ 0
TXMCLK
Text GLabel 3100 2900 0    45   Output ~ 0
RXFCLK
Text GLabel 3100 3200 0    45   Input ~ 0
RXMCLK
Text GLabel 3100 4100 0    45   BiDi ~ 0
TXNRX1
Text GLabel 4400 2300 2    45   BiDi ~ 0
TXNRX2
$Comp
L 0R_0402_NF R92
U 1 1 537A88A9
P 2850 3400
F 0 "R92" H 2600 3450 50  0000 C CNN
F 1 "0R_0402_NF" H 2815 3575 50  0001 C CNN
F 2 "SMD0402" H 2790 3650 60  0001 C CNN
F 3 "~" V 2840 3400 60  0000 C CNN
F 4 "Digi-Key" H 2860 4070 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 2870 4150 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 2840 3980 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 2850 3850 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 2810 3750 60  0001 C CNN "Description"
F 9 "0R" H 2800 3400 50  0000 C CNN "Component Value"
F 10 "NF" H 2950 3400 60  0000 C CNN "Assemble"
	1    2850 3400
	1    0    0    -1  
$EndComp
$Comp
L 0R_0402_NF R94
U 1 1 537A88B6
P 2850 2000
F 0 "R94" H 2600 1950 50  0000 C CNN
F 1 "0R_0402_NF" H 2815 2175 50  0001 C CNN
F 2 "SMD0402" H 2790 2250 60  0001 C CNN
F 3 "~" V 2840 2000 60  0000 C CNN
F 4 "Digi-Key" H 2860 2670 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 2870 2750 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 2840 2580 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 2850 2450 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 2810 2350 60  0001 C CNN "Description"
F 9 "0R" H 2800 2000 50  0000 C CNN "Component Value"
F 10 "NF" H 2950 2000 60  0000 C CNN "Assemble"
	1    2850 2000
	1    0    0    -1  
$EndComp
$Comp
L 0R_0402_NF R91
U 1 1 537A88C3
P 2850 4300
F 0 "R91" H 3100 4250 50  0000 C CNN
F 1 "0R_0402_NF" H 2815 4475 50  0001 C CNN
F 2 "SMD0402" H 2790 4550 60  0001 C CNN
F 3 "~" V 2840 4300 60  0000 C CNN
F 4 "Digi-Key" H 2860 4970 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 2870 5050 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 2840 4880 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 2850 4750 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 2810 4650 60  0001 C CNN "Description"
F 9 "0R" H 2800 4300 50  0000 C CNN "Component Value"
F 10 "NF" H 2950 4300 60  0000 C CNN "Assemble"
	1    2850 4300
	-1   0    0    1   
$EndComp
$Comp
L 0R_0402_NF R93
U 1 1 537A88D0
P 2850 3600
F 0 "R93" H 3100 3550 50  0000 C CNN
F 1 "0R_0402_NF" H 2815 3775 50  0001 C CNN
F 2 "SMD0402" H 2790 3850 60  0001 C CNN
F 3 "~" V 2840 3600 60  0000 C CNN
F 4 "Digi-Key" H 2860 4270 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 2870 4350 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 2840 4180 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 2850 4050 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 2810 3950 60  0001 C CNN "Description"
F 9 "0R" H 2800 3600 50  0000 C CNN "Component Value"
F 10 "NF" H 2950 3600 60  0000 C CNN "Assemble"
	1    2850 3600
	-1   0    0    1   
$EndComp
$Comp
L 0R_0402_NF R95
U 1 1 537A88DD
P 2850 2400
F 0 "R95" H 3100 2350 50  0000 C CNN
F 1 "0R_0402_NF" H 2815 2575 50  0001 C CNN
F 2 "SMD0402" H 2790 2650 60  0001 C CNN
F 3 "~" V 2840 2400 60  0000 C CNN
F 4 "Digi-Key" H 2860 3070 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 2870 3150 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 2840 2980 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 2850 2850 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 2810 2750 60  0001 C CNN "Description"
F 9 "0R" H 2800 2400 50  0000 C CNN "Component Value"
F 10 "NF" H 2950 2400 60  0000 C CNN "Assemble"
	1    2850 2400
	-1   0    0    1   
$EndComp
$Comp
L 0R_0402_NF R96
U 1 1 537A88EA
P 4650 3000
F 0 "R96" H 4400 2950 50  0000 C CNN
F 1 "0R_0402_NF" H 4615 3175 50  0001 C CNN
F 2 "SMD0402" H 4590 3250 60  0001 C CNN
F 3 "~" V 4640 3000 60  0000 C CNN
F 4 "Digi-Key" H 4660 3670 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 4670 3750 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 4640 3580 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 4650 3450 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 4610 3350 60  0001 C CNN "Description"
F 9 "0R" H 4600 3000 50  0000 C CNN "Component Value"
F 10 "NF" H 4750 3000 60  0000 C CNN "Assemble"
	1    4650 3000
	-1   0    0    1   
$EndComp
Text GLabel 3100 2300 0    45   Input ~ 0
INTR
Text GLabel 3100 3500 0    45   Output ~ 0
IQSEL1_DIR
Text GLabel 3100 1800 0    45   Output ~ 0
IQSEL2_DIR
Text GLabel 3100 3700 0    45   Output ~ 0
DIO_DIR_CTRL2
Text GLabel 3100 1900 0    45   Output ~ 0
DIO_DIR_CTRL1
Text GLabel 3100 2100 0    45   Output ~ 0
DIG_RST
$Comp
L FMC J6
U 1 1 537A88FC
P 3350 1300
F 0 "J6" H 3450 1400 50  0000 C CNN
F 1 "FMC" H 3750 -2950 60  0001 C CNN
F 2 "FMC" H 3600 1300 60  0001 C CNN
F 3 "~" H 3600 1300 60  0000 C CNN
F 4 "ASP-134604-01" H 3700 1600 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134604-01" H 4000 1900 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 3600 1500 60  0001 C CNN "Description"
F 7 "Samtec" H 3900 1800 60  0001 C CNN "Vendor"
F 8 "Samtec" H 3600 1500 60  0001 C CNN "Manufacturer"
F 9 "ASP-134604-01" H 3850 1350 50  0000 C CNN "Component Value"
	1    3350 1300
	1    0    0    -1  
$EndComp
NoConn ~ 4300 1800
NoConn ~ 4300 1900
NoConn ~ 4300 3800
NoConn ~ 4300 3900
NoConn ~ 3200 1400
NoConn ~ 3200 1500
Wire Wire Line
	2600 4300 2450 4300
Wire Wire Line
	2600 3600 2450 3600
Wire Wire Line
	2600 2400 2450 2400
Wire Wire Line
	2600 3400 2450 3400
Wire Wire Line
	2600 2000 2450 2000
Wire Wire Line
	4900 3000 5050 3000
Wire Wire Line
	3200 4200 3100 4200
Wire Wire Line
	3100 3900 3200 3900
Wire Wire Line
	3200 3800 3100 3800
Wire Wire Line
	3200 4100 3100 4100
Wire Wire Line
	3100 3300 3200 3300
Wire Wire Line
	3200 3000 3100 3000
Wire Wire Line
	3100 3200 3200 3200
Wire Wire Line
	3200 2900 3100 2900
Wire Wire Line
	3100 2400 3200 2400
Wire Wire Line
	3100 2100 3200 2100
Wire Wire Line
	3200 2300 3100 2300
Wire Wire Line
	3200 1900 3100 1900
Wire Wire Line
	4300 3500 4400 3500
Wire Wire Line
	4400 3200 4300 3200
Wire Wire Line
	4300 3400 4400 3400
Wire Wire Line
	4400 2600 4300 2600
Wire Wire Line
	4300 4600 4400 4600
Wire Wire Line
	4400 2500 4300 2500
Wire Wire Line
	4300 2700 4400 2700
Wire Wire Line
	4400 2100 4300 2100
Wire Wire Line
	4300 2400 4400 2400
Wire Wire Line
	4400 4300 4300 4300
Wire Wire Line
	4300 3300 4400 3300
Wire Wire Line
	4300 1500 4400 1500
Wire Wire Line
	3100 4700 3200 4700
Wire Wire Line
	4400 4700 4300 4700
Wire Wire Line
	4400 4900 4300 4900
Wire Wire Line
	4300 5000 4400 5000
Wire Wire Line
	4400 5100 4300 5100
Wire Wire Line
	4300 5200 4400 5200
Wire Wire Line
	4300 2300 4400 2300
Wire Wire Line
	3100 3600 3200 3600
Wire Wire Line
	3100 3700 3200 3700
Wire Wire Line
	4400 4100 4300 4100
Wire Wire Line
	4300 4200 4400 4200
Wire Wire Line
	3200 1600 3100 1600
Wire Wire Line
	3100 1700 3200 1700
Wire Wire Line
	4400 1400 4300 1400
Wire Wire Line
	4300 4400 4400 4400
Wire Wire Line
	3100 1800 3200 1800
Text GLabel 4400 3200 2    45   Output ~ 0
TXFCLK
Wire Wire Line
	4400 2800 4300 2800
Wire Wire Line
	4300 2000 4400 2000
Wire Wire Line
	3100 4800 3200 4800
Wire Wire Line
	3100 2000 3200 2000
Wire Wire Line
	3100 3500 3200 3500
Wire Wire Line
	3200 3400 3100 3400
Wire Wire Line
	3100 4300 3200 4300
Wire Wire Line
	4300 3000 4400 3000
Text GLabel 3050 7100 0    45   Input ~ 0
SCL
Text GLabel 3050 7000 0    45   Input ~ 0
SDA
$Comp
L 10K_0402 R88
U 1 1 537A89AE
P 2900 8400
F 0 "R88" V 2830 8390 50  0000 C CNN
F 1 "10K_0402" V 2725 8375 50  0001 C CNN
F 2 "SMD0402" V 2600 8375 60  0001 C CNN
F 3 "~" H 2900 8400 60  0000 C CNN
F 4 "Digi-Key" V 3080 8500 60  0001 C CNN "Vendor"
F 5 "RMCF0402FT10K0CT-ND" V 3180 8600 60  0001 C CNN "Vendor Part Number"
F 6 "Stackpole Electronics Inc" V 3280 8700 60  0001 C CNN "Manufacturer"
F 7 "RMCF0402FT10K0" V 3380 8800 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402" V 3480 8900 60  0001 C CNN "Description"
F 9 "10K" V 2910 8400 50  0000 C CNN "Component Value"
	1    2900 8400
	1    0    0    -1  
$EndComp
$Comp
L 10K_0402 R47
U 1 1 537A89BA
P 2750 8400
F 0 "R47" V 2680 8390 50  0000 C CNN
F 1 "10K_0402" V 2575 8375 50  0001 C CNN
F 2 "SMD0402" V 2450 8375 60  0001 C CNN
F 3 "~" H 2750 8400 60  0000 C CNN
F 4 "Digi-Key" V 2930 8500 60  0001 C CNN "Vendor"
F 5 "RMCF0402FT10K0CT-ND" V 3030 8600 60  0001 C CNN "Vendor Part Number"
F 6 "Stackpole Electronics Inc" V 3130 8700 60  0001 C CNN "Manufacturer"
F 7 "RMCF0402FT10K0" V 3230 8800 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402" V 3330 8900 60  0001 C CNN "Description"
F 9 "10K" V 2760 8400 50  0000 C CNN "Component Value"
	1    2750 8400
	1    0    0    -1  
$EndComp
$Comp
L 10K_0402_NF R87
U 1 1 537A89C7
P 2900 7700
F 0 "R87" V 2830 7690 50  0000 C CNN
F 1 "10K_0402_NF" V 2725 7675 50  0001 C CNN
F 2 "SMD0402" V 2600 7675 60  0001 C CNN
F 3 "~" H 2900 7700 60  0000 C CNN
F 4 "Digi-Key" V 3080 7800 60  0001 C CNN "Vendor"
F 5 "RMCF0402FT10K0CT-ND" V 3180 7900 60  0001 C CNN "Vendor Part Number"
F 6 "Stackpole Electronics Inc" V 3280 8000 60  0001 C CNN "Manufacturer"
F 7 "RMCF0402FT10K0" V 3380 8100 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402" V 3480 8200 60  0001 C CNN "Description"
F 9 "10K NF" V 2910 7700 50  0000 C CNN "Component Value"
F 10 "NOFIT" V 3530 8390 60  0001 C CNN "Assemble"
	1    2900 7700
	1    0    0    -1  
$EndComp
$Comp
L 10K_0402_NF R45
U 1 1 537A89D4
P 2750 7700
F 0 "R45" V 2680 7690 50  0000 C CNN
F 1 "10K_0402_NF" V 2575 7675 50  0001 C CNN
F 2 "SMD0402" V 2450 7675 60  0001 C CNN
F 3 "~" H 2750 7700 60  0000 C CNN
F 4 "Digi-Key" V 2930 7800 60  0001 C CNN "Vendor"
F 5 "RMCF0402FT10K0CT-ND" V 3030 7900 60  0001 C CNN "Vendor Part Number"
F 6 "Stackpole Electronics Inc" V 3130 8000 60  0001 C CNN "Manufacturer"
F 7 "RMCF0402FT10K0" V 3230 8100 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402" V 3330 8200 60  0001 C CNN "Description"
F 9 "10K NF" V 2760 7700 50  0000 C CNN "Component Value"
F 10 "NOFIT" V 3380 8390 60  0001 C CNN "Assemble"
	1    2750 7700
	1    0    0    -1  
$EndComp
$Comp
L VDIO #PWR0368
U 1 1 537A89DA
P 2750 7350
F 0 "#PWR0368" H 2750 7490 20  0001 C CNN
F 1 "VDIO" H 2750 7460 30  0000 C CNN
F 2 "" H 2750 7350 60  0000 C CNN
F 3 "" H 2750 7350 60  0000 C CNN
	1    2750 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0369
U 1 1 537A89E0
P 2750 8700
F 0 "#PWR0369" H 2750 8750 30  0001 C CNN
F 1 "GND" H 2750 8630 30  0000 C CNN
F 2 "" H 2750 8700 60  0001 C CNN
F 3 "" H 2750 8700 60  0001 C CNN
	1    2750 8700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0370
U 1 1 537A89E6
P 2900 8700
F 0 "#PWR0370" H 2900 8750 30  0001 C CNN
F 1 "GND" H 2900 8630 30  0000 C CNN
F 2 "" H 2900 8700 60  0001 C CNN
F 3 "" H 2900 8700 60  0001 C CNN
	1    2900 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7000 3050 7000
Wire Wire Line
	3050 7100 3200 7100
Wire Wire Line
	2900 7450 2900 7400
Wire Wire Line
	2900 7400 2750 7400
Wire Wire Line
	2750 7350 2750 7450
Connection ~ 2750 7400
Wire Wire Line
	2750 7950 2750 8150
Wire Wire Line
	2900 7950 2900 8150
Wire Wire Line
	3200 8000 2750 8000
Connection ~ 2750 8000
Wire Wire Line
	3200 8100 2900 8100
Connection ~ 2900 8100
Wire Wire Line
	2750 8650 2750 8700
Wire Wire Line
	2900 8650 2900 8700
$Comp
L FMC J6
U 5 1 537A89FC
P 3350 5500
F 0 "J6" H 3450 5600 50  0000 C CNN
F 1 "FMC" H 3900 5650 60  0001 C CNN
F 2 "FMC" H 3600 5500 60  0001 C CNN
F 3 "~" H 3600 5500 60  0000 C CNN
F 4 "ASP-134602-01" H 3700 5800 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134602-01" H 4000 6100 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 3600 5700 60  0001 C CNN "Description"
F 7 "Samtec" H 3900 6000 60  0001 C CNN "Vendor"
F 8 "Samtec" H 3600 5700 60  0001 C CNN "Manufacturer"
F 9 "ASP-134602-01" H 3850 5550 50  0000 C CNN "Component Value"
	5    3350 5500
	1    0    0    -1  
$EndComp
$Comp
L FMC J6
U 6 1 537A8A45
P 1050 1300
F 0 "J6" H 1200 1400 50  0000 C CNN
F 1 "FMC" H 1600 1450 60  0001 C CNN
F 2 "FMC" H 1300 1300 60  0001 C CNN
F 3 "~" H 1300 1300 60  0000 C CNN
F 4 "ASP-134602-01" H 1400 1600 60  0001 C CNN "Manufacturer Part Number"
F 5 "ASP-134602-01" H 1700 1900 60  0001 C CNN "Vendor Part Number"
F 6 "FMC" H 1300 1500 60  0001 C CNN "Description"
F 7 "Samtec" H 1600 1800 60  0001 C CNN "Vendor"
F 8 "Samtec" H 1300 1500 60  0001 C CNN "Manufacturer"
F 9 "ASP-134602-01" H 1550 1350 50  0000 C CNN "Component Value"
	6    1050 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0371
U 1 1 537A8A76
P 850 9400
F 0 "#PWR0371" H 850 9450 30  0001 C CNN
F 1 "GND" H 850 9330 30  0000 C CNN
F 2 "" H 850 9400 60  0001 C CNN
F 3 "" H 850 9400 60  0001 C CNN
	1    850  9400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0372
U 1 1 537A8A7C
P 1650 9400
F 0 "#PWR0372" H 1650 9450 30  0001 C CNN
F 1 "GND" H 1650 9330 30  0000 C CNN
F 2 "" H 1650 9400 60  0001 C CNN
F 3 "" H 1650 9400 60  0001 C CNN
	1    1650 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  9400 850  1350
Wire Wire Line
	850  1350 900  1350
Wire Wire Line
	900  1450 850  1450
Connection ~ 850  1450
Wire Wire Line
	900  1550 850  1550
Connection ~ 850  1550
Wire Wire Line
	900  1650 850  1650
Connection ~ 850  1650
Wire Wire Line
	900  1750 850  1750
Connection ~ 850  1750
Wire Wire Line
	900  1850 850  1850
Connection ~ 850  1850
Wire Wire Line
	900  1950 850  1950
Connection ~ 850  1950
Wire Wire Line
	900  2050 850  2050
Connection ~ 850  2050
Wire Wire Line
	900  2150 850  2150
Connection ~ 850  2150
Wire Wire Line
	900  2250 850  2250
Connection ~ 850  2250
Wire Wire Line
	900  2350 850  2350
Connection ~ 850  2350
Wire Wire Line
	900  2450 850  2450
Connection ~ 850  2450
Wire Wire Line
	900  2550 850  2550
Connection ~ 850  2550
Wire Wire Line
	900  2650 850  2650
Connection ~ 850  2650
Wire Wire Line
	900  2750 850  2750
Connection ~ 850  2750
Wire Wire Line
	900  2850 850  2850
Connection ~ 850  2850
Wire Wire Line
	900  2950 850  2950
Connection ~ 850  2950
Wire Wire Line
	900  3050 850  3050
Connection ~ 850  3050
Wire Wire Line
	900  3150 850  3150
Connection ~ 850  3150
Wire Wire Line
	900  3250 850  3250
Connection ~ 850  3250
Wire Wire Line
	900  3350 850  3350
Connection ~ 850  3350
Wire Wire Line
	900  3450 850  3450
Connection ~ 850  3450
Wire Wire Line
	900  3550 850  3550
Connection ~ 850  3550
Wire Wire Line
	900  3650 850  3650
Connection ~ 850  3650
Wire Wire Line
	900  3750 850  3750
Connection ~ 850  3750
Wire Wire Line
	900  3850 850  3850
Connection ~ 850  3850
Wire Wire Line
	900  3950 850  3950
Connection ~ 850  3950
Wire Wire Line
	900  4050 850  4050
Connection ~ 850  4050
Wire Wire Line
	900  4150 850  4150
Connection ~ 850  4150
Wire Wire Line
	900  4250 850  4250
Connection ~ 850  4250
Wire Wire Line
	900  4350 850  4350
Connection ~ 850  4350
Wire Wire Line
	900  4450 850  4450
Connection ~ 850  4450
Wire Wire Line
	900  4550 850  4550
Connection ~ 850  4550
Wire Wire Line
	900  4650 850  4650
Connection ~ 850  4650
Wire Wire Line
	900  4750 850  4750
Connection ~ 850  4750
Wire Wire Line
	900  4850 850  4850
Connection ~ 850  4850
Wire Wire Line
	900  4950 850  4950
Connection ~ 850  4950
Wire Wire Line
	900  5050 850  5050
Connection ~ 850  5050
Wire Wire Line
	900  5150 850  5150
Connection ~ 850  5150
Wire Wire Line
	900  5250 850  5250
Connection ~ 850  5250
Wire Wire Line
	900  5350 850  5350
Connection ~ 850  5350
Wire Wire Line
	900  5450 850  5450
Connection ~ 850  5450
Wire Wire Line
	900  5550 850  5550
Connection ~ 850  5550
Wire Wire Line
	900  5650 850  5650
Connection ~ 850  5650
Wire Wire Line
	900  5750 850  5750
Connection ~ 850  5750
Wire Wire Line
	900  5850 850  5850
Connection ~ 850  5850
Wire Wire Line
	900  5950 850  5950
Connection ~ 850  5950
Wire Wire Line
	900  6050 850  6050
Connection ~ 850  6050
Wire Wire Line
	900  6150 850  6150
Connection ~ 850  6150
Wire Wire Line
	900  6250 850  6250
Connection ~ 850  6250
Wire Wire Line
	900  6350 850  6350
Connection ~ 850  6350
Wire Wire Line
	900  6450 850  6450
Connection ~ 850  6450
Wire Wire Line
	900  6550 850  6550
Connection ~ 850  6550
Wire Wire Line
	900  6650 850  6650
Connection ~ 850  6650
Wire Wire Line
	900  6750 850  6750
Connection ~ 850  6750
Wire Wire Line
	900  6850 850  6850
Connection ~ 850  6850
Wire Wire Line
	900  6950 850  6950
Connection ~ 850  6950
Wire Wire Line
	900  7050 850  7050
Connection ~ 850  7050
Wire Wire Line
	900  7150 850  7150
Connection ~ 850  7150
Wire Wire Line
	900  7250 850  7250
Connection ~ 850  7250
Wire Wire Line
	900  7350 850  7350
Connection ~ 850  7350
Wire Wire Line
	900  7450 850  7450
Connection ~ 850  7450
Wire Wire Line
	900  7550 850  7550
Connection ~ 850  7550
Wire Wire Line
	900  7650 850  7650
Connection ~ 850  7650
Wire Wire Line
	900  7750 850  7750
Connection ~ 850  7750
Wire Wire Line
	900  7850 850  7850
Connection ~ 850  7850
Wire Wire Line
	900  7950 850  7950
Connection ~ 850  7950
Wire Wire Line
	900  8050 850  8050
Connection ~ 850  8050
Wire Wire Line
	900  8150 850  8150
Connection ~ 850  8150
Wire Wire Line
	900  8250 850  8250
Connection ~ 850  8250
Wire Wire Line
	900  8350 850  8350
Connection ~ 850  8350
Wire Wire Line
	900  8450 850  8450
Connection ~ 850  8450
Wire Wire Line
	900  8550 850  8550
Connection ~ 850  8550
Wire Wire Line
	900  8650 850  8650
Connection ~ 850  8650
Wire Wire Line
	900  8750 850  8750
Connection ~ 850  8750
Wire Wire Line
	900  8850 850  8850
Connection ~ 850  8850
Wire Wire Line
	900  8950 850  8950
Connection ~ 850  8950
Wire Wire Line
	900  9050 850  9050
Connection ~ 850  9050
Wire Wire Line
	900  9150 850  9150
Connection ~ 850  9150
Wire Wire Line
	900  9250 850  9250
Connection ~ 850  9250
Wire Wire Line
	1650 9400 1650 1450
Wire Wire Line
	1650 1450 1600 1450
Wire Wire Line
	1600 1550 1650 1550
Connection ~ 1650 1550
Wire Wire Line
	1600 1650 1650 1650
Connection ~ 1650 1650
Wire Wire Line
	1600 1750 1650 1750
Connection ~ 1650 1750
Wire Wire Line
	1600 1850 1650 1850
Connection ~ 1650 1850
Wire Wire Line
	1600 1950 1650 1950
Connection ~ 1650 1950
Wire Wire Line
	1600 2050 1650 2050
Connection ~ 1650 2050
Wire Wire Line
	1600 2150 1650 2150
Connection ~ 1650 2150
Wire Wire Line
	1600 2250 1650 2250
Connection ~ 1650 2250
Wire Wire Line
	1600 2350 1650 2350
Connection ~ 1650 2350
Wire Wire Line
	1600 2450 1650 2450
Connection ~ 1650 2450
Wire Wire Line
	1600 2550 1650 2550
Connection ~ 1650 2550
Wire Wire Line
	1600 2650 1650 2650
Connection ~ 1650 2650
Wire Wire Line
	1600 2750 1650 2750
Connection ~ 1650 2750
Wire Wire Line
	1600 2850 1650 2850
Connection ~ 1650 2850
Wire Wire Line
	1600 2950 1650 2950
Connection ~ 1650 2950
Wire Wire Line
	1600 3050 1650 3050
Connection ~ 1650 3050
Wire Wire Line
	1600 3150 1650 3150
Connection ~ 1650 3150
Wire Wire Line
	1600 3250 1650 3250
Connection ~ 1650 3250
Wire Wire Line
	1600 3350 1650 3350
Connection ~ 1650 3350
Wire Wire Line
	1600 3450 1650 3450
Connection ~ 1650 3450
Wire Wire Line
	1600 3550 1650 3550
Connection ~ 1650 3550
Wire Wire Line
	1600 3650 1650 3650
Connection ~ 1650 3650
Wire Wire Line
	1600 3750 1650 3750
Connection ~ 1650 3750
Wire Wire Line
	1600 3850 1650 3850
Connection ~ 1650 3850
Wire Wire Line
	1600 3950 1650 3950
Connection ~ 1650 3950
Wire Wire Line
	1600 4050 1650 4050
Connection ~ 1650 4050
Wire Wire Line
	1600 4150 1650 4150
Connection ~ 1650 4150
Wire Wire Line
	1600 4250 1650 4250
Connection ~ 1650 4250
Wire Wire Line
	1600 4350 1650 4350
Connection ~ 1650 4350
Wire Wire Line
	1600 4450 1650 4450
Connection ~ 1650 4450
Wire Wire Line
	1600 4550 1650 4550
Connection ~ 1650 4550
Wire Wire Line
	1600 4650 1650 4650
Connection ~ 1650 4650
Wire Wire Line
	1600 4750 1650 4750
Connection ~ 1650 4750
Wire Wire Line
	1600 4850 1650 4850
Connection ~ 1650 4850
Wire Wire Line
	1600 4950 1650 4950
Connection ~ 1650 4950
Wire Wire Line
	1600 5050 1650 5050
Connection ~ 1650 5050
Wire Wire Line
	1600 5150 1650 5150
Connection ~ 1650 5150
Wire Wire Line
	1600 5250 1650 5250
Connection ~ 1650 5250
Wire Wire Line
	1600 5350 1650 5350
Connection ~ 1650 5350
Wire Wire Line
	1600 5450 1650 5450
Connection ~ 1650 5450
Wire Wire Line
	1600 5550 1650 5550
Connection ~ 1650 5550
Wire Wire Line
	1600 5650 1650 5650
Connection ~ 1650 5650
Wire Wire Line
	1600 5750 1650 5750
Connection ~ 1650 5750
Wire Wire Line
	1600 5850 1650 5850
Connection ~ 1650 5850
Wire Wire Line
	1600 5950 1650 5950
Connection ~ 1650 5950
Wire Wire Line
	1600 6050 1650 6050
Connection ~ 1650 6050
Wire Wire Line
	1600 6150 1650 6150
Connection ~ 1650 6150
Wire Wire Line
	1600 6250 1650 6250
Connection ~ 1650 6250
Wire Wire Line
	1650 6350 1600 6350
Connection ~ 1650 6350
Wire Wire Line
	1600 6450 1650 6450
Connection ~ 1650 6450
Wire Wire Line
	1600 6550 1650 6550
Connection ~ 1650 6550
Wire Wire Line
	1600 6650 1650 6650
Connection ~ 1650 6650
Wire Wire Line
	1600 6750 1650 6750
Connection ~ 1650 6750
Wire Wire Line
	1600 6850 1650 6850
Connection ~ 1650 6850
Wire Wire Line
	1600 6950 1650 6950
Connection ~ 1650 6950
Wire Wire Line
	1650 7050 1600 7050
Connection ~ 1650 7050
Wire Wire Line
	1650 7150 1600 7150
Connection ~ 1650 7150
Wire Wire Line
	1600 7250 1650 7250
Connection ~ 1650 7250
Wire Wire Line
	1600 7350 1650 7350
Connection ~ 1650 7350
Wire Wire Line
	1600 7450 1650 7450
Connection ~ 1650 7450
Wire Wire Line
	1600 7550 1650 7550
Connection ~ 1650 7550
Wire Wire Line
	1600 7650 1650 7650
Connection ~ 1650 7650
Wire Wire Line
	1600 7750 1650 7750
Connection ~ 1650 7750
Wire Wire Line
	1600 7850 1650 7850
Connection ~ 1650 7850
Wire Wire Line
	1600 7950 1650 7950
Connection ~ 1650 7950
Wire Wire Line
	1600 8050 1650 8050
Connection ~ 1650 8050
Wire Wire Line
	1600 8150 1650 8150
Connection ~ 1650 8150
Wire Wire Line
	1600 8250 1650 8250
Connection ~ 1650 8250
Wire Wire Line
	1600 8350 1650 8350
Connection ~ 1650 8350
Wire Wire Line
	1600 8450 1650 8450
Connection ~ 1650 8450
Wire Wire Line
	1600 8550 1650 8550
Connection ~ 1650 8550
Wire Wire Line
	1600 8650 1650 8650
Connection ~ 1650 8650
Wire Wire Line
	1600 8750 1650 8750
Connection ~ 1650 8750
Wire Wire Line
	1600 8850 1650 8850
Connection ~ 1650 8850
Wire Wire Line
	1600 8950 1650 8950
Connection ~ 1650 8950
Wire Wire Line
	1600 9050 1650 9050
Connection ~ 1650 9050
Wire Wire Line
	1600 9150 1650 9150
Connection ~ 1650 9150
Wire Wire Line
	1600 9250 1650 9250
Connection ~ 1650 9250
$Comp
L +12V #PWR0373
U 1 1 537B6059
P 3050 6250
F 0 "#PWR0373" H 3050 6200 20  0001 C CNN
F 1 "+12V" H 3050 6350 30  0000 C CNN
F 2 "" H 3050 6250 60  0001 C CNN
F 3 "" H 3050 6250 60  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6400 3050 6400
Wire Wire Line
	3050 6400 3050 6250
Wire Wire Line
	3200 6300 3050 6300
Connection ~ 3050 6300
Text GLabel 3100 2800 0    45   Output ~ 0
DIO_BUFF_OE
Text GLabel 3100 2500 0    45   Output ~ 0
G_PWR_DWN
Wire Wire Line
	3200 2500 3100 2500
Wire Wire Line
	3200 2800 3100 2800
$Comp
L 0R_0402 R89
U 1 1 537D2AD3
P 4750 5600
F 0 "R89" H 4750 5500 50  0000 C CNN
F 1 "0R_0402" H 4725 5875 50  0001 C CNN
F 2 "SMD0402" H 4700 5850 60  0001 C CNN
F 3 "~" H 4750 5600 60  0000 C CNN
F 4 "Digi-Key" H 4750 6260 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" H 4770 6330 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 4760 6170 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 4770 6040 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," H 4750 5940 60  0001 C CNN "Description"
F 9 "0R" H 4750 5600 50  0000 C CNN "Component Value"
	1    4750 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 5600 4500 5600
Wire Wire Line
	4300 5900 4450 5900
Wire Wire Line
	4450 5900 4450 5600
Connection ~ 4450 5600
Wire Wire Line
	4300 5700 4450 5700
Connection ~ 4450 5700
Wire Wire Line
	4300 5800 4450 5800
Connection ~ 4450 5800
$Comp
L VDIO_BB #PWR0374
U 1 1 537D32F0
P 5100 5550
F 0 "#PWR0374" H 5100 5690 20  0001 C CNN
F 1 "VDIO_BB" H 5100 5660 30  0000 C CNN
F 2 "~" H 5100 5550 60  0000 C CNN
F 3 "~" H 5100 5550 60  0000 C CNN
	1    5100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5550 5100 5600
Wire Wire Line
	5100 5600 5000 5600
$EndSCHEMATC
