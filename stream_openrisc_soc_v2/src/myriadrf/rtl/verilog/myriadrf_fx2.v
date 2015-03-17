module myriadrf_fx2
  (input clk,
   input 	 rst,
   input 	 resync,
   //RX Data stream   
   input [23:0]  s_data_i,
   input 	 s_valid_i,
   output 	 s_ready_o,
   //FX2 Interface
   input 	 flag_b,
   output 	 slwr,
   output 	 slrd,
   output [15:0] fd_o,
   output 	 pktend,
   output [1:0]  fifoadr,
   output 	 sloe);

   wire [15:0] 	 usb_framer_data;
   wire 	 usb_framer_valid;
   wire 	 usb_framer_last;
   wire 	 usb_framer_ready;
   
   usb_framer framer0
     (.clk (clk),
      .rst (rst),
      .resync (resync),
      .stream_s_data_i  (s_data_i),
      .stream_s_valid_i (s_valid_i),
      .stream_s_ready_o (s_ready_o),
      .stream_m_data_o  (usb_framer_data),
      .stream_m_valid_o (usb_framer_valid),
      .stream_m_last_o  (usb_framer_last),
      .stream_m_ready_i (usb_framer_ready));

   fx2 fx20
     (.clk     (clk),
      .rst     (rst | resync), //FIXME Add resync port
      //Stream Interface
      .stream_s_data_i  (usb_framer_data),
      .stream_s_valid_i (usb_framer_valid),
      .stream_s_last_i  (usb_framer_last),
      .stream_s_ready_o (usb_framer_ready),
      //GPIF Interface
      .flag_b  (flag_b),
      .slwr    (slwr),
      .slrd    (slrd),
      .fd_o    (fd_o),
      .pktend  (pktend),
      .slcs    (),
      .fifoadr (fifoadr),
      .sloe    (sloe));
endmodule
