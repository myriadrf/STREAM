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
module myriadrf_tx_if
  (input 	 clk,
   input 	 rst,
   input [23:0]  s_data_i,
   input 	 s_valid_i,
   output 	 s_ready_o,
   output [11:0] txd,
   output reg 	 txiqsel);
   
   assign txd = txiqsel ? s_data_i[11:0] : s_data_i[23:12];
   assign s_ready_o = txiqsel;
   
  always @(posedge clk) begin
     txiqsel   <= !txiqsel;
     if (rst)
       txiqsel <= 1'b0;
  end
endmodule
