module usb_packetizer
  (input clk,
   input rst,
   input [15:0]  s_data_i,
   input 	 s_valid_i,
   output 	 s_ready_o,
   output [15:0] m_data_o,
   output 	 m_valid_o,
   output 	 m_last_o,
   input 	 m_ready_i);

   reg [7:0] cnt;
   reg [7:0] pktcnt;

   wire [15:0] enddata = {pktcnt, 8'b10100000};
   assign s_ready_o = m_ready_i & !m_last_o;


   assign m_data_o  = m_last_o ? enddata : s_data_i;
   assign m_valid_o = s_valid_i | m_last_o;
   assign m_last_o  = (cnt == 255);
   
   always @(posedge clk) begin
      if (m_ready_i & m_valid_o) begin
	 if(m_last_o) begin
	    cnt <= 0;
	    pktcnt <= pktcnt + 8'd1;
	 end else
	   cnt <= cnt + 8'd1;
      end
      
      if (rst) begin
	 cnt <= 0;
	 pktcnt <= 0;
      end
   end

endmodule
