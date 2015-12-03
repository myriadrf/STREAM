import spidev

spi = spidev.SpiDev()		# create spi object
spi.open(0, 0)			# open spi port 0, device CS=0
spi.bits_per_word=8		# only 8 supported

reg0x05 = 0X3A			# LMS6 TX EN reg value
reg0x09 = 0X81			# LMS6 TX_DSM_SPI EN reg value
reg0x44 = 0X13			# LMS6 PA2 EN reg value

freq_in = raw_input("Enter Freq,GHz: ")
freq = float(freq_in)

# reg0x15 FREQSEL table
if freq > 0.2325 and freq < 0.285625:
	reg0x15 = 0X9D
	freqsel20 = 7
elif freq > 0.285625 and freq < 0.336875:
	reg0x15 = 0XBD
	freqsel20 = 7
elif freq > 0.336875 and freq < 0.405:
	reg0x15 = 0XDD
	freqsel20 = 7
elif freq > 0.405 and freq < 0.465:
	reg0x15 = 0XFD
	freqsel20 = 7
elif freq > 0.465 and freq < 0.57125:
	reg0x15 = 0X99
	freqsel20 = 6
elif freq > 0.57125 and freq < 0.67375:
	reg0x15 = 0XB9
	freqsel20 = 6
elif freq > 0.67375 and freq < 0.81:
	reg0x15 = 0XD9
	freqsel20 = 6
elif freq > 0.81 and freq < 0.93:
	reg0x15 = 0XF9
	freqsel20 = 6
elif freq > 0.93 and freq < 1.1425:
	reg0x15 = 0X95
	freqsel20 = 5
elif freq > 1.1425 and freq < 1.3475:
	reg0x15 = 0XB5
	freqsel20 = 5
elif freq > 1.3475 and freq < 1.62:
	reg0x15 = 0XD5
	freqsel20 = 5
elif freq > 1.62 and freq < 1.86:
	reg0x15 = 0XF5
	freqsel20 = 5
elif freq > 1.86 and freq < 2.285:
	reg0x15 = 0X91
	freqsel20 = 4
elif freq > 2.285 and freq < 2.695:
	reg0x15 = 0XB1
	freqsel20 = 4
elif freq > 2.695 and freq < 3.24:
	reg0x15 = 0XD1
	freqsel20 = 4
elif freq > 3.24 and freq < 3.72:
	reg0x15 = 0XF1
	freqsel20 = 4
else:
	reg0x15 = 0XB1

# Int and Frac divider calculation
x = 2**(freqsel20-3)
fref = 30.72
n = x*freq*1000/fref
nint = int(n)
nfrac = int(8388608*(n-nint))
print "N int:", nint
print "N frac:", nfrac

# writing certain bits in reg 0x10, 0x11, 0x12, 0x13
reg0x10 = nint//2			# int part after division
# print "reg0x10:", hex(reg0x10)	
reg0x11_7 = nint - (nint//2)*2		# 0x11 bit7 calculation

reg0x11_60 = nfrac//(2**16)		# 0x11 bits[6:0] calculation
reg0x11 = reg0x11_7*(2**7) + reg0x11_60
# print "reg0x11:", hex(reg0x11)
reg0x12 = (int(nfrac) - reg0x11_60*(2**16))//(2**8)
# print "reg0x12:", hex(reg0x12)
reg0x13 = int(nfrac) - reg0x11_60*(2**16) - reg0x12*(2**8)
# print "reg0x13:", hex(reg0x13)

# write TX configuration
reg = [0x05, 0x09, 0x10, 0x11, 0x12, 0x13, 0x15, 0x44]
data_in = [reg0x05, reg0x09, reg0x10, reg0x11, reg0x12, reg0x13, reg0x15, reg0x44]

for i in range(0, len(reg)):
	reg_w = reg[i] + 0x80		# for write MSB = 1
	# print "reg write", hex(reg_w)
	data = data_in[i]
	# print "data", hex(data)
	to_send = [reg_w, data]
	instr = spi.xfer2(to_send)	# transfer reg Nr and data

# locking LO
# write cap code vales from 0 to 63 and check vtune, when vtune=0 (LO locked) stop and return min cap code value when LO is locked
# continue writing cap codes from min cap code to 63, when vtune !=0 go one value back and return max cap code value when LO is still locked
# write average cap code value
def lockmin():
	for y in range(0, 64):		# for loop takes values 0 to 63 (excluding 64)
		reg_w = 0x19 + 0x80		# for write MSB = 1
		data = y + 0x80
		# print "cap code", y
		to_send = [reg_w, data]
		instr = spi.xfer2(to_send)	# transfer reg Nr and data

		to_send = [0X1A, 0]		# to have 2x 8 CLK
		instr = spi.xfer2(to_send)	# gets data on MISO
		reg0X1A = instr[1]//(2**6)
		if reg0X1A == 0:
			break
	return y
y = lockmin()
# print "lockmin", y

def lockmax():
	for u in range(y, 64):
		reg_w = 0x19 + 0x80		# for write MSB = 1
		data = u + 0x80
		# print "cap code", u
		to_send = [reg_w, data]
		instr = spi.xfer2(to_send)	# transfer reg Nr and data

		to_send = [0X1A, 0]		# to have 2x 8 CLK
		instr = spi.xfer2(to_send)	# gets data on MISO
		reg0X1A = instr[1]//(2**6)
		if reg0X1A != 0:
			break
	return u
u = lockmax() - 1
# print "lockmax", u
capcode = (y + u)/2
print "capcode", capcode
reg_w = 0x19 + 0x80		# for write MSB = 1
data = capcode + 0x80
to_send = [reg_w, data]
instr = spi.xfer2(to_send)	# transfer reg Nr and data

# Enter output power		
vga1_in = raw_input("Enter VGA1 (-35..-4),dB: ")
reg_w = 0x41 + 0x80
data = 35 - abs(int(vga1_in))
to_send = [reg_w, data]
instr = spi.xfer2(to_send)

vga2_in = raw_input("Enter VGA2 (0..25),dB: ")
reg_w = 0x45 + 0x80
data = int(vga2_in)*(2**3)
to_send = [reg_w, data]
instr = spi.xfer2(to_send)


spi.close()


