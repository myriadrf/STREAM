module myriadrf_cfg
  #(parameter WB_AW = 32,
    parameter WB_DW = 32)
  (
   input 	       wb_clk_i,
   input 	       wb_rst_i,
   //Wishbone IF
   input [WB_AW-1:0]   wb_adr_i,
   input [WB_DW-1:0]   wb_dat_i,
   input [WB_DW/8-1:0] wb_sel_i,
   input 	       wb_we_i ,
   input 	       wb_cyc_i,
   input 	       wb_stb_i,
   input [2:0] 	       wb_cti_i,
   input [1:0] 	       wb_bte_i,
   output [WB_DW-1:0]  wb_dat_o,
   output reg 	       wb_ack_o,
   output 	       wb_err_o,
   output 	       wb_rty_o,
   //Application IF
   output reg 	       tx_src_o,
   output reg 	       rx_src_o,
   output reg 	       loopback_o,
   output reg 	       rx_sink_o);

   // Read
   assign wb_dat_o = wb_adr_i[5:2] == 0 ? {{(WB_DW-1){1'b0}}, tx_src_o} :
		     wb_adr_i[5:2] == 1 ? {{(WB_DW-1){1'b0}}, rx_src_o} :
		     wb_adr_i[5:2] == 2 ? {{(WB_DW-1){1'b0}}, loopback_o} :
		     wb_adr_i[5:2] == 3 ? {{(WB_DW-1){1'b0}}, rx_sink_o} :
                     0;

   always @(posedge wb_clk_i) begin
      // Ack generation
      if (wb_ack_o)
	wb_ack_o <= 0;
      else if (wb_cyc_i & wb_stb_i & !wb_ack_o)
	wb_ack_o <= 1;

      //Read/Write logic
      if (wb_stb_i & wb_cyc_i & wb_we_i & wb_ack_o) begin
	 case (wb_adr_i[5:2])
	   0 : tx_src_o   <= wb_dat_i[0];
	   1 : rx_src_o   <= wb_dat_i[0];
	   2 : loopback_o <= wb_dat_i[0];
	   3 : rx_sink_o  <= wb_dat_i[0];
	   default : ;
	 endcase
      end

      if (wb_rst_i) begin
	 wb_ack_o   <= 0;
	 tx_src_o   <= 1'b0;
	 rx_src_o   <= 1'b0;
	 loopback_o <= 1'b0;
	 rx_sink_o  <= 1'b0;
      end
   end
   assign wb_err_o = 0;
   assign wb_rty_o = 0;

endmodule
