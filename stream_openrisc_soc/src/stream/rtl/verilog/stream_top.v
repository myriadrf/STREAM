module stream_top
  #(parameter DDR2_AW = 13,
    parameter DDR2_BW = 2)
   (input 		 sys_clk_pad_i,
    input 		 rst_n_pad_i,

    //DDR2
    inout 		 mem_clk_p,
    inout 		 mem_clk_n,
    output 		 mem_cke,
    output 		 mem_cs_n,
    output 		 mem_ras_n,
    output 		 mem_cas_n,
    output 		 mem_we_n,
    output [DDR2_AW-1:0] mem_address,
    output [DDR2_BW-1:0] mem_bank,
    inout [15:0] 	 mem_dq,
    output [1:0] 	 mem_dm,
    output [1:0] 	 mem_dqs,
    output 		 mem_odt,
    //DDR2
    inout 		 mem1_clk_p,
    inout 		 mem1_clk_n,
    output 		 mem1_cke,
    output 		 mem1_cs_n,
    output 		 mem1_ras_n,
    output 		 mem1_cas_n,
    output 		 mem1_we_n,
    output [DDR2_AW-1:0] mem1_address,
    output [DDR2_BW-1:0] mem1_bank,
    inout [15:0] 	 mem1_dq,
    output [1:0] 	 mem1_dm,
    output [1:0] 	 mem1_dqs,
    output 		 mem1_odt,

    //Ethernet
    input 		 eth0_tx_clk,
    output [3:0] 	 eth0_tx_data,
    output 		 eth0_tx_en,
    output 		 eth0_tx_er,
    input 		 eth0_rx_clk,
    input [3:0] 	 eth0_rx_data,
    input 		 eth0_dv,
    input 		 eth0_rx_er,
    input 		 eth0_col,
    input 		 eth0_crs,
    output 		 eth0_mdc_pad_o,
    inout 		 eth0_md_pad_io,
//    output 		 eth0_rst_n_o,

    //FX3 Interface
    output 		 fx3_pclk_o,
    output 		 fx3_slcs_n_o,
    output 		 fx3_slwr_n_o,
    output 		 fx3_sloe_n_o,
    output 		 fx3_slrd_n_o,
    output 		 fx3_pktend_n_o,
    output [1:0] 	 fx3_fifo_addr_o,
    input 		 fx3_flagb_i,
    output [15:0] 	 fx3_dq_o,

    input 		 fx3_spi_sck,
    input 		 fx3_spi_cs,
    input 		 fx3_spi_mosi,
    output 		 fx3_spi_miso,

    input 		 fx3_gpio42, //lms_reset
    input 		 fx3_gpio43, //adc_spi_cs in

    //output 		 adc_spi_cs,
    
    //LMS6002D
    output 		 lms_reset,

    output 		 lms_tx_clk_o,
    output 		 lms_txen_o,
    output 		 lms_rx_clk_o,
    output 		 lms_rxen_o,
    input 		 lms_rxiqsel_i,
    input [11:0] 	 lms_rxd_i,

    output 		 lms_spi_sck,
    output 		 lms_spi_cs,
    output 		 lms_spi_mosi,
    input 		 lms_spi_miso,
         

    //UART
    input 		 uart0_srx_pad_i,
    output 		 uart0_stx_pad_o);
   
	//FIXME: GPIO

	//FIXME: I2c

   wire        async_rst;
   wire        fx3_clk;
   wire        fx3_rst;
   wire        wb_clk;
   wire        wb_rst;

   wire        uart0_irq;

clkgen clkgen0
  (.sys_clk_pad_i (sys_clk_pad_i),
   .rst_n_pad_i	  (rst_n_pad_i),
   
   .async_rst_o	 (async_rst),
   .fx3_clk_o    (fx3_clk),
   .fx3_rst_o    (fx3_rst),
   .wb_clk_o	 (wb_clk),
   .wb_rst_o	 (wb_rst));

   wire        myriadrf_rx_clk_locked;
   wire        myriadrf_tx_clk_locked;
   
   myriadrf_pll tx_pll
     (.areset (async_rst),
      .inclk0 (sys_clk_pad_i),
      .c0     (lms_tx_clk_o),
      .locked (myriadrf_tx_clk_locked));

   myriadrf_pll rx_pll
     (.areset (async_rst),
      .inclk0 (sys_clk_pad_i),
      .c0     (lms_rx_clk_o),
      .locked (myriadrf_rx_clk_locked));

