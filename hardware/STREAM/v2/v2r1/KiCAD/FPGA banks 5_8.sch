EESchema Schematic File Version 2
LIBS:Stream
LIBS:LMS7002EVB
LIBS:Stream-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 16
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
L EP4CE40F23C7N IC1
U 5 1 538BA38D
P 3000 900
F 0 "IC1" H 2350 950 60  0000 C CNN
F 1 "EP4CE40F23C7N" H 3050 1800 60  0001 C CNN
F 2 " 484FBGA" H 3050 -600 60  0000 C CNN
F 3 "" H 925 -2350 60  0000 C CNN
F 4 "Digi-Key" H 3025 2075 60  0001 C CNN "Vendor"
F 5 "544-2687-ND" H 3025 2175 60  0001 C CNN "Vendor Part Number"
F 6 "Altera" H 3025 1975 60  0001 C CNN "Manufacturer"
F 7 "EP4CE40F23C7N" H 3025 1900 60  0001 C CNN "Manufacturer Part Number"
F 8 "IC, FPGA, 328 I/O, 484FBGA," H 3050 1675 60  0001 C CNN "Description"
F 9 "EP4CE40F23C7N" H 3350 -1700 60  0000 C CNN "Component Value"
	5    3000 900 
	1    0    0    -1  
$EndComp
$Comp
L EP4CE40F23C7N IC1
U 6 1 538BA3C0
P 8250 850
F 0 "IC1" H 7500 900 60  0000 C CNN
F 1 "EP4CE40F23C7N" H 8300 1750 60  0001 C CNN
F 2 " 484FBGA" H 8300 -600 60  0000 C CNN
F 3 "" H 6175 -2400 60  0000 C CNN
F 4 "Digi-Key" H 8275 2025 60  0001 C CNN "Vendor"
F 5 "544-2687-ND" H 8275 2125 60  0001 C CNN "Vendor Part Number"
F 6 "Altera" H 8275 1925 60  0001 C CNN "Manufacturer"
F 7 "EP4CE40F23C7N" H 8275 1850 60  0001 C CNN "Manufacturer Part Number"
F 8 "IC, FPGA, 328 I/O, 484FBGA," H 8300 1625 60  0001 C CNN "Description"
F 9 "EP4CE40F23C7N" H 8625 -1675 60  0000 C CNN "Component Value"
	6    8250 850 
	1    0    0    -1  
$EndComp
$Comp
L EP4CE40F23C7N IC1
U 7 1 538BA3F3
P 3100 4300
F 0 "IC1" H 2350 4350 60  0000 C CNN
F 1 "EP4CE40F23C7N" H 3150 5200 60  0001 C CNN
F 2 " 484FBGA" H 3075 2775 60  0000 C CNN
F 3 "" H 1025 1050 60  0000 C CNN
F 4 "Digi-Key" H 3125 5475 60  0001 C CNN "Vendor"
F 5 "544-2687-ND" H 3125 5575 60  0001 C CNN "Vendor Part Number"
F 6 "Altera" H 3125 5375 60  0001 C CNN "Manufacturer"
F 7 "EP4CE40F23C7N" H 3125 5300 60  0001 C CNN "Manufacturer Part Number"
F 8 "IC, FPGA, 328 I/O, 484FBGA," H 3150 5075 60  0001 C CNN "Description"
F 9 "EP4CE40F23C7N" H 3425 1500 60  0000 C CNN "Component Value"
	7    3100 4300
	1    0    0    -1  
$EndComp
$Comp
L EP4CE40F23C7N IC1
U 8 1 538BA426
P 8200 3900
F 0 "IC1" H 7550 3950 60  0000 C CNN
F 1 "EP4CE40F23C7N" H 8250 4800 60  0001 C CNN
F 2 " 484FBGA" H 8300 2625 60  0000 C CNN
F 3 "" H 6125 650 60  0000 C CNN
F 4 "Digi-Key" H 8225 5075 60  0001 C CNN "Vendor"
F 5 "544-2687-ND" H 8225 5175 60  0001 C CNN "Vendor Part Number"
F 6 "Altera" H 8225 4975 60  0001 C CNN "Manufacturer"
F 7 "EP4CE40F23C7N" H 8225 4900 60  0001 C CNN "Manufacturer Part Number"
F 8 "IC, FPGA, 328 I/O, 484FBGA," H 8250 4675 60  0001 C CNN "Description"
F 9 "EP4CE40F23C7N" H 8650 1275 60  0000 C CNN "Component Value"
	8    8200 3900
	1    0    0    -1  
$EndComp
Text GLabel 6750 4075 0    43   Input ~ 0
IQSEL_Enable2
Text GLabel 6750 4225 0    31   Input ~ 0
IQSEL_Enable1
Text GLabel 9400 5450 2    43   Input ~ 0
MCLK2
Text GLabel 9400 5350 2    43   Input ~ 0
MCLK1
$Comp
L GND #PWR05
U 1 1 53856779
P 4650 7650
F 0 "#PWR05" H 4650 7750 40  0001 C CNN
F 1 "GND" H 4650 7580 40  0000 C CNN
F 2 "~" H 4650 7650 60  0000 C CNN
F 3 "~" H 4650 7650 60  0000 C CNN
	1    4650 7650
	-1   0    0    -1  
$EndComp
Text Label 6775 4750 0    51   ~ 0
DIQ2_D0
Text Label 6775 4675 0    51   ~ 0
DIQ2_D1
Text Label 6775 4600 0    51   ~ 0
DIQ2_D3
Text Label 6775 4975 0    51   ~ 0
DIQ2_D4
Text Label 6775 4525 0    51   ~ 0
DIQ2_D5
Text Label 6775 4300 0    51   ~ 0
DIQ2_D6
Text Label 6775 4375 0    51   ~ 0
DIQ2_D7
Text Label 6775 4150 0    51   ~ 0
DIQ2_D8
Text Label 6775 5425 0    51   ~ 0
DIQ2_D9
Text Label 6775 5050 0    51   ~ 0
DIQ2_D10
Text Label 6775 4000 0    51   ~ 0
DIQ2_D11
Text Label 6775 6100 0    51   ~ 0
DIQ1_D0
Text Label 6775 6025 0    51   ~ 0
DIQ1_D1
Text Label 6775 5950 0    51   ~ 0
DIQ1_D2
Text Label 6775 6175 0    51   ~ 0
DIQ1_D3
Text Label 6775 5725 0    51   ~ 0
DIQ1_D4
Text Label 6775 5650 0    51   ~ 0
DIQ1_D5
Text Label 6775 6250 0    51   ~ 0
DIQ1_D6
Text Label 9700 4025 2    51   ~ 0
DIQ1_D7
Text Label 6775 5275 0    51   ~ 0
DIQ1_D8
Text Label 6775 5500 0    51   ~ 0
DIQ1_D9
Text Label 6775 4900 0    51   ~ 0
DIQ1_D10
Text Label 6775 4825 0    51   ~ 0
DIQ1_D11
Text Label 6775 5800 0    51   ~ 0
DIQ2_D2
Text Label 10575 5675 0    51   ~ 0
DIQ2_D0
Text Label 10575 5775 0    51   ~ 0
DIQ2_D1
Text Label 10575 5975 0    51   ~ 0
DIQ2_D3
Text Label 10575 6075 0    51   ~ 0
DIQ2_D4
Text Label 10575 6175 0    51   ~ 0
DIQ2_D5
Text Label 10575 6275 0    51   ~ 0
DIQ2_D6
Text Label 10575 6375 0    51   ~ 0
DIQ2_D7
Text Label 10575 6475 0    51   ~ 0
DIQ2_D8
Text Label 10575 6575 0    51   ~ 0
DIQ2_D9
Text Label 10575 6675 0    51   ~ 0
DIQ2_D10
Text Label 10575 6775 0    51   ~ 0
DIQ2_D11
Text Label 10575 4225 0    51   ~ 0
DIQ1_D0
Text Label 10575 4325 0    51   ~ 0
DIQ1_D1
Text Label 10575 4425 0    51   ~ 0
DIQ1_D2
Text Label 10575 4525 0    51   ~ 0
DIQ1_D3
Text Label 10575 4625 0    51   ~ 0
DIQ1_D4
Text Label 10575 4725 0    51   ~ 0
DIQ1_D5
Text Label 10575 4825 0    51   ~ 0
DIQ1_D6
Text Label 10575 4925 0    51   ~ 0
DIQ1_D7
Text Label 10575 5025 0    51   ~ 0
DIQ1_D8
Text Label 10575 5125 0    51   ~ 0
DIQ1_D9
Text Label 10575 5225 0    51   ~ 0
DIQ1_D10
Text Label 10575 5325 0    51   ~ 0
DIQ1_D11
Text Label 10575 5875 0    51   ~ 0
DIQ2_D2
Wire Wire Line
	10575 4225 10925 4225
