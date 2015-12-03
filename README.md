# STREAM

![STREAM board fitted with a Myriad-RF 1 module](/images/Stream_MRF1_722w.jpg)

[STREAM](https://myriadrf.org/projects/stream/) is a flexible platform for developing high-performance digital and RF designs using an Altera Cyclone IV FPGA and Lime Microsystems FPRF transceiver.

The original STREAM board incorporates SDRAM, Micro SD storage and a selection of other useful peripherals, with expansion via RFDIO and FMC mezzanine cards enabling use with both LMS6002-based Myriad-RF 1 and UNITE LMS7002M EVB RF modules.

uSTREAM is a low cost variant that incorporates a uRFDIO connector, enabling use with the uMyriadRF-6002 and uMyriadRF-7002 RF modules.

For more details about compatible Myriad-RF transceiver modules, see the [Reference Development Kit](https://myriadrf.org/projects/rdk/).

## Contents

The directory structure is as follows:

      apps/
          lms6_usb_distro_03v/        - uSTREAM + uMyriadRF-6002 examples
          lms7_usb_distro_01v/        - uSTREAM + uMyriadRF-7002 examples
          STREAM_LMS7EVB_distro_07v/  - STREAM + UNITE LMS7002EVB examples

      docs/                      - platform documentation

      hardware/<variant>/<version>/
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
