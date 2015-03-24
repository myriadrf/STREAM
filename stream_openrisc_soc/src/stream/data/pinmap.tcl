###########################################
# Misc
###########################################
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to sys_clk_pad_i
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to rst_n_pad_i

set_location_assignment PIN_A12 -to sys_clk_pad_i
set_location_assignment PIN_E4  -to rst_n_pad_i

set_instance_assignment -name CLOCK_SETTINGS Clock -to sys_clk_pad_i

###########################################
# GPIO
###########################################
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to uart0_stx_pad_o

#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to gpio0_io[6]
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to gpio0_io[5]
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to gpio0_io[4]
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to gpio0_io[3]
#set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to gpio0_io[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to uart0_stx_pad_o
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to uart0_srx_pad_i

#set_location_assignment PIN_B16 -to gpio0_io[6]
#set_location_assignment PIN_B18 -to gpio0_io[5]
#set_location_assignment PIN_A17 -to gpio0_io[4]
#set_location_assignment PIN_B17 -to gpio0_io[3]
#set_location_assignment PIN_A18 -to gpio0_io[2]
set_location_assignment PIN_A16 -to uart0_stx_pad_o
set_location_assignment PIN_A15 -to uart0_srx_pad_i

###########################################
# DDR2 0
###########################################
set_instance_assignment -name OUTPUT_ENABLE_DELAY 1 -to mem_dq
set_instance_assignment -name OUTPUT_ENABLE_DELAY 1 -to mem_dqs
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to mem_dq
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to mem_dqs
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dqs
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_odt
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_address
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_bank
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_cs_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_cke
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_ras_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_we_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dm
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_cas_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_clk_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_clk_p
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dqs
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_odt
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_address
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_bank
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_ras_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_cas_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_we_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_cke
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_cs_n
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dm
set_instance_assignment -name SLEW_RATE 2 -to mem_address
set_instance_assignment -name SLEW_RATE 2 -to mem_dq
set_instance_assignment -name SLEW_RATE 2 -to mem_bank
set_instance_assignment -name SLEW_RATE 2 -to mem_ras_n
set_instance_assignment -name SLEW_RATE 2 -to mem_cas_n
set_instance_assignment -name SLEW_RATE 2 -to mem_we_n
set_instance_assignment -name SLEW_RATE 2 -to mem_cke
set_instance_assignment -name SLEW_RATE 2 -to mem_cs_n
set_instance_assignment -name SLEW_RATE 2 -to mem_dm
set_instance_assignment -name SLEW_RATE 2 -to mem_odt
set_instance_assignment -name CURRENT_STRENGTH_NEW 10MA -to mem_clk_p
set_instance_assignment -name CURRENT_STRENGTH_NEW 10MA -to mem_clk_n
set_instance_assignment -name SLEW_RATE 2 -to mem_clk_p
set_instance_assignment -name SLEW_RATE 2 -to mem_clk_n
set_instance_assignment -name SLEW_RATE 2 -to mem_dqs
set_instance_assignment -name CKN_CK_PAIR ON -from mem_clk_n -to mem_clk_p