Wire Wire Line
	10575 4325 10925 4325
Wire Wire Line
	10575 4425 10925 4425
Wire Wire Line
	10575 4525 10925 4525
Wire Wire Line
	10575 4625 10925 4625
Wire Wire Line
	10575 4725 10925 4725
Wire Wire Line
	10575 4825 10925 4825
Wire Wire Line
	10575 4925 10925 4925
Wire Wire Line
	10575 5025 10925 5025
Wire Wire Line
	10575 5125 10925 5125
Wire Wire Line
	10575 5225 10925 5225
Wire Wire Line
	10575 5325 10925 5325
Wire Wire Line
	10575 5675 10925 5675
Wire Wire Line
	10575 5775 10925 5775
Wire Wire Line
	10575 5875 10925 5875
Wire Wire Line
	10575 5975 10925 5975
Wire Wire Line
	10575 6075 10925 6075
Wire Wire Line
	10575 6175 10925 6175
Wire Wire Line
	10575 6275 10925 6275
Wire Wire Line
	10575 6375 10925 6375
Wire Wire Line
	10575 6475 10925 6475
Wire Wire Line
	10575 6575 10925 6575
Wire Wire Line
	10575 6675 10925 6675
Wire Wire Line
	10575 6775 10925 6775
Entry Wire Line
	10925 4225 11025 4125
Entry Wire Line
	10925 4325 11025 4225
Entry Wire Line
	10925 4425 11025 4325
Entry Wire Line
	10925 4525 11025 4425
Entry Wire Line
	10925 4625 11025 4525
Entry Wire Line
	10925 4725 11025 4625
Entry Wire Line
	10925 4825 11025 4725
Entry Wire Line
	10925 4925 11025 4825
Entry Wire Line
	10925 5025 11025 4925
Entry Wire Line
	10925 5125 11025 5025
Entry Wire Line
	10925 5225 11025 5125
Entry Wire Line
	10925 5325 11025 5225
Entry Wire Line
	10925 5675 11025 5575
Entry Wire Line
	10925 5775 11025 5675
Entry Wire Line
	10925 5875 11025 5775
Entry Wire Line
	10925 5975 11025 5875
Entry Wire Line
	10925 6075 11025 5975
Entry Wire Line
	10925 6175 11025 6075
Entry Wire Line
	10925 6275 11025 6175
Entry Wire Line
	10925 6375 11025 6275
Entry Wire Line
	10925 6475 11025 6375
Entry Wire Line
	10925 6575 11025 6475
Entry Wire Line
	10925 6675 11025 6575
Entry Wire Line
	10925 6775 11025 6675
Wire Bus Line
	11025 5525 11025 6700
Wire Bus Line
	11025 4050 11025 5225
Wire Bus Line
	11025 4050 10925 4050
Wire Bus Line
	11025 5525 10925 5525
Text HLabel 10925 4050 0    51   Output ~ 0
DIQ1_D[0..11]
Text HLabel 10925 5525 0    51   Input ~ 0
DIQ2_D[0..11]
Wire Wire Line
	9400 5350 9325 5350
Wire Wire Line
	9400 5450 9325 5450
Wire Wire Line
	6750 4075 7150 4075
Wire Wire Line
	7150 6100 6775 6100
Wire Wire Line
	6775 6025 7150 6025
Wire Wire Line
	6775 6250 7150 6250
Wire Wire Line
	6775 4300 7150 4300
Wire Wire Line
	6775 4600 7150 4600
Wire Wire Line
	6775 5725 7150 5725
Wire Wire Line
	6775 4000 7150 4000
Wire Wire Line
	6775 4525 7150 4525
Wire Wire Line
	6775 5425 7150 5425
Wire Wire Line
	6775 5050 7150 5050
Wire Wire Line
	6775 4975 7150 4975
Wire Wire Line
	6775 4150 7150 4150
Wire Wire Line
	6775 5800 7150 5800
Wire Wire Line
	6775 4375 7150 4375
Wire Wire Line
	6775 4675 7150 4675
Wire Wire Line
	6775 5650 7150 5650
Wire Wire Line
	9700 4025 9325 4025
Wire Wire Line
	6775 5275 7150 5275
Wire Wire Line
	6775 5950 7150 5950
Wire Wire Line
	6775 4825 7150 4825
Wire Wire Line
	6775 5500 7150 5500
Wire Wire Line
	6775 4900 7150 4900
Wire Wire Line
	6775 6175 7150 6175
Wire Wire Line
	7150 4750 6775 4750
Text GLabel 4350 1800 2    39   BiDi ~ 0
lan_col
Text GLabel 4125 1050 2    39   BiDi ~ 0
lan_tx_err
Text GLabel 4125 1150 2    39   BiDi ~ 0
lan_tx_en
Text GLabel 1600 1250 0    39   BiDi ~ 0
lan_crs
Text GLabel 1600 1025 0    39   BiDi ~ 0
lan_rx_dv
Text GLabel 1600 2075 0    39   Output ~ 0
lan_gtx_clk
Text Label 5050 2025 0    39   ~ 0
lan_rxd_0
Text Label 5050 2100 0    39   ~ 0
lan_rxd_1
Text Label 5050 2175 0    39   ~ 0
lan_rxd_2
Text Label 5050 2250 0    39   ~ 0
lan_rxd_3
Text Label 5050 2325 0    39   ~ 0
lan_rxd_4
Text Label 5050 2400 0    39   ~ 0
lan_rxd_5
Text Label 5050 2475 0    39   ~ 0
lan_rxd_6
Text Label 5050 2550 0    39   ~ 0
lan_rxd_7
Text Label 5025 1025 0    39   ~ 0
lan_txd_0
Text Label 5025 1100 0    39   ~ 0
lan_txd_1
Text Label 5025 1175 0    39   ~ 0
lan_txd_2
Text Label 5025 1250 0    39   ~ 0
lan_txd_3
Text Label 5025 1325 0    39   ~ 0
lan_txd_4
Text Label 5025 1400 0    39   ~ 0
lan_txd_5
Text Label 5025 1475 0    39   ~ 0
lan_txd_6
Text Label 5025 1550 0    39   ~ 0
lan_txd_7
Wire Bus Line
	5325 850  5475 850 
Text HLabel 5325 850  0    51   Output ~ 0
lan_txd_[0..7]
Wire Wire Line
	5025 1025 5375 1025
Wire Wire Line
	5025 1100 5375 1100
Wire Wire Line
	5025 1175 5375 1175
Wire Wire Line
	5025 1250 5375 1250
Wire Wire Line
	5025 1325 5375 1325
Wire Wire Line
	5025 1400 5375 1400
Wire Wire Line
	5025 1475 5375 1475
Wire Wire Line
	5025 1550 5375 1550
Entry Wire Line
	5375 1025 5475 925 
Entry Wire Line
	5375 1100 5475 1000
