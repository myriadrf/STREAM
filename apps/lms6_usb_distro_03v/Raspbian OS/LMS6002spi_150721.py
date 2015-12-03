import spidev

spi = spidev.SpiDev()		# create spi object
spi.open(0, 0)			# open spi port 0, device CS=0
spi.bits_per_word=8		# only 8 supported

reg_in = raw_input("Enter register,hex: ")
reg = int(reg_in, 16)		# string to hex
# print "you entered register", reg

rw_in = raw_input("Enter r or w: ")
# print "you entered r/w", rw_in

if rw_in == 'w':
	reg_w = reg + 0x80	# for write MSB = 1
	# print "reg write", reg_w
	data_in = raw_input("Enter data,hex: ")
	data = int(data_in, 16)
	to_send = [reg_w, data]
	instr = spi.xfer2(to_send)	# transfer reg Nr and data
else:
	to_send = [reg, 0]		# to have 2x 8 CLK
	instr = spi.xfer2(to_send)	# gets data on MISO
	instr_hex = hex(instr[1]).split('x')[1] # takes second byte from array, converts to hex and splits '0x'
	# rd_data = spi.readbytes(2)
	
	# print "Register value", str(rd_data)
	print "Register value, hex", str(instr_hex)

spi.close()

