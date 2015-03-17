#include "wb_streamer.h"

void streamer_write_reg(void *base, uint32_t reg, uint32_t value)
{
  *((volatile uint32_t *)(base + reg)) = value;
}

uint32_t streamer_read_reg(void *base, uint32_t reg)
{
  return *((volatile uint32_t *)(base + reg));
}

void wb_streamer_ctrl(void *base, uint32_t flags) {
  streamer_write_reg(base, STREAMER_CTRL_STAT,
		     flags);
}

void wb_streamer_set_burst_size(void *base, uint32_t size) {
  streamer_write_reg(base, STREAMER_BURST_SIZE, size);
}

void wb_streamer_set_range(void *base, uint32_t *addr, uint32_t size) {
  streamer_write_reg(base, STREAMER_START_ADDR, (uint32_t)addr);
  streamer_write_reg(base, STREAMER_BUF_SIZE, size);
}

void wb_streamer_enable(void *base) {
  streamer_write_reg(base, STREAMER_CTRL_STAT,
		     STREAMER_CTRL_STAT_ENABLE);
}
