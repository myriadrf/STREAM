//////////////////////////////////////////////////////////////////////
//
// clkgen
//
// Handles clock and reset generation for rest of design
//
//
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2009, 2010 Authors and OPENCORES.ORG           ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

module clkgen
  (// External clock input
   input  sys_clk_pad_i,
   // External asynchronous active low reset
   input  rst_n_pad_i,
   // Input reset - through a buffer, asynchronous
   output async_rst_o,
   //FX3 Clock and reset
   output fx3_clk_o,
   output fx3_rst_o,
   // Wishbone clock and reset out  
   output wb_clk_o,
   output wb_rst_o);

   // First, deal with the asychronous reset
   wire   async_rst  = ~rst_n_pad_i;

`ifdef SIM

   reg 	  wb_clk = 1'b0;
   reg 	  pll_lock = 1'b0;
   
   localparam wb_tck = 20344;//49.154MHz (~30.72*8/5)
   
   always @(async_rst)     pll_lock <= #90 ~async_rst; 

   always #(wb_tck/2) wb_clk <= !wb_clk;
   
   assign wb_clk_o = wb_clk;
   
`else

   wire   pll_lock;

   pll pll0 
     (.areset (async_rst),
      .inclk0 (sys_clk_pad_i),
      .c0     (wb_clk_o),
      .c1     (fx3_clk_o),
      .locked (pll_lock));
   
`endif

assign	async_rst_o = ~pll_lock;
   
   // Reset generation for fx3
   rst_sync fx3_rst_sync(fx3_clk_o, ~pll_lock, fx3_rst_o);
   // Reset generation for wishbone
   rst_sync wb_rst_sync(wb_clk_o, ~pll_lock, wb_rst_o);
   
endmodule // clkgen
