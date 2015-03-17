module orpsoc_tb;

   localparam DDR2_AW = 13;
   
   localparam BW = 3;
   
   
reg clk   = 0;
reg rst_n = 0;

////////////////////////////////////////////////////////////////////////
//
// Generate clock (30.72MHz) and external reset
//
////////////////////////////////////////////////////////////////////////

always
	#16 clk <= ~clk; //Actual clock is 31.25MHz. Close enough

initial begin
	#100 rst_n <= 0;
	#200 rst_n <= 1;
end

////////////////////////////////////////////////////////////////////////
//
// Add --vcd and --timeout options to the simulation
//
////////////////////////////////////////////////////////////////////////
vlog_tb_utils vlog_tb_utils0();

   wire 	 mem_clk_p;
   wire 	 mem_clk_n;
   wire 	 mem_cke;
   wire 	 mem_cs_n;
   wire 	 mem_ras_n;
   wire 	 mem_cas_n;
   wire 	 mem_we_n;
   wire [DDR2_AW-1:0] mem_address;
   wire [BW-1:0]      mem_bank;
   wire [15:0] 	      mem_dq;
   wire [1:0] 	      mem_dqs;
   wire [1:0] 	      mem_dm;
   wire 	      mem_odt;
   
   ddr2
 #(.DEBUG (0)) mem_model
     (.ck      (mem_clk_p),
      .ck_n    (mem_clk_n),
      .cke     (mem_cke),
      .cs_n    (mem_cs_n),
      .ras_n   (mem_ras_n),
      .cas_n   (mem_cas_n),
      .we_n    (mem_we_n),
      .dm_rdqs (mem_dm),
      .ba      (mem_bank),
      .addr    (mem_address),
      .dq      (mem_dq),
      .dqs     (mem_dqs),
      .dqs_n   (),
      .rdqs_n  (),
      .odt     (1'b0));


////////////////////////////////////////////////////////////////////////
//
// UART decoder
//
////////////////////////////////////////////////////////////////////////

//FIXME: Get correct baud rate from parameter
/*   uart_decoder
     #(.uart_baudrate_period_ns(8680))
   uart_decoder0
     (.clk(clk),
      .uart_tx(uart_tx));
*/

   stream_top
     #(.DDR2_AW (DDR2_AW))
   dut
     (.sys_clk_pad_i		(clk),
      .rst_n_pad_i		(rst_n),

      //UART interface
      .uart0_srx_pad_i	(),
      .uart0_stx_pad_o	(uart_tx),

      //DDR2 Interface
      .mem_clk_p   (mem_clk_p),
      .mem_clk_n   (mem_clk_n),
      .mem_cke     (mem_cke),
      .mem_cs_n    (mem_cs_n),
      .mem_ras_n   (mem_ras_n),
      .mem_cas_n   (mem_cas_n),
      .mem_we_n    (mem_we_n),
      .mem_address (mem_address),
      .mem_bank    (mem_bank),
      .mem_odt     (mem_odt),
      .mem_dq      (mem_dq),
      .mem_dm      (mem_dm),
      .mem_dqs     (mem_dqs));
   

// .FPGA_CLKI (FPGA_CLKI),
// .TXD (/*lms_data*/),
// .TXIQSEL (/*lms_iqsel*/),
// .RXD (lms_data),
// .RXIQSEL (lms_iqsel),
// .USB_IFCLK (usb_ifclk),
// .USB_FLAGB (1'b1),
// .USB_FD (),
// .accelerometer_cs_o (),
// .accelerometer_irq_i (1'b0)

   mor1kx_monitor #(.LOG_DIR(".")) i_monitor();

   
endmodule
