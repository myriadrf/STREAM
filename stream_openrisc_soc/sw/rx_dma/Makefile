# Commands
CC = or1k-elf-gcc
CPP = or1k-elf-g++
OBJCOPY = or1k-elf-objcopy
OBJDUMP = or1k-elf-objdump
REMOVE = rm -rf
# Compiler flags
CFLAGS = -c -Wall -Wno-unused-function -std=c99 -O2 -I./ -I../driver/ -mboard=de0_nano
# Linker flags
LDFLAGS = -mboard=de0_nano -mnewlib

# Sources
TARGET = rx_dma.c
SRC = $(TARGET)
SRC+= ../driver/myriadrf.c
SRC+= ../driver/wb_streamer.c

# Output filename
OUT = rx_dma

# Object defines
COBJ = $(SRC:.c=.o)

all: $(SRC) $(OUT) $(OUT).bin

$(OUT).bin: $(OUT)
	$(OBJCOPY) -O binary $< $@

$(OUT): $(COBJ)
	$(CC) $(LDFLAGS) $(COBJ) -o $@

$(COBJ) : %.o : %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	$(REMOVE) $(COBJ) $(OUT) $(OUT).bin *~
