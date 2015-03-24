#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <limits.h>
#include <wb_streamer.h>
#include <or1k-support.h>

#define TX_STREAMER_IRQ		30
#define RX_STREAMER_IRQ		31
#define MYRIADRF_BASE 0x95000000
#define TX_STREAMER_BASE	MYRIADRF_BASE+0x100
#define RX_STREAMER_BASE	MYRIADRF_BASE+0x200

#define TX_RX_MEM_BASE 0x4000000

#define TX_SAMPLES 512
#define RX_SAMPLES 32

#define TX_SRC = 0
//static void *tx_rx_mem = (void *)TX_RX_MEM_BASE;
  
uint32_t tx_buf[TX_SAMPLES] __attribute__((aligned(0x100)));
uint32_t *rx_buf = (uint32_t *)TX_RX_MEM_BASE;

//static void *tx_streamer = (void *)TX_STREAMER_BASE;
static void *rx_streamer = (void *)RX_STREAMER_BASE;

uint32_t ampl;

void streamer_isr(void *streamer)
{
  wb_streamer_ctrl(streamer, STREAMER_CTRL_STAT_ENABLE | STREAMER_CTRL_STAT_IRQ);
}

void rx_streamer_isr(void *streamer)
{
  int idx;
  uint32_t amplitude = 0;
  uint16_t i;
  uint16_t q;
  uint32_t sample;
  for(idx=0;idx<RX_SAMPLES;idx++) {
    sample = rx_buf[idx];
    i = abs((int16_t)((sample >> 16) & 0xffff));
    q = abs((int16_t)(sample & 0xffff));
    
    //i = abs((sample >> 16) & 0xffff);
    //q = abs(sample & 0xffff);
    //i=a, q=b
    if (i<=q)
      amplitude += (i>>1)+q;
    else
      amplitude += (q>>1)+i;
  }

  ampl = amplitude;
  //*((volatile uint8_t *)(0x91000000)) = (amplitude >> 10);
  //*((volatile uint8_t *)(0xf0000100)) = (amplitude);
    
  wb_streamer_ctrl(streamer, STREAMER_CTRL_STAT_ENABLE | STREAMER_CTRL_STAT_IRQ);
}
int main(void)
{
  printf("LMS DMA receive example\n");
  or1k_interrupt_handler_add(RX_STREAMER_IRQ, rx_streamer_isr, rx_streamer);
  or1k_interrupt_enable(RX_STREAMER_IRQ);

  or1k_interrupts_enable();
  //printf("Interrupts enabled\n");
  return(0);
  //Set up GPIO
  //*((volatile uint8_t *)(0x91000001)) = 0xff;
  /*  
  for(i = 0; i < TX_SAMPLES; i+=32) {
    tx_buf[0]  = 0x000003ff;
    tx_buf[1]  = 0x00c703eb;
    tx_buf[2]  = 0x018703b1;
    tx_buf[3]  = 0x02380352;
    tx_buf[4]  = 0x02d302d3;
    tx_buf[5]  = 0x03520238;
    tx_buf[6]  = 0x03b10187;
    tx_buf[7]  = 0x03eb00c7;
    tx_buf[8]  = 0x03ff0000;
    tx_buf[9]  = 0x03eb0f39;
    tx_buf[10] = 0x03b10e79;
    tx_buf[11] = 0x03520dc8;
    tx_buf[12] = 0x02d30d2d;
    tx_buf[13] = 0x02380cae;
    tx_buf[14] = 0x01870c4f;
    tx_buf[15] = 0x00c70c15;
    tx_buf[16] = 0x00000c01;
    tx_buf[17] = 0x0f390c15;
    tx_buf[18] = 0x0e790c4f;
    tx_buf[19] = 0x0dc80cae;
    tx_buf[20] = 0x0d2d0d2d;
    tx_buf[21] = 0x0cae0dc8;
    tx_buf[22] = 0x0c4f0e79;
    tx_buf[23] = 0x0c150f39;
    tx_buf[24] = 0x0c010000;
    tx_buf[25] = 0x0c1500c7;
    tx_buf[26] = 0x0c4f0187;
    tx_buf[27] = 0x0cae0238;
    tx_buf[28] = 0x0d2d02d3;
    tx_buf[29] = 0x0dc80352;
    tx_buf[30] = 0x0e7903b1;
    tx_buf[31] = 0x0f3903eb;}

  wb_streamer_set_range(tx_streamer, tx_buf, TX_SAMPLES*4);
  wb_streamer_set_burst_size(tx_streamer, 8);
  */
  wb_streamer_set_range(rx_streamer, rx_buf, RX_SAMPLES*4);
  wb_streamer_set_burst_size(rx_streamer, 8);

  printf("Configured receive DMA");
  *((volatile uint32_t *)(MYRIADRF_BASE + 0x00)) = 0x1; //Set TX Source
  printf("Set TX source to internal data generator");
  *((volatile uint32_t *)(MYRIADRF_BASE + 0x08)) = 0x1; //Set loopback
  printf("Loopback enabled\n");

  
  //wb_streamer_enable(tx_streamer);
  wb_streamer_enable(rx_streamer);
  printf("RX DMA enabled\n");

  for (;;)
    printf("%zu\n",ampl);

  return 0;
}
