EESchema Schematic File Version 2
LIBS:Stream
LIBS:LMS7002EVB
LIBS:Stream-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 16
Title "Stream v2"
Date "27 feb 2015"
Rev "1"
Comp "Lime Microsystems Ltd."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3800 7325 0    39   ~ 0
12V Power supply chain (VCC12)\n 5V Power supply chain (VCC5)
Text Notes 5275 7350 0    39   ~ 0
3.3V Power supply chain (VCC3P3)
Text Notes 4975 2100 0    79   ~ 0
FPGA BANKS 1-4
Text Notes 4975 3625 0    79   ~ 0
FPGA BANKS 5-8
Text Notes 7800 875  0    79   ~ 0
BOARD BLOCK DIAGRAM
Text Notes 9500 875  0    79   ~ 0
CLOCKS BLOCK DIAGRAM
Text Notes 2825 2100 0    79   ~ 0
SDRAM
Text Notes 2775 5150 0    79   ~ 0
FMC  & MYRIAD RF \nCONNECTORS
Text Notes 7325 2100 0    79   ~ 0
USB 3.0 Device (FX3)
Text Notes 7325 3650 0    79   ~ 0
USB 2.0 Host
Text Notes 2825 3700 0    79   ~ 0
PERIPHERRALS
Text Notes 7300 5150 0    79   ~ 0
ETHERNET
Text Notes 5100 5150 0    79   ~ 0
CLOCKS
Text Notes 850  6975 0    79   ~ 0
FPGA POWER \nDISTRIBUTION
Text Notes 2300 6975 0    79   ~ 0
USB 3.0 POWER \nSUPPLY
Text Notes 3800 6975 0    79   ~ 0
BOARD POWER \nSUPPLY 1
Text Notes 5250 6975 0    79   ~ 0
BOARD POWER \nSUPPLY 2
$Sheet
S 7775 725  1500 625 
U 53A9134E
F0 "Board block diagram" 50
F1 "Board block diagram.sch" 50
$EndSheet
$Sheet
S 4950 3500 1800 1275
U 53A933EE
F0 "FPGA banks 5_8" 50
F1 "FPGA banks 5_8.sch" 50
F2 "DIQ1_D[0..11]" O L 4950 4225 60 
F3 "DIQ2_D[0..11]" I L 4950 4350 60 
F4 "lan_txd_[0..7]" O R 6750 4425 60 
F5 "lan_rxd_[0..7]" O R 6750 4550 60 
F6 "VIN_d[0..7]" B R 6750 3800 60 
F7 "Mo_D[0..15]" B L 4950 4025 60 
F8 "Me_D[0..15]" B L 4950 3900 60 
$EndSheet
$Sheet
S 2800 1975 1600 1125
U 53A9526F
F0 "SDRAM" 50
F1 "SDRAM.sch" 50
F2 "DDR_1_A[0..12]" I R 4400 2700 60 
F3 "DDR_0_DQ[0..15]" B R 4400 2300 60 
F4 "DDR_0_A[0..12]" I R 4400 2425 60 
F5 "DDR_1_DQ[0..15]" B R 4400 2600 60 
$EndSheet
$Sheet
S 7300 1975 1600 1125
U 53A9AEFE
F0 "USB 3.0 Device (FX3)" 50
F1 "USB 3.0 Device (FX3).sch" 50
F2 "FX3_CTL[0..12]" B L 7300 2750 60 
F3 "FX3_DQ[0..15]" B L 7300 2625 60 
$EndSheet
$Sheet
S 7300 3525 1600 1125
U 53A9D6EB
F0 "USB 2.0 Host" 50
F1 "USB 2.0 Host.sch" 50
F2 "VIN_d[0..7]" B L 7300 3800 60 
$EndSheet
$Sheet
S 2800 3550 1600 1125
U 53A9F944
F0 "Peripherals" 50
F1 "Peripherals.sch" 50
F2 "Mo_D[0..15]" B R 4400 4025 60 
F3 "Me_D[0..15]" B R 4400 3900 60 
F4 "DVI_d[0..11]" B R 4400 3675 60 
$EndSheet
$Sheet
S 7275 5025 1600 1125
U 53AA1A4C
F0 "Ethernet" 50
F1 "Ethernet.sch" 50
F2 "lan_txd_[0..7]" O L 7275 5425 60 
F3 "lan_rxd_[0..7]" O L 7275 5525 60 
$EndSheet
$Sheet
S 5075 5025 1600 1125
U 53AA2210
F0 "Clocks" 50
F1 "Clocks.sch" 50
$EndSheet
$Sheet
S 2275 6850 1250 800 
U 53AA305C
F0 "USB 3.0 power supply" 50
F1 "USB 3.0 power supply.sch" 50
$EndSheet
$Sheet
S 3775 6850 1250 800 
U 53AA37EB
F0 "Board power supply 1" 50
F1 "Board power supply 1.sch" 50
$EndSheet
$Sheet
S 5225 6850 1250 800 
U 53AA4119
F0 "Board power supply 2" 50
F1 "Board power supply 2.sch" 50
$EndSheet
$Sheet
S 9475 725  1525 625 
U 53A930C7
F0 "Clocks block diagram" 50
F1 "Clocks block diagram.sch" 50
$EndSheet
$Sheet
S 825  6850 1250 775 
U 53AA2709
F0 "FPGA power distribution" 50
F1 "FPGA power distribution.sch" 50
$EndSheet
$Sheet
S 2750 5025 1600 1125
U 53A96257
F0 "FMC  and Myriad RF connectors" 50
F1 "FMC  and Myriad RF connectors.sch" 50
F2 "DIQ1_D[0..11]" I R 4350 5300 60 
F3 "DIQ2_D[0..11]" O R 4350 5425 60 
$EndSheet
$Sheet
S 4950 1975 1800 1275
U 53A930CB
F0 "FPGA banks 1_4" 50
F1 "FPGA banks 1_4.sch" 50
F2 "DDR_1_A[0..12]" O L 4950 2700 60 
F3 "DDR_0_DQ[0..15]" B L 4950 2300 60 
F4 "DDR_0_A[0..12]" O L 4950 2425 60 
F5 "DDR_1_DQ[0..15]" B L 4950 2600 60 
F6 "FX3_CTL[0..12]" B R 6750 2750 60 
F7 "FX3_DQ[0..15]" B R 6750 2625 60 
F8 "DVI_d[0..11]" B L 4950 2900 60 
$EndSheet
Text Notes 7800 1325 0    79   ~ 0
Page 2
Text Notes 9500 1325 0    79   ~ 0
Page 14
Text Notes 4975 3200 0    79   ~ 0
Page 17
Text Notes 4975 4725 0    79   ~ 0
Page 4
Text Notes 2825 3050 0    79   ~ 0
Page 5
Text Notes 2775 6100 0    79   ~ 0
Page 16
Text Notes 7325 3050 0    79   ~ 0
Page 6
Text Notes 7325 4600 0    79   ~ 0
Page 7
Text Notes 5275 7600 0    79   ~ 0
Page 13
Text Notes 850  7575 0    79   ~ 0
Page 15
Text Notes 5100 6125 0    79   ~ 0
Page 10
Text Notes 2825 4625 0    79   ~ 0
Page 8
Text Notes 3800 7600 0    79   ~ 0
Page 12
Text Notes 2300 7600 0    79   ~ 0
Page 11
Text Notes 7300 6100 0    79   ~ 0
Page 9
Wire Bus Line
	4950 2300 4400 2300
