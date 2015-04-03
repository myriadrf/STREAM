# STREAM

![STREAM board fitted with a Myriad-RF 1 module](/images/Stream_MRF1_722w.jpg)

[STREAM](https://myriadrf.org/projects/stream/) is a flexible platform for developing high-performance digital and RF designs using an Altera Cyclone IV FPGA and Lime Microsystems FPRF transceiver. The board incorporates SDRAM, Micro SD storage and a selection of other useful peripherals, with expansion via RFDIO and FMC mezzanine cards enabling use with both Myriad-RF 1 and LMS7002M EVB RF modules.

## Contents

The directory structure is as follows:

      apps/
          STREAM_LMS7EVB_distro_07v/  - LMS7002EVB examples

      docs/                      - platform documentation

      hardware/<version>/
          BOM/                   - bill of materials spreadsheet
          Case/                  - Aluminium case design
          Gerbers/               - Gerber CAM files
          KiCAD/                 - KiCAD schematic and layout files
          Manufacturing/         - Additional manufacturing information
          PDF/                   - Schematic and layout PDFs
          Reports/               - DRC, ERC and drill reports
              
      stream_openrisc_soc/
          bin/                   - pre-built FPGA and Linux images
          doc/                   - HTML documentation for the Stream OpenRISC SoC
          quartus/               - Quartus project archive for rebuilding the FPGA image
          src/                   - Source code for Stream-specific cores
          sw/                    - Example applications for communicating with LMS6002D

## Licensing

### Hardware

The hardware designs are licensed under a Creative Commons Attribution 3.0 Unported licence.

### FPGA design

For details of the FPGA design licensing please see the associated COPYING file(s). However, please note that this does not extend to any files provided with the Altera design tools and see the relevant files for the associated terms and conditions.