Entry Wire Line
	5375 1175 5475 1075
Entry Wire Line
	5375 1325 5475 1225
Entry Wire Line
	5375 1250 5475 1150
Entry Wire Line
	5375 1400 5475 1300
Entry Wire Line
	5375 1475 5475 1375
Entry Wire Line
	5375 1550 5475 1450
Wire Bus Line
	5475 850  5475 1450
Wire Bus Line
	5350 1850 5500 1850
Text HLabel 5350 1850 0    51   Output ~ 0
lan_rxd_[0..7]
Wire Wire Line
	5050 2025 5400 2025
Wire Wire Line
	5050 2100 5400 2100
Wire Wire Line
	5050 2175 5400 2175
Wire Wire Line
	5050 2250 5400 2250
Wire Wire Line
	5050 2325 5400 2325
Wire Wire Line
	5050 2400 5400 2400
Wire Wire Line
	5050 2475 5400 2475
Wire Wire Line
	5050 2550 5400 2550
Entry Wire Line
	5400 2025 5500 1925
Entry Wire Line
	5400 2100 5500 2000
Entry Wire Line
	5400 2175 5500 2075
Entry Wire Line
	5400 2325 5500 2225
Entry Wire Line
	5400 2250 5500 2150
Entry Wire Line
	5400 2400 5500 2300
Entry Wire Line
	5400 2475 5500 2375
Entry Wire Line
	5400 2550 5500 2450
Wire Bus Line
	5500 1850 5500 2450
Text Label 1600 2900 0    39   ~ 0
lan_txd_0
Text Label 1600 2975 0    39   ~ 0
lan_txd_1
Text Label 1600 2525 0    39   ~ 0
lan_txd_2
Text Label 1600 2450 0    39   ~ 0
lan_txd_3
Text Label 1600 1850 0    39   ~ 0
lan_txd_4
Text Label 1600 2375 0    39   ~ 0
lan_txd_5
Text Label 1600 2300 0    39   ~ 0
lan_txd_6
Text Label 1600 2150 0    39   ~ 0
lan_txd_7
Text Label 1600 1175 0    39   ~ 0
lan_rxd_0
Text Label 1600 1100 0    39   ~ 0
lan_rxd_1
Text Label 1600 1475 0    39   ~ 0
lan_rxd_2
Text Label 1600 1400 0    39   ~ 0
lan_rxd_3
Text Label 1600 1775 0    39   ~ 0
lan_rxd_4
Text Label 1600 1700 0    39   ~ 0
lan_rxd_5
Text Label 1600 2000 0    39   ~ 0
lan_rxd_6
Text Label 1600 1925 0    39   ~ 0
lan_rxd_7
Wire Wire Line
	1600 1175 1950 1175
Wire Wire Line
	1600 1250 1950 1250
Wire Wire Line
	1575 1325 1950 1325
Wire Wire Line
	1600 1400 1950 1400
Wire Wire Line
	1600 1475 1950 1475
Wire Wire Line
	1600 1625 1950 1625
Wire Wire Line
	1600 1700 1950 1700
Wire Wire Line
	1600 1775 1950 1775
Wire Wire Line
	1600 1850 1950 1850
Wire Wire Line
	1600 1925 1950 1925
Wire Wire Line
	1600 2000 1950 2000
Wire Wire Line
	1600 2075 1950 2075
Wire Wire Line
	1600 2150 1950 2150
Wire Wire Line
	1600 2300 1950 2300
Wire Wire Line
	1600 2375 1950 2375
Wire Wire Line
	1600 2450 1950 2450
Wire Wire Line
	1600 2525 1950 2525
Wire Wire Line
	4000 1050 4125 1050
Wire Wire Line
	4125 1150 4000 1150
Wire Wire Line
	1600 1100 1950 1100
Wire Wire Line
	4000 2450 4350 2450
Text GLabel 4125 2050 2    39   Input ~ 0
lan_rx_clk
Wire Wire Line
	4000 2050 4125 2050
Text GLabel 1550 1350 0    39   BiDi ~ 0
lan_rx_er
Wire Wire Line
	4000 1800 4350 1800
Text GLabel 1900 2750 0    39   Input ~ 0
VIN_rxf
Text GLabel 1600 2225 0    39   Input ~ 0
VIN_txe
Text GLabel 1600 2825 0    39   Input ~ 0
VIN_rd
Text GLabel 1575 1550 0    39   Input ~ 0
VIN_wr
Text GLabel 4100 3125 2    39   Input ~ 0
VIN_oe
Text GLabel 4125 1950 2    39   Input ~ 0
VIN_clk
Text GLabel 4100 3325 2    39   Input ~ 0
VIN_reset
Text GLabel 4100 3225 2    39   Input ~ 0
VIN_prog
Entry Wire Line
	5350 2850 5450 2750
Entry Wire Line
	5350 2925 5450 2825
Entry Wire Line
	5350 3000 5450 2900
Entry Wire Line
	5350 3150 5450 3050
Entry Wire Line
	5350 3225 5450 3125
Entry Wire Line
	5350 3300 5450 3200
Entry Wire Line
	5350 3375 5450 3275
Text HLabel 5350 2700 0    51   BiDi ~ 0
VIN_d[0..7]
Text Label 5075 2850 0    51   ~ 0
VIN_d0
Text Label 5075 2925 0    51   ~ 0
VIN_d1
Text Label 5075 3000 0    51   ~ 0
VIN_d2
Text Label 5075 3075 0    51   ~ 0
VIN_d3
Text Label 5075 3150 0    51   ~ 0
VIN_d4
Text Label 5075 3225 0    51   ~ 0
VIN_d5
Text Label 5075 3300 0    51   ~ 0
VIN_d6
Text Label 5075 3375 0    51   ~ 0
VIN_d7
Entry Wire Line
	5350 3075 5450 2975
Wire Bus Line
	5450 2700 5350 2700
Wire Wire Line
	5075 2850 5350 2850
Text Label 1600 2675 0    51   ~ 0
VIN_d0
Text Label 1600 2600 0    51   ~ 0
VIN_d1
Text Label 1600 1625 0    51   ~ 0
VIN_d2
Text Label 4350 2450 2    51   ~ 0
VIN_d3
Text Label 1600 3275 0    51   ~ 0
VIN_d4
Text Label 1600 3200 0    51   ~ 0
VIN_d5
Text Label 1600 3125 0    51   ~ 0
VIN_d6
Text Label 1600 3050 0    51   ~ 0
VIN_d7
Wire Wire Line
	5075 2925 5350 2925
Wire Wire Line
	5350 3000 5075 3000
Wire Wire Line
	5075 3075 5350 3075
Wire Wire Line
	5350 3150 5075 3150
Wire Wire Line
	5075 3225 5350 3225
Wire Wire Line
	5350 3300 5075 3300
Wire Wire Line
	5075 3375 5350 3375
Wire Bus Line
	5450 2700 5450 3275
Wire Wire Line
	4100 3325 4000 3325
Wire Wire Line
	1950 1550 1575 1550
Wire Wire Line
	1950 2225 1600 2225
Wire Wire Line
	4100 3125 4000 3125
Wire Wire Line
	1950 2750 1900 2750
Wire Wire Line
	1950 2825 1600 2825
Text GLabel 4100 3025 2    39   Input ~ 0
VIN_debug
Wire Wire Line
	4125 1950 4000 1950
Wire Wire Line
	4100 3025 4000 3025
Wire Wire Line
	4000 3225 4100 3225
Wire Wire Line
	1600 3275 1950 3275
Wire Wire Line
	1600 3200 1950 3200
Wire Wire Line
	1600 3125 1950 3125
Wire Wire Line
	1600 3050 1950 3050
Wire Wire Line
	1600 2975 1950 2975
Wire Wire Line
	1600 2900 1950 2900
Wire Wire Line
	1600 2675 1950 2675
