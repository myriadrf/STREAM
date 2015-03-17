//TODO: Add function to convert between 32 bit words and bytes
module wb_ram_generic
  #(parameter depth=256,
    parameter memfile = "")
  (input clk,
   input  we,
   input [31:0]  din,
   input [$clog2(depth)-1:0] 	 waddr,
   input [$clog2(depth)-1:0] 	 raddr,
   output reg [31:0] dout);

   reg [31:0] 	 mem [0:depth-1];
   
   always @(posedge clk) begin
      if (we) mem[waddr] <= din;
      dout <= mem[raddr];
   end

   generate
      initial
	if(memfile != "") begin
	   $display("Preloading %m from %s", memfile);
	   $readmemh(memfile, mem);
	end
   endgenerate

endmodule
