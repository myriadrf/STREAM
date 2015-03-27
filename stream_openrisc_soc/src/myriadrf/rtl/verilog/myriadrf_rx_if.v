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
module myriadrf_rx_if
  (input 	 clk,
   input 	    rst,
   output reg [23:0] m_data_o,
   output reg 	    m_valid_o,
   input 	    m_ready_i,
   input [11:0]     rxd,
   input 	    rxiqsel);

   reg 		    rxiqsel_r;

   //Note: Receiever must always be ready.
   //A deasserted m_ready_i equals a lost data
  always @(posedge clk) begin
     rxiqsel_r <= rxiqsel;
     m_valid_o <= rxiqsel_r;
     
     if (rxiqsel_r)
       m_data_o[11:0] <= rxd;
     else
       m_data_o[23:12] <= rxd;

     if (rst) begin
	m_valid_o <= 1'b0;
	rxiqsel_r <= 1'b0;
     end
  end
endmodule
