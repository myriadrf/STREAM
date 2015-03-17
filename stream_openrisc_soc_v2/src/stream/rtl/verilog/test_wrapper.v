module altmemphy_wrapper
  (input clock_source,
   input 	 global_reset_n,
   // Wishbone
   input 	 wb_clk,
   input 	 wb_rst,
   input [31:0]  wb_adr_i,
   input [31:0]  wb_dat_i,
   input [3:0] 	 wb_sel_i,
   input 	 wb_we_i,
   input 	 wb_cyc_i,
   input 	 wb_stb_i,
   input [2:0] 	 wb_cti_i,
   input [1:0] 	 wb_bte_i,
   output [31:0] wb_dat_o,
   output 	 wb_ack_o,
   //WB2
   input [31:0]  wb2_adr_i,
   input [31:0]  wb2_dat_i,
   input [3:0] 	 wb2_sel_i,
   input 	 wb2_we_i,
   input 	 wb2_cyc_i,
   input 	 wb2_stb_i,
   input [2:0] 	 wb2_cti_i,
   input [1:0] 	 wb2_bte_i,
   output [31:0] wb2_dat_o,
   output 	 wb2_ack_o,

   //Memory Interface
   output [13:0] mem_addr,
   output [1:0]  mem_ba,
   output 	 mem_cas_n,
   output 	 mem_cke,
   inout 	 mem_clk,
   inout 	 mem_clk_n,
   output 	 mem_cs_n,
   output [1:0]  mem_dm,
   inout [15:0]  mem_dq,
   inout [1:0] 	 mem_dqs,
   output 	 mem_odt,
   output 	 mem_ras_n,
   output 	 mem_we_n);

   assign wb_dat_o = 32'd0;
   assign wb_ack_o = 1'b0;
   assign wb2_dat_o = 32'd0;
   assign wb2_ack_o = 1'b0;
   

ddr2_ctrl ddr_ctrl_ip
 (.clock_source		(clock_source),
  .global_reset_n	(global_reset_n),

  .mem_addr		(mem_addr),
  .mem_ba		(mem_ba),
  .mem_cas_n		(mem_cas_n),
  .mem_cke		(mem_cke),
  .mem_clk		(mem_clk),
  .mem_clk_n		(mem_clk_n),
  .mem_cs_n		(mem_cs_n),
  .mem_dm		(mem_dm),
  .mem_dq		(mem_dq),
  .mem_dqs		(mem_dqs),
  .mem_odt              (mem_odt),
  .mem_ras_n		(mem_ras_n),
  .mem_we_n		(mem_we_n),
  .pnf (),
  .pnf_per_byte (),
  .test_complete (),
  .test_status());
 
endmodule