Wire Wire Line
	1600 2600 1950 2600
Wire Wire Line
	9300 2025 9500 2025
Wire Wire Line
	9300 2125 9500 2125
Wire Wire Line
	9300 2225 9500 2225
Wire Wire Line
	9300 2325 9500 2325
Text Label 9500 2025 2    39   ~ 0
MSEL0
Text Label 9500 2125 2    39   ~ 0
MSEL1
Text Label 9500 2225 2    39   ~ 0
MSEL2
Text Label 9500 2325 2    39   ~ 0
MSEL3
Wire Wire Line
	5500 7275 5300 7275
Text Label 5300 7275 0    39   ~ 0
MSEL0
Wire Wire Line
	5500 7375 5300 7375
Text Label 5300 7375 0    39   ~ 0
MSEL1
Wire Wire Line
	5500 7475 5300 7475
Text Label 5300 7475 0    39   ~ 0
MSEL2
Wire Wire Line
	5500 7575 5300 7575
Text Label 5300 7575 0    39   ~ 0
MSEL3
Wire Wire Line
	4800 7275 4650 7275
Wire Wire Line
	4650 7275 4650 7600
Wire Wire Line
	4800 7575 4650 7575
Connection ~ 4650 7575
Wire Wire Line
	4800 7475 4650 7475
Connection ~ 4650 7475
Wire Wire Line
	4800 7375 4650 7375
Connection ~ 4650 7375
Wire Wire Line
	6000 7275 6450 7275
Wire Wire Line
	6375 7375 6000 7375
Wire Wire Line
	6375 7475 6000 7475
Wire Wire Line
	6375 7575 6000 7575
Connection ~ 6375 7275
Connection ~ 6375 7375
Connection ~ 6375 7475
Wire Wire Line
	10625 1950 10900 1950
Wire Wire Line
	10625 1800 10900 1800
Wire Wire Line
	10625 1650 10900 1650
Wire Wire Line
	10625 1500 10900 1500
Wire Wire Line
	10625 1350 10900 1350
Wire Wire Line
	10625 1200 10900 1200
Wire Wire Line
	10625 1050 10900 1050
Wire Wire Line
	10625 900  10900 900 
Wire Wire Line
	10900 2025 10625 2025
Wire Wire Line
	10900 1875 10625 1875
Wire Wire Line
	10900 1725 10625 1725
Wire Wire Line
	10900 1575 10625 1575
Wire Wire Line
	10900 1425 10625 1425
Wire Wire Line
	10900 1275 10625 1275
Wire Wire Line
	10900 1125 10625 1125
Wire Wire Line
	10900 975  10625 975 
Text Label 10625 900  0    51   ~ 0
Mo_D0
Text Label 10625 975  0    51   ~ 0
Mo_D1
Text Label 10625 1050 0    51   ~ 0
Mo_D2
Text Label 10625 1125 0    51   ~ 0
Mo_D3
Text Label 10625 1200 0    51   ~ 0
Mo_D4
Text Label 10625 1275 0    51   ~ 0
Mo_D5
Text Label 10625 1350 0    51   ~ 0
Mo_D6
Text Label 10625 1425 0    51   ~ 0
Mo_D7
Text Label 10625 1500 0    51   ~ 0
Mo_D8
Text Label 10625 1575 0    51   ~ 0
Mo_D9
Text Label 10625 1650 0    51   ~ 0
Mo_D10
Text Label 10625 1725 0    51   ~ 0
Mo_D11
Text Label 10625 1800 0    51   ~ 0
Mo_D12
Text Label 10625 1875 0    51   ~ 0
Mo_D13
Text Label 10625 1950 0    51   ~ 0
Mo_D14
Text Label 10625 2025 0    51   ~ 0
Mo_D15
Entry Wire Line
	11000 800  10900 900 
Entry Wire Line
	11000 875  10900 975 
Entry Wire Line
	11000 950  10900 1050
Entry Wire Line
	11000 1100 10900 1200
Entry Wire Line
	11000 1175 10900 1275
Entry Wire Line
	11000 1250 10900 1350
Entry Wire Line
	11000 1325 10900 1425
Entry Wire Line
	11000 1475 10900 1575
Entry Wire Line
	11000 1550 10900 1650
Entry Wire Line
	11000 1625 10900 1725
Entry Wire Line
	11000 1775 10900 1875
Entry Wire Line
	11000 1850 10900 1950
Entry Wire Line
	11000 1925 10900 2025
Entry Wire Line
	11000 1400 10900 1500
Entry Wire Line
	11000 1700 10900 1800
Text HLabel 10925 725  0    51   BiDi ~ 0
Mo_D[0..15]
Entry Wire Line
	11000 1025 10900 1125
Wire Wire Line
	10900 3475 10625 3475
Wire Wire Line
	10900 3400 10625 3400
Wire Wire Line
	10900 3250 10625 3250
Wire Wire Line
	10900 3325 10625 3325
Wire Wire Line
	10900 3175 10625 3175
Wire Wire Line
	10900 2950 10625 2950
Wire Wire Line
	10900 3100 10625 3100
Wire Wire Line
	10900 3025 10625 3025
Wire Wire Line
	10900 2875 10625 2875
Wire Wire Line
	10900 2800 10625 2800
Wire Wire Line
	10900 2725 10625 2725
Wire Wire Line
	10900 2650 10625 2650
Wire Wire Line
	10900 2575 10625 2575
Wire Wire Line
	10900 2500 10625 2500
Wire Wire Line
	10900 2425 10625 2425
Wire Wire Line
	10900 2350 10625 2350
Text Label 10625 2350 0    51   ~ 0
Me_D0
Text Label 10625 2425 0    51   ~ 0
Me_D1
Text Label 10625 2500 0    51   ~ 0
Me_D2
Text Label 10625 2575 0    51   ~ 0
Me_D3
Text Label 10625 2650 0    51   ~ 0
Me_D4
Text Label 10625 2725 0    51   ~ 0
Me_D5
Text Label 10625 2800 0    51   ~ 0
Me_D6
Text Label 10625 2875 0    51   ~ 0
Me_D7
Text Label 10625 2950 0    51   ~ 0
Me_D8
Text Label 10625 3025 0    51   ~ 0
Me_D9
Text Label 10625 3100 0    51   ~ 0
Me_D10
Text Label 10625 3175 0    51   ~ 0
Me_D11
Text Label 10625 3250 0    51   ~ 0
Me_D12
Text Label 10625 3325 0    51   ~ 0
Me_D13
Text Label 10625 3400 0    51   ~ 0
Me_D14
Text Label 10625 3475 0    51   ~ 0
Me_D15
Entry Wire Line
	11000 2250 10900 2350
Entry Wire Line
	11000 2325 10900 2425
Entry Wire Line
	11000 2400 10900 2500
Entry Wire Line
	11000 2550 10900 2650
Entry Wire Line
	11000 2475 10900 2575
Entry Wire Line
	11000 2625 10900 2725
Entry Wire Line
	11000 2850 10900 2950
Entry Wire Line
	11000 2700 10900 2800
Entry Wire Line
	11000 2775 10900 2875
Entry Wire Line
	11000 3150 10900 3250
Entry Wire Line
	11000 2925 10900 3025
Entry Wire Line
	11000 3000 10900 3100
Entry Wire Line
	11000 3075 10900 3175
Entry Wire Line
	11000 3225 10900 3325
Entry Wire Line
	11000 3300 10900 3400
Entry Wire Line
	11000 3375 10900 3475
Text HLabel 10900 2175 0    51   BiDi ~ 0
Me_D[0..15]
Wire Wire Line
	6850 2150 7125 2150
Wire Wire Line
	6850 3125 7125 3125
Wire Wire Line
	9575 2800 9300 2800
Wire Wire Line
	6850 2600 7125 2600
Wire Wire Line
	6850 2525 7125 2525
