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
module usb_framer
  (input 	 clk,
   input 	 rst,
   input 	 resync,
   input [23:0]  stream_s_data_i,
   input 	 stream_s_valid_i,
   output 	 stream_s_ready_o,
   output [15:0] stream_m_data_o,
   output 	 stream_m_valid_o,
   output 	 stream_m_last_o,
   input 	 stream_m_ready_i);

/*   initial begin
      //Four point sin 3*16 flipped
      d[2] = 16'h7ff0;
      d[1] = 16'h0000;
      d[0] = 16'h07ff;

      d[5] = 16'h8000;
      d[4] = 16'h0000;
      d[3] = 16'h0800;
   end
*/

   wire [47:0] 	upsizer_data;
   wire		upsizer_valid;
   wire		upsizer_ready;
   
   wire [15:0] downsizer_data;
   wire        downsizer_valid;
   wire        downsizer_ready;
  
   stream_upsizer
     #(.DW_IN (24),
       .SCALE (2))
   upsizer
     (.clk (clk),
      .rst (rst | resync),
      //Slave Interface
      .s_data_i  (stream_s_data_i),
      .s_valid_i (stream_s_valid_i),
      .s_ready_o (stream_s_ready_o),
      //Master Interface
      .m_data_o  (upsizer_data),
      .m_valid_o (upsizer_valid),
      .m_ready_i (upsizer_ready));

   stream_downsizer
     #(.DW_OUT (16),
       .SCALE (3))
   downsizer
     (.clk (clk),
      .rst (rst | resync),
      //Slave Interface
      .s_data_i  ({upsizer_data[23:0],upsizer_data[47:24]}),
      .s_valid_i (upsizer_valid),
      .s_ready_o (upsizer_ready),
      //Master Interface
      .m_data_o  (downsizer_data),
      .m_valid_o (downsizer_valid),
      .m_ready_i (downsizer_ready));

   usb_packetizer packetizer
     (.clk (clk),
      .rst (rst | resync),
      .s_data_i  (downsizer_data),
      .s_valid_i (downsizer_valid),
      .s_ready_o (downsizer_ready),
      .m_data_o  (stream_m_data_o),
      .m_valid_o (stream_m_valid_o),
      .m_last_o  (stream_m_last_o),
      .m_ready_i (stream_m_ready_i));

endmodule