Wire Bus Line
	4400 2425 4950 2425
Wire Bus Line
	4950 2600 4400 2600
Wire Bus Line
	4400 2700 4950 2700
Wire Bus Line
	6750 2625 7300 2625
Wire Bus Line
	6750 2750 7300 2750
Wire Bus Line
	4950 2900 4700 2900
Wire Bus Line
	4700 2900 4700 3675
Wire Bus Line
	4700 3675 4400 3675
Wire Bus Line
	4400 3900 4950 3900
Wire Bus Line
	4950 4025 4400 4025
Wire Bus Line
	4350 5425 4725 5425
Wire Bus Line
	4725 5425 4725 4350
Wire Bus Line
	4725 4350 4950 4350
Wire Bus Line
	4950 4225 4675 4225
Wire Bus Line
	4675 4225 4675 5300
Wire Bus Line
	4675 5300 4350 5300
Wire Bus Line
	7300 3800 6750 3800
Wire Bus Line
	7275 5425 7100 5425
Wire Bus Line
	7025 5525 7275 5525
Wire Bus Line
	7100 5425 7100 4425
Wire Bus Line
	7100 4425 6750 4425
Wire Bus Line
	6750 4550 7025 4550
Wire Bus Line
	7025 4550 7025 5525
Text Notes 2850 4250 0    39   ~ 0
DVI\nHDMI connector\nMictor38 (Agilent) connenctor
Text Notes 7375 2250 0    39   ~ 0
Including:\nFX3 Memory\nFX3 JTAG
$Comp
L MOUNTHOLLE MH1
U 1 1 53D70C6D
P 9850 6650
F 0 "MH1" H 9850 6800 60  0000 C CNN
F 1 "MOUNTHOLLE" H 9850 6900 60  0001 C CNN
F 2 "MH" H 9850 6550 60  0001 C CNN
F 3 "~" H 9850 6650 60  0000 C CNN
	1    9850 6650
	1    0    0    -1  
$EndComp
$Comp
L MOUNTHOLLE MH2
U 1 1 53D71382
P 10100 6650
F 0 "MH2" H 10100 6800 60  0000 C CNN
F 1 "MOUNTHOLLE" H 10100 6900 60  0001 C CNN
F 2 "MH" H 10100 6550 60  0001 C CNN
F 3 "~" H 10100 6650 60  0000 C CNN
	1    10100 6650
	1    0    0    -1  
