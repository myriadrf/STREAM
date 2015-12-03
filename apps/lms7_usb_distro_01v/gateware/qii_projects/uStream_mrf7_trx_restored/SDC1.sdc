#=======================Base clocks=============================================
#FPGA pll
create_clock -period "30.72MHz" 	-name clk 	[get_ports clk]

#FX3 SPI clock
create_clock -period "1MHz" 		-name FX3_SPI_SCK [get_ports FX3_SPI_SCK]

#MCLK2 clock
create_clock -period "200MHz" 		-name MCLK2 [get_ports MCLK2]

#MCLK1 clock
#create_clock -period "50MHz" 		-name MCLK1 [get_ports MCLK1]

derive_pll_clocks

#======================Virtual clocks============================================
create_clock -period "100 MHz" 	-name fx3_clk_virt
create_clock -period "15.36 MHz" -name RXCLK_virt

#======================Input delays=============================================
set_input_delay -clock [get_clocks fx3_clk_virt] -max 8.225 [get_ports {FX3_DQ*}]
set_input_delay -clock [get_clocks fx3_clk_virt] -min 0.225 [get_ports {FX3_DQ*}] -add_delay

#input delays
set in_tsu  3
set in_th	0.3

set inperiod  65.104
set in_max_dly [expr $inperiod/2 -$in_tsu]
set in_min_dly [expr $in_th]

set_input_delay -max $in_max_dly -clock RXCLK_virt -add_delay [get_ports RXD*]
set_input_delay -min $in_min_dly -clock RXCLK_virt -add_delay [get_ports RXD*]
set_input_delay -max $in_max_dly -clock RXCLK_virt -add_delay [get_ports RXIQSEL*]
set_input_delay -min $in_min_dly -clock RXCLK_virt -add_delay [get_ports RXIQSEL*]


#======================Output delays=============================================
set_output_delay -clock [get_clocks fx3_clk_virt] -max 2.5 [get_ports {FX3_DQ* FX3_SLWRn FX3_PKTENDn}]
set_output_delay -clock [get_clocks fx3_clk_virt] -min 0.75 [get_ports {FX3_DQ* FX3_SLWRn FX3_PKTENDn}] -add_delay

#output delays
set out_skew  .55
set outperiod  16.276
set out_max_dly [expr $outperiod/2-$out_skew]
set out_min_dly [expr $out_skew-$outperiod/2]

#set_output_delay -max $out_max_dly -clock [get_clocks inst7|altpll_component|auto_generated|pll1|clk[1]] [get_ports TXD*]
#set_output_delay -min $out_min_dly -clock [get_clocks inst7|altpll_component|auto_generated|pll1|clk[1]] [get_ports TXD*]
#
#set_output_delay -max $out_max_dly -clock [get_clocks inst7|altpll_component|auto_generated|pll1|clk[1]] [get_ports TXIQSEL*]
#set_output_delay -min $out_min_dly -clock [get_clocks inst7|altpll_component|auto_generated|pll1|clk[1]] [get_ports TXIQSEL*]

#====================Other clock constraints====================================
derive_clock_uncertainty

#============================false paths========================================
set_false_path -from * -to [get_ports RPI* ]
set_false_path -from * -to [get_ports FPGA_LED* ]

set_clock_groups -asynchronous -group {FX3_SPI_SCK} -group {clk}
set_clock_groups -asynchronous -group {FX3_SPI_SCK} -group {inst1|ddr2_controller_phy_inst|ddr2_phy_inst|ddr2_phy_alt_mem_phy_inst|clk|pll|altpll_component|auto_generated|pll1|clk[1]}