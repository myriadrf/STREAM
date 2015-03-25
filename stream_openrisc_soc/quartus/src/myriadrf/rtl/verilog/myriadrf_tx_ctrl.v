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
module myriadrf_tx_ctrl
  (input clk,
   input 	 rst,
   //Control signals
   input 	 tx_src,
   //TX Data stream
   output [23:0] m_data_o,
   output 	 m_valid_o,
   input 	 m_ready_i,
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

   wire [31:0] stream_writer_data;
   wire        stream_writer_valid;
   wire        stream_writer_ready;
   
   wire [23:0] test_data;
   wire        test_valid;
   wire        test_ready;

   wb_stream_writer
     #(.FIFO_AW (8))
   wb_stream_writer0
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
      .stream_m_data_o  (stream_writer_data),
      .stream_m_valid_o (stream_writer_valid),
      .stream_m_ready_i (stream_writer_ready),
      .stream_m_irq_o   (irq_o),
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
   
   test_data_generator test_data_gen
     (.clk (clk),
      .rst (rst),
      .m_data_o  (test_data),
      .m_valid_o (test_valid),
      .m_ready_i (test_ready));

   stream_mux
     #(.DW (24))
   mux0
     (.sel (tx_src),
      .s0_data_i  (test_data),
      .s0_valid_i (test_valid),
      .s0_ready_o (test_ready),
      .s1_data_i  ({stream_writer_data[27:16],stream_writer_data[11:0]}),
      .s1_valid_i (stream_writer_valid),
      .s1_ready_o (stream_writer_ready),
      .m_data_o  (m_data_o),
      .m_valid_o (m_valid_o),
      .m_ready_i (m_ready_i));

endmodule
