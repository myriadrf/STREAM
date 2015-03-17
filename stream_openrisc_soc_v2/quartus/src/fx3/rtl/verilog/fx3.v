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
