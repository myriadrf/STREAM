module myriadrf_rx_if
  (input 	 clk,
   input 	    rst,
   output reg [23:0] m_data_o,
   output reg 	    m_valid_o,
   input 	    m_ready_i,
   input [11:0]     rxd,
   input 	    rxiqsel);

   //Note: Receiever must always be ready.
   //A deasserted m_ready_i equals a lost data
  always @(posedge clk) begin
     m_valid_o <= rxiqsel;
     
     if (rxiqsel)
       m_data_o[11:0] <= rxd;
     else
       m_data_o[23:12] <= rxd;

     if (rst)
       m_valid_o <= 1'b0;
  end
endmodule
