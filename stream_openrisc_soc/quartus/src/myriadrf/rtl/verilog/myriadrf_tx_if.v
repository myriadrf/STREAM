module myriadrf_tx_if
  (input 	 clk,
   input 	 rst,
   input [23:0]  s_data_i,
   input 	 s_valid_i,
   output 	 s_ready_o,
   output [11:0] txd,
   output reg 	 txiqsel);
   
   assign txd = txiqsel ? s_data_i[11:0] : s_data_i[23:12];
   assign s_ready_o = txiqsel;
   
  always @(posedge clk) begin
     txiqsel   <= !txiqsel;
     if (rst)
       txiqsel <= 1'b0;
  end
endmodule
