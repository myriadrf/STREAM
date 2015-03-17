module stream_writer
  #(
    parameter WIDTH = 0,
    parameter MAX_BLOCK_SIZE = 1024)
   (
    input 		   clk,
    output reg [WIDTH-1:0] stream_m_data_o,
    output reg 		   stream_m_valid_o = 1'b0,
    input 		   stream_m_ready_i);

   real 		   rate = 0.5;
   integer 		   seed = 0;

   initial begin
      rate = 0.5;
   end
   
   task write_word;
      input [WIDTH-1:0] word_i;
      
      reg 		wr;
      real 		randval;
      begin
	 stream_m_valid_o = 1'b0;

	 randval = $dist_uniform(seed, 0, 1000) / 1000.0;
	 wr = (randval <= rate);

	 stream_m_data_o <= word_i;

	 while(!wr) begin
	    randval = $dist_uniform(seed, 0, 1000) / 1000.0;
	    wr = (randval <= rate);
	    @(posedge clk);
	 end
	 stream_m_valid_o <= 1'b1;

	 wr = 1'b0;
	 while(!wr) begin
	    wr = stream_m_ready_i;
	    @(posedge clk);
	 end
	 stream_m_valid_o <= 1'b0;
      end
   endtask
   
	 
      
   task write_block;
      input [WIDTH*MAX_BLOCK_SIZE-1:0] data_i;
      input integer 		       length_i;
      
      integer 			    index;
      
      begin
	 //Cap rate to [0.0-1.0]
	 if(rate > 1.0) rate = 1.0;
	 if(rate < 0.0) rate = 0.0;

	 index = 0;
	 
	 while(index < length_i) begin
	    write_word(data_i[index*WIDTH+:WIDTH]);
	    index = index + 1;
	 end
      end
   endtask
   
endmodule
