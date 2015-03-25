/*
* Streamer core (convert data streams to Wishbone transactions)
* Copyright (C) 2015 Lime Microsystems
*
* This library is free software; you can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public
* License as published by the Free Software Foundation; either
* version 2.1 of the License, or (at your option) any later version.
*
* This library is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public
* License along with this library; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/
module wb_stream_reader_tb;

   localparam FIFO_AW = 5;
   
   localparam MAX_BURST_LEN = 32;

   localparam WB_AW = 32;
   localparam WB_DW = 32;
   localparam WSB = WB_DW/8; //Word size in bytes
   
   localparam MEM_SIZE = 128*WSB; //Memory size in bytes

   localparam MAX_BUF_SIZE = 32*WSB; //Buffer size in bytes
   localparam BURST_SIZE = 8;

   //Configuration registers
   localparam REG_CSR        = 0*WSB;
   localparam REG_START_ADDR = 1*WSB;
   localparam REG_BUF_SIZE   = 2*WSB;
   localparam REG_BURST_SIZE = 3*WSB;

   reg clk = 1'b1;
   reg rst = 1'b1;
   
   always#10 clk <= ~clk;
   initial #100 rst <= 0;

   vlog_tb_utils vlog_tb_utils0();
   vlog_functions utils();

   //Wishbone memory interface
   wire [WB_AW-1:0]    wb_m2s_data_adr;
   wire [WB_DW-1:0]    wb_m2s_data_dat;
   wire [WB_DW/8-1:0]  wb_m2s_data_sel;
   wire 	       wb_m2s_data_we;
   wire 	       wb_m2s_data_cyc;
   wire 	       wb_m2s_data_stb;
   wire [2:0] 	       wb_m2s_data_cti;
   wire [1:0] 	       wb_m2s_data_bte;
   wire [WB_DW-1:0]    wb_s2m_data_dat;
   wire 	       wb_s2m_data_ack;
   wire 	       wb_s2m_data_err;
   wire 	       wb_s2m_data_rty;

   //Wishbone configuration interface
   wire [WB_AW-1:0]    wb_m2s_cfg_adr;
   wire [WB_DW-1:0]    wb_m2s_cfg_dat;
   wire [WB_DW/8-1:0]  wb_m2s_cfg_sel;
   wire 	       wb_m2s_cfg_we;
   wire 	       wb_m2s_cfg_cyc;
   wire 	       wb_m2s_cfg_stb;
   wire [2:0] 	       wb_m2s_cfg_cti;
   wire [1:0] 	       wb_m2s_cfg_bte;
   wire [WB_DW-1:0]    wb_s2m_cfg_dat;
   wire 	       wb_s2m_cfg_ack;
   wire 	       wb_s2m_cfg_err;
   wire 	       wb_s2m_cfg_rty;

   //Stream interface
   wire [WB_DW-1:0] stream_data;
   wire 	    stream_valid;
   wire 	    stream_ready;
   wire 	    irq;

   wb_stream_reader
     #(.FIFO_AW (FIFO_AW),
       .MAX_BURST_LEN (MAX_BURST_LEN))
   dut
     (.clk       (clk),
      .rst       (rst),
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
      .stream_s_data_i  (stream_data),
      .stream_s_valid_i (stream_valid),
      .stream_s_ready_o (stream_ready),
      .irq_o            (irq),
      //Control Interface
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

   stream_writer
     #(.WIDTH (WB_DW),
       .MAX_BLOCK_SIZE (MAX_BUF_SIZE/WSB))
   writer
     (.clk (clk),
      .stream_m_data_o  (stream_data),
      .stream_m_valid_o (stream_valid),
      .stream_m_ready_i (stream_ready));

   wb_bfm_memory
     #(.mem_size_bytes(MEM_SIZE),
       .rd_min_delay (0),
       .rd_max_delay (5))
   wb_ram0
     (//Wishbone Master interface
      .wb_clk_i (clk),
      .wb_rst_i (rst),
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

   wb_bfm_master
     #(.MAX_BURST_LENGTH (1)) 
   wb_cfg
     (.wb_clk_i (clk),
      .wb_rst_i (rst),
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

   integer 	       transaction;
   integer 	       TRANSACTIONS;
   reg 		       VERBOSE = 0;
   
   initial begin
      if(!$value$plusargs("transactions=%d", TRANSACTIONS))
	TRANSACTIONS = 1000;
      if($test$plusargs("verbose"))
	VERBOSE = 1;
      
      @(negedge rst);
      @(posedge clk);

      //FIXME: Implement wb slave config IF
      
      writer.rate = 0.1;

      for(transaction=1;transaction<=TRANSACTIONS;transaction=transaction+1) begin
	 test_main();
	 utils.progress_bar("Completed transaction", transaction, TRANSACTIONS);
      end
      $display("All done");
      $finish;
   end // initial begin

   reg [WB_DW-1:0] stimuli [0:MAX_BUF_SIZE/WSB-1];
   
   task test_main;
      integer start_adr;
      integer buf_size;
      integer burst_len;
      integer 		       idx;
      integer 		       tmp;
      integer 		       seed;
      reg [WB_DW*8*WSB-1:0]    data_block;
      
      begin
	 //FIXME: Burst length must be > 1
	 burst_len = $dist_uniform(seed, 2, MAX_BURST_LEN/WSB);

	 //FIXME: buf_size currently needs to be a multiple of burst_size
	 //buf_size   = $dist_uniform(seed,1,MAX_BUF_SIZE/WSB)*WSB;
	 buf_size = burst_len*WSB*$dist_uniform(seed, 1, MAX_BUF_SIZE/(burst_len*WSB));

	 start_adr = $dist_uniform(seed,0,(MEM_SIZE-buf_size)/WSB)*WSB;

	 //Generate stimuli
	 for(idx=0 ; idx<buf_size/WSB ; idx=idx+1) begin
	    tmp = $random(seed);
	    stimuli[idx] = tmp[WB_DW-1:0];
	 end

	 cfg_write(REG_START_ADDR, start_adr); //Set start address
	 cfg_write(REG_BUF_SIZE  , buf_size);//Set buffer size
	 cfg_write(REG_BURST_SIZE, burst_len);//Set burst length
	 cfg_write(REG_CSR, 1); //Start DMA
	 
	 //Start transmit and receive transactors
	 
	 fifo_write(buf_size/WSB);
	 @(posedge irq);
	 verify(start_adr, buf_size);
	 cfg_write(REG_CSR, 2); //Clear IRQ
      end
   endtask
   
   task cfg_write;
      input [WB_AW-1:0] addr_i;
      input [WB_DW-1:0] data_i;

      reg 		err;
      begin
	 wb_cfg.write(addr_i, data_i, 4'hf, err);
	 if(err)
	   $error("Error writing to config interface address 0x%8x", addr_i);
      end
   endtask

   task fifo_write;
      input integer len;
      integer idx;
      
      begin
	 
	 for(idx=0;idx < len ; idx=idx+1) begin
	    writer.write_word(stimuli[idx]);
	 end
      end
   endtask
	 
   task verify;
      input integer start_adr;
      input integer buf_size;
      
      integer 	      idx;
      reg [WB_DW-1:0] expected;
      reg [WB_DW-1:0] received;
      
      reg 	      err;
      
      begin
	 for(idx = 0; idx < buf_size/WSB ; idx = idx + 1) begin
	    expected = stimuli[idx];
	    received = wb_ram0.mem[start_adr/WSB+idx];
	       
	    if(received !== expected)
	      $error("%m : Verify failed at address 0x%8x. Expected 0x%8x : Got 0x%8x",
		     start_adr+idx*WSB,
		     expected,
		     received);
	 end
      end
   endtask
   
endmodule
