#include <stdint.h>

#define SPCR 0x0
#define SPSR 0x1
#define SPDR 0x2
#define SPER 0x3
#define SPSS 0x4

#define SPCR_SPE  0x40
#define SPCR_CPOL 0x04
#define SPCR_CPHA 0x02

#define SPSR_WFFULL  0x08
#define SPSR_RFEMPTY 0x01
void simple_spi_enable(void *base);
void simple_spi_disable(void *base);
void simple_spi_clock_setup(void *base, uint8_t polarity, uint8_t phase, uint8_t divider);
void simple_spi_set_cs(void *base, uint8_t slaves);
void simple_spi_write(void *base, uint8_t value);
uint8_t simple_spi_read(void *base);
