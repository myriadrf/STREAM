CONTENTS
========

   I. Description of folders and files
  II. General notes
 III. Required PCB Modifications

 
 
I. Description of folders and files
===================================

  readme.txt                - this file
        docs/                     - Quick start and user guides
	fx3/                      - FX3 USB microcontroller related
	 |- firmware_img          - Contains compiled firmware image for FX3 USB microcontroller
	gateware                  - FPGA related
	 |- bitstreams            - Contains compiled FPGA bitstreams
	     |- lms7_trx_61MHz.rbf   - FPGA biststream file. Download it to FPGA using LMS-suite Programmer
             |- lms7_trx_61MHz.sof   - FPGA biststream file. Download it to FPGA using Quartus programmer
	     |- lms7_trx_122MHz.rbf  - FPGA biststream file. Download it to FPGA using LMS-suite Programmer
             |- lms7_trx_122MHz.sof  - FPGA biststream file. Download it to FPGA using Quartus programmer
	 |- qii_projects          - Contains FPGA projects
	gui                       - Software to control MyriadRF board
	 |- lms7suite.exe         - GUI to control/program FPGA
	 |- wfm_tx_rx_61MHz.ini   - GUI project file to test WFM Tx and FFT Viewer, with 61.44MHz
	 |- wfm_tx_rx_122MHz.ini  - GUI project file to test WFM Tx and FFT Viewer, with 122.88MHz
	 |- onetone1.wfm          - One tone test waveform file
	 |- wcdma31.wfm           - WCDMA test waveform file
	lms_vcp_drivers           - Windows Virtual COM Port drivres for LMS7EVB
        lms7evb
         |-LMS7002EVBv2_e.hex     - Firmware for LMS7EVB USB microcontroller
	
		
II. General notes
==================

  	Note 1: FX3 MCU must be programmed before FPGA.
	Note 2: LD1 LED will start to flash after FX3 MCU is programmed successfully.
	Note 3: FPGA must be programmed before LMS7EVB configuration. Led (lan_led in schematic) on Ethernet connector starts to blink after succesfull FPGA programming.  
	Note 4: After programming FPGA and LMS7EVB configuration FPGA GPIO0 (pin 1 of J1 connector) will on/off for ~1s period.
	Note 5: Jumpers J22 (STREAM board) and JP2 position 1-2 (LMS7EVB board) has to be on if power is required from FMC connector for LMS7EVB. 
	 


III. Required PCB Modifications
===============================

  Some resistors must be fitted on Streamer and LMS7EVB boards to be able control LMS7EVB via FMC connector.

  Streamer board modifications:
  Fit these resistors: R189, R190, R191, R192, R193, R194

  EVB7 board modifications:
  Fit these resistors: 	R91, R92, R93, R94, R95, R96
