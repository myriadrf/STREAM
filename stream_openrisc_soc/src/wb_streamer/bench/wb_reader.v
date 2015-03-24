/*
* Streamer core (convert data streams to Wishbone transactions)
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
module wb_reader
  #(parameter WB_AW = 32,
    parameter WB_DW = 32,
    parameter MAX_BURST_LEN = 0)
   (input 	   wb_clk_i,
    input 		wb_rst_i,
    
    input [WB_AW-1:0] 	wb_adr_i,
    input [WB_DW-1:0] 	wb_dat_i,
    input [WB_DW/8-1:0] wb_sel_i,
    input 		wb_we_i,
    input [1:0] 	wb_bte_i,
    input [2:0] 	wb_cti_i,
    input 		wb_cyc_i,
    input 		wb_stb_i,
   
    output 		wb_ack_o,
    output 		wb_err_o,
    output 		wb_rty_o,
    output [WB_DW-1:0] 	wb_dat_o);

`include "wb_bfm_params.v"
   
   wb_bfm_slave
     #(.aw (WB_AW),
       .dw (WB_DW))
   bfm0
     (.wb_clk   (wb_clk_i),
      .wb_rst   (wb_rst_i),
      .wb_adr_i (wb_adr_i),
      .wb_dat_i (wb_dat_i),
      .wb_sel_i (wb_sel_i),
      .wb_we_i  (wb_we_i), 
      .wb_cyc_i (wb_cyc_i),
      .wb_stb_i (wb_stb_i),
      .wb_cti_i (wb_cti_i),
      .wb_bte_i (wb_bte_i),
      .wb_dat_o (wb_dat_o),
      .wb_ack_o (wb_ack_o),
      .wb_err_o (wb_err_o),
      .wb_rty_o (wb_rty_o));
   
   task wb_read_burst;
      output [MAX_BURST_LEN*WB_AW-1:0] addr_o;
      output [MAX_BURST_LEN*WB_DW-1:0] data_o;
      output integer 	 length_o;

      reg [WB_AW-1:0] 	 addr;
      reg [WB_DW-1:0] 	 data;
      integer 		 idx;
      
      begin

	 bfm0.init();
	 
	 addr = wb_adr_i;
	 
	 if(bfm0.op !== WRITE)
	   $error("%m : Expected a wishbone write operation");
	 else if(bfm0.cycle_type !== BURST_CYCLE)
	   $error("%m : Expected a burst cycle");
	 else begin
	    idx = 0;
	    while(bfm0.has_next) begin
	       //FIXME: Check mask
	       bfm0.write_ack(data);
	       //$display("%d : Got new data %x", idx, data);
	       data_o[idx*WB_DW+:WB_DW] = data;
	       addr_o[idx*WB_DW+:WB_AW] = addr;
	       idx = idx + 1;
	       addr = bfm0.next_addr(addr, bfm0.burst_type);
	    end
	    length_o = idx;
	 end // else: !if(bfm0.cycle_type !== BURST_CYCLE)
      end
   endtask
   
endmodule
