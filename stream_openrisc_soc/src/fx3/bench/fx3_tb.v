module fx3_tb;

   vlog_tb_utils vtu();

   reg clk = 1'b1;
   reg rst = 1'b1;
   
   always #5 clk <= !clk;
   initial #100 rst <= 1'b0;

   wire [15:0] framer_data;
   wire        framer_valid;
   wire        framer_last;
   wire        framer_ready;
   
/*   usb_framer
     framer0
     (.clk (clk),
      .rst (rst),
      .resync (1'b0),
      /*.s_data_i  (s_data),
      .s_valid_i (s_valid),
      .s_ready_o (s_ready),*/
      .stream_m_data_o  (framer_data),
      .stream_m_valid_o (framer_valid),
      .stream_m_last_o  (framer_last),
      .stream_m_ready_i (framer_ready));
*/
   wire [15:0] fd_o;
   
   fx3_tx tx
     (.clk (clk),
      .rst (rst),
      //Stream input
      .stream_s_data_i  (framer_data),
      .stream_s_valid_i (framer_valid),
      .stream_s_last_i  (framer_last),
      .stream_s_ready_o (framer_ready),
      //FX3 output
      .fx3_wr_o   (fx3_wr),
      .fx3_data_o (fd_o),
      .fx3_full_i (1'b0/*!flag_b*/));
   
endmodule