////////////////////////////////////////////////////////////////////////
//
// Modules interconnections
//
////////////////////////////////////////////////////////////////////////
`include "wb_intercon.vh"

wire [31:0] wb_m2s_mem0_ibus_adr;
wire [31:0] wb_m2s_mem0_ibus_dat;
wire  [3:0] wb_m2s_mem0_ibus_sel;
wire        wb_m2s_mem0_ibus_we;
wire        wb_m2s_mem0_ibus_cyc;
wire        wb_m2s_mem0_ibus_stb;
wire  [2:0] wb_m2s_mem0_ibus_cti;
wire  [1:0] wb_m2s_mem0_ibus_bte;
wire [31:0] wb_s2m_mem0_ibus_dat;
wire        wb_s2m_mem0_ibus_ack;
wire        wb_s2m_mem0_ibus_err;
wire        wb_s2m_mem0_ibus_rty;

wire [31:0] wb_m2s_eth0_master_adr;
wire [31:0] wb_m2s_eth0_master_dat;
wire  [3:0] wb_m2s_eth0_master_sel;
wire        wb_m2s_eth0_master_we;
wire        wb_m2s_eth0_master_cyc;
wire        wb_m2s_eth0_master_stb;
wire  [2:0] wb_m2s_eth0_master_cti;
wire  [1:0] wb_m2s_eth0_master_bte;
wire [31:0] wb_s2m_eth0_master_dat;
wire        wb_s2m_eth0_master_ack;
wire        wb_s2m_eth0_master_err;
wire        wb_s2m_eth0_master_rty;

wire [31:0] wb_m2s_lms_tx_adr;
wire [31:0] wb_m2s_lms_tx_dat;
wire  [3:0] wb_m2s_lms_tx_sel;
wire        wb_m2s_lms_tx_we;
wire        wb_m2s_lms_tx_cyc;
wire        wb_m2s_lms_tx_stb;
wire  [2:0] wb_m2s_lms_tx_cti;
wire  [1:0] wb_m2s_lms_tx_bte;
wire [31:0] wb_s2m_lms_tx_dat;
wire        wb_s2m_lms_tx_ack;
wire        wb_s2m_lms_tx_err;
wire        wb_s2m_lms_tx_rty;

wire [31:0] wb_m2s_lms_rx_adr;
wire [31:0] wb_m2s_lms_rx_dat;
wire  [3:0] wb_m2s_lms_rx_sel;
wire        wb_m2s_lms_rx_we;
wire        wb_m2s_lms_rx_cyc;
wire        wb_m2s_lms_rx_stb;
wire  [2:0] wb_m2s_lms_rx_cti;
wire  [1:0] wb_m2s_lms_rx_bte;
wire [31:0] wb_s2m_lms_rx_dat;
wire        wb_s2m_lms_rx_ack;
wire        wb_s2m_lms_rx_err;
wire        wb_s2m_lms_rx_rty;
   
   wire [31:0] or1k_irq;
   
   mor1kx_dbg_wrapper mor1kx_dbg
     (.wb_clk (wb_clk),
      .wb_rst (wb_rst),
      .async_rst (async_rst),
      //Instruction bus
      .wb_ibus_adr_o(wb_m2s_mem0_ibus_adr),
      .wb_ibus_dat_o(wb_m2s_mem0_ibus_dat),
      .wb_ibus_sel_o(wb_m2s_mem0_ibus_sel),
      .wb_ibus_we_o (wb_m2s_mem0_ibus_we),
      .wb_ibus_cyc_o(wb_m2s_mem0_ibus_cyc),
      .wb_ibus_stb_o(wb_m2s_mem0_ibus_stb),
      .wb_ibus_cti_o(wb_m2s_mem0_ibus_cti),
      .wb_ibus_bte_o(wb_m2s_mem0_ibus_bte),
      .wb_ibus_dat_i(wb_s2m_mem0_ibus_dat),
      .wb_ibus_ack_i(wb_s2m_mem0_ibus_ack),
      .wb_ibus_err_i(wb_s2m_mem0_ibus_err),
      .wb_ibus_rty_i(wb_s2m_mem0_ibus_rty),
      //Data bus
      .wb_dbus_adr_o(wb_m2s_dbus_adr),
      .wb_dbus_dat_o(wb_m2s_dbus_dat),
      .wb_dbus_sel_o(wb_m2s_dbus_sel),
      .wb_dbus_we_o (wb_m2s_dbus_we),
      .wb_dbus_cyc_o(wb_m2s_dbus_cyc),
      .wb_dbus_stb_o(wb_m2s_dbus_stb),
      .wb_dbus_cti_o(wb_m2s_dbus_cti),
      .wb_dbus_bte_o(wb_m2s_dbus_bte),
      .wb_dbus_dat_i(wb_s2m_dbus_dat),
      .wb_dbus_ack_i(wb_s2m_dbus_ack),
      .wb_dbus_err_i(wb_s2m_dbus_err),
      .wb_dbus_rty_i(wb_s2m_dbus_rty),
      
      .or1k_irq (or1k_irq));
   
////////////////////////////////////////////////////////////////////////
//
// Main memory
//
////////////////////////////////////////////////////////////////////////

   altmemphy_wrapper mem0
     (.wb_clk	(wb_clk),
      .wb_rst	(wb_rst),
      //or1k Instruction bus
      .wb_ibus_adr_i	(wb_m2s_mem0_ibus_adr),
      .wb_ibus_dat_i	(wb_m2s_mem0_ibus_dat),
      .wb_ibus_sel_i	(wb_m2s_mem0_ibus_sel),
      .wb_ibus_we_i	(wb_m2s_mem0_ibus_we ),
      .wb_ibus_cyc_i	(wb_m2s_mem0_ibus_cyc),
      .wb_ibus_stb_i	(wb_m2s_mem0_ibus_stb),
      .wb_ibus_cti_i	(wb_m2s_mem0_ibus_cti),
      .wb_ibus_bte_i	(wb_m2s_mem0_ibus_bte),
      .wb_ibus_dat_o	(wb_s2m_mem0_ibus_dat),
      .wb_ibus_ack_o	(wb_s2m_mem0_ibus_ack),
      //or1k Data bus
      .wb_dbus_adr_i	(wb_m2s_mem0_dbus_adr),
      .wb_dbus_dat_i	(wb_m2s_mem0_dbus_dat),
      .wb_dbus_sel_i	(wb_m2s_mem0_dbus_sel),
      .wb_dbus_we_i     (wb_m2s_mem0_dbus_we ),
      .wb_dbus_cyc_i	(wb_m2s_mem0_dbus_cyc),
      .wb_dbus_stb_i	(wb_m2s_mem0_dbus_stb),
      .wb_dbus_cti_i	(wb_m2s_mem0_dbus_cti),
      .wb_dbus_bte_i	(wb_m2s_mem0_dbus_bte),
      .wb_dbus_dat_o	(wb_s2m_mem0_dbus_dat),
      .wb_dbus_ack_o	(wb_s2m_mem0_dbus_ack),
      //Ethernet
      .wb_eth0_adr_i	(wb_m2s_eth0_master_adr),
      .wb_eth0_dat_i	(wb_m2s_eth0_master_dat),
      .wb_eth0_sel_i	(wb_m2s_eth0_master_sel),
      .wb_eth0_we_i     (wb_m2s_eth0_master_we ),
      .wb_eth0_cyc_i	(wb_m2s_eth0_master_cyc),
      .wb_eth0_stb_i	(wb_m2s_eth0_master_stb),
      .wb_eth0_cti_i	(wb_m2s_eth0_master_cti),
      .wb_eth0_bte_i	(wb_m2s_eth0_master_bte),
      .wb_eth0_dat_o	(wb_s2m_eth0_master_dat),
      .wb_eth0_ack_o	(wb_s2m_eth0_master_ack),
      //Clocks and reset
      .clock_source    (sys_clk_pad_i),
      .global_reset_n (rst_n_pad_i),
      //DDR2 Interface
      .mem_addr (mem_address),
      .mem_ba    (mem_bank),
      .mem_cas_n   (mem_cas_n),
      .mem_cke     (mem_cke),
      .mem_clk     (mem_clk_p),
      .mem_clk_n   (mem_clk_n),
      .mem_cs_n    (mem_cs_n),
      .mem_dm      (mem_dm),
      .mem_dq      (mem_dq),
      .mem_odt     (mem_odt),
      .mem_ras_n   (mem_ras_n),
      .mem_we_n    (mem_we_n),
      .mem_dqs     (mem_dqs));
   
////////////////////////////////////////////////////////////////////////
//
// Main memory
//
////////////////////////////////////////////////////////////////////////

   lms_mem_wrapper rx_tx_mem
     (.wb_clk	(wb_clk),
      .wb_rst	(wb_rst),
      //or1k Instruction bus
      .wb_lms_tx_adr_i	(wb_m2s_lms_tx_adr),
      .wb_lms_tx_dat_i	(wb_m2s_lms_tx_dat),
      .wb_lms_tx_sel_i	(wb_m2s_lms_tx_sel),
      .wb_lms_tx_we_i	(wb_m2s_lms_tx_we ),
      .wb_lms_tx_cyc_i	(wb_m2s_lms_tx_cyc),
      .wb_lms_tx_stb_i	(wb_m2s_lms_tx_stb),
      .wb_lms_tx_cti_i	(wb_m2s_lms_tx_cti),
      .wb_lms_tx_bte_i	(wb_m2s_lms_tx_bte),
      .wb_lms_tx_dat_o	(wb_s2m_lms_tx_dat),
      .wb_lms_tx_ack_o	(wb_s2m_lms_tx_ack),
      //or1k Data bus
      .wb_lms_rx_adr_i	(wb_m2s_lms_rx_adr),
      .wb_lms_rx_dat_i	(wb_m2s_lms_rx_dat),
      .wb_lms_rx_sel_i	(wb_m2s_lms_rx_sel),
      .wb_lms_rx_we_i   (wb_m2s_lms_rx_we ),
      .wb_lms_rx_cyc_i	(wb_m2s_lms_rx_cyc),
      .wb_lms_rx_stb_i	(wb_m2s_lms_rx_stb),
      .wb_lms_rx_cti_i	(wb_m2s_lms_rx_cti),
      .wb_lms_rx_bte_i	(wb_m2s_lms_rx_bte),
      .wb_lms_rx_dat_o	(wb_s2m_lms_rx_dat),
      .wb_lms_rx_ack_o	(wb_s2m_lms_rx_ack),
      //Ethernet
      .wb_lms_mem_adr_i	(wb_m2s_lms_mem_adr),
      .wb_lms_mem_dat_i	(wb_m2s_lms_mem_dat),
      .wb_lms_mem_sel_i	(wb_m2s_lms_mem_sel),
      .wb_lms_mem_we_i  (wb_m2s_lms_mem_we ),
      .wb_lms_mem_cyc_i	(wb_m2s_lms_mem_cyc),
      .wb_lms_mem_stb_i	(wb_m2s_lms_mem_stb),
      .wb_lms_mem_cti_i	(wb_m2s_lms_mem_cti),
      .wb_lms_mem_bte_i	(wb_m2s_lms_mem_bte),
      .wb_lms_mem_dat_o	(wb_s2m_lms_mem_dat),
      .wb_lms_mem_ack_o	(wb_s2m_lms_mem_ack),
      //Clocks and reset
      .clock_source    (sys_clk_pad_i),
      .global_reset_n (rst_n_pad_i),
      //DDR2 Interface
      .mem_addr  (mem1_address),
      .mem_ba    (mem1_bank),
      .mem_cas_n (mem1_cas_n),
      .mem_cke   (mem1_cke),
      .mem_clk   (mem1_clk_p),
      .mem_clk_n (mem1_clk_n),
      .mem_cs_n  (mem1_cs_n),
      .mem_dm    (mem1_dm),
      .mem_dq    (mem1_dq),
      .mem_odt   (mem1_odt),
      .mem_ras_n (mem1_ras_n),
      .mem_we_n  (mem1_we_n),
      .mem_dqs   (mem1_dqs));

////////////////////////////////////////////////////////////////////////
//
// Ethernet
//
////////////////////////////////////////////////////////////////////////
`define ETH0
`ifdef ETH0
wire		eth0_irq;
wire [3:0]	eth0_mtxd;
wire		eth0_mtxen;
wire		eth0_mtxerr;
wire		eth0_mtx_clk;
wire		eth0_mrx_clk;
wire [3:0]	eth0_mrxd;
wire		eth0_mrxdv;
wire		eth0_mrxerr;
wire		eth0_mcoll;
wire		eth0_mcrs;
wire		eth0_speed;
wire		eth0_duplex;
wire		eth0_link;
// Management interface wires
wire		eth0_md_i;
wire		eth0_md_o;
wire		eth0_md_oe;

// Hook up MII wires
assign eth0_mtx_clk   = eth0_tx_clk;
assign eth0_tx_data   = eth0_mtxd[3:0];
assign eth0_tx_en     = eth0_mtxen;
assign eth0_tx_er     = eth0_mtxerr;
assign eth0_mrxd[3:0] = eth0_rx_data;
assign eth0_mrxdv     = eth0_dv;
assign eth0_mrxerr    = eth0_rx_er;
assign eth0_mrx_clk   = eth0_rx_clk;
assign eth0_mcoll     = eth0_col;
assign eth0_mcrs      = eth0_crs;

// Tristate control for management interface
assign eth0_md_pad_io = eth0_md_oe ? eth0_md_o : 1'bz;
assign eth0_md_i = eth0_md_pad_io;

//assign eth0_rst_n_o = !wb_rst;

ethmac ethmac0 (
	// Wishbone Slave interface
	.wb_clk_i	(wb_clk),
	.wb_rst_i	(wb_rst),
	.wb_adr_i	(wb_m2s_eth0_adr[11:2]),
	.wb_dat_i	(wb_m2s_eth0_dat),
	.wb_sel_i	(wb_m2s_eth0_sel),
	.wb_we_i 	(wb_m2s_eth0_we),
	.wb_cyc_i	(wb_m2s_eth0_cyc),
	.wb_stb_i	(wb_m2s_eth0_stb),
	.wb_dat_o	(wb_s2m_eth0_dat),
	.wb_err_o	(wb_s2m_eth0_err),
	.wb_ack_o	(wb_s2m_eth0_ack),
	// Wishbone Master Interface
	.m_wb_adr_o	(wb_m2s_eth0_master_adr),
	.m_wb_sel_o	(wb_m2s_eth0_master_sel),
	.m_wb_we_o 	(wb_m2s_eth0_master_we),
	.m_wb_dat_o	(wb_m2s_eth0_master_dat),
	.m_wb_cyc_o	(wb_m2s_eth0_master_cyc),
	.m_wb_stb_o	(wb_m2s_eth0_master_stb),
	.m_wb_cti_o	(wb_m2s_eth0_master_cti),
	.m_wb_bte_o	(wb_m2s_eth0_master_bte),
	.m_wb_dat_i	(wb_s2m_eth0_master_dat),
	.m_wb_ack_i	(wb_s2m_eth0_master_ack),
	.m_wb_err_i	(wb_s2m_eth0_master_err),

	// Ethernet MII interface
	// Transmit
	.mtxd_pad_o	(eth0_mtxd[3:0]),
	.mtxen_pad_o	(eth0_mtxen),
	.mtxerr_pad_o	(eth0_mtxerr),
	.mtx_clk_pad_i	(eth0_mtx_clk),
	// Receive
	.mrx_clk_pad_i	(eth0_mrx_clk),
	.mrxd_pad_i	(eth0_mrxd[3:0]),
	.mrxdv_pad_i	(eth0_mrxdv),
	.mrxerr_pad_i	(eth0_mrxerr),
	.mcoll_pad_i	(eth0_mcoll),
	.mcrs_pad_i	(eth0_mcrs),
	// Management interface
	.md_pad_i	(eth0_md_i),
	.mdc_pad_o	(eth0_mdc_pad_o),
	.md_pad_o	(eth0_md_o),
	.md_padoe_o	(eth0_md_oe),

	// Processor interrupt
	.int_o		(eth0_irq)
      );

   assign or1k_irq[4] = eth0_irq;
   
`else
assign eth0_irq = 0;
assign eth0_tx_data = 0;
assign eth0_tx_en = 0;
assign eth0_tx_er = 0;
assign eth0_mdc_pad_o = 0;
assign eth0_md_pad_io = 0;
assign eth0_rst_n_o = 0;