Wire Wire Line
	9575 2875 9300 2875
Wire Wire Line
	9575 2650 9300 2650
Wire Wire Line
	6850 1850 7125 1850
Wire Wire Line
	7125 2675 6850 2675
Wire Wire Line
	7125 1550 6850 1550
Wire Wire Line
	7125 3200 6850 3200
Wire Wire Line
	7125 1625 6850 1625
Wire Wire Line
	9300 2725 9575 2725
Wire Wire Line
	7125 1925 6850 1925
Wire Wire Line
	7125 3050 6850 3050
Wire Wire Line
	7125 2450 6850 2450
Text Label 6850 1850 0    51   ~ 0
Mo_D0
Text Label 6850 2450 0    51   ~ 0
Mo_D1
Text Label 9575 2650 2    51   ~ 0
Mo_D2
Text Label 6850 3050 0    51   ~ 0
Mo_D3
Text Label 9575 2875 2    51   ~ 0
Mo_D4
Text Label 6850 1925 0    51   ~ 0
Mo_D5
Text Label 6850 2525 0    51   ~ 0
Mo_D6
Text Label 9575 2725 2    51   ~ 0
Mo_D7
Text Label 6850 2600 0    51   ~ 0
Mo_D8
Text Label 6850 1625 0    51   ~ 0
Mo_D9
Text Label 9575 2800 2    51   ~ 0
Mo_D10
Text Label 6850 3200 0    51   ~ 0
Mo_D11
Text Label 6850 3125 0    51   ~ 0
Mo_D12
Text Label 6850 1550 0    51   ~ 0
Mo_D13
Text Label 6850 2150 0    51   ~ 0
Mo_D14
Text Label 6850 2675 0    51   ~ 0
Mo_D15
Wire Wire Line
	7125 2825 6850 2825
Wire Wire Line
	7125 2900 6850 2900
Wire Wire Line
	7125 2375 6850 2375
Wire Wire Line
	7125 2750 6850 2750
Wire Wire Line
	7125 2300 6850 2300
Wire Wire Line
	7125 1775 6850 1775
Wire Wire Line
	7125 2075 6850 2075
Wire Wire Line
	7125 2000 6850 2000
Wire Wire Line
	7125 1700 6850 1700
Wire Wire Line
	7125 1475 6850 1475
Wire Wire Line
	7125 1400 6850 1400
Wire Wire Line
	7125 1325 6850 1325
Wire Wire Line
	7125 1250 6850 1250
Wire Wire Line
	7125 1175 6850 1175
Wire Wire Line
	7125 1025 6850 1025
Wire Wire Line
	7125 950  6850 950 
Text Label 6850 950  0    51   ~ 0
Me_D0
Text Label 6850 1025 0    51   ~ 0
Me_D1
Text Label 6850 1175 0    51   ~ 0
Me_D2
Text Label 6850 1250 0    51   ~ 0
Me_D3
Text Label 6850 1325 0    51   ~ 0
Me_D4
Text Label 6850 1400 0    51   ~ 0
Me_D5
Text Label 6850 1475 0    51   ~ 0
Me_D6
Text Label 6850 1700 0    51   ~ 0
Me_D7
Text Label 6850 1775 0    51   ~ 0
Me_D8
Text Label 6850 2000 0    51   ~ 0
Me_D9
Text Label 6850 2075 0    51   ~ 0
Me_D10
Text Label 6850 2300 0    51   ~ 0
Me_D11
Text Label 6850 2375 0    51   ~ 0
Me_D12
Text Label 6850 2750 0    51   ~ 0
Me_D13
Text Label 6850 2900 0    51   ~ 0
Me_D14
Text Label 6850 2825 0    51   ~ 0
Me_D15
Wire Bus Line
	10900 2175 11000 2175
Wire Bus Line
	10925 725  11000 725 
Wire Wire Line
	6375 7275 6375 7575
Wire Bus Line
	11000 725  11000 1925
Wire Bus Line
	11000 2175 11000 3375
Text GLabel 6800 2225 0    43   BiDi ~ 0
Mo_CLK
Text GLabel 6800 2975 0    43   BiDi ~ 0
Me_CLK
Wire Wire Line
	7125 2225 6800 2225
Wire Wire Line
	6800 2975 7125 2975
Text GLabel 1400 4725 0    39   Input ~ 0
FX3_SPI_MISO
Text GLabel 1850 6825 0    39   Input ~ 0
FX3_SPI_SCK
Text GLabel 1875 4650 0    39   Input ~ 0
FX3_SPI_MOSI
Text GLabel 1875 4950 0    39   BiDi ~ 0
FX3_GPIO42
Text GLabel 1400 4875 0    39   BiDi ~ 0
FX3_GPIO43
Text GLabel 1400 5550 0    39   BiDi ~ 0
FX3_GPIO44
Wire Wire Line
	1925 4650 1875 4650
Wire Wire Line
	1925 4725 1400 4725
Wire Wire Line
	1925 6825 1850 6825
Wire Wire Line
	1875 4950 1925 4950
Wire Wire Line
	1400 4875 1925 4875
Wire Wire Line
	1400 5550 1925 5550
Text GLabel 9950 4575 2    43   Output ~ 0
FCLK2
Text GLabel 6175 5575 0    43   Output ~ 0
FCLK1
Wire Wire Line
	6725 5575 7150 5575
Text GLabel 9375 1375 2    43   Input ~ 0
LMS_SyntCLK2
Wire Wire Line
	9300 1375 9375 1375
Text GLabel 9375 1475 2    39   Input ~ 0
lan_tx_clk
Wire Wire Line
	9375 1475 9300 1475
Text GLabel 4175 5475 2    39   Input ~ 0
CLK_FPGA2
Wire Wire Line
	4175 5475 4075 5475
Wire Wire Line
	1400 5925 1925 5925
Wire Wire Line
	1400 5400 1925 5400
Wire Wire Line
	1400 4500 1925 4500
Wire Wire Line
	1400 4575 1925 4575
Wire Wire Line
	1400 4425 1925 4425
Text GLabel 1850 6525 0    39   Input ~ 0
DVI_TX_DDCSCL
Text GLabel 1850 6375 0    39   BiDi ~ 0
DVI_TX_DDCSDA
Wire Wire Line
	1925 6375 1850 6375
Wire Wire Line
	1925 6525 1850 6525
Wire Wire Line
	4725 6250 5300 6250
Text Label 4725 6250 0    51   ~ 0
FPGA_GPIO0
Text Label 4725 6350 0    51   ~ 0
FPGA_GPIO1
Text Label 4725 6450 0    51   ~ 0
FPGA_GPIO2
Text Label 4725 6550 0    51   ~ 0
FPGA_GPIO3
Text Label 4725 6650 0    51   ~ 0
FPGA_GPIO4
Text Label 6375 6450 2    51   ~ 0
FPGA_GPIO5
Text Label 6375 6350 2    51   ~ 0
FPGA_GPIO6
Wire Wire Line
	4725 6350 5300 6350
Wire Wire Line
	4725 6450 5300 6450
Wire Wire Line
	4725 6550 5300 6550
Wire Wire Line
	4725 6650 5300 6650
Wire Wire Line
	6375 6450 5800 6450
Wire Wire Line
	6375 6350 5800 6350
Text Label 1425 6075 0    51   ~ 0
FPGA_GPIO0
Text Label 1425 5775 0    51   ~ 0
FPGA_GPIO1
Text Label 1425 5250 0    51   ~ 0
FPGA_GPIO2
Text Label 1425 5700 0    51   ~ 0
FPGA_GPIO3
Text Label 1425 5625 0    51   ~ 0
FPGA_GPIO4
Text Label 1425 5325 0    51   ~ 0
FPGA_GPIO5
Text Label 1425 5850 0    51   ~ 0
FPGA_GPIO6
Wire Wire Line
	1425 5325 1925 5325
