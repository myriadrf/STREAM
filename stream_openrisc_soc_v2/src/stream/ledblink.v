module ledblink
  (input clk,
//   input      rst,
   output reg [7:0] leds);
   integer cnt;
   
   always @(posedge clk) begin
      cnt <= cnt + 1;
      leds <= cnt[23:16];
      leds[0] <= 1'b0;
      
/*      if (rst)
	led <= 1'b1;*/
   end
endmodule
   
