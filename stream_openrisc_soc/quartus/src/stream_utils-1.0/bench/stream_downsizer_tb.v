module stream_downsizer_tb;
   localparam DW_OUT = 16;
   localparam SCALE = 3;
   localparam DW_IN = DW_OUT*SCALE;

   localparam WORDS = 5461;
   
   vlog_tb_utils vtu();

   reg clk = 1'b1;
   reg rst = 1'b1;
   
   always #5 clk <= !clk;
   initial #100 rst <= 1'b0;


   wire [DW_IN-1:0] s_data;
   wire 	    s_valid;
   wire 	    s_ready;
   
   wire [DW_OUT-1:0] m_data;
   wire 	     m_valid;
   wire 	     m_ready;

   stream_writer
     #(.WIDTH (DW_IN),
       .MAX_BLOCK_SIZE (WORDS))
   writer
     (.clk (clk),
      .stream_m_data_o  (s_data),
      .stream_m_valid_o (s_valid),
      .stream_m_ready_i (s_ready));

   stream_reader
     #(.WIDTH (DW_OUT),
       .MAX_BLOCK_SIZE (WORDS*SCALE))
   reader
     (.clk (clk),
      .stream_s_data_i  (m_data),
      .stream_s_valid_i (m_valid),
      .stream_s_ready_o (m_ready));

   
   stream_downsizer
     #(.DW_OUT (DW_OUT),
       .SCALE  (SCALE))
   dut
     (.clk (clk),
      .rst (rst),
      .s_data_i  (s_data),
      .s_valid_i (s_valid),
      .s_ready_o (s_ready),
      .m_data_o  (m_data),
      .m_valid_o (m_valid),
      .m_ready_i (m_ready));

   reg [DW_IN*WORDS-1:0] expected;
   reg [DW_IN*WORDS-1:0] received;

   integer 		 i;
   
   real 			    write_rate;
   real 			    read_rate;

   initial begin
      create_stimuli();
      
      if($value$plusargs("write_rate=%f", write_rate)) begin
	 $display("Setting stream write rate to %0f", write_rate);
	 writer.rate=write_rate;
      end

      if($value$plusargs("read_rate=%f", read_rate)) begin
	 $display("Setting stream read rate to %0f", read_rate);
	 reader.rate=read_rate;
      end

      fork
	 begin
	    writer.write_block(expected, WORDS);
	    $display("Writer done");
	 end
	 begin
	    reader.read_block(received, WORDS*SCALE);
	    $display("Reader done");
	 end
      join

      verify();
      $finish;
   end


   task create_stimuli;
      integer idx;
      integer tmp;
      integer seed;
      reg [47:0] tmp2;
      
      
      begin
	 for(idx=0 ; idx<WORDS ; idx=idx+1) begin
	    tmp = $random(seed);
	    tmp2[31:0] = tmp;
	    tmp = $random(seed);
	    tmp2[47:32] = tmp[15:0];
	    
	    expected[DW_IN*idx+:DW_IN] = tmp2[DW_IN-1:0];
	 end
      end
   endtask

   task verify;
      integer idx;
      reg [DW_OUT-1:0] expw;
      reg [DW_OUT-1:0] recw;
      reg 	       passed;
      
      begin
	 passed = 1'b1;
	 for(idx=0 ; idx<WORDS*SCALE ; idx=idx+1) begin
	    expw = expected[DW_OUT*idx+:DW_OUT];
	    recw = expected[DW_OUT*idx+:DW_OUT];
	    
	    if(expw !== recw) begin
	       $display("Expected 0x%4x. Got 0x%4x");
	       passed = 1'b0;
	    end
	 end
	 if(passed)
	   $display("Test passed");
	 else
	   $display("Test failed");
      end
   endtask
   
endmodule
