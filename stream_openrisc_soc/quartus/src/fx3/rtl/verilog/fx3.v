/*
* FX3 Synchronous slave core
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
module fx3
  (input clk,
   input 	 rst,
   //Stream interface
   input [15:0]  stream_s_data_i,
   input 	 stream_s_valid_i,
   output 	 stream_s_ready_o,
   //GPIF Interface
   input 	 flagb,
   output 	 slwr_n,
   output [15:0] fd_o);

   wire 	fx3_wr;

   assign slwr_n = !fx3_wr;

fx3_tx tx
  (.clk (clk),
   .rst (rst),
   //Stream input
   .s_data_i  (stream_s_data_i),
   .s_valid_i (stream_s_valid_i),
   .s_ready_o (stream_s_ready_o),
   //FX2 output
   .fx3_wr_o   (fx3_wr),
   .fx3_data_o (fd_o),
   .fx3_full_i (!flagb));

endmodule