Wire Wire Line
	1425 5625 1925 5625
Wire Wire Line
	1425 5775 1925 5775
Wire Wire Line
	1425 6075 1925 6075
Wire Wire Line
	1425 5700 1925 5700
Wire Wire Line
	1425 5850 1925 5850
Wire Wire Line
	1325 6150 1925 6150
Wire Wire Line
	1425 5250 1925 5250
$Comp
L GND #PWR06
U 1 1 5393497D
P 5850 6725
F 0 "#PWR06" H 5850 6825 40  0001 C CNN
F 1 "GND" H 5850 6655 40  0000 C CNN
F 2 "~" H 5850 6725 60  0000 C CNN
F 3 "~" H 5850 6725 60  0000 C CNN
	1    5850 6725
	1    0    0    -1  
$EndComp
Text GLabel 9500 1925 2    39   BiDi ~ 0
FPGA_CONF_DONE
Wire Wire Line
	9300 1925 9500 1925
Text Notes 4500 6975 0    79   ~ 0
MSEL[3:0] Configuration
Wire Notes Line
	4500 7000 6950 7000
Wire Notes Line
	6950 7000 6950 7750
Wire Notes Line
	6950 7750 4500 7750
Wire Notes Line
	4500 7750 4500 7000
Text GLabel 6750 5875 0    31   Input ~ 0
MIPI_SCK
Wire Wire Line
	7150 5200 6750 5200
Text GLabel 9400 5850 2    31   Input ~ 0
MIPI_DATA
Wire Wire Line
	6750 5125 7150 5125
Text GLabel 6750 5350 0    43   Input ~ 0
FMC_I2C_SCL
Text GLabel 6450 4450 0    43   Input ~ 0
FMC_I2C_SDA
Wire Wire Line
	7150 4450 6450 4450
Wire Wire Line
	6750 5350 7150 5350
Text GLabel 6750 6325 0    31   Input ~ 0
LMS_RXEN
Text GLabel 9400 5750 2    39   Input ~ 0
LMS_TXEN
Wire Wire Line
	9400 5750 9325 5750
Text GLabel 9400 4225 2    31   Input ~ 0
LMS_SPI_SCK
Text GLabel 6750 5125 0    31   Input ~ 0
LMS_SPI_MOSI
Wire Wire Line
	9400 4125 9325 4125
Text GLabel 6750 5200 0    31   Input ~ 0
LMS_SPI_MISO
Wire Wire Line
	9400 4225 9325 4225
Wire Wire Line
	9325 5850 9400 5850
Text GLabel 9400 4125 2    31   Input ~ 0
LMS_SPI_CS
Wire Wire Line
	7150 5875 6750 5875
Text GLabel 4175 4500 2    39   Input ~ 0
LMS_SBEN
Wire Wire Line
	4175 4500 4075 4500
Text GLabel 1850 6675 0    39   Input ~ 0
LMS_RESET
Wire Wire Line
	1925 6675 1850 6675
Text GLabel 1325 6300 0    39   Input ~ 0
LMS_dio_dir_ctrl1
Wire Wire Line
	1925 6300 1325 6300
Text GLabel 1875 5100 0    39   Input ~ 0
LMS_dio_dir_ctrl2
Text GLabel 1300 5175 0    39   Input ~ 0
LMS_iqsel1_dir
Wire Wire Line
	1300 5175 1925 5175
Wire Wire Line
	1875 5100 1925 5100
Text GLabel 1400 6750 0    39   Input ~ 0
LMS_iqsel2_dir
Wire Wire Line
	1400 6750 1925 6750
Text GLabel 9400 6050 2    43   Input ~ 0
TXNRX1
Text GLabel 9400 5950 2    39   Input ~ 0
TXNRX2
Wire Wire Line
	9400 5950 9325 5950
Wire Wire Line
	9325 6050 9400 6050
Text GLabel 1300 5025 0    39   Input ~ 0
LMS_g_pwr_dwn
Wire Wire Line
	1300 5025 1925 5025
Text GLabel 1875 6225 0    39   Input ~ 0
LMS_dio_buff_oe
Wire Wire Line
	1925 6225 1875 6225
Wire Wire Line
	6750 4225 7150 4225
Wire Wire Line
	9875 4575 9950 4575
Wire Wire Line
	1950 1025 1600 1025
Wire Wire Line
	1550 1350 1575 1350
Wire Wire Line
	1575 1350 1575 1325
Wire Wire Line
	7150 6325 6750 6325
$Comp
L PINHEADER_2X5_TH_WALL J1
U 1 1 53C8C25D
P 5550 6600
F 0 "J1" H 5550 7040 60  0000 C CNN
F 1 "PINHEADER_2X5_TH_WALL" H 5520 7130 60  0001 C CNN
F 2 "Pinhead_2x6_TH_WALL" H 5530 7230 60  0001 C CNN
F 3 "~" H 5550 6700 60  0000 C CNN
F 4 "Digi-Key" H 5530 7600 60  0001 C CNN "Vendor"
F 5 "S9169-ND" H 5570 7700 60  0001 C CNN "Vendor Part Number"
F 6 "Sullins Connector Solutions" H 5510 7510 60  0001 C CNN "Manufacturer"
F 7 "SBH11-PBPC-D05-ST-BK" H 5500 7410 60  0001 C CNN "Manufacturer Part Number"
F 8 "CONN HEADER, 2.54MM, 10POS, GOLD," H 5600 7320 60  0001 C CNN "Description"
F 9 "PinH_2x5_TH" V 5550 6750 39  0000 C CNN "Component Value"
	1    5550 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6650 5850 6650
Wire Wire Line
	5850 6650 5850 6675
Wire Wire Line
	5875 6125 5875 6550
Wire Wire Line
	5875 6550 5800 6550
$Comp
L VCC3P3 #VCC07
U 1 1 53DA0FE6
P 6450 7275
F 0 "#VCC07" H 6450 7225 20  0001 C CNN
F 1 "VCC3P3" V 6400 7350 50  0000 C CNN
F 2 "~" H 6450 7275 60  0000 C CNN
F 3 "~" H 6450 7275 60  0000 C CNN
	1    6450 7275
	0    1    1    0   
$EndComp
$Comp
L VCC3P3 #VCC08
U 1 1 53DA1009
P 5875 6125
F 0 "#VCC08" H 5875 6075 20  0001 C CNN
F 1 "VCC3P3" H 5875 6250 50  0000 C CNN
F 2 "~" H 5875 6125 60  0000 C CNN
F 3 "~" H 5875 6125 60  0000 C CNN
	1    5875 6125
	1    0    0    -1  
$EndComp
Text GLabel 1200 6450 0    31   Input ~ 0
UART_TXD
Text GLabel 1200 6600 0    31   Output ~ 0
UART_RXD
Wire Wire Line
	1925 6450 1200 6450
Wire Wire Line
	1200 6600 1925 6600
Text GLabel 1875 4800 0    43   Output ~ 0
SPI_EN_BRD
Wire Wire Line
	1875 4800 1925 4800
Text GLabel 1325 6000 0    39   Output ~ 0
ADC_SPI_CS0
Wire Wire Line
	1925 6000 1325 6000
Text GLabel 4175 4400 2    39   Output ~ 0
ADC_SPI_CS1
Wire Wire Line
	4075 4400 4175 4400
$Comp
L 10K_0402 R78
U 1 1 53F3ECAC
P 6425 925
F 0 "R78" H 6425 850 50  0000 C CNN
F 1 "10K_0402" H 6415 1145 50  0001 C CNN
F 2 "R_SM0402" H 6425 1225 60  0001 C CNN
F 3 "~" V 6425 925 60  0000 C CNN
F 4 "Digi-Key" H 6425 1635 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 6435 1735 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 6415 1545 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 6385 1445 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402 SMD" H 6405 1335 60  0001 C CNN "Description"
F 9 "10K" H 6435 925 50  0000 C CNN "Component Value"
	1    6425 925 
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 1100 7125 1100
Wire Wire Line
	6675 925  6725 925 
