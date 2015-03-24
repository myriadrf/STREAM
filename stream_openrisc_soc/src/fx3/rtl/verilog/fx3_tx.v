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
module fx3_tx
  (input 	 clk,
   input 	     rst,
   //Stream interface
   input [15:0]      s_data_i,
   input 	     s_valid_i,
   output 	     s_ready_o,
   //FX3 Interface
   input 	     fx3_full_i,
   output reg 	     fx3_wr_o,
   output reg [15:0] fx3_data_o);

   reg [1:0] 	     full;
   
   assign s_ready_o = !full[1];

   always @(posedge clk) begin
      full <= {full[0],fx3_full_i};

      fx3_data_o <= s_data_i;
      fx3_wr_o   <= !full[1] & s_valid_i;
      
      if (rst) begin
	 fx3_wr_o <= 1'b0;
      end
   end

endmodule
	 
      
