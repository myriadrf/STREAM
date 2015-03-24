module lms_mem_wrapper
  (input clock_source,
   input 	 global_reset_n,
   // Wishbone
   input 	 wb_clk,
   input 	 wb_rst,
   //Instruction Bus
   input [31:0]  wb_lms_tx_adr_i,
   input [31:0]  wb_lms_tx_dat_i,
   input [3:0] 	 wb_lms_tx_sel_i,
   input 	 wb_lms_tx_we_i,
   input 	 wb_lms_tx_cyc_i,
   input 	 wb_lms_tx_stb_i,
   input [2:0] 	 wb_lms_tx_cti_i,
   input [1:0] 	 wb_lms_tx_bte_i,
   output [31:0] wb_lms_tx_dat_o,
   output 	 wb_lms_tx_ack_o,
   //Data bus
   input [31:0]  wb_lms_rx_adr_i,
   input [31:0]  wb_lms_rx_dat_i,
   input [3:0] 	 wb_lms_rx_sel_i,
   input 	 wb_lms_rx_we_i,
   input 	 wb_lms_rx_cyc_i,
   input 	 wb_lms_rx_stb_i,
   input [2:0] 	 wb_lms_rx_cti_i,
   input [1:0] 	 wb_lms_rx_bte_i,
   output [31:0] wb_lms_rx_dat_o,
   output 	 wb_lms_rx_ack_o,

   //Instruction Bus
   input [31:0]  wb_lms_mem_adr_i,
   input [31:0]  wb_lms_mem_dat_i,
   input [3:0] 	 wb_lms_mem_sel_i,
   input 	 wb_lms_mem_we_i,
   input 	 wb_lms_mem_cyc_i,
   input 	 wb_lms_mem_stb_i,
   input [2:0] 	 wb_lms_mem_cti_i,
   input [1:0] 	 wb_lms_mem_bte_i,
   output [31:0] wb_lms_mem_dat_o,
   output 	 wb_lms_mem_ack_o,

   //Memory Interface
   output [12:0] mem_addr,
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

   localparam WB_PORTS = 3;

   wire [WB_PORTS*32-1:0] wb_m2s_adr;
   wire [WB_PORTS*32-1:0] wb_m2s_dat;
   wire [WB_PORTS*4-1:0]  wb_m2s_sel;
   wire [WB_PORTS-1:0] 	  wb_m2s_we ;
   wire [WB_PORTS-1:0] 	  wb_m2s_cyc;
   wire [WB_PORTS-1:0] 	  wb_m2s_stb;
   wire [WB_PORTS*3-1:0]  wb_m2s_cti;
   wire [WB_PORTS*2-1:0]  wb_m2s_bte;
   wire [WB_PORTS*32-1:0] wb_s2m_dat;
   wire [WB_PORTS-1:0] 	  wb_s2m_ack;

   wire [23:0] 	     local_address;
   wire 	     local_write_req;
   wire 	     local_read_req;
   wire 	     local_burstbegin;
   wire [31:0] 	     local_wdata;
   wire [3:0] 	     local_be;
   wire [6:0] 	     local_size;
   wire [31:0] 	     local_rdata;
   wire 	     local_rdata_valid;
   wire 	     local_reset_n;
   wire 	     local_clk;
   wire 	     local_ready;

   assign wb_m2s_adr[0*32+:32] = wb_lms_tx_adr_i;
   assign wb_m2s_dat[0*32+:32] = wb_lms_tx_dat_i;
   assign wb_m2s_sel[0*4+:4]   = wb_lms_tx_sel_i;
   assign wb_m2s_we[0]         = wb_lms_tx_we_i;
   assign wb_m2s_cyc[0]        = wb_lms_tx_cyc_i;
   assign wb_m2s_stb[0]        = wb_lms_tx_stb_i;
   assign wb_m2s_cti[0*3+:3]   = wb_lms_tx_cti_i;
   assign wb_m2s_bte[0*2+:2]   = wb_lms_tx_bte_i;
   assign wb_lms_tx_dat_o = wb_s2m_dat[0*32+:32];
   assign wb_lms_tx_ack_o = wb_s2m_ack[0];

   assign wb_m2s_adr[1*32+:32] = wb_lms_rx_adr_i;
   assign wb_m2s_dat[1*32+:32] = wb_lms_rx_dat_i;
   assign wb_m2s_sel[1*4+:4]   = wb_lms_rx_sel_i;
   assign wb_m2s_we[1]         = wb_lms_rx_we_i;
   assign wb_m2s_cyc[1]        = wb_lms_rx_cyc_i;
   assign wb_m2s_stb[1]        = wb_lms_rx_stb_i;
   assign wb_m2s_cti[1*3+:3]   = wb_lms_rx_cti_i;
   assign wb_m2s_bte[1*2+:2]   = wb_lms_rx_bte_i;
   assign wb_lms_rx_dat_o = wb_s2m_dat[1*32+:32];
   assign wb_lms_rx_ack_o = wb_s2m_ack[1];

   assign wb_m2s_adr[2*32+:32] = wb_lms_mem_adr_i;
   assign wb_m2s_dat[2*32+:32] = wb_lms_mem_dat_i;
   assign wb_m2s_sel[2*4+:4]   = wb_lms_mem_sel_i;
   assign wb_m2s_we[2]         = wb_lms_mem_we_i;
   assign wb_m2s_cyc[2]        = wb_lms_mem_cyc_i;
   assign wb_m2s_stb[2]        = wb_lms_mem_stb_i;
   assign wb_m2s_cti[2*3+:3]   = wb_lms_mem_cti_i;
   assign wb_m2s_bte[2*2+:2]   = wb_lms_mem_bte_i;
   assign wb_lms_mem_dat_o = wb_s2m_dat[2*32+:32];
   assign wb_lms_mem_ack_o = wb_s2m_ack[2];
   
wb_ddr_ctrl
#(
	.ADDR_WIDTH (26),	// Memory size = 2^ADDR_WIDTH = 64MB
	.WB_PORTS  (WB_PORTS),	// Number of wishbone ports
	.BUF_WIDTH ({3'd3,3'd3,3'd3}) // Buffer size = 2^BUF_WIDTH
)
wb_ddr_ctrl0
(
	// Wishbone interface
	.wb_clk			(wb_clk),
	.wb_rst			(wb_rst),

	.wb_adr_i		(wb_m2s_adr),
	.wb_stb_i		(wb_m2s_stb),
	.wb_cyc_i		(wb_m2s_cyc),
	.wb_cti_i		(wb_m2s_cti),
	.wb_bte_i		(wb_m2s_bte),
	.wb_we_i		(wb_m2s_we ),
	.wb_sel_i		(wb_m2s_sel),
	.wb_dat_i		(wb_m2s_dat),
	.wb_dat_o		(wb_s2m_dat),
	.wb_ack_o		(wb_s2m_ack),

	// DDR controller local interface
	.local_address_o	(local_address),
	.local_write_req_o	(local_write_req),
	.local_read_req_o	(local_read_req),
	.local_burstbegin_o	(local_burstbegin),
	.local_wdata_o		(local_wdata),
	.local_be_o		(local_be),
	.local_size_o		(local_size),
	.local_rdata_i		(local_rdata),
	.local_rdata_valid_i	(local_rdata_valid),
	.local_reset_n_i	(local_reset_n),
	.local_clk_i		(local_clk),
	.local_ready_i		(local_ready));

ddr2_ctrl ddr_ctrl_ip
 (.local_address	(local_address),
  .local_write_req	(local_write_req),
  .local_read_req	(local_read_req),
  .local_burstbegin	(local_burstbegin),
  .local_wdata		(local_wdata),
  .local_be		(local_be),
  .local_size		(local_size[3:0]),

  .global_reset_n		(global_reset_n),
  .pll_ref_clk		(clock_source),
  .soft_reset_n		(1'b1),

  .local_ready		(local_ready),
  .local_rdata		(local_rdata),
  .local_rdata_valid	(local_rdata_valid),
  .local_refresh_ack	(),
  .local_init_done	(),

  .reset_phy_clk_n	(local_reset_n),

  .mem_odt (mem_odt),
  .mem_cs_n		(mem_cs_n),
  .mem_cke		(mem_cke),
  .mem_addr		(mem_addr[12:0]),
  .mem_ba		(mem_ba),
  .mem_ras_n		(mem_ras_n),
  .mem_cas_n		(mem_cas_n),
  .mem_we_n		(mem_we_n),
  .mem_dm		(mem_dm),
  
  .phy_clk		(local_clk),
  .aux_full_rate_clk	(),
  .aux_half_rate_clk	(),
  .reset_request_n	(),
  
  .mem_clk		(mem_clk),
  .mem_clk_n		(mem_clk_n),
  .mem_dq		(mem_dq),
  .mem_dqs		(mem_dqs));
 
endmodule
