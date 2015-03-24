/* led_blink.S -- Turn on and off GPIO pins to blink LEDs
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
	l.movhi r0, 0
	#Write 0xff to 0x91000000 (GPIO Data) and
	#and 0xff to 0x91000004 (GPIO Direction = output)
	l.movhi r3,0x9100

	l.movhi r4, 0
	l.addi r4,r0,0xff

	l.sb 0x0(r3),r4
	l.sb 0x1(r3),r4


	# Set timer value to control blink speed
	l.movhi	r7, 0x0010
	#l.movhi	r7, 0x0000
	l.ori	r7, r7, 0x4

	#r3 = GPIO Base address
	#r4 = Value
	#r7 = Timer max value
	#r6 = Current timer value

	#Set initial LED pattern
bl2:	
	l.movhi r4, 0x0
	l.addi r4, r0, 0x80
bl1:


	#Write to LEDs
	l.sb 0x0(r3),r4

	#Shift LED bit mask
	l.srli r4,r4,0x1

	l.movhi r6, 0
t1:
	l.addi 	r6, r6, 1
	l.sfeq 	r6, r7
	l.bnf 	t1
	l.nop

	l.sfeq  r4, r0
	l.nop
	l.bnf bl1
	l.nop
	l.j bl2
	l.nop