set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[15]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[14]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[13]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[12]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[11]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[10]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[9]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[8]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[7]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[6]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[5]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[4]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[3]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[2]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dq[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dm[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dm[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dqs[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 0 -to mem_dqs[0]

set_location_assignment PIN_U14  -to mem_address[12]
set_location_assignment PIN_U16  -to mem_address[11]
set_location_assignment PIN_AB17 -to mem_address[10]
set_location_assignment PIN_AA20 -to mem_address[9]
set_location_assignment PIN_R16  -to mem_address[8]
set_location_assignment PIN_AA19 -to mem_address[7]
set_location_assignment PIN_U17  -to mem_address[6]
set_location_assignment PIN_AB19 -to mem_address[5]
set_location_assignment PIN_T16  -to mem_address[4]
set_location_assignment PIN_Y17  -to mem_address[3]
set_location_assignment PIN_T14  -to mem_address[2]
set_location_assignment PIN_AA17 -to mem_address[1]
set_location_assignment PIN_U15  -to mem_address[0]
set_location_assignment PIN_T13  -to mem_bank[1]
set_location_assignment PIN_U13  -to mem_bank[0]
set_location_assignment PIN_T10  -to mem_cas_n
set_location_assignment PIN_AB10 -to mem_cke
set_location_assignment PIN_R15  -to mem_clk_n
set_location_assignment PIN_R14  -to mem_clk_p
set_location_assignment PIN_Y8   -to mem_cs_n
set_location_assignment PIN_U12  -to mem_dq[15]
set_location_assignment PIN_AA13 -to mem_dq[14]
set_location_assignment PIN_AB15 -to mem_dq[13]
set_location_assignment PIN_AA14 -to mem_dq[12]
set_location_assignment PIN_AB14 -to mem_dq[11]
set_location_assignment PIN_AA15 -to mem_dq[10]
set_location_assignment PIN_AB13 -to mem_dq[9]
set_location_assignment PIN_W13  -to mem_dq[8]
set_location_assignment PIN_V15  -to mem_dq[7]
set_location_assignment PIN_AB16 -to mem_dq[6]
set_location_assignment PIN_W17  -to mem_dq[5]
set_location_assignment PIN_T15  -to mem_dq[4]
set_location_assignment PIN_AB18 -to mem_dq[3]
set_location_assignment PIN_AB20 -to mem_dq[2]
set_location_assignment PIN_V14  -to mem_dq[1]
set_location_assignment PIN_W15  -to mem_dq[0]
set_location_assignment PIN_AA10 -to mem_dm[1]
set_location_assignment PIN_AA16 -to mem_dm[0]
set_location_assignment PIN_Y13  -to mem_dqs[1]
set_location_assignment PIN_V13  -to mem_dqs[0]
set_location_assignment PIN_T12  -to mem_odt
set_location_assignment PIN_T11  -to mem_ras_n
set_location_assignment PIN_T9   -to mem_we_n

###########################################
# DDR2 1
###########################################
set_instance_assignment -name OUTPUT_ENABLE_DELAY 1 -to mem1_dq
set_instance_assignment -name OUTPUT_ENABLE_DELAY 1 -to mem1_dqs
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to mem1_dq
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to mem1_dqs
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem1_*
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem1_dq
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem1_dqs
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_odt
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_address
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_bank
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_ras_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_cas_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_we_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_cke
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem1_cs_n
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem1_dm
set_instance_assignment -name SLEW_RATE 2 -to mem1_address
set_instance_assignment -name SLEW_RATE 2 -to mem1_dq
set_instance_assignment -name SLEW_RATE 2 -to mem1_bank
set_instance_assignment -name SLEW_RATE 2 -to mem1_ras_n
set_instance_assignment -name SLEW_RATE 2 -to mem1_cas_n
set_instance_assignment -name SLEW_RATE 2 -to mem1_we_n
set_instance_assignment -name SLEW_RATE 2 -to mem1_cke
set_instance_assignment -name SLEW_RATE 2 -to mem1_cs_n
set_instance_assignment -name SLEW_RATE 2 -to mem1_dm
set_instance_assignment -name SLEW_RATE 2 -to mem1_odt
set_instance_assignment -name CURRENT_STRENGTH_NEW 10MA -to mem1_clk_p
set_instance_assignment -name CURRENT_STRENGTH_NEW 10MA -to mem1_clk_n
set_instance_assignment -name SLEW_RATE 2 -to mem1_clk_p
set_instance_assignment -name SLEW_RATE 2 -to mem1_clk_n
set_instance_assignment -name SLEW_RATE 2 -to mem1_dqs
set_instance_assignment -name CKN_CK_PAIR ON -from mem1_clk_n -to mem1_clk_p

set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[15]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[14]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[13]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[12]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[11]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[10]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[9]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[8]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[7]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[6]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[5]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[4]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[3]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[2]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dq[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dm[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dm[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dqs[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 1 -to mem1_dqs[0]

set_location_assignment PIN_T8  -to mem1_address[12]
set_location_assignment PIN_W2  -to mem1_address[11]
set_location_assignment PIN_Y6  -to mem1_address[10]
set_location_assignment PIN_V7  -to mem1_address[9]
set_location_assignment PIN_Y1  -to mem1_address[8]
set_location_assignment PIN_AB5 -to mem1_address[7]
set_location_assignment PIN_Y2  -to mem1_address[6]
set_location_assignment PIN_AB3 -to mem1_address[5]
set_location_assignment PIN_AA1 -to mem1_address[4]
set_location_assignment PIN_V6  -to mem1_address[3]
set_location_assignment PIN_Y3  -to mem1_address[2]
set_location_assignment PIN_AA3 -to mem1_address[1]
set_location_assignment PIN_W1  -to mem1_address[0]
set_location_assignment PIN_V3  -to mem1_bank[1]
set_location_assignment PIN_V4  -to mem1_bank[0]
set_location_assignment PIN_T4  -to mem1_cas_n
set_location_assignment PIN_R7  -to mem1_cke
set_location_assignment PIN_U8  -to mem1_clk_n
set_location_assignment PIN_U7  -to mem1_clk_p
set_location_assignment PIN_R6  -to mem1_cs_n
set_location_assignment PIN_AA4 -to mem1_dq[15]
set_location_assignment PIN_U9  -to mem1_dq[14]
set_location_assignment PIN_Y7  -to mem1_dq[13]
set_location_assignment PIN_W8  -to mem1_dq[12]
set_location_assignment PIN_V8  -to mem1_dq[11]
set_location_assignment PIN_W7  -to mem1_dq[10]
set_location_assignment PIN_AA5 -to mem1_dq[9]
set_location_assignment PIN_W6  -to mem1_dq[8]
set_location_assignment PIN_Y10 -to mem1_dq[7]
set_location_assignment PIN_AA8 -to mem1_dq[6]
set_location_assignment PIN_W10 -to mem1_dq[5]
set_location_assignment PIN_V11 -to mem1_dq[4]
set_location_assignment PIN_AA9 -to mem1_dq[3]
set_location_assignment PIN_AB7 -to mem1_dq[2]
set_location_assignment PIN_AB8 -to mem1_dq[1]
set_location_assignment PIN_U10 -to mem1_dq[0]
set_location_assignment PIN_V5  -to mem1_dm[1]
set_location_assignment PIN_AA7 -to mem1_dm[0]
set_location_assignment PIN_V10 -to mem1_dqs[1]
set_location_assignment PIN_AB9 -to mem1_dqs[0]
set_location_assignment PIN_P6  -to mem1_odt
set_location_assignment PIN_T5  -to mem1_ras_n
set_location_assignment PIN_T7  -to mem1_we_n

###########################################
#Ethernet
###########################################
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to eth0_*
set_location_assignment PIN_G22 -to eth0_tx_clk
set_location_assignment PIN_P22 -to eth0_tx_data[3]
set_location_assignment PIN_P21 -to eth0_tx_data[2]
set_location_assignment PIN_N21 -to eth0_tx_data[1]
set_location_assignment PIN_N22 -to eth0_tx_data[0]
set_location_assignment PIN_T18 -to eth0_tx_en
set_location_assignment PIN_T17 -to eth0_tx_er

set_location_assignment PIN_T21 -to eth0_rx_clk
set_location_assignment PIN_W22 -to eth0_rx_data[3]
set_location_assignment PIN_W21 -to eth0_rx_data[2]
set_location_assignment PIN_Y22 -to eth0_rx_data[1]
set_location_assignment PIN_Y21 -to eth0_rx_data[0]
set_location_assignment PIN_AA21 -to eth0_dv
set_location_assignment PIN_U19 -to eth0_rx_er
set_location_assignment PIN_W20 -to eth0_col
set_location_assignment PIN_U20 -to eth0_crs
set_location_assignment PIN_J5 -to eth0_mdc_pad_o
set_location_assignment PIN_J6 -to eth0_md_pad_io
#set_location_assignment PIN_ -to eth0_rst_n_o

###########################################
#FX3 Interface
###########################################
set_location_assignment PIN_G14 -to fx3_spi_cs
set_location_assignment PIN_G15 -to fx3_spi_miso
set_location_assignment PIN_G16 -to fx3_spi_mosi
set_location_assignment PIN_F11 -to fx3_spi_sck

set_location_assignment PIN_H14 -to fx3_gpio42
set_location_assignment PIN_H15 -to fx3_gpio43

set_location_assignment PIN_R2 -to fx3_dq_o[15]
set_location_assignment PIN_R1 -to fx3_dq_o[14]
set_location_assignment PIN_V2 -to fx3_dq_o[13]
set_location_assignment PIN_V1 -to fx3_dq_o[12]
set_location_assignment PIN_U2 -to fx3_dq_o[11]
set_location_assignment PIN_U1 -to fx3_dq_o[10]
set_location_assignment PIN_R5 -to fx3_dq_o[9]
set_location_assignment PIN_T3 -to fx3_dq_o[8]
set_location_assignment PIN_P4 -to fx3_dq_o[7]
set_location_assignment PIN_P5 -to fx3_dq_o[6]
set_location_assignment PIN_N2 -to fx3_dq_o[5]
set_location_assignment PIN_P2 -to fx3_dq_o[4]
set_location_assignment PIN_P1 -to fx3_dq_o[3]
set_location_assignment PIN_M1 -to fx3_dq_o[2]
set_location_assignment PIN_N1 -to fx3_dq_o[1]
set_location_assignment PIN_P3 -to fx3_dq_o[0]
set_location_assignment PIN_M2 -to fx3_pclk_o
set_location_assignment PIN_L7 -to fx3_slcs_n_o
set_location_assignment PIN_M4 -to fx3_slwr_n_o
set_location_assignment PIN_M8 -to fx3_sloe_n_o
set_location_assignment PIN_M7 -to fx3_slrd_n_o
#set_location_assignment PIN_M5 -to fx3_flaga_i
set_location_assignment PIN_P7 -to fx3_flagb_i
#set_location_assignment PIN_M3 -to fx3_FLAGC
#set_location_assignment PIN_N8 -to fx3_FLAGD
set_location_assignment PIN_L6 -to fx3_pktend_n_o
set_location_assignment PIN_N7 -to fx3_fifo_addr_o[1]
set_location_assignment PIN_N5 -to fx3_fifo_addr_o[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_fifo_addr_o[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_fifo_addr_o[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_dq_o*
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_flaga_i
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_flagb_i
#set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_FLAGC
#set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_FLAGD
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_pclk_o
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_pktend_n_o
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_slcs_n_o
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_sloe_n_o
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_slrd_n_o
set_instance_assignment -name IO_STANDARD "1.8 V" -to fx3_slwr_n_o

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to fx3_spi_*
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to fx3_gpio*


###########################################
#LMS6002D Interface
###########################################
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to lms_txen


set_location_assignment PIN_E12 -to lms_reset

set_location_assignment PIN_F9  -to lms_spi_cs
set_location_assignment PIN_H10 -to lms_spi_miso
set_location_assignment PIN_H11 -to lms_spi_mosi
set_location_assignment PIN_G9  -to lms_spi_sck

set_location_assignment PIN_D7  -to lms_tx_clk_o
set_location_assignment PIN_C10 -to lms_txen_o

set_location_assignment PIN_E6  -to lms_rx_clk_o
set_location_assignment PIN_G7  -to lms_rxen_o
set_location_assignment PIN_E10 -to lms_rxiqsel_i
set_location_assignment PIN_D10 -to lms_rxd_i[11]
set_location_assignment PIN_C7  -to lms_rxd_i[10]
set_location_assignment PIN_F10 -to lms_rxd_i[9]
set_location_assignment PIN_A10 -to lms_rxd_i[8]
set_location_assignment PIN_B9  -to lms_rxd_i[7]
set_location_assignment PIN_A9  -to lms_rxd_i[6]
set_location_assignment PIN_A8  -to lms_rxd_i[5]
set_location_assignment PIN_C8  -to lms_rxd_i[4]
set_location_assignment PIN_B8  -to lms_rxd_i[3]
set_location_assignment PIN_F8  -to lms_rxd_i[2]
set_location_assignment PIN_A7  -to lms_rxd_i[1]
set_location_assignment PIN_B7  -to lms_rxd_i[0]

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to lms_*