Wire Wire Line
	6725 925  6725 1100
Connection ~ 6725 1100
$Comp
L VCC3P3 #VCC09
U 1 1 543F1578
P 6100 900
F 0 "#VCC09" H 6100 850 20  0001 C CNN
F 1 "VCC3P3" H 6100 1025 50  0000 C CNN
F 2 "~" H 6100 900 60  0000 C CNN
F 3 "~" H 6100 900 60  0000 C CNN
	1    6100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 900  6100 925 
Wire Wire Line
	6100 925  6175 925 
Text GLabel 1400 4425 0    31   Output ~ 0
LMS_GPIO4
Text GLabel 1400 4500 0    31   Output ~ 0
LMS_GPIO2
Text GLabel 1400 4575 0    31   Output ~ 0
LMS_GPIO3
Text GLabel 1400 5400 0    31   Output ~ 0
LMS_GPIO1
Text GLabel 1400 5900 0    31   Output ~ 0
LMS_GPIO0
Wire Wire Line
	1400 5925 1400 5900
Text GLabel 4175 6200 2    31   Output ~ 0
LMS_GPIO5
Text GLabel 4175 6275 2    31   Output ~ 0
LMS_GPIO6
Text GLabel 4175 6350 2    31   Output ~ 0
LMS_GPIO7
Wire Wire Line
	4075 6200 4175 6200
Wire Wire Line
	4175 6275 4075 6275
Wire Wire Line
	4075 6350 4175 6350
Text GLabel 6650 1100 0    39   Input ~ 0
PRSNT_M2C_L
$Comp
L 10K_0402 R147
U 1 1 5445D8AB
P 1075 7350
F 0 "R147" H 1075 7275 50  0000 C CNN
F 1 "10K_0402" H 1065 7570 50  0001 C CNN
F 2 "R_SM0402" H 1075 7650 60  0001 C CNN
F 3 "~" V 1075 7350 60  0000 C CNN
F 4 "Digi-Key" H 1075 8060 60  0001 C CNN "Vendor"
F 5 "311-10.0KLRCT-ND" H 1085 8160 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 1065 7970 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0710KL" H 1035 7870 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES 10K OHM 1/16W 1% 0402 SMD" H 1055 7760 60  0001 C CNN "Description"
F 9 "10K" H 1085 7350 50  0000 C CNN "Component Value"
	1    1075 7350
	-1   0    0    1   
$EndComp
$Comp
L VCC3P3 #VCC010
U 1 1 5445D8B1
P 750 7325
F 0 "#VCC010" H 750 7275 20  0001 C CNN
F 1 "VCC3P3" H 750 7450 50  0000 C CNN
F 2 "~" H 750 7325 60  0000 C CNN
F 3 "~" H 750 7325 60  0000 C CNN
	1    750  7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7325 750  7350
Wire Wire Line
	750  7350 825  7350
Wire Wire Line
	1325 7350 1850 7350
Text GLabel 1325 6150 0    43   Input ~ 0
MyriadPRSNT
Text Label 1850 7350 2    51   ~ 0
MyriadPRSNT
$Comp
L 0R_0402 R79
U 1 1 54474F72
P 5050 7275
F 0 "R79" V 5100 7525 50  0000 C CNN
F 1 "0R_0402" V 4875 7250 50  0001 C CNN
F 2 "R_SM0402" V 4800 7225 60  0001 C CNN
F 3 "~" H 5050 7275 60  0000 C CNN
F 4 "Digi-Key" V 5230 7375 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5330 7475 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5430 7575 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 5530 7675 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 5630 7775 60  0001 C CNN "Description"
F 9 "0R" V 5050 7300 50  0000 C CNN "Component Value"
	1    5050 7275
	0    -1   -1   0   
$EndComp
$Comp
L 0R_0402 R80
U 1 1 54474FC0
P 5050 7375
F 0 "R80" V 5100 7625 50  0000 C CNN
F 1 "0R_0402" V 4875 7350 50  0001 C CNN
F 2 "R_SM0402" V 4800 7325 60  0001 C CNN
F 3 "~" H 5050 7375 60  0000 C CNN
F 4 "Digi-Key" V 5230 7475 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5330 7575 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5430 7675 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 5530 7775 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 5630 7875 60  0001 C CNN "Description"
F 9 "0R" V 5050 7400 50  0000 C CNN "Component Value"
	1    5050 7375
	0    -1   -1   0   
$EndComp
$Comp
L 0R_0402 R81
U 1 1 54474FCC
P 5050 7475
F 0 "R81" V 5100 7725 50  0000 C CNN
F 1 "0R_0402" V 4875 7450 50  0001 C CNN
F 2 "R_SM0402" V 4800 7425 60  0001 C CNN
F 3 "~" H 5050 7475 60  0000 C CNN
F 4 "Digi-Key" V 5230 7575 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5330 7675 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5430 7775 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 5530 7875 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 5630 7975 60  0001 C CNN "Description"
F 9 "0R" V 5050 7500 50  0000 C CNN "Component Value"
	1    5050 7475
	0    -1   -1   0   
$EndComp
$Comp
L 0R_0402 R114
U 1 1 54474FD8
P 5050 7575
F 0 "R114" V 5100 7825 50  0000 C CNN
F 1 "0R_0402" V 4875 7550 50  0001 C CNN
F 2 "R_SM0402" V 4800 7525 60  0001 C CNN
F 3 "~" H 5050 7575 60  0000 C CNN
F 4 "Digi-Key" V 5230 7675 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 5330 7775 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 5430 7875 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 5530 7975 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 5630 8075 60  0001 C CNN "Description"
F 9 "0R" V 5050 7600 50  0000 C CNN "Component Value"
	1    5050 7575
	0    -1   -1   0   
$EndComp
$Comp
L 0R_0402 R161
U 1 1 54AC9DE6
P 9625 4575
F 0 "R161" V 9700 4600 50  0000 C CNN
F 1 "0R_0402" V 9450 4550 50  0001 C CNN
F 2 "R_SM0402" V 9375 4525 60  0001 C CNN
F 3 "~" H 9625 4575 60  0000 C CNN
F 4 "Digi-Key" V 9805 4675 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 9905 4775 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 10005 4875 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 10105 4975 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 10205 5075 60  0001 C CNN "Description"
F 9 "0R" V 9625 4575 50  0000 C CNN "Component Value"
	1    9625 4575
	0    -1   -1   0   
$EndComp
$Comp
L 0R_0402 R162
U 1 1 54ACA095
P 6475 5575
F 0 "R162" V 6550 5600 50  0000 C CNN
F 1 "0R_0402" V 6300 5550 50  0001 C CNN
F 2 "R_SM0402" V 6225 5525 60  0001 C CNN
F 3 "~" H 6475 5575 60  0000 C CNN
F 4 "Digi-Key" V 6655 5675 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 6755 5775 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 6855 5875 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6955 5975 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 7055 6075 60  0001 C CNN "Description"
F 9 "0R" V 6475 5575 50  0000 C CNN "Component Value"
	1    6475 5575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6225 5575 6175 5575
Text GLabel 4175 5575 2    43   Input ~ 0
LMS_SyntCLK1
Wire Wire Line
	4075 5575 4175 5575
Text GLabel 1750 5475 0    39   Input ~ 0
LAN_MDC
Wire Wire Line
	1925 5475 1750 5475
Text GLabel 4175 6475 2    39   BiDi ~ 0
LAN_MDIO
Wire Wire Line
	4175 6475 4150 6475
Wire Wire Line
	4150 6475 4150 6425
Wire Wire Line
	4150 6425 4075 6425
