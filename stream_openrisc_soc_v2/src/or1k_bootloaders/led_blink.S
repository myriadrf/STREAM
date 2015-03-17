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
