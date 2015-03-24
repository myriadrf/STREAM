module fx3_tx_fifo
  #(parameter AW = 0)
   (input 	  clk,
    input 	  rst,
    input [15:0]  s_data_i, 
    input 	  s_valid_i,
    output 	  s_ready_o,

    output [15:0] m_data_o,
    output 	  m_valid_o,
    input 	  m_ready_i);

   wire 	  fifo_rd_en;
   wire [15:0] 	  fifo_dout;
   wire 	  fifo_empty;
   wire 	  full;

   reg 		  inc_cnt;
   reg 		  dec_cnt;
   reg [AW:0] 	  cnt;

   wire 	  m_valid;
   wire 	  m_ready;

   wire 	  watermark;
   
   assign s_ready_o = !full;

   // orig_fifo is just a normal (non-FWFT) synchronous or asynchronous FIFO
   fifo
     #(.DEPTH_WIDTH (AW),
       .DATA_WIDTH  (16))
   fifo0
     (
       .clk       (clk),
       .rst       (rst),       
       .rd_en_i   (fifo_rd_en),
       .rd_data_o (fifo_dout),
       .empty_o   (fifo_empty),
       .wr_en_i   (s_valid_i),
       .wr_data_i (s_data_i),
       .full_o    (full));

   stream_fifo_if
     #(.DW (16))
   stream_if
   (.clk          (clk),
    .rst          (rst),
    .fifo_data_i  (fifo_dout),
    .fifo_rd_en_o (fifo_rd_en),
    .fifo_empty_i (fifo_empty),
    .m_data_o     (m_data_o),
    .m_valid_o    (m_valid),
    .m_ready_i    (m_ready));

   always @(posedge clk) begin
      if(inc_cnt & (cnt == WATERMARK))
	watermark <= 1'b1;
      else if (dec_cnt & (cnt == 1))
	watermark <= 1'b0;
   end

   assign m_valid_o = m_valid & watermark;
   assign m_ready = m_ready_i & watermark;
   
   always @(posedge clk) begin
      inc_cnt = s_valid_i & s_ready_o;
      dec_cnt = m_valid & m_ready;

      if(inc_cnt & !dec_cnt)
	cnt <= cnt + 1;
      else if(dec_cnt & !inc_cnt)
	cnt <= cnt - 1;
      
      if (rst)
	cnt <= 0;
   end
endmodule
