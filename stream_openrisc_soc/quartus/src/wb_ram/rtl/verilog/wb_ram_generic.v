/*
* wb_ram Generic on-chip RAM with Wishbone interface
* Copyright (C) 2014, 2015  Olof Kindgren, olof.kindgren@gmail.com
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
//TODO: Add function to convert between 32 bit words and bytes
module wb_ram_generic
  #(parameter depth=256,
    parameter memfile = "")
  (input clk,
   input  we,
   input [31:0]  din,
   input [$clog2(depth)-1:0] 	 waddr,
   input [$clog2(depth)-1:0] 	 raddr,
   output reg [31:0] dout);

   reg [31:0] 	 mem [0:depth-1];
   
   always @(posedge clk) begin
      if (we) mem[waddr] <= din;
      dout <= mem[raddr];
   end

   generate
      initial
	if(memfile != "") begin
	   $display("Preloading %m from %s", memfile);
	   $readmemh(memfile, mem);
	end
   endgenerate

endmodule