$EndComp
$Comp
L MOUNTHOLLE MH3
U 1 1 53D713E2
P 10350 6650
F 0 "MH3" H 10350 6800 60  0000 C CNN
F 1 "MOUNTHOLLE" H 10350 6900 60  0001 C CNN
F 2 "MH" H 10350 6550 60  0001 C CNN
F 3 "~" H 10350 6650 60  0000 C CNN
	1    10350 6650
	1    0    0    -1  
$EndComp
$Comp
L MOUNTHOLLE MH4
U 1 1 53D71442
P 10600 6650
F 0 "MH4" H 10600 6800 60  0000 C CNN
F 1 "MOUNTHOLLE" H 10600 6900 60  0001 C CNN
F 2 "MH" H 10600 6550 60  0001 C CNN
F 3 "~" H 10600 6650 60  0000 C CNN
	1    10600 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 53D71D71
P 9850 6850
F 0 "#PWR01" H 9850 6950 40  0001 C CNN
F 1 "GND" H 9850 6780 40  0000 C CNN
F 2 "~" H 9850 6850 60  0000 C CNN
F 3 "~" H 9850 6850 60  0000 C CNN
	1    9850 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 53D71DD1
P 10100 6850
F 0 "#PWR02" H 10100 6950 40  0001 C CNN
F 1 "GND" H 10100 6780 40  0000 C CNN
F 2 "~" H 10100 6850 60  0000 C CNN
F 3 "~" H 10100 6850 60  0000 C CNN
	1    10100 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 53D71E31
P 10350 6850
F 0 "#PWR03" H 10350 6950 40  0001 C CNN
F 1 "GND" H 10350 6780 40  0000 C CNN
F 2 "~" H 10350 6850 60  0000 C CNN
F 3 "~" H 10350 6850 60  0000 C CNN
	1    10350 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 53D71E91
P 10600 6850
F 0 "#PWR04" H 10600 6950 40  0001 C CNN
F 1 "GND" H 10600 6780 40  0000 C CNN
F 2 "~" H 10600 6850 60  0000 C CNN
F 3 "~" H 10600 6850 60  0000 C CNN
	1    10600 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 6700 9850 6800
Wire Wire Line
	10100 6700 10100 6800
Wire Wire Line
	10350 6700 10350 6800
Wire Wire Line
	10600 6700 10600 6800
$Comp
L FIDUCIAL FD1
U 1 1 53F031E4
P 9850 6250
F 0 "FD1" H 9850 6350 60  0000 C CNN
F 1 "FIDUCIAL" H 9850 6450 60  0001 C CNN
F 2 "Fiducial" H 9850 6150 60  0001 C CNN
F 3 "~" H 9850 6250 60  0000 C CNN
	1    9850 6250
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FD2
U 1 1 53F034C1
P 10050 6250
F 0 "FD2" H 10050 6350 60  0000 C CNN
F 1 "FIDUCIAL" H 10050 6450 60  0001 C CNN
F 2 "Fiducial" H 10050 6150 60  0001 C CNN
F 3 "~" H 10050 6250 60  0000 C CNN
	1    10050 6250
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FD3
U 1 1 53F035D5
P 10250 6250
F 0 "FD3" H 10250 6350 60  0000 C CNN
F 1 "FIDUCIAL" H 10250 6450 60  0001 C CNN
F 2 "Fiducial" H 10250 6150 60  0001 C CNN
F 3 "~" H 10250 6250 60  0000 C CNN
	1    10250 6250
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FD4
U 1 1 53F035DB
P 10450 6250
F 0 "FD4" H 10450 6350 60  0000 C CNN
F 1 "FIDUCIAL" H 10450 6450 60  0001 C CNN
F 2 "Fiducial" H 10450 6150 60  0001 C CNN
F 3 "~" H 10450 6250 60  0000 C CNN
	1    10450 6250
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FD5
U 1 1 53F0363B
P 10650 6250
F 0 "FD5" H 10650 6350 60  0000 C CNN
F 1 "FIDUCIAL" H 10650 6450 60  0001 C CNN
F 2 "Fiducial" H 10650 6150 60  0001 C CNN
F 3 "~" H 10650 6250 60  0000 C CNN
	1    10650 6250
	1    0    0    -1  
$EndComp
$Comp
L FIDUCIAL FD6
U 1 1 53F03641
P 10850 6250
F 0 "FD6" H 10850 6350 60  0000 C CNN
F 1 "FIDUCIAL" H 10850 6450 60  0001 C CNN
F 2 "Fiducial" H 10850 6150 60  0001 C CNN
F 3 "~" H 10850 6250 60  0000 C CNN
	1    10850 6250
	1    0    0    -1  
$EndComp
NoConn ~ 9850 6300
NoConn ~ 10050 6300
NoConn ~ 10250 6300
NoConn ~ 10650 6300
NoConn ~ 10850 6300
NoConn ~ 10450 6300
$EndSCHEMATC
