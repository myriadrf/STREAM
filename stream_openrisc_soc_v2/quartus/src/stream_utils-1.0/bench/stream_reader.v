module stream_reader
  #(
    parameter WIDTH = 0,
    parameter MAX_BLOCK_SIZE = 1024)
   (
    input 	      clk,
    input [WIDTH-1:0] stream_s_data_i,
    output reg 	      stream_s_ready_o = 1'b0,
    input 	      stream_s_valid_i);

   real 	      rate = 0.5;
   integer 	      seed = 0;

   time 	      timeout = 0;
   reg 		      err_timeout = 0;

   task read_word;
      output [WIDTH-1:0] data_o;

      reg 		 rd;
      real 		 randval;
      time 		 t0;
      
      begin
	 stream_s_ready_o = 1'b0;
	 rd = 1'b0;
	 t0 = $time;

	 while((!stream_s_valid_i | !stream_s_ready_o) & !err_timeout) begin
	    randval = $dist_uniform(seed, 0, 1000) / 1000.0;
	    rd = (randval <= rate);

	    stream_s_ready_o <= rd;

	    @(posedge clk);
	    data_o = stream_s_data_i;
	    if(timeout > 0)
	      err_timeout = ($time-t0) > timeout;
	 end
	 stream_s_ready_o <= 1'b0;
	 if(err_timeout)
	   $error("%0d : Timeout in FIFO reader", $time);
	 err_timeout = 1'b0;
      end
   endtask
   
   task read_block;
      output reg [WIDTH*MAX_BLOCK_SIZE-1:0] data_o;
      input integer 			    length_i;
      
      integer 			    index;
      reg [WIDTH-1:0] 		    word;
      
      begin
	 //Cap rate to [0.0-1.0]
	 if(rate > 1.0) rate = 1.0;
	 if(rate < 0.0) rate = 0.0;

	 index = 0;
	 while(index < length_i) begin
	    read_word(word);
	    //$display("%0d : Read word 0x%8x", $time, word);
	    data_o[index*WIDTH+:WIDTH] = word;
	    index = index + 1;
	 end // while (index < length_i)
      end
   endtask
   
endmodule
