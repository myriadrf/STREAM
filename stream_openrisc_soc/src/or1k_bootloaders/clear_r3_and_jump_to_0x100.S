/* clear_r3_and_jump_to_ox100.S -- Clear register R3 and jump to 0x100
 *
 * Copyright (c) 2014, 2015 Authors
 *
 * Contributor Olof Kindgren <olof.kindgren@gmail.com>
 *
 * The authors hereby grant permission to use, copy, modify, distribute,
 * and license this software and its documentation for any purpose, provided
 * that existing copyright notices are retained in all copies and that this
 * notice is included verbatim in any distributions. No written agreement,
 * license, or royalty fee is required for any of the authorized uses.
 * Modifications to this software may be copyrighted by their authors
 * and need not follow the licensing terms described here, provided that
 * the new terms are clearly indicated on the first page of each file where
 * they apply.
 */
.org 0x100
	#Clear r0
	l.movhi r0, 0x000
	#Clear r3
	l.movhi r3, 0x0000
	#Set r4 to 0x100
	l.movhi r4, 0x0000
	l.ori	r4, r0, 0x100
	#Jump to @r4
	l.jr r4
	l.nop
