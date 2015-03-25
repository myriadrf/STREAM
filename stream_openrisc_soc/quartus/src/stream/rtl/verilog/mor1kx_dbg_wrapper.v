module mor1kx_dbg_wrapper
  (input wb_clk,
   input 	 wb_rst,
   input async_rst,
   //Instruction bus
   output [31:0] wb_ibus_adr_o,
   output [31:0] wb_ibus_dat_o,
   output [3:0]  wb_ibus_sel_o,
   output 	 wb_ibus_we_o,
   output 	 wb_ibus_cyc_o,
   output 	 wb_ibus_stb_o,
   output [2:0]  wb_ibus_cti_o,
   output [1:0]  wb_ibus_bte_o,
   input [31:0]  wb_ibus_dat_i,
   input 	 wb_ibus_ack_i,
   input 	 wb_ibus_err_i,
   input 	 wb_ibus_rty_i,
   //Data bus
   output [31:0] wb_dbus_adr_o,
   output [31:0] wb_dbus_dat_o,
   output [3:0]  wb_dbus_sel_o,
   output 	 wb_dbus_we_o,
   output 	 wb_dbus_cyc_o,
   output 	 wb_dbus_stb_o,
   output [2:0]  wb_dbus_cti_o,
   output [1:0]  wb_dbus_bte_o,
   input [31:0]  wb_dbus_dat_i,
   input 	 wb_dbus_ack_i,
   input 	 wb_dbus_err_i,
   input 	 wb_dbus_rty_i,
   
   input [31:0]  or1k_irq);
  
`include "wb_intercon_dbg.vh"

   assign wb_dbus_adr_o = wb_m2s_dbus_adr;
   assign wb_dbus_dat_o = wb_m2s_dbus_dat;
   assign wb_dbus_sel_o = wb_m2s_dbus_sel;
   assign wb_dbus_we_o  = wb_m2s_dbus_we;
   assign wb_dbus_cyc_o = wb_m2s_dbus_cyc;
   assign wb_dbus_stb_o = wb_m2s_dbus_stb;
   assign wb_dbus_cti_o = wb_m2s_dbus_cti;
   assign wb_dbus_bte_o = wb_m2s_dbus_bte;
   assign wb_s2m_dbus_dat = wb_dbus_dat_i;
   assign wb_s2m_dbus_ack = wb_dbus_ack_i;
   assign wb_s2m_dbus_err = wb_dbus_err_i;
   assign wb_s2m_dbus_rty = wb_dbus_rty_i;

   assign wb_ibus_adr_o = wb_m2s_ibus_adr;
   assign wb_ibus_dat_o = wb_m2s_ibus_dat;
   assign wb_ibus_sel_o = wb_m2s_ibus_sel;
   assign wb_ibus_we_o  = wb_m2s_ibus_we;
   assign wb_ibus_cyc_o = wb_m2s_ibus_cyc;
   assign wb_ibus_stb_o = wb_m2s_ibus_stb;
   assign wb_ibus_cti_o = wb_m2s_ibus_cti;
   assign wb_ibus_bte_o = wb_m2s_ibus_bte;
   assign wb_s2m_ibus_dat = wb_ibus_dat_i;
   assign wb_s2m_ibus_ack = wb_ibus_ack_i;
   assign wb_s2m_ibus_err = wb_ibus_err_i;
   assign wb_s2m_ibus_rty = wb_ibus_rty_i;

   
   wire 	 tck;
   
wire	dbg_if_select;
wire	dbg_if_tdo;
wire	jtag_tap_tdo;
wire	jtag_tap_shift_dr;
wire	jtag_tap_pause_dr;
wire	jtag_tap_update_dr;
wire	jtag_tap_capture_dr;

`ifdef SIM
////////////////////////////////////////////////////////////////////////
//
// GENERIC JTAG TAP + JTAG VPI
//
////////////////////////////////////////////////////////////////////////