`endif

uart_top uart16550_0 (
	// Wishbone slave interface
	.wb_clk_i	(wb_clk),
	.wb_rst_i	(wb_rst),
	.wb_adr_i	(wb_m2s_uart0_adr[2:0]),
	.wb_dat_i	(wb_m2s_uart0_dat),
	.wb_we_i	(wb_m2s_uart0_we),
	.wb_stb_i	(wb_m2s_uart0_stb),
	.wb_cyc_i	(wb_m2s_uart0_cyc),
	.wb_sel_i	(4'b0), // Not used in 8-bit mode
	.wb_dat_o	(wb_s2m_uart0_dat),
	.wb_ack_o	(wb_s2m_uart0_ack),

	// Outputs
	.int_o		(uart0_irq),
	.stx_pad_o	(uart0_stx_pad_o),
	.rts_pad_o	(),
	.dtr_pad_o	(),

	// Inputs
	.srx_pad_i	(uart0_srx_pad_i),
	.cts_pad_i	(1'b0),
	.dsr_pad_i	(1'b0),
	.ri_pad_i	(1'b0),
		      .dcd_pad_i	(1'b0));
assign or1k_irq[2] = uart0_irq;

////////////////////////////////////////////////////////////////////////
//
// FX3 Interface
//
////////////////////////////////////////////////////////////////////////

   assign fx3_slcs_n_o = 1'b0;
   assign fx3_slrd_n_o = 1'b1;
   assign fx3_sloe_n_o = 1'b1;
   assign fx3_pktend_n_o = 1'b1;
   assign fx3_fifo_addr_o = 2'b00;

   wire [23:0] rx_ctrl_data;
   wire        rx_ctrl_valid;
   wire        rx_ctrl_ready;

   wire [23:0] usb_fifo_data;
   wire        usb_fifo_valid;
   wire        usb_fifo_ready;

   stream_dual_clock_fifo
     #(.DW (24),
       .AW (7))
   usb_fifo
     (.wr_clk (wb_clk),
      .wr_rst (wb_rst),
      .stream_s_data_i  (rx_ctrl_data),
      .stream_s_valid_i (rx_ctrl_valid),
      .stream_s_ready_o (rx_ctrl_ready),

      .rd_clk    (fx3_clk),
      .rd_rst    (fx3_rst),
      .stream_m_data_o  (usb_fifo_data),
      .stream_m_valid_o (usb_fifo_valid),
      .stream_m_ready_i (usb_fifo_ready));

   wire [11:0] usb_packer_data;
   wire        usb_packer_valid;
   wire        usb_packer_iqsel;
   wire        usb_packer_ready;

   fx3_iq_packer
   fx3_iq_packer0
     (.clk (fx3_clk),
      .rst (fx3_rst),
      .s_data_i  (usb_fifo_data),
      .s_valid_i (usb_fifo_valid),
      .s_ready_o (usb_fifo_ready),
      .m_data_o  (usb_packer_data),
      .m_iqsel_o (usb_packer_iqsel),
      .m_valid_o (usb_packer_valid),
      .m_ready_i (usb_packer_ready));

   fx3 fx3_if
     (.clk     (fx3_clk), //FIXME
      .rst     (fx3_rst),//FIXME
      //Stream Interface
      .stream_s_data_i  ({3'b000,usb_packer_iqsel,usb_packer_data}),
      .stream_s_valid_i (usb_packer_valid),
      .stream_s_ready_o (usb_packer_ready),
      //GPIF Interface
      .flagb  (fx3_flagb_i),
      .slwr_n (fx3_slwr_n_o),
      .fd_o   (fx3_dq_o));

   altddio_out
     #(.extend_oe_disable ( "OFF"),
       .intended_device_family ( "Cyclone IV E"),
       .invert_output ( "OFF"),
       .lpm_hint ( "UNUSED"),
       .lpm_type ( "altddio_out"),
       .oe_reg ( "UNREGISTERED"),
       .power_up_high ( "OFF"),
       .width ( 1))
   fx3_pclk_obuf
     (.datain_h (1'b1),
      .datain_l (1'b0),
      .outclock (fx3_clk),
      .dataout (fx3_pclk_o),
      .aclr (1'b0),
      .aset (1'b0),
      .oe (1'b1),
      .oe_out (),
      .outclocken (1'b1),
      .sclr (1'b0),
      .sset (1'b0));

////////////////////////////////////////////////////////////////////////
//
// LMS6002D Interface
//
////////////////////////////////////////////////////////////////////////

   //SPI pass-through
   assign lms_spi_sck  = fx3_spi_sck;
   assign lms_spi_cs   = fx3_spi_cs;
   assign lms_spi_mosi = fx3_spi_mosi;
   assign fx3_spi_miso = lms_spi_miso;

   //GPIO pass-through
   assign lms_reset  = fx3_gpio42;
   //assign adc_spi_cs = fx3_gpio43;

   assign lms_rxen_o = 1'b1;
   assign lms_txen_o = 1'b1;

   wire        lms_tx_irq;
   wire        lms_rx_irq;
   
   myriadrf myriadrf0
     (.wb_clk        (wb_clk),
      .wb_rst        (wb_rst),
      //RX Interface
      .rx_clk        (lms_rx_clk_o),
      .rx_rst        (!myriadrf_rx_clk_locked),
      .rxd           (lms_rxd_i),
      .rxiqsel       (lms_rxiqsel_i),
      //TX Interface
      .tx_clk        (lms_tx_clk_o),
      .tx_rst        (!myriadrf_tx_clk_locked),
      .txd           (/*FIXMEmyriadrf_tx_txd_o*/),
      .txiqsel       (/*myriadrf_tx_txiqsel_o*/),
      //USB Interface
      .usb_m_data_o  (rx_ctrl_data),
      .usb_m_valid_o (rx_ctrl_valid),
      .usb_m_ready_i (rx_ctrl_ready),
      //WB Control Interface
      .wbs_adr_i (wb_m2s_myriadrf_adr[9:0]),
      .wbs_dat_i (wb_m2s_myriadrf_dat),
      .wbs_sel_i (wb_m2s_myriadrf_sel),
      .wbs_we_i  (wb_m2s_myriadrf_we), 
      .wbs_cyc_i (wb_m2s_myriadrf_cyc),
      .wbs_stb_i (wb_m2s_myriadrf_stb),
      .wbs_cti_i (wb_m2s_myriadrf_cti),
      .wbs_bte_i (wb_m2s_myriadrf_bte),
      .wbs_dat_o (wb_s2m_myriadrf_dat),
      .wbs_ack_o (wb_s2m_myriadrf_ack),
      .wbs_err_o (wb_s2m_myriadrf_err),
      .wbs_rty_o (wb_s2m_myriadrf_rty),
      .lms_tx_irq_o (lms_tx_irq),
      .lms_rx_irq_o (lms_rx_irq),
      //WB TX memory Interface
      .wbm_tx_adr_o (wb_m2s_lms_tx_adr),
      .wbm_tx_dat_o (wb_m2s_lms_tx_dat),
      .wbm_tx_sel_o (wb_m2s_lms_tx_sel),
      .wbm_tx_we_o  (wb_m2s_lms_tx_we ),
      .wbm_tx_cyc_o (wb_m2s_lms_tx_cyc),
      .wbm_tx_stb_o (wb_m2s_lms_tx_stb),
      .wbm_tx_cti_o (wb_m2s_lms_tx_cti),
      .wbm_tx_bte_o (wb_m2s_lms_tx_bte),
      .wbm_tx_dat_i (wb_s2m_lms_tx_dat),
      .wbm_tx_ack_i (wb_s2m_lms_tx_ack),
      .wbm_tx_err_i (wb_s2m_lms_tx_err),
      .wbm_tx_rty_i (wb_s2m_lms_tx_rty),
      //WB RX memory Interface
      .wbm_rx_adr_o (wb_m2s_lms_rx_adr),
      .wbm_rx_dat_o (wb_m2s_lms_rx_dat),
      .wbm_rx_sel_o (wb_m2s_lms_rx_sel),
      .wbm_rx_we_o  (wb_m2s_lms_rx_we ),
      .wbm_rx_cyc_o (wb_m2s_lms_rx_cyc),
      .wbm_rx_stb_o (wb_m2s_lms_rx_stb),
      .wbm_rx_cti_o (wb_m2s_lms_rx_cti),
      .wbm_rx_bte_o (wb_m2s_lms_rx_bte),
      .wbm_rx_dat_i (wb_s2m_lms_rx_dat),
      .wbm_rx_ack_i (wb_s2m_lms_rx_ack),
      .wbm_rx_err_i (wb_s2m_lms_rx_err),
      .wbm_rx_rty_i (wb_s2m_lms_rx_rty));

   assign or1k_irq[30] = lms_tx_irq;
   assign or1k_irq[31] = lms_rx_irq;
endmodule // stream_top
