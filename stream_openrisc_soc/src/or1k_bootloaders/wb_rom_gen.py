# wb_rom_gen.py -- Convert bin files to verilog readmemh files
#
# Copyright (c) 2014, 2015 Authors
#
# Contributor Olof Kindgren <olof.kindgren@gmail.com>
#
# The authors hereby grant permission to use, copy, modify, distribute,
# and license this software and its documentation for any purpose, provided
# that existing copyright notices are retained in all copies and that this
# notice is included verbatim in any distributions. No written agreement,
# license, or royalty fee is required for any of the authorized uses.
# Modifications to this software may be copyrighted by their authors
# and need not follow the licensing terms described here, provided that
# the new terms are clearly indicated on the first page of each file where
# they apply.
#
from struct import unpack
import sys
infile = sys.argv[1]
offset = 64

outfile = sys.stdout

BLOCK = """@00000000
{rom_contents}	 
"""

with open(infile, "rb") as f:
    word = f.read(4)
    addr = 0
    rom_contents = ""
    while word:
        data = unpack('>I', word)[0]
        if not data == 0:
            rom_contents += "{data:08X}\n".format(data=data)
        word = f.read(4)
        addr += 1
    outfile.write(BLOCK.format(rom_contents=rom_contents))