reg enable_jtag_vpi;
initial enable_jtag_vpi = $test$plusargs("jtag_vpi_enable");

   wire tms;
   wire tdi;
   wire tdo;
   
jtag_vpi jtag_vpi0
(
	.tms		(tms),
	.tck		(tck),
	.tdi		(tdi),
	.tdo		(tdo),
	.enable		(enable_jtag_vpi),
	.init_done	(orpsoc_tb.dut.mem0.init_done));

tap_top jtag_tap0 (
	.tdo_pad_o			(tdo),
	.tms_pad_i			(tms),
	.tck_pad_i			(tck),
	.trst_pad_i			(async_rst),
	.tdi_pad_i			(tdi),

	.tdo_padoe_o			(),

	.tdo_o				(jtag_tap_tdo),

	.shift_dr_o			(jtag_tap_shift_dr),
	.pause_dr_o			(jtag_tap_pause_dr),
	.update_dr_o			(jtag_tap_update_dr),
	.capture_dr_o			(jtag_tap_capture_dr),

	.extest_select_o		(),
	.sample_preload_select_o	(),
	.mbist_select_o			(),
	.debug_select_o			(dbg_if_select),


	.bs_chain_tdi_i			(1'b0),
	.mbist_tdi_i			(1'b0),
	.debug_tdi_i			(dbg_if_tdo)
);

`else
////////////////////////////////////////////////////////////////////////
//
// ALTERA Virtual JTAG TAP
//
////////////////////////////////////////////////////////////////////////


altera_virtual_jtag jtag_tap0 (
	.tck_o			(tck),
	.debug_tdo_i		(dbg_if_tdo),
	.tdi_o			(jtag_tap_tdo),
	.test_logic_reset_o	(),
	.run_test_idle_o	(),
	.shift_dr_o		(jtag_tap_shift_dr),
	.capture_dr_o		(jtag_tap_capture_dr),
	.pause_dr_o		(jtag_tap_pause_dr),
	.update_dr_o		(jtag_tap_update_dr),
	.debug_select_o		(dbg_if_select)
);
`endif

////////////////////////////////////////////////////////////////////////
//
// OR1K CPU
//
////////////////////////////////////////////////////////////////////////

wire	[31:0]	or1k_dbg_dat_i;
wire	[31:0]	or1k_dbg_adr_i;
wire		or1k_dbg_we_i;
wire		or1k_dbg_stb_i;
wire		or1k_dbg_ack_o;
wire	[31:0]	or1k_dbg_dat_o;

wire		or1k_dbg_stall_i;
wire		or1k_dbg_ewt_i;
wire	[3:0]	or1k_dbg_lss_o;
wire	[1:0]	or1k_dbg_is_o;
wire	[10:0]	or1k_dbg_wp_o;
wire		or1k_dbg_bp_o;
wire		or1k_dbg_rst;

wire		sig_tick;
wire		or1k_rst;

assign or1k_rst = wb_rst | or1k_dbg_rst;

mor1kx #(
	.FEATURE_DEBUGUNIT("ENABLED"),
	.FEATURE_CMOV("ENABLED"),
//	.FEATURE_INSTRUCTIONCACHE("ENABLED"),
	.FEATURE_INSTRUCTIONCACHE("NONE"),
	.OPTION_ICACHE_BLOCK_WIDTH(5),
	.OPTION_ICACHE_SET_WIDTH(5),
	.OPTION_ICACHE_WAYS(2),
	.OPTION_ICACHE_LIMIT_WIDTH(32),
	.FEATURE_IMMU("ENABLED"),
	 //.FEATURE_DATACACHE("ENABLED"),
	.OPTION_DCACHE_BLOCK_WIDTH(5),
	.OPTION_DCACHE_SET_WIDTH(6),
	.OPTION_DCACHE_WAYS(2),
	.OPTION_DCACHE_LIMIT_WIDTH(31),
	.FEATURE_DMMU("ENABLED"),
	.OPTION_PIC_TRIGGER("LATCHED_LEVEL"),

//	 .FEATURE_STORE_BUFFER("ENABLED"),
	.OPTION_STORE_BUFFER_DEPTH_WIDTH (4),
	.IBUS_WB_TYPE("B3_REGISTERED_FEEDBACK"),
	.DBUS_WB_TYPE("B3_REGISTERED_FEEDBACK"),
	.OPTION_CPU0("CAPPUCCINO"),
	.OPTION_RESET_PC(32'hf0000100)
) mor1kx0 (
	.iwbm_adr_o(wb_m2s_or1k_i_adr),
	.iwbm_dat_o(wb_m2s_or1k_i_dat),
	.iwbm_sel_o(wb_m2s_or1k_i_sel),
	.iwbm_we_o (wb_m2s_or1k_i_we ),
	.iwbm_cyc_o(wb_m2s_or1k_i_cyc),
	.iwbm_stb_o(wb_m2s_or1k_i_stb),
	.iwbm_cti_o(wb_m2s_or1k_i_cti),
	.iwbm_bte_o(wb_m2s_or1k_i_bte),
	.iwbm_dat_i(wb_s2m_or1k_i_dat),
	.iwbm_ack_i(wb_s2m_or1k_i_ack),
	.iwbm_err_i(wb_s2m_or1k_i_err),
	.iwbm_rty_i(wb_s2m_or1k_i_rty),

	.dwbm_adr_o(wb_m2s_or1k_d_adr),
	.dwbm_dat_o(wb_m2s_or1k_d_dat),
	.dwbm_sel_o(wb_m2s_or1k_d_sel),
	.dwbm_we_o (wb_m2s_or1k_d_we ),
	.dwbm_cyc_o(wb_m2s_or1k_d_cyc),
	.dwbm_stb_o(wb_m2s_or1k_d_stb),
	.dwbm_cti_o(wb_m2s_or1k_d_cti),
	.dwbm_bte_o(wb_m2s_or1k_d_bte),
	.dwbm_dat_i(wb_s2m_or1k_d_dat),
	.dwbm_ack_i(wb_s2m_or1k_d_ack),
	.dwbm_err_i(wb_s2m_or1k_d_err),
	.dwbm_rty_i(wb_s2m_or1k_d_rty),

	.clk(wb_clk),
	.rst(or1k_rst),

	.avm_d_address_o (),
	.avm_d_byteenable_o (),
	.avm_d_read_o (),
	.avm_d_readdata_i (32'h00000000),
	.avm_d_burstcount_o (),
	.avm_d_write_o (),
	.avm_d_writedata_o (),
	.avm_d_waitrequest_i (1'b0),
	.avm_d_readdatavalid_i (1'b0),

	.avm_i_address_o (),
	.avm_i_byteenable_o (),
	.avm_i_read_o (),
	.avm_i_readdata_i (32'h00000000),
	.avm_i_burstcount_o (),
	.avm_i_waitrequest_i (1'b0),
	.avm_i_readdatavalid_i (1'b0),

	.irq_i(or1k_irq),

	.du_addr_i(or1k_dbg_adr_i[15:0]),
	.du_stb_i(or1k_dbg_stb_i),
	.du_dat_i(or1k_dbg_dat_i),
	.du_we_i(or1k_dbg_we_i),
	.du_dat_o(or1k_dbg_dat_o),
	.du_ack_o(or1k_dbg_ack_o),
	.du_stall_i(or1k_dbg_stall_i),
	.du_stall_o(or1k_dbg_bp_o)
);

////////////////////////////////////////////////////////////////////////
//
// Debug Interface
//
////////////////////////////////////////////////////////////////////////

adbg_top dbg_if0 (
	// OR1K interface
	.cpu0_clk_i	(wb_clk),
	.cpu0_rst_o	(or1k_dbg_rst),
	.cpu0_addr_o	(or1k_dbg_adr_i),
	.cpu0_data_o	(or1k_dbg_dat_i),
	.cpu0_stb_o	(or1k_dbg_stb_i),
	.cpu0_we_o	(or1k_dbg_we_i),
	.cpu0_data_i	(or1k_dbg_dat_o),
	.cpu0_ack_i	(or1k_dbg_ack_o),
	.cpu0_stall_o	(or1k_dbg_stall_i),
	.cpu0_bp_i	(or1k_dbg_bp_o),

	// TAP interface
	.tck_i		(tck),
	.tdi_i		(jtag_tap_tdo),
	.tdo_o		(dbg_if_tdo),
	.rst_i		(wb_rst),
	.capture_dr_i	(jtag_tap_capture_dr),
	.shift_dr_i	(jtag_tap_shift_dr),
	.pause_dr_i	(jtag_tap_pause_dr),
	.update_dr_i	(jtag_tap_update_dr),
	.debug_select_i	(dbg_if_select),

	// Wishbone debug master
	.wb_clk_i	(wb_clk),
	.wb_rst_i       (1'b0),
	.wb_dat_i	(wb_s2m_dbg_dat),
	.wb_ack_i	(wb_s2m_dbg_ack),
	.wb_err_i	(wb_s2m_dbg_err),

	.wb_adr_o	(wb_m2s_dbg_adr),
	.wb_dat_o	(wb_m2s_dbg_dat),
	.wb_cyc_o	(wb_m2s_dbg_cyc),
	.wb_stb_o	(wb_m2s_dbg_stb),
	.wb_sel_o	(wb_m2s_dbg_sel),
	.wb_we_o	(wb_m2s_dbg_we),
	.wb_cab_o       (),
	.wb_cti_o	(wb_m2s_dbg_cti),
	.wb_bte_o	(wb_m2s_dbg_bte),

	.wb_jsp_adr_i (32'd0),
	.wb_jsp_dat_i (32'd0),
	.wb_jsp_cyc_i (1'b0),
	.wb_jsp_stb_i (1'b0),
	.wb_jsp_sel_i (4'h0),
	.wb_jsp_we_i  (1'b0),
	.wb_jsp_cab_i (1'b0),
	.wb_jsp_cti_i (3'd0),
	.wb_jsp_bte_i (2'd0),
	.wb_jsp_dat_o (),
	.wb_jsp_ack_o (),
	.wb_jsp_err_o (),

	.int_o ()

);

////////////////////////////////////////////////////////////////////////
//
// ROM
//
////////////////////////////////////////////////////////////////////////

   localparam WB_RAM_MEM_DEPTH = 128;
   
   wb_ram
     #(.depth (WB_RAM_MEM_DEPTH*2),
       .memfile ("../src/or1k_bootloaders/clear_r3_and_jump_to_0x100.vh"))
   wb_ram0
     (//Wishbone Master interface
      .wb_clk_i (wb_clk),
      .wb_rst_i (wb_rst),
      .wb_adr_i	(wb_m2s_rom0_adr[$clog2(WB_RAM_MEM_DEPTH):0]),
      .wb_dat_i	(wb_m2s_rom0_dat),
      .wb_sel_i	(wb_m2s_rom0_sel),
      .wb_we_i	(wb_m2s_rom0_we),
      .wb_cyc_i	(wb_m2s_rom0_cyc),
      .wb_stb_i	(wb_m2s_rom0_stb),
      .wb_cti_i	(wb_m2s_rom0_cti),
      .wb_bte_i	(wb_m2s_rom0_bte),
      .wb_dat_o	(wb_s2m_rom0_dat),
      .wb_ack_o	(wb_s2m_rom0_ack),
      .wb_err_o (wb_s2m_rom0_err));

   assign wb_s2m_rom0_rty = 1'b0;

endmodule // mor1kx_dbg_wrapper

