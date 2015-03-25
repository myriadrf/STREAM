////////////////////////////////////////////////////////////////////////
// Stream OpenRISC Linux example
//
// Copyright (c) 2015-2015 Lime Microsystems
// SPDX-License-Identifier: Apache-2.0
// http://www.apache.org/licenses/LICENSE-2.0
////////////////////////////////////////////////////////////////////////
#include <stdint.h>

#define STREAMER_CTRL_STAT	0x0
#define STREAMER_START_ADDR	0x4
#define STREAMER_BUF_SIZE	0x8
#define STREAMER_BURST_SIZE	0xc

#define STREAMER_CTRL_STAT_ENABLE	(1 << 0)
#define STREAMER_CTRL_STAT_IRQ		(1 << 1)

void wb_streamer_ctrl(void *base, uint32_t flags);
void wb_streamer_set_burst_size(void *base, uint32_t size);
void wb_streamer_set_range(void *base, uint32_t *addr, uint32_t size);
void wb_streamer_enable(void *base);
uint32_t wb_streamer_ready(void *base);
