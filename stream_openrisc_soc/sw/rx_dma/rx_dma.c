////////////////////////////////////////////////////////////////////////
// Stream OpenRISC Linux example
//
// Copyright (c) 2015-2015 Lime Microsystems
// SPDX-License-Identifier: Apache-2.0
// http://www.apache.org/licenses/LICENSE-2.0
////////////////////////////////////////////////////////////////////////
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <limits.h>

#include <myriadrf.h>
#include <wb_streamer.h>
#include <or1k-support.h>

#define TX_STREAMER_IRQ  30
#define RX_STREAMER_IRQ	 31
#define MYRIADRF_BASE    0x95000000
#define TX_RX_MEM_BASE    0x4000000

#define TX_STREAMER_BASE MYRIADRF_BASE+0x100
#define RX_STREAMER_BASE MYRIADRF_BASE+0x200


#define TX_SAMPLES 512
#define RX_SAMPLES 32

uint32_t *rx_buf = (uint32_t *)TX_RX_MEM_BASE;

static void *myriadrf  = (void *)MYRIADRF_BASE;
static void *rx_streamer = (void *)RX_STREAMER_BASE;

uint32_t ampl;

/*Quick integer algorithm for approximating
  the norm of a vector*/
uint32_t avg() {
  int idx;
  uint32_t amplitude = 0;
  uint16_t i;
  uint16_t q;
  uint32_t sample;

  for(idx=0;idx<RX_SAMPLES;idx++) {
    sample = rx_buf[idx];
    i = abs((int16_t)((sample >> 16) & 0xffff));
    q = abs((int16_t)(sample & 0xffff));
    
    if (i<=q)
      amplitude += (i>>1)+q;
    else
      amplitude += (q>>1)+i;
  }
  return amplitude;
}

/*Interrupt handler that is called when an RX DMA transaction is complete and
  interrupts are enabled*/
void rx_streamer_isr(void *streamer)
{
  //Clear interrupt
  wb_streamer_ctrl(streamer, STREAMER_CTRL_STAT_IRQ);

  /*Do something here. Avoid spending more time than necessary in
    the interrupt routine.
    
    A circular buffer could be implemented here by setting the pointer
    to the receive buffer to the address after the previous buffer
    e.g.
    rx_buf += RX_SAMPLES*4
    wb_streamer_set_range(rx_streamer, rx_buf, RX_SAMPLES*4);
*/

  //Fire off a new RX DMA transaction
  wb_streamer_ctrl(streamer, STREAMER_CTRL_STAT_ENABLE | STREAMER_CTRL_STAT_IRQ);
}

//Set up IRQ handler and unmask the RX Streamer IRQ
void setup_irq() {
  or1k_interrupt_handler_add(RX_STREAMER_IRQ, rx_streamer_isr, rx_streamer);
  printf("Added interrupt handler\n");
  or1k_interrupt_enable(RX_STREAMER_IRQ);
  printf("Enabled RX Streamer interrupt\n");
  or1k_interrupts_enable();
  printf("Interrupts enabled\n");
}


int main(void)
{
  printf("\n-----------------------\n");
  printf("LMS DMA receive example\n");
  printf("-----------------------\n");

  /*Instead of setting up IRQ in this example, we will use polling
    Use interrupts when the time to write data to RAM exceeds the 
    time it takes to process it.
  */
  //setup_irq();

  /* Set TX source
     TX_SRC_TEST = Internal data generator
     TX_SRC_DMA  = TX DMA Streamer
  */
  printf("Setting TX source to internal data generator\n");
  myriadrf_set_tx_src(myriadrf, TX_SRC_TEST);

  /* Set loopback switch
     0 = Receive data from LMS
     1 = Loopback TX data to RX
  */
  printf("Disabling Loopback\n");
  myriadrf_set_loopback(myriadrf, 0);

  /* Set RX sink
    RX_SINK_USB = Stream RX data to USB
    RX_SINK_DMA = Send RX data to RX DMA Streamer
  */
  printf("Setting RX sink to RX DMA\n");
  *((volatile uint32_t *)(MYRIADRF_BASE + 0x0C)) = 0x1; //Set RX sink

  /*Set up RX DMA Streamer with the following args:
    - Base address of RX Streamer
    - Memory address where RX Streamer should write data
    - Size in bytes of the buffer that the streamer should use
  */

  wb_streamer_set_range(rx_streamer, rx_buf, RX_SAMPLES*4);

  /*Set length (in 32-bit words) of Wishbone burst accesses.
    Make sure that the buffer size is a multiple of burst size
  */
  wb_streamer_set_burst_size(rx_streamer, 8);
  printf("Configured receive DMA\n");

  /*Enable streaming. The DMA streamer will start in the background
    and fill the rx buffer*/
  wb_streamer_enable(rx_streamer);
  printf("RX DMA enabled\n");

  for (;;) {
    /*Wait until the DMA Streamer has finished writing all the data.
      Note that the DMA transaction is fast, so most likely we will
      always be ready at this point
    */
    while(!wb_streamer_ready(rx_streamer));

    /*Run calculations on the received data*/
    ampl = avg();

    /*After we are done with calculations on the data, we can fire off
      another DMA transfer*/
    wb_streamer_enable(rx_streamer);

    /*The RX DMA buffer will be refilling at this point and we can spend
      time on other tasks that doesn't use the RX buffer
    */
    printf("%u\n",(unsigned int)ampl);

  }
  //Never reached
  return 0;
}
