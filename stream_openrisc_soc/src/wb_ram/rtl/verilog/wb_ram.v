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
module wb_ram
 #(//Wishbone parameters
   parameter dw = 32,
   //Memory parameters
   parameter depth = 256,
   parameter aw    = $clog2(depth),
   parameter memfile = "")
  (input 	   wb_clk_i,
   input 	   wb_rst_i,
   
   input [aw-1:0]  wb_adr_i,
   input [dw-1:0]  wb_dat_i,
   input [3:0] 	   wb_sel_i,
   input 	   wb_we_i,
   input [1:0] 	   wb_bte_i,
   input [2:0] 	   wb_cti_i,
   input 	   wb_cyc_i,
   input 	   wb_stb_i,
   
   output reg 	   wb_ack_o,
   output 	   wb_err_o,
   output [dw-1:0] wb_dat_o);

   `include "wb_common.v"
   reg [aw-1:0] 	   adr_r;

   wire [aw-1:0] 	   next_adr;

   wire 		   valid = wb_cyc_i & wb_stb_i;

   reg 			   valid_r;

   wire 		   new_cycle = valid & !valid_r;

   assign next_adr = wb_next_adr(adr_r, wb_cti_i, wb_bte_i, dw);

   wire [aw-1:0] 	   adr = new_cycle ? wb_adr_i : next_adr;

   always@(posedge wb_clk_i) begin
      adr_r   <= adr;
      valid_r <= valid;
      //Ack generation
      wb_ack_o <= valid & (!((wb_cti_i == 3'b000) | (wb_cti_i == 3'b111)) | !wb_ack_o);
      if(wb_rst_i) begin
	 adr_r <= {aw{1'b0}};
	 valid_r <= 1'b0;
	 wb_ack_o <= 1'b0;
      end
   end

   wire ram_we = wb_we_i & valid & wb_ack_o;

   //TODO:ck for burst address errors
   assign wb_err_o =  1'b0;

   wb_ram_generic
     #(.depth(depth/4),
       .memfile (memfile))
   ram0
     (.clk (wb_clk_i),
      .we  (ram_we),
      .din (wb_dat_i),
      .waddr(adr_r[aw-1:2]),
      .raddr (adr[aw-1:2]),
      .dout (wb_dat_o));

endmodule
