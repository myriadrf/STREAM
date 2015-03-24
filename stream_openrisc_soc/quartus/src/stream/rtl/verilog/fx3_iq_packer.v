module fx3_iq_packer
  (input clk,
   input 	 rst,
   //Slave Interface   
   input [23:0]  s_data_i,
   input 	 s_valid_i,
   output 	 s_ready_o,
   //Master Interface
   output [11:0] m_data_o,
   output 	 m_iqsel_o,
   output 	 m_valid_o,
   input 	 m_ready_i);

   reg 		  rst_r;
   
   reg 		  full;
   reg 		  idx;
   reg [23:0] 	  data;
   
   assign m_iqsel_o = idx;
   
   assign s_ready_o = ((!idx & !full) | (wrap)) & !rst_r;
   wire 		    wr = s_valid_i & s_ready_o;
   wire 		    rd = m_valid_o & m_ready_i;
   wire 		    wrap = idx & rd;
   
   assign m_data_o = data[idx*12+:12];
   assign m_valid_o = full;
 
   always @(posedge clk) begin

      if (wr & !rd)
	full <= 1'b1;
      else if (!wr & rd & wrap)
	full <= 1'b0;

      if (wr)
	 data <= s_data_i;

      if (rd) begin
	 if(wrap)
	   idx <= 1'b0;
	 else
	   idx <= !idx;
      end

      rst_r <= 1'b0;

      if (rst) begin
	 idx <= 1'b0;
	 full <= 1'b0;
	 rst_r <= 1'b1;
      end
   end
endmodule
