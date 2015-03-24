.org 0x100
	#Clear r0
	l.movhi r0, 0

	#r1 = value
	l.movhi r1, 0xdead
	l.ori   r1, r1, 0xbeef

	#r2 = base address
	l.movhi r2, 0000
	l.ori	r2, r2, 0x1000

main_loop:	
	#r5 = loop counter
	l.movhi r5, 0000
	l.ori r5, r5, 0x0000

write_loop:	
	#r4 current address
	l.add r4, r2, r5
	l.nop
	
	l.sw 0(r4), r1
	l.nop

	l.addi r5, r5, 4
	l.nop

	l.sfeqi r5, 128
	l.nop

	l.bnf write_loop
	l.nop

	#Clear loop counter
	l.movhi r5, 0000
	l.ori r5, r5, 0x0000

read_loop:
	l.add r4, r2, r5
	l.nop
	
	l.lwz r3, 0(r4)
	l.nop

	l.addi r5, r5, 4
	l.nop

	l.sfeqi r5, 128
	l.nop

	l.bnf read_loop
	l.nop
	
	l.j main_loop
	l.nop
	
