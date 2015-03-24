module test_data_generator
  (input clk,
   input 	     rst,
   output reg [23:0] m_data_o,
   output reg 	     m_valid_o,
   input 	     m_ready_i);

   //Test data generator
   reg [23:0] sine [0:3];
   reg [1:0] idx;

   initial begin
      /*sine[0] = {12'h012, 12'h345};
      sine[1] = {12'h678, 12'h9ab};
      sine[2] = {12'hccc, 12'hddd};
      sine[3] = {12'heee, 12'hfff};*/
      sine[0] = {12'h7ff, 12'h000};
      sine[1] = {12'h000, 12'h7ff};
      sine[2] = {12'h800, 12'h000};
      sine[3] = {12'h000, 12'h800};
   end
   always @(posedge clk) begin
      m_valid_o <= 1'b1;
      if (m_ready_i) begin
	 m_data_o <= sine[idx];
	 idx <= idx+2'd1;
      end
      if (rst) begin
	 idx <= 2'd0;
	 m_valid_o <= 1'b0;
      end	 
   end
endmodule
