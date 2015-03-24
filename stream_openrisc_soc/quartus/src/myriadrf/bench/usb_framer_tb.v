module usb_framer_tb;
   localparam DW_IN = 24;
   localparam DW_OUT = 16;

   localparam WSB = 4;
   
   localparam PACKETS = 100;
   localparam PACKET_SIZE = 170;
   localparam SAMPLES = PACKETS*PACKET_SIZE;
   
   //Configuration registers
   localparam REG_ENABLE     = 0*WSB;
   localparam REG_START_ADDR = 1*WSB;
   localparam REG_BUF_SIZE   = 2*WSB;
   localparam REG_BURST_SIZE = 3*WSB;

   vlog_tb_utils vtu();
   vlog_functions utils();

   reg wb_clk = 1'b1;
   reg wb_rst = 1'b1;
   
   always #4 wb_clk <= !wb_clk;
   initial #100 wb_rst <= 1'b0;

   reg clk = 1'b1;
   reg rst = 1'b1;
   
   always #5 clk <= !clk;
   initial #100 rst <= 1'b0;

   //Wishbone memory interface
   wire [31:0] wb_m2s_data_adr;
   wire [31:0] wb_m2s_data_dat;
   wire [3:0]  wb_m2s_data_sel;
   wire        wb_m2s_data_we;
   wire        wb_m2s_data_cyc;
   wire        wb_m2s_data_stb;
   wire [2:0]  wb_m2s_data_cti;
   wire [1:0]  wb_m2s_data_bte;
   wire [31:0] wb_s2m_data_dat;
   wire        wb_s2m_data_ack;
   wire        wb_s2m_data_err;
   wire        wb_s2m_data_rty;

   wire        irq;
   
   //Wishbone configuration interface
   wire [31:0] wb_m2s_cfg_adr;
   wire [31:0] wb_m2s_cfg_dat;
   wire [3:0]  wb_m2s_cfg_sel;
   wire        wb_m2s_cfg_we;
   wire        wb_m2s_cfg_cyc;
   wire        wb_m2s_cfg_stb;
   wire [2:0]  wb_m2s_cfg_cti;
   wire [1:0]  wb_m2s_cfg_bte;
   wire [31:0] wb_s2m_cfg_dat;
   wire        wb_s2m_cfg_ack;
   wire        wb_s2m_cfg_err;
   wire        wb_s2m_cfg_rty;

   wire [31:0] stream_writer_data;
   wire        stream_writer_valid;
   wire        stream_writer_ready;

   wire [23:0] test_data_gen_data;
   wire        test_data_gen_valid;
   wire        test_data_gen_ready;

   wire [23:0] fifo_data;
   wire        fifo_valid;
   wire        fifo_ready;
   
   wire [DW_OUT-1:0] m_data;
   wire 	     m_valid;
   wire 	     m_ready;

   wb_bfm_master
     #(.MAX_BURST_LENGTH (1)) 
   wb_cfg
     (.wb_clk_i (wb_clk),
      .wb_rst_i (wb_rst),
      .wb_adr_o (wb_m2s_cfg_adr),
      .wb_dat_o (wb_m2s_cfg_dat),
      .wb_sel_o (wb_m2s_cfg_sel),
      .wb_we_o  (wb_m2s_cfg_we), 
      .wb_cyc_o (wb_m2s_cfg_cyc),
      .wb_stb_o (wb_m2s_cfg_stb),
      .wb_cti_o (wb_m2s_cfg_cti),
      .wb_bte_o (wb_m2s_cfg_bte),
      .wb_dat_i (wb_s2m_cfg_dat),
      .wb_ack_i (wb_s2m_cfg_ack),
      .wb_err_i (wb_s2m_cfg_err),
      .wb_rty_i (wb_s2m_cfg_rty));

   wb_bfm_memory
     #(.mem_size_bytes(SAMPLES*4),
       .rd_min_delay (0),
       .rd_max_delay (5))
   wb_ram0
     (//Wishbone Master interface
      .wb_clk_i (wb_clk),
      .wb_rst_i (wb_rst),
      .wb_adr_i	(wb_m2s_data_adr),
      .wb_dat_i	(wb_m2s_data_dat),
      .wb_sel_i	(wb_m2s_data_sel),
      .wb_we_i	(wb_m2s_data_we),
      .wb_cyc_i	(wb_m2s_data_cyc),
      .wb_stb_i	(wb_m2s_data_stb),
      .wb_cti_i	(wb_m2s_data_cti),
      .wb_bte_i	(wb_m2s_data_bte),
      .wb_dat_o	(wb_s2m_data_dat),
      .wb_ack_o	(wb_s2m_data_ack),
      .wb_err_o (wb_s2m_data_err));

   wb_stream_writer
     #(.FIFO_AW (7))
   wb_stream_writer0
     (.clk       (wb_clk),
      .rst       (wb_rst),
      //Stream data output
      .wbm_adr_o (wb_m2s_data_adr),
      .wbm_dat_o (wb_m2s_data_dat),
      .wbm_sel_o (wb_m2s_data_sel),
      .wbm_we_o  (wb_m2s_data_we),
      .wbm_cyc_o (wb_m2s_data_cyc),
      .wbm_stb_o (wb_m2s_data_stb),
      .wbm_cti_o (wb_m2s_data_cti),
      .wbm_bte_o (wb_m2s_data_bte),
      .wbm_dat_i (wb_s2m_data_dat),
      .wbm_ack_i (wb_s2m_data_ack),
      .wbm_err_i (wb_s2m_data_err),
      .wbm_rty_i (wb_s2m_data_rty),
      //FIFO interface
      .stream_m_data_o  (stream_writer_data),
      .stream_m_valid_o (stream_writer_valid),
      .stream_m_ready_i (stream_writer_ready),
      .stream_m_irq_o   (irq),
      .wbs_adr_i (wb_m2s_cfg_adr),
      .wbs_dat_i (wb_m2s_cfg_dat),
      .wbs_sel_i (wb_m2s_cfg_sel),
      .wbs_we_i  (wb_m2s_cfg_we), 
      .wbs_cyc_i (wb_m2s_cfg_cyc),
      .wbs_stb_i (wb_m2s_cfg_stb),
      .wbs_cti_i (wb_m2s_cfg_cti),
      .wbs_bte_i (wb_m2s_cfg_bte),
      .wbs_dat_o (wb_s2m_cfg_dat),
      .wbs_ack_o (wb_s2m_cfg_ack),
      .wbs_err_o (wb_s2m_cfg_err),
      .wbs_rty_o (wb_s2m_cfg_rty));

   test_data_generator test_data_gen
     (.clk (wb_clk),
      .rst (wb_rst),
      .m_data_o  (test_data_gen_data),
      .m_valid_o (test_data_gen_valid),
      .m_ready_i (test_data_gen_ready));
   
   stream_dual_clock_fifo
     #(.DW (24),
       .AW (8))
   fifo
     (.wr_clk (wb_clk),
      .wr_rst (wb_rst),
      .stream_s_data_i  ({stream_writer_data[27:16],stream_writer_data[11:0]}),
      .stream_s_valid_i (stream_writer_valid),
      .stream_s_ready_o (stream_writer_ready),
      
      .rd_clk    (clk),
      .rd_rst    (rst),
      .stream_m_data_o  (fifo_data),
      .stream_m_valid_o (fifo_valid),
      .stream_m_ready_i (fifo_ready));
   
   usb_framer
   dut
     (.clk (clk),
      .rst (rst),
      .resync (1'b0),
      .stream_s_data_i  (fifo_data),
      .stream_s_valid_i (fifo_valid),
      .stream_s_ready_o (fifo_ready),
      .stream_m_data_o  (m_data),
      .stream_m_valid_o (m_valid),
      .stream_m_ready_i (m_ready));

   stream_reader
     #(.WIDTH (DW_OUT),
       .MAX_BLOCK_SIZE (256))
   reader
     (.clk (clk),
      .stream_s_data_i  (m_data),
      .stream_s_valid_i (m_valid),
      .stream_s_ready_o (m_ready));
   
   real 			    read_rate;

   initial begin
      create_stimuli();
      init_mem();
      
      if($value$plusargs("read_rate=%f", read_rate)) begin
	 $display("Setting stream read rate to %0f", read_rate);
	 reader.rate=read_rate;
      end

      fork
	 run_dma();
	 stream_read();
      join
      $display("Done!");
      $finish;
   end

   reg [23:0] stimuli [0:SAMPLES-1];
   
   task create_stimuli;
      integer idx;
      integer stimidx;
      
      begin
	 for(idx=0 ; idx < SAMPLES ; idx=idx+1) begin
	    stimuli[idx] = idx;
	 end
	 /*for(idx=0 ; idx < SAMPLES ; idx=idx+4) begin
	    stimuli[idx+0] = {12'h7ff, 12'h000};
	    stimuli[idx+1] = {12'h000, 12'h7ff};
	    stimuli[idx+2] = {12'h800, 12'h000};
	    stimuli[idx+3] = {12'h000, 12'h800};
	 end*/
      end
   endtask

   task init_mem;
      integer 	      idx;
      integer 	      tmp;
      integer 	      seed;
      reg [31:0]      word;
      
      begin
	 word = 0;
	 for(idx = 0; idx < SAMPLES ; idx = idx + 1) begin
	    word[27:16] = stimuli[idx][23:12];
	    word[11:0]  = stimuli[idx][11:0];
	    wb_ram0.mem[idx] = word;
	 end
      end
   endtask

   task wb_write;
      input [31:0] addr_i;
      input [31:0] data_i;

      reg 		err;
      begin
	 wb_cfg.write(addr_i, data_i, 4'hf, err);
	 if(err)
	   $error("Error writing to config interface address 0x%8x", addr_i);
      end
   endtask

   task run_dma;
      integer idx;
      begin
	 for(idx=0;idx<PACKETS;idx=idx+1) begin
	    wb_write(REG_START_ADDR, idx*PACKET_SIZE*WSB);
	    wb_write(REG_BUF_SIZE  , PACKET_SIZE*4);
	    wb_write(REG_BURST_SIZE, PACKET_SIZE/5);
	    //Enable stream writer
	    wb_write(REG_ENABLE, 1);
	    //Wait for interrupt
	    @(posedge irq);
	    //Clear interrupt
	    wb_write(REG_ENABLE, 2);
	 end // for (idx=0;idx<PACKETS;idx=idx+1)
      end
   endtask

   task stream_read;
      integer 	       idx;
      integer 	       pktcnt;
      reg [16*256-1:0] packet;
      reg [23:0]       sample0;
      reg [23:0]       sample1;
      reg [47:0]       chunk;
      reg [23:0]       expected0;
      reg [23:0]       expected1;
      
      begin
	 for(pktcnt=0 ; pktcnt<PACKETS ; pktcnt=pktcnt+1) begin
	    reader.read_block(packet, 256);
	    for(idx=0 ; idx < (256-1)/3 ; idx=idx+1) begin
	       chunk = {packet[16*(3*idx+2)+:16],
                        packet[16*(3*idx+1)+:16],
                        packet[16*(3*idx+0)+:16]};
	       
	       sample0 = chunk[47:24];
	       sample1 = chunk[23:0];
/*	       $display("%12x", chunk);
	       $display("%3x %3x", sample0[23:12], sample0[11:0]);
	       $display("%3x %3x", sample1[23:12], sample1[11:0]);*/
	       expected0 = stimuli[pktcnt*PACKET_SIZE+idx*2+0];
	       expected1 = stimuli[pktcnt*PACKET_SIZE+idx*2+1];
	       
	       if(sample0 !== expected0) begin
		  $display("Error on packet %0d index %0d",pktcnt, idx);
		  $display("Expected 0x%4x. Got 0x%4x", expected0, sample0);
		  #100 $finish;
	       end
	       if(sample1 !== expected1) begin
		  $display("Error on packet %0d index %0d",pktcnt, idx+1);
		  $display("Expected 0x%4x. Got 0x%4x", expected1, sample1);
		  #100 $finish;
	       end

	       
	    end
	    sample0 = packet[16*255+:16];
	    expected0 = {pktcnt[7:0],8'ha0};
	    if (sample0 !== expected0) begin
	       $display("Error on packet %0d index %0d",pktcnt, 255);
	       $display("Expected 0x%4x. Got 0x%4x", expected0, sample0);
	       #100 $finish;
	    end
	    utils.progress_bar("Completed packet", pktcnt+1, PACKETS);
	 end
      end
   endtask
		
endmodule
