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
module myriadrf_rx_ctrl
  (input clk,
   input 	 rst,
   //Control signals
   input 	 rx_sink_i,
   //RX Data stream   
   input [23:0]  s_data_i,
   input 	 s_valid_i,
   output 	 s_ready_o,
   //USB Interface
   output [23:0] usb_m_data_o,
   output 	 usb_m_valid_o,
   input 	 usb_m_ready_i,
   //WB Ctrl Interface
   input [31:0]  wbs_adr_i,
   input [31:0]  wbs_dat_i,
   input [3:0] 	 wbs_sel_i,
   input 	 wbs_we_i,
   input 	 wbs_cyc_i,
   input 	 wbs_stb_i,
   input [2:0] 	 wbs_cti_i,
   input [1:0] 	 wbs_bte_i,
   output [31:0] wbs_dat_o,
   output 	 wbs_ack_o,
   output 	 wbs_err_o,
   output 	 wbs_rty_o,
   output 	 irq_o,
   //WB TX memory Interface
   output [31:0] wbm_adr_o,
   output [31:0] wbm_dat_o,
   output [3:0]  wbm_sel_o,
   output 	 wbm_we_o ,
   output 	 wbm_cyc_o,
   output 	 wbm_stb_o,
   output [2:0]  wbm_cti_o,
   output [1:0]  wbm_bte_o,
   input [31:0]  wbm_dat_i,
   input 	 wbm_ack_i,
   input 	 wbm_err_i,
   input 	 wbm_rty_i);

   wire 	 streamer_ready;
   
   assign usb_m_data_o = s_data_i;
   assign usb_m_valid_o = s_valid_i & !rx_sink_i;
   assign s_ready_o = rx_sink_i ? streamer_ready : usb_m_ready_i;

   wire [15:0] 	 i = {{4{s_data_i[23]}},s_data_i[23:12]};
   wire [15:0] 	 q = {{4{s_data_i[11]}},s_data_i[11:0]};
   
   wb_stream_reader
     #(.FIFO_AW (5))
   wb_stream_reader0
     (.clk       (clk),
      .rst       (rst),
      //Stream data output
      .wbm_adr_o (wbm_adr_o),
      .wbm_dat_o (wbm_dat_o),
      .wbm_sel_o (wbm_sel_o),
      .wbm_we_o  (wbm_we_o),
      .wbm_cyc_o (wbm_cyc_o),
      .wbm_stb_o (wbm_stb_o),
      .wbm_cti_o (wbm_cti_o),
      .wbm_bte_o (wbm_bte_o),
      .wbm_dat_i (wbm_dat_i),
      .wbm_ack_i (wbm_ack_i),
      .wbm_err_i (wbm_err_i),
      .wbm_rty_i (wbm_rty_i),
      //Stream interface
      .stream_s_data_i  ({i,q}),
      .stream_s_valid_i (s_valid_i & rx_sink_i),
      .stream_s_ready_o (streamer_ready),
      .irq_o     (irq_o),
      .wbs_adr_i (wbs_adr_i),
      .wbs_dat_i (wbs_dat_i),
      .wbs_sel_i (wbs_sel_i),
      .wbs_we_i  (wbs_we_i), 
      .wbs_cyc_i (wbs_cyc_i),
      .wbs_stb_i (wbs_stb_i),
      .wbs_cti_i (wbs_cti_i),
      .wbs_bte_i (wbs_bte_i),
      .wbs_dat_o (wbs_dat_o),
      .wbs_ack_o (wbs_ack_o),
      .wbs_err_o (wbs_err_o),
      .wbs_rty_o (wbs_rty_o));
   
endmodule
