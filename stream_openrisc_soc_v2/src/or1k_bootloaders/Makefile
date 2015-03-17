SOURCES := \
	boot_loop.vh \
	clear_r3_and_jump_to_0x100.vh \
	led_blink.vh \
	rwonce.vh \
	rw.vh
all: $(SOURCES)

%.elf: %.S
	or1k-elf-gcc -nostdlib $< -o $@

%.bin: %.elf
	or1k-elf-objcopy -O binary $< $@

%.vh: %.bin
	python wb_rom_gen.py $< > $@


clean:
	rm $(SOURCES)
