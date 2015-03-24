module stream_dual_clock_fifo_tb;
   localparam DW = 16;
   localparam AW = 4;
   
   localparam WORDS = 4800;
   
   vlog_tb_utils vtu();

   reg wr_clk = 1'b1;
   reg wr_rst = 1'b1;
   
   always #5 wr_clk <= !wr_clk;
   initial #100 wr_rst <= 1'b0;

   reg rd_clk = 1'b1;
   reg rd_rst = 1'b1;

   always #5 rd_clk <= !rd_clk;
   initial #100 rd_rst <= 1'b0;


   wire [DW-1:0] dut_in_data;
   wire 	 dut_in_valid;
   wire 	 dut_in_ready;
   
   wire [DW-1:0] dut_out_data;
   wire 	 dut_out_valid;
   wire 	 dut_out_ready;

   stream_writer
     #(.WIDTH (DW),
       .MAX_BLOCK_SIZE (WORDS))
   writer
     (.clk (wr_clk),
      .stream_m_data_o  (dut_in_data),
      .stream_m_valid_o (dut_in_valid),
      .stream_m_ready_i (dut_in_ready));

   stream_reader
     #(.WIDTH (DW),
       .MAX_BLOCK_SIZE (WORDS))
   reader
     (.clk (rd_clk),
      .stream_s_data_i  (dut_out_data),
      .stream_s_valid_i (dut_out_valid),
      .stream_s_ready_o (dut_out_ready));
   
   stream_dual_clock_fifo
     #(.DW (DW),
       .AW (AW))
   dut
     (.wr_clk (wr_clk),
      .wr_rst (wr_rst),
      .stream_s_data_i  (dut_in_data),
      .stream_s_valid_i (dut_in_valid),
      .stream_s_ready_o (dut_in_ready),

      .rd_clk    (rd_clk),
      .rd_rst    (rd_rst),
      .stream_m_data_o  (dut_out_data),
      .stream_m_valid_o (dut_out_valid),
      .stream_m_ready_i (dut_out_ready));

   reg [DW-1:0] expected [0:WORDS-1];

   //integer 	   i;
   
   real 	      write_rate;
   real 	      read_rate;

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
	    @(posedge wr_clk);
	    stream_write();
	 end
	 begin
	    stream_read();
	    $display("Reader done");
	 end
      join

      //verify();
      $finish;
   end

   task stream_write;
      integer idx;
      begin
	 for(idx=0 ; idx<WORDS ; idx=idx+1)
	    writer.write_word(expected[idx]);
	 $display("Writer done");
      end
   endtask

   task stream_read;
      reg [DW-1:0] word;
      integer 	   idx;
      begin
	 for(idx=0 ; idx<WORDS ; idx=idx+1) begin
	    reader.read_word(word);
	    if(word !== expected[idx]) begin
	       $display("Error on index %0d",idx);
	       $display("Expected 0x%4x. Got 0x%4x", expected[idx], word);
	       #100 $finish;
	    end
	 end
      end
   endtask
   
   task create_stimuli;
      integer idx;
      integer tmp;
      integer seed;
      
      begin
	 for(idx=0 ; idx<WORDS ; idx=idx+1) begin
	    tmp = $random(seed);
	    expected[idx] = tmp [DW-1:0];
	 end
      end
   endtask
endmodule
