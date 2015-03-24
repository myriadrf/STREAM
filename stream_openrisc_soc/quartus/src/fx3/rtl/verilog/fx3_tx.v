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
	 
      