$Comp
L 0R_0402_NF R1
U 1 1 54B08A9F
P 5750 7275
F 0 "R1" V 5700 7475 50  0000 C CNN
F 1 "0R_0402_NF" V 5575 7250 50  0001 C CNN
F 2 "R_SM0402" V 5500 7225 60  0001 C CNN
F 3 "~" H 5750 7275 60  0000 C CNN
F 4 "Digi-Key" V 5930 7375 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 6030 7475 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 6130 7575 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6230 7675 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6330 7775 60  0001 C CNN "Description"
F 9 "0R" V 5750 7200 50  0000 C CNN "Component Value"
F 10 "NF" V 5750 7350 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6475 7975 60  0001 C CNN "Assemble"
	1    5750 7275
	0    1    1    0   
$EndComp
$Comp
L 0R_0402_NF R2
U 1 1 54B08B2A
P 5750 7375
F 0 "R2" V 5700 7575 50  0000 C CNN
F 1 "0R_0402_NF" V 5575 7350 50  0001 C CNN
F 2 "R_SM0402" V 5500 7325 60  0001 C CNN
F 3 "~" H 5750 7375 60  0000 C CNN
F 4 "Digi-Key" V 5930 7475 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 6030 7575 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 6130 7675 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6230 7775 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6330 7875 60  0001 C CNN "Description"
F 9 "0R" V 5750 7300 50  0000 C CNN "Component Value"
F 10 "NF" V 5750 7450 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6475 8075 60  0001 C CNN "Assemble"
	1    5750 7375
	0    1    1    0   
$EndComp
$Comp
L 0R_0402_NF R3
U 1 1 54B08B38
P 5750 7475
F 0 "R3" V 5700 7675 50  0000 C CNN
F 1 "0R_0402_NF" V 5575 7450 50  0001 C CNN
F 2 "R_SM0402" V 5500 7425 60  0001 C CNN
F 3 "~" H 5750 7475 60  0000 C CNN
F 4 "Digi-Key" V 5930 7575 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 6030 7675 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 6130 7775 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6230 7875 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6330 7975 60  0001 C CNN "Description"
F 9 "0R" V 5750 7400 50  0000 C CNN "Component Value"
F 10 "NF" V 5750 7550 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6475 8175 60  0001 C CNN "Assemble"
	1    5750 7475
	0    1    1    0   
$EndComp
$Comp
L 0R_0402_NF R4
U 1 1 54B08B46
P 5750 7575
F 0 "R4" V 5700 7775 50  0000 C CNN
F 1 "0R_0402_NF" V 5575 7550 50  0001 C CNN
F 2 "R_SM0402" V 5500 7525 60  0001 C CNN
F 3 "~" H 5750 7575 60  0000 C CNN
F 4 "Digi-Key" V 5930 7675 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 6030 7775 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 6130 7875 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 6230 7975 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 6330 8075 60  0001 C CNN "Description"
F 9 "0R" V 5750 7500 50  0000 C CNN "Component Value"
F 10 "NF" V 5750 7650 50  0000 C CNN "Placement"
F 11 "NOFIT" V 6475 8275 60  0001 C CNN "Assemble"
	1    5750 7575
	0    1    1    0   
$EndComp
Text Notes 4550 7125 0    47   ~ 0
Passive Serial Standard (MSEL[3:0]=0000)
Text GLabel 4825 4950 2    31   Output ~ 0
LAN_RESET_N
$Comp
L 0R_0402 R279
U 1 1 54BEDC1E
P 4475 4950
F 0 "R279" V 4550 4975 50  0000 C CNN
F 1 "0R_0402" V 4300 4925 50  0001 C CNN
F 2 "R_SM0402" V 4225 4900 60  0001 C CNN
F 3 "~" H 4475 4950 60  0000 C CNN
F 4 "Digi-Key" V 4655 5050 60  0001 C CNN "Vendor"
F 5 "311-0.0JRCT-ND" V 4755 5150 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" V 4855 5250 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" V 4955 5350 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 0.0 OHM,1/16W, JUMP, 0402 SMD," V 5055 5450 60  0001 C CNN "Description"
F 9 "0R" V 4475 4950 50  0000 C CNN "Component Value"
	1    4475 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4725 4950 4825 4950
$Comp
L LED_0603_GREEN LD11
U 1 1 54BEF941
P 10050 5100
F 0 "LD11" V 10050 4925 50  0000 C CNN
F 1 "LED_0603_GREEN" H 10050 5400 50  0001 C CNN
F 2 "LD_0603" H 10050 5500 60  0001 C CNN
F 3 "~" H 10050 5100 60  0000 C CNN
F 4 "516-1425-1-ND" H 10150 6050 60  0001 C CNN "Vendor Part Number"
F 5 "Avago Technologies US Inc." H 10000 5750 60  0001 C CNN "Manufacturer"
F 6 "DigiKey" H 10050 5950 60  0001 C CNN "Vendor"
F 7 "HSMG-C190" H 10050 5850 60  0001 C CNN "Manufacturer Part Number"
F 8 "LED, 570NM, GREEN, DIFF, 0603, SMD," H 10100 5600 60  0001 C CNN "Description"
F 9 "Green" H 10050 5200 50  0000 C CNN "Component Value"
	1    10050 5100
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 54BEF947
P 10050 5425
F 0 "#PWR011" H 10050 5525 40  0001 C CNN
F 1 "GND" H 10050 5355 40  0000 C CNN
F 2 "~" H 10050 5425 60  0000 C CNN
F 3 "~" H 10050 5425 60  0000 C CNN
	1    10050 5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5300 10050 5375
Wire Wire Line
	10050 4750 10050 4900
Text Notes 10100 5025 0    39   ~ 0
FPGA_LED2
$Comp
L 22R_0402 R300
U 1 1 54BEF956
P 9700 4750
F 0 "R300" H 9725 4825 50  0000 C CNN
F 1 "22R_0402" H 9680 4920 50  0001 C CNN
F 2 "R_SM0402" H 9690 5140 60  0001 C CNN
F 3 "~" V 9720 4740 60  0000 C CNN
F 4 "Digi-Key" H 9660 5410 60  0001 C CNN "Vendor"
F 5 "311-22.0LRCT-ND" H 9690 5500 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 9680 5310 60  0001 C CNN "Manufacturer"
F 7 "RC0402FR-0722RL" H 9650 5230 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES, 22.0 OHM, 1/16W, 1%, 0402, SMD," H 9700 5020 60  0001 C CNN "Description"
F 9 "22R" H 9725 4750 50  0000 C CNN "Component Value"
	1    9700 4750
	1    0    0    -1  
$EndComp
Text Label 6375 6250 2    51   ~ 0
FPGA_GPIO7
Wire Wire Line
	6375 6250 5800 6250
Text Label 4650 5175 2    51   ~ 0
FPGA_GPIO7
Wire Wire Line
	4650 5175 4075 5175
Wire Wire Line
	9375 4575 9350 4575
Wire Wire Line
	9350 4575 9350 4650
Wire Wire Line
	9350 4650 9325 4650
Wire Wire Line
	9475 4750 9325 4750
Wire Wire Line
	4075 5075 4150 5075
Wire Wire Line
	4150 5075 4150 4950
Wire Wire Line
	4150 4950 4225 4950
Wire Wire Line
	10050 4750 9975 4750
$Comp
L TP TP2
U 1 1 54CA9DCB
P 4275 5350
F 0 "TP2" H 4395 5340 60  0000 C CNN
F 1 "TP" H 4285 5260 60  0001 C CNN
F 2 "~" H 4275 5350 60  0000 C CNN
F 3 "~" H 4275 5350 60  0000 C CNN
	1    4275 5350
	1    0    0    1   
$EndComp
Wire Wire Line
	4200 5350 4125 5350
Wire Wire Line
	4125 5350 4125 5475
Connection ~ 4125 5475
$EndSCHEMATC
