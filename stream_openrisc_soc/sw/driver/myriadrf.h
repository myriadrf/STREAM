////////////////////////////////////////////////////////////////////////
// Stream OpenRISC Linux example
//
// Copyright (c) 2015-2015 Lime Microsystems
// SPDX-License-Identifier: Apache-2.0
// http://www.apache.org/licenses/LICENSE-2.0
////////////////////////////////////////////////////////////////////////
#include <stdint.h>

#define MYRIADRF_TX_SRC   0x00
#define MYRIADRF_LOOPBACK 0x08
#define MYRIADRF_RX_SINK  0x0C
#define MYRIADRF_SPI_SRC  0x10

#define TX_SRC_TEST 0
#define TX_SRC_DMA  1

#define RX_SINK_USB 0
#define RX_SINK_DMA 1

#define SPI_SRC_EXT 0
#define SPI_SRC_INT 1

void myriadrf_set_tx_src(void *base, uint32_t src);
void myriadrf_set_loopback(void *base, uint32_t mode);
void myriadrf_set_rx_sink(void *base, uint32_t sink);
void myriadrf_set_spi_src(void *base, uint32_t src);
