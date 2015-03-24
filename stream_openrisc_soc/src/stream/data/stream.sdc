create_clock -period 30.72MHz [get_ports sys_clk_pad_i]
create_clock -period 25MHz [get_ports eth0_rx_clk]
create_clock -period 25MHz [get_ports eth0_tx_clk]

derive_pll_clocks -create_base_clocks

derive_clock_uncertainty

#False paths for Dual clock FIFO
#set_false_path -from [get_registers *dual_clock_fifo\|wr_addr_gray\[*\]] -to [get_registers *dual_clock_fifo\|wr_addr_gray_rd\[*\]]
#set_false_path -from [get_registers *dual_clock_fifo\|wr_addr\[*\]] -to [get_registers *dual_clock_fifo\|wr_addr_gray_rd\[*\]]
#set_false_path -from [get_registers *dual_clock_fifo\|rd_addr_gray\[*\]] -to [get_registers *dual_clock_fifo\|rd_addr_gray_wr\[*\]]
#set_false_path -from [get_registers *dual_clock_fifo\|rd_addr\[*\]] -to [get_registers *dual_clock_fifo\|rd_addr_gray_wr\[*\]]

#FIXME
set_false_path -to *wrfifo|rd_data_o[*]
set_false_path -to *wrfifo|wr_addr_gray_rd[*]
set_false_path -to *wrfifo|rd_addr_gray_wr[*]
set_false_path -to *wb_port|adr_o_r[*]
set_false_path -to *wb_port|read_req
set_false_path -to *wb_port|buf_clean_r[*]
set_false_path -to *wb_port|read_done_r
