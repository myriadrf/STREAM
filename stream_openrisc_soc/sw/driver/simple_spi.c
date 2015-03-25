////////////////////////////////////////////////////////////////////////
// Stream OpenRISC Linux example
//
// Copyright (c) 2015-2015 Lime Microsystems
// SPDX-License-Identifier: Apache-2.0
// http://www.apache.org/licenses/LICENSE-2.0
////////////////////////////////////////////////////////////////////////
#include "simple_spi.h"
void simple_spi_write_reg(void *base, uint32_t reg, uint8_t value)
{
  *((volatile uint8_t *)(base + reg)) = value;
}

uint8_t simple_spi_read_reg(void *base, uint8_t reg)
{
  return *((volatile uint8_t *)(base + reg));
}

void simple_spi_enable(void *base)
{
  uint8_t spcr;
  spcr = simple_spi_read_reg(base, SPCR);
  spcr |= SPCR_SPE;
  simple_spi_write_reg(base, SPCR, spcr);

  while (!(simple_spi_read_reg(base, SPSR) & SPSR_RFEMPTY))
    simple_spi_read_reg(base, SPDR);
}

void simple_spi_disable(void *base)
{
  uint8_t spcr;
  spcr = simple_spi_read_reg(base, SPCR);
  spcr &= ~SPCR_SPE;
  simple_spi_write_reg(base, SPCR, spcr);
}

void simple_spi_clock_setup(void *base, uint8_t polarity, uint8_t phase, uint8_t divider)
{
  uint8_t spcr;
  uint8_t sper;

  spcr = simple_spi_read_reg(base, SPCR) & 0xf0;
  sper = simple_spi_read_reg(base, SPER) & 0xfc;
  
  if (polarity)
    spcr |= SPCR_CPOL;

  if (phase)
    spcr |= SPCR_CPHA;

  switch(divider) {
  case  3 : sper |= 0x1;              break;
  case  4 :              spcr |= 0x2; break;
  case  5 :              spcr |= 0x3; break;
  case  6 : sper |= 0x1; spcr |= 0x1; break;
  case  7 : sper |= 0x1; spcr |= 0x2; break;
  case  8 : sper |= 0x1; spcr |= 0x3; break;
  case  9 : sper |= 0x2;              break;
  case 10 : sper |= 0x2; spcr |= 0x1; break;
  case 11 : sper |= 0x2; spcr |= 0x2; break;
  case 12 : sper |= 0x2; spcr |= 0x3; break;
  }

  simple_spi_write_reg(base, SPCR, spcr);
  simple_spi_write_reg(base, SPER, sper);
}

void simple_spi_set_cs(void *base, uint8_t slaves) {
  simple_spi_write_reg(base, SPSS, slaves);
}

void simple_spi_write(void *base, uint8_t value) {
  uint8_t wffull;

  do {
    wffull = simple_spi_read_reg(base, SPSR) & SPSR_WFFULL;
  } while(wffull);
  
  simple_spi_write_reg(base, SPDR, value);
}

uint8_t simple_spi_read(void *base) {
  uint8_t rfempty;

  do {
    rfempty = simple_spi_read_reg(base, SPSR) & SPSR_RFEMPTY;
  } while(rfempty);
  
  return simple_spi_read_reg(base, SPDR);
}
