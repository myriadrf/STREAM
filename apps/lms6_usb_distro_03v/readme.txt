CONTENTS
========

   I. Description of folders and files
  II. General notes
 III. ToDo

 
 
I. Description of folders and files
===================================

  readme.txt                - This file
  fx3/                      - FX3 USB microcontroller related
   |- firmware_img          - Contains compiled firmware image for FX3 USB microcontroller
  gateware                  - FPGA related
   |- bitstreams            - Contains compiled FPGA bitstreams
       |- lms6usb_trx.rbf   - FPGA biststream file. Download it to FPGA using LMS-suite Programmer
       |- lms6usb_trx_compresed.rbf   - FPGA biststream file. Download it to FPGA using LMS-suite Programmer
       |- lms6usb_trx.sof   - FPGA biststream file. Download it to FPGA using Quartus programmer
  gui                       - Software to control MyriadRF board
   |- lms-suite.exe         - Windows GUI to control/program FPGA
   |- lms6usb_settings_v1.ini  - GUI project file to test WFM Tx and FFT Viewer
   |- lms-suite_wfm
       |- onetone.wfm       - One tone test waveform file
       |- wcdma.wfm         - WCDMA test waveform file
	
		
II. General notes
==================

  Note 1: FX3 drivers, utilities and documentation must be downloaded from Cypress. 
  Note 2: FX3 MCU must be programmed before FPGA.
  Note 3: LD2 LED will start to flash after FX3 MCU is programmed successfully.
  Note 4: FPGA must be programmed before LMS6 configuration. LD5 starts to flash after succesfull FPGA programming.  
  Note 5: Set TX and RX interface clock and phase shift to 90deg. in "LMS6002USB Stick" module from "Modules" menu.	 
  Note 6: Set "Data format" to "Stream" in FFTviewer.
  Note 7: Set "Sampling frequency" to Rxfreq/2 in FFTviewer.
  Note 8: TCXO control voltage may be controlled using a "LMS6002USB Stick" module from "Modules" menu.


III. ToDo
=========

  1. RPi connector - needs to be considered what to implement.
