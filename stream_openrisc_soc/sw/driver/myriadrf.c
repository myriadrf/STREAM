#include "myriadrf.h"

void myriadrf_write_reg(void *base, uint32_t reg, uint32_t value)
{
  *((volatile uint32_t *)(base + reg)) = value;
}

uint32_t myriadrf_read_reg(void *base, uint32_t reg)
{
  return *((volatile uint32_t *)(base + reg));
}

void myriadrf_set_tx_src(void *base, uint32_t src) {
  myriadrf_write_reg(base, MYRIADRF_TX_SRC, src);
}

void myriadrf_set_loopback(void *base, uint32_t mode) {
  myriadrf_write_reg(base, MYRIADRF_LOOPBACK, mode);
}

void myriadrf_set_rx_sink(void *base, uint32_t sink) {
  myriadrf_write_reg(base, MYRIADRF_RX_SINK, sink);
}

void myriadrf_set_spi_src(void *base, uint32_t src) {
    myriadrf_write_reg(base, MYRIADRF_SPI_SRC, src);
}
