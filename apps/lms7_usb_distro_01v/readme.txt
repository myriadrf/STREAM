CONTENTS
========

   I. Description of folders and files
  II. General notes
 III. ToDo

 
 
I. Description of folders and files
===================================

  readme.txt                     - This file
  ReleaseNotes.txt              - Distribution release change log
  fx3/                           - FX3 USB microcontroller related
   |- firmware_img               - Contains compiled firmware image for FX3 USB microcontroller
  gateware                       - FPGA related
   |- bitstreams                 - Contains compiled FPGA bitstreams
       |- lms7_ustream_trx.rbf   - FPGA biststream file. Download it to FPGA using LMS-suite Programmer
       |- lms7_ustream_trx.sof   - FPGA biststream file. Download it to FPGA using Quartus programmer
  qii_projects                   - Quartus II project of gateware
  gui                            - Software to control MyriadRF board
   |- lms7suite.exe              - Windows GUI to control the boards
   |- ustream_trx.ini            - GUI project file to test WFM Tx and FFT Viewer
   |- lms7suite_wfm
   |   |- onetone.wfm            - One tone test waveform file
   |   |- wcdma.wfm              - WCDMA test waveform file
   |- lms7suite_mcu              - LMS7002M internal MCU related files
	
		
II. General notes
==================

  Note 1: FX3 drivers, utilities and documentation must be downloaded from Cypress. 
  Note 2: FX3 MCU must be programmed before FPGA.
  Note 3: LD2 LED will start to flash after FX3 MCU is programmed successfully.
  Note 4: FPGA must be programmed before LMS7 configuration. LD5 starts to flash after succesfull FPGA programming.  


III. ToDo
=========

  1. RPi connector - needs to be considered what to implement.
