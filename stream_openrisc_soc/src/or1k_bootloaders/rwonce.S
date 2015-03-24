	#Clear r0
	l.movhi r0, 0

	l.movhi r1, 0xdead
	l.ori   r1, r1, 0xbeef
	l.movhi r2, 0000
	l.ori	r2, r2, 0x1000

	l.sw 0(r2), r1

	l.lwz r3, 0(r2)

	l.nop 1
	l.nop
	
	l.j 0
	l.nop
	
