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
module wb_stream_writer_fifo
  #(parameter DW = 0,
    parameter AW = 0)
   (input 	    clk,
    input 	      rst,
    output reg [AW:0] cnt,
    input [DW-1:0]    stream_s_data_i, 
    input 	      stream_s_valid_i,
    output 	      stream_s_ready_o,

    output [DW-1:0]   stream_m_data_o,
    output 	      stream_m_valid_o,
    input 	      stream_m_ready_i);
   
   

   wire 	    fifo_rd_en;
   wire [DW-1:0]    fifo_dout;
   wire 	    fifo_empty;
   wire 	    full;
   
   reg 		    inc_cnt;
   reg 		    dec_cnt;

   assign stream_s_ready_o = !full;
   
   // orig_fifo is just a normal (non-FWFT) synchronous or asynchronous FIFO
   fifo
     #(.DEPTH_WIDTH (AW),
       .DATA_WIDTH  (DW))
   fifo0
     (
       .clk       (clk),
       .rst       (rst),       
       .rd_en_i   (fifo_rd_en),
       .rd_data_o (fifo_dout),
       .empty_o   (fifo_empty),
       .wr_en_i   (stream_s_valid_i),
       .wr_data_i (stream_s_data_i),
       .full_o    (full));

   stream_fifo_if
     #(.DW (DW))
   stream_if
   (.clk              (clk),
    .rst              (rst),
    .fifo_data_i      (fifo_dout),
    .fifo_rd_en_o     (fifo_rd_en),
    .fifo_empty_i     (fifo_empty),
    .stream_m_data_o  (stream_m_data_o),
    .stream_m_valid_o (stream_m_valid_o),
    .stream_m_ready_i (stream_m_ready_i));

   
   always @(posedge clk) begin
      inc_cnt = stream_s_valid_i & stream_s_ready_o;
      dec_cnt = stream_m_valid_o & stream_m_ready_i;

      if(inc_cnt & !dec_cnt)
	cnt <= cnt + 1;
      else if(dec_cnt & !inc_cnt)
	cnt <= cnt - 1;
      
      if (rst)
	cnt <= 0;
   end
endmodule
