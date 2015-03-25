/*
* MyriadRF Interface core
* Copyright (C) 2015 Lime Microsystems
*
* This library is free software; you can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public
* License as published by the Free Software Foundation; either
* version 2.1 of the License, or (at your option) any later version.
*
* This library is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public
* License along with this library; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/
module myriadrf
  (input 	 wb_rst,
   //RX Interface
   input 	     rx_clk,
   input 	     rx_rst,
   input [11:0]      rxd,
   input 	     rxiqsel,
   //TX Interface
   input 	     tx_clk,
   input 	     tx_rst,
   output reg [11:0] txd,
   output reg 	     txiqsel,
   //USB Interface
   input 	     wb_clk,
   output [23:0]     usb_m_data_o,
   output 	     usb_m_valid_o,
   input 	     usb_m_ready_i,
   //WB Ctrl Interface
   input [9:0] 	     wbs_adr_i,
   input [31:0]      wbs_dat_i,
   input [3:0] 	     wbs_sel_i,
   input 	     wbs_we_i,
   input 	     wbs_cyc_i,
   input 	     wbs_stb_i,
   input [2:0] 	     wbs_cti_i,
   input [1:0] 	     wbs_bte_i,
   output [31:0]     wbs_dat_o,
   output 	     wbs_ack_o,
   output 	     wbs_err_o,
   output 	     wbs_rty_o,
   output 	     lms_tx_irq_o,
   output 	     lms_rx_irq_o,
   output 	     spi_select,
   //WB TX memory Interface
   output [31:0]     wbm_tx_adr_o,
   output [31:0]     wbm_tx_dat_o,
   output [3:0]      wbm_tx_sel_o,
   output 	     wbm_tx_we_o ,
   output 	     wbm_tx_cyc_o,
   output 	     wbm_tx_stb_o,
   output [2:0]      wbm_tx_cti_o,
   output [1:0]      wbm_tx_bte_o,
   input [31:0]      wbm_tx_dat_i,
   input 	     wbm_tx_ack_i,
   input 	     wbm_tx_err_i,
   input 	     wbm_tx_rty_i,
   //WB RX memory Interface
   output [31:0]     wbm_rx_adr_o,
   output [31:0]     wbm_rx_dat_o,
   output [3:0]      wbm_rx_sel_o,
   output 	     wbm_rx_we_o ,
   output 	     wbm_rx_cyc_o,
   output 	     wbm_rx_stb_o,
   output [2:0]      wbm_rx_cti_o,
   output [1:0]      wbm_rx_bte_o,
   input [31:0]      wbm_rx_dat_i,
   input 	     wbm_rx_ack_i,
   input 	     wbm_rx_err_i,
   input 	     wbm_rx_rty_i);

////////////////////////////////////////////////////////////////////////
//
// Common
//
////////////////////////////////////////////////////////////////////////

`include "myriadrf_intercon.vh"

   wire 	 tx_src;
   wire 	 rx_src;
   wire 	 loopback;
   wire 	 rx_sink;

   myriadrf_cfg
   cfg
     (.wb_clk_i  (wb_clk),
      .wb_rst_i  (wb_rst),
      //Wishbone IF
      .wb_adr_i (wb_m2s_common_adr),
      .wb_dat_i (wb_m2s_common_dat),
      .wb_sel_i (wb_m2s_common_sel),
      .wb_we_i  (wb_m2s_common_we ),
      .wb_cyc_i (wb_m2s_common_cyc),
      .wb_stb_i (wb_m2s_common_stb),
      .wb_cti_i (wb_m2s_common_cti),
      .wb_bte_i (wb_m2s_common_bte),
      .wb_dat_o (wb_s2m_common_dat),
      .wb_ack_o (wb_s2m_common_ack),
      .wb_err_o (wb_s2m_common_err),
      .wb_rty_o (wb_s2m_common_rty),
      //Application IF
      .tx_src_o   (tx_src),
      .rx_src_o   (rx_src),
      .loopback_o (loopback),
      .rx_sink_o  (rx_sink),
      .spi_sel_o  (spi_select));

   assign wb_m2s_top_adr = {22'd0,wbs_adr_i};
   assign wb_m2s_top_dat = wbs_dat_i;
   assign wb_m2s_top_sel = wbs_sel_i;
   assign wb_m2s_top_we  = wbs_we_i ; 
   assign wb_m2s_top_cyc = wbs_cyc_i;
   assign wb_m2s_top_stb = wbs_stb_i;
   assign wb_m2s_top_cti = wbs_cti_i;
   assign wb_m2s_top_bte = wbs_bte_i;

   assign wbs_dat_o = wb_s2m_top_dat;
   assign wbs_ack_o = wb_s2m_top_ack;
   assign wbs_err_o = wb_s2m_top_err;
   assign wbs_rty_o = wb_s2m_top_rty;

////////////////////////////////////////////////////////////////////////
//
// TX Chain
//
////////////////////////////////////////////////////////////////////////

   wire [23:0] 	 tx_data;
   wire 	 tx_valid;
   wire 	 tx_ready;
   
   wire [23:0] tx_fifo_data;
   wire        tx_fifo_valid;
   wire        tx_fifo_ready;

   myriadrf_tx_ctrl tx_ctrl
     (.clk (wb_clk),
      .rst (wb_rst),
      //Control signals
      .tx_src    (tx_src),
      //TX Data stream
      .m_data_o  (tx_data),
      .m_valid_o (tx_valid),
      .m_ready_i (tx_ready),
      //WB Control Interface
      .wbs_adr_i (wb_m2s_lms_tx_adr),
      .wbs_dat_i (wb_m2s_lms_tx_dat),
      .wbs_sel_i (wb_m2s_lms_tx_sel),
      .wbs_we_i  (wb_m2s_lms_tx_we), 
      .wbs_cyc_i (wb_m2s_lms_tx_cyc),
      .wbs_stb_i (wb_m2s_lms_tx_stb),
      .wbs_cti_i (wb_m2s_lms_tx_cti),
      .wbs_bte_i (wb_m2s_lms_tx_bte),
      .wbs_dat_o (wb_s2m_lms_tx_dat),
      .wbs_ack_o (wb_s2m_lms_tx_ack),
      .wbs_err_o (wb_s2m_lms_tx_err),
      .wbs_rty_o (wb_s2m_lms_tx_rty),
      .irq_o     (lms_tx_irq_o),
      //WB TX memory Interface
      .wbm_adr_o (wbm_tx_adr_o),
      .wbm_dat_o (wbm_tx_dat_o),
      .wbm_sel_o (wbm_tx_sel_o),
      .wbm_we_o  (wbm_tx_we_o),
      .wbm_cyc_o (wbm_tx_cyc_o),
      .wbm_stb_o (wbm_tx_stb_o),
      .wbm_cti_o (wbm_tx_cti_o),
      .wbm_bte_o (wbm_tx_bte_o),
      .wbm_dat_i (wbm_tx_dat_i),
      .wbm_ack_i (wbm_tx_ack_i),
      .wbm_err_i (wbm_tx_err_i),
      .wbm_rty_i (wbm_tx_rty_i));

   stream_dual_clock_fifo
     #(.DW (24),
       .AW (7))
   tx_fifo
     (.wr_clk (wb_clk),
      .wr_rst (wb_rst),
      .stream_s_data_i  (tx_data),
      .stream_s_valid_i (tx_valid),
      .stream_s_ready_o (tx_ready),

      .rd_clk    (tx_clk),
      .rd_rst    (tx_rst),
      .stream_m_data_o  (tx_fifo_data),
      .stream_m_valid_o (tx_fifo_valid),
      .stream_m_ready_i (tx_fifo_ready));

   myriadrf_tx_if tx_if
     (.clk (tx_clk),
      .rst (tx_rst),
      .s_data_i  (tx_fifo_data),
      .s_valid_i (tx_fifo_valid),
      .s_ready_o (tx_fifo_ready),
      .txd       (txd_int),
      .txiqsel   (txiqsel_int));

////////////////////////////////////////////////////////////////////////
//
// RX Chain
//
////////////////////////////////////////////////////////////////////////
   
   wire [23:0] 	 rx_if_data;
   wire 	 rx_if_valid;
   wire 	 rx_if_ready;

   wire [23:0] rx_fifo_data;
   wire        rx_fifo_valid;
   wire        rx_fifo_ready;

   //Loopback
   wire [11:0] txd_int;
   wire        txiqsel_int;

   wire [11:0] rxd_int     = loopback ? txd_int     : rxd;
   wire        rxiqsel_int = loopback ? txiqsel_int : rxiqsel;

   always @(posedge tx_clk) begin
      txd <= txd_int;
      txiqsel <= txiqsel_int;
   end

   myriadrf_rx_if rx_if
     (.clk (rx_clk),
      .rst (rx_rst),
      .rxd       (rxd_int),
      .rxiqsel   (rxiqsel_int),
      .m_data_o  (rx_if_data),
      .m_valid_o (rx_if_valid),
      .m_ready_i (rx_if_ready));

   stream_dual_clock_fifo
     #(.DW (24),
       .AW (7))
   rx_fifo
     (.wr_clk (rx_clk),
      .wr_rst (rx_rst),
      .stream_s_data_i  (rx_if_data),
      .stream_s_valid_i (rx_if_valid),
      .stream_s_ready_o (rx_if_ready),

      .rd_clk           (wb_clk),
      .rd_rst           (wb_rst),
      .stream_m_data_o  (rx_fifo_data),
      .stream_m_valid_o (rx_fifo_valid),
      .stream_m_ready_i (rx_fifo_ready));

   myriadrf_rx_ctrl rx_ctrl
     (.clk       (wb_clk),
      .rst       (wb_rst),
      //Control signals
      .rx_sink_i (rx_sink),
      //RX Data stream
      .s_data_i  (rx_fifo_data),
      .s_valid_i (rx_fifo_valid),
      .s_ready_o (rx_fifo_ready),
      //Wishbone
      //USB Interface
      .usb_m_data_o  (usb_m_data_o),
      .usb_m_valid_o (usb_m_valid_o),
      .usb_m_ready_i (usb_m_ready_i),
      //WB Control Interface
      .wbs_adr_i (wb_m2s_lms_rx_adr),
      .wbs_dat_i (wb_m2s_lms_rx_dat),
      .wbs_sel_i (wb_m2s_lms_rx_sel),
      .wbs_we_i  (wb_m2s_lms_rx_we), 
      .wbs_cyc_i (wb_m2s_lms_rx_cyc),
      .wbs_stb_i (wb_m2s_lms_rx_stb),
      .wbs_cti_i (wb_m2s_lms_rx_cti),
      .wbs_bte_i (wb_m2s_lms_rx_bte),
      .wbs_dat_o (wb_s2m_lms_rx_dat),
      .wbs_ack_o (wb_s2m_lms_rx_ack),
      .wbs_err_o (wb_s2m_lms_rx_err),
      .wbs_rty_o (wb_s2m_lms_rx_rty),
      .irq_o     (lms_rx_irq_o),
      //WB RX memory Interface
      .wbm_adr_o (wbm_rx_adr_o),
      .wbm_dat_o (wbm_rx_dat_o),
      .wbm_sel_o (wbm_rx_sel_o),
      .wbm_we_o  (wbm_rx_we_o),
      .wbm_cyc_o (wbm_rx_cyc_o),
      .wbm_stb_o (wbm_rx_stb_o),
      .wbm_cti_o (wbm_rx_cti_o),
      .wbm_bte_o (wbm_rx_bte_o),
      .wbm_dat_i (wbm_rx_dat_i),
      .wbm_ack_i (wbm_rx_ack_i),
      .wbm_err_i (wbm_rx_err_i),
      .wbm_rty_i (wbm_rx_rty_i));


   
endmodule
