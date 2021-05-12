
PITCH = 5.5
ARRAY_SIZE = 30
MOS_NAME = "sky130_fd_pr__pfet_g5v0d10v5_W4_38_L0_5.mag"
CONTACT_CENTER_SPACING = 0.56
DIFF_LAYER = "mvpdiffusion"
POLY_LAYER = "poly"
POLY_CONTACT_LAYER = "pcontact"
LOCALI_LAYER = "locali"
LOCALI_CONTACT_LAYER = "viali"
M1_LAYER = "metal1"
M1_CONTACT_LAYER = "m2contact"
M2_LAYER = "metal2"
M2_CONTACT_LAYER = "m3contact"
M3_LAYER = "metal3"
M3_CONTACT_LAYER = "via3"
M4_LAYER = "metal4"
M4_CONTACT_LAYER = "via4"
M5_LAYER = "metal5"

SUBSTRATE_DIFF = "mvnsubdiff"
SUBSTRATE_DIFF_CONTACT = "mvnsubdiffcont"

DIFF_SPACING = 0.54 #spacing from center of channel to edge of diffusion
CHANNEL_LENGTH = 0.5
CHANNEL_M1_SPACING = 0.03
CHANNEL_LOCALI_SPACING = 0.06

M2_VIA_SPACE = 0.1
M3_VIA_SPACE = 0.1
M4_VIA_SPACE = 0.1

M3_WIDTH = 3.5
M4_WIDTH = 3.5
M5_WIDTH = 3


#contact center to channel spacing is 0.56um


fin = open("helper_functions.tcl", "r")
fout = open("N_waffle_gen_v2.tcl", "w")
for line in fin:
	fout.write(line)

fout.write("load temp\n")

#place fets 

for x_index in range(ARRAY_SIZE):
	for y_index in range(ARRAY_SIZE):

		#place fets aligned to X axis
		if (y_index != 0):

			x_center = PITCH * x_index + PITCH/2
			y_center = PITCH * y_index

			cmd_str = "box %gum %gum %gum %gum\n" % (x_center, y_center, x_center, y_center)
			fout.write(cmd_str)

			cmd_str = "getcell %s\n" % (MOS_NAME)
			fout.write(cmd_str)

			#generated fet is vertical 
			cmd_str = "rotate 90\n"
			fout.write(cmd_str)

			#call center function
			cmd_str = "shift_to_center\n"
			fout.write(cmd_str)



		#place fets aligned to Y axis:

		if (x_index != 0):

			x_center = PITCH * x_index
			y_center = PITCH * y_index + PITCH/2

			cmd_str = "box %gum %gum %gum %gum\n" % (x_center, y_center, x_center, y_center)
			fout.write(cmd_str)

			cmd_str = "getcell %s\n" % (MOS_NAME)
			fout.write(cmd_str)

			#call center function
			cmd_str = "shift_to_center\n"
			fout.write(cmd_str)


		#repair MVN diffusion, M1, and LOCALI 
		#0.64 x 0.64 square aligned to edge of channel
		#subtract out 0.31x0.31 box 

		x_center = PITCH/2 + PITCH * x_index
		y_center = PITCH/2 + PITCH * y_index

		#ll corner 
		if (x_index != 0) and (y_index != 0):

			#diff
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2  
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)




		#ul corner

		if (x_index != 0) and (y_index != (ARRAY_SIZE-1)):
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2  
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)

		#lr corner 
		if (x_index != (ARRAY_SIZE-1)) and (y_index != 0):
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2  
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)





		#ur corner 
		if (x_index != (ARRAY_SIZE-1)) and (y_index != (ARRAY_SIZE-1)):
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2  
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (DIFF_LAYER)
			fout.write(cmd_str)

			#LOCALI 
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.29

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

			#m1
			x1 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64
			y1 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.64


			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (M1_LAYER)
			fout.write(cmd_str)

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - 0.31

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "erase %s \n" % (M1_LAYER)
			fout.write(cmd_str)


#diagonal runners and contacts
for x_index in range(ARRAY_SIZE):
	for y_index in range(ARRAY_SIZE):

		#m1 first layer 
		x_center = PITCH * x_index + PITCH/2
		y_center = PITCH * y_index + PITCH/2

		x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING + 0.23
		y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_M1_SPACING + 0.23

		x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING - 0.23
		y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_M1_SPACING - 0.23

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (M1_LAYER)
		fout.write(cmd_str)

		#m2 second layer 

		x1 = x_center - PITCH/2 + 1
		y1 = y_center - PITCH/2 + 1

		x2 = x_center + PITCH/2 - 1
		y2 = y_center + PITCH/2 - 1

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)

		#m1 contact

		x1 = x_center - PITCH/2 + 1.1
		y1 = y_center - PITCH/2 + 1.1

		x2 = x_center + PITCH/2 - 1.1
		y2 = y_center + PITCH/2 - 1.1

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)


		#place runners 

		x1 = x_center - PITCH/2
		y1 = y_center + PITCH/2

		x2 = x_center + PITCH/2
		y2 = y_center - PITCH/2

		cmd_str = "wire segment %s %gum %gum %gum %gum %gum -noendcap \n" % (M3_LAYER, M3_WIDTH, x1, y1, x2, y2)
		fout.write(cmd_str)
		cmd_str = "wire segment %s %gum %gum %gum %gum %gum -noendcap \n" % (M4_LAYER, M4_WIDTH, x1, y1, x2, y2)
		fout.write(cmd_str)
		cmd_str = "wire segment %s %gum %gum %gum %gum %gum -noendcap \n" % (M5_LAYER, M5_WIDTH, x1, y1, x2, y2)
		fout.write(cmd_str)

		#place contacts 

		#m2-m3 contact 

		x1 = x_center - PITCH/2 + 1 + M2_VIA_SPACE
		y1 = y_center + PITCH/2 - 1 - M2_VIA_SPACE

		x2 = x_center - PITCH/2 + 1 + M2_VIA_SPACE + round(((M3_WIDTH/2 - M2_VIA_SPACE)**(1/2)),1)
		y2 = y_center + PITCH/2 - 1 - M2_VIA_SPACE

		x3 = x_center + PITCH/2 - 1 - M2_VIA_SPACE
		y3 = y_center - PITCH/2 + 1 + M2_VIA_SPACE + round(((M3_WIDTH/2 - M2_VIA_SPACE)**(1/2)),1)

		x4 = x_center + PITCH/2 - 1 - M2_VIA_SPACE
		y4 = y_center - PITCH/2 + 1 + M2_VIA_SPACE

		x5 = x_center + PITCH/2 - 1 - M2_VIA_SPACE - round(((M3_WIDTH/2 - M2_VIA_SPACE)**(1/2)),1)
		y5 = y_center - PITCH/2 + 1 + M2_VIA_SPACE

		x6 = x_center - PITCH/2 + 1 + M2_VIA_SPACE
		y6 = y_center + PITCH/2 - 1 - M2_VIA_SPACE - round(((M3_WIDTH/2 - M2_VIA_SPACE)**(1/2)),1)

		cmd_str = "polygon %s %gum %gum %gum %gum %gum  %gum  %gum  %gum  %gum  %gum  %gum  %gum  \n" % (M2_CONTACT_LAYER, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6)
		fout.write(cmd_str)


		#m3-m4 contact

		x1 = x_center - PITCH/2 + 1 + M3_VIA_SPACE
		y1 = y_center + PITCH/2 - 1 - M3_VIA_SPACE

		x2 = x_center - PITCH/2 + 1 + M3_VIA_SPACE + round(((M4_WIDTH/2 - M3_VIA_SPACE)**(1/2)),1)
		y2 = y_center + PITCH/2 - 1 - M3_VIA_SPACE

		x3 = x_center + PITCH/2 - 1 - M3_VIA_SPACE
		y3 = y_center - PITCH/2 + 1 + M3_VIA_SPACE + round(((M4_WIDTH/2 - M3_VIA_SPACE)**(1/2)),1)

		x4 = x_center + PITCH/2 - 1 - M3_VIA_SPACE
		y4 = y_center - PITCH/2 + 1 + M3_VIA_SPACE

		x5 = x_center + PITCH/2 - 1 - M3_VIA_SPACE - round(((M4_WIDTH/2 - M3_VIA_SPACE)**(1/2)),1)
		y5 = y_center - PITCH/2 + 1 + M3_VIA_SPACE

		x6 = x_center - PITCH/2 + 1 + M3_VIA_SPACE
		y6 = y_center + PITCH/2 - 1 - M3_VIA_SPACE - round(((M4_WIDTH/2 - M3_VIA_SPACE)**(1/2)),1)

		cmd_str = "polygon %s %gum %gum %gum %gum %gum  %gum  %gum  %gum  %gum  %gum  %gum  %gum  \n" % (M3_CONTACT_LAYER, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6)
		fout.write(cmd_str)


		#m4-m5 contact

		x1 = x_center - PITCH/2 + 1 + M4_VIA_SPACE
		y1 = y_center + PITCH/2 - 1 - M4_VIA_SPACE

		x2 = x_center - PITCH/2 + 1 + M4_VIA_SPACE + round(((M5_WIDTH/2 - M4_VIA_SPACE)**(1/2)),1)
		y2 = y_center + PITCH/2 - 1 - M4_VIA_SPACE

		x3 = x_center + PITCH/2 - 1 - M4_VIA_SPACE
		y3 = y_center - PITCH/2 + 1 + M4_VIA_SPACE + round(((M5_WIDTH/2 - M4_VIA_SPACE)**(1/2)),1)

		x4 = x_center + PITCH/2 - 1 - M4_VIA_SPACE
		y4 = y_center - PITCH/2 + 1 + M4_VIA_SPACE

		x5 = x_center + PITCH/2 - 1 - M4_VIA_SPACE - round(((M5_WIDTH/2 - M4_VIA_SPACE)**(1/2)),1)
		y5 = y_center - PITCH/2 + 1 + M4_VIA_SPACE

		x6 = x_center - PITCH/2 + 1 + M4_VIA_SPACE
		y6 = y_center + PITCH/2 - 1 - M4_VIA_SPACE - round(((M5_WIDTH/2 - M4_VIA_SPACE)**(1/2)),1)

		cmd_str = "polygon %s %gum %gum %gum %gum %gum  %gum  %gum  %gum  %gum  %gum  %gum  %gum  \n" % (M4_CONTACT_LAYER, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6)
		fout.write(cmd_str)

#gate interconnect

#vertical interconnect
for x_index in range(ARRAY_SIZE+1):
	x_center = PITCH * x_index

	x1 = x_center - CHANNEL_LENGTH/2
	x2 = x_center + CHANNEL_LENGTH/2

	y1 = -CHANNEL_LENGTH/2
	y2 = PITCH * ARRAY_SIZE + CHANNEL_LENGTH/2

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (POLY_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M2_LAYER)
	fout.write(cmd_str)

#horizontal interconnect
for y_index in range (ARRAY_SIZE+1):
	y_center = PITCH * y_index

	x1 = -CHANNEL_LENGTH/2
	x2 = PITCH * ARRAY_SIZE + CHANNEL_LENGTH/2

	y1 = y_center - CHANNEL_LENGTH/2
	y2 = y_center + CHANNEL_LENGTH/2

	cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
	fout.write(cmd_str)

	cmd_str = "paint %s \n" % (POLY_LAYER)
	fout.write(cmd_str)
	cmd_str = "paint %s \n" % (M2_LAYER)
	fout.write(cmd_str)

# gate vias
for x_index in range(ARRAY_SIZE+1):
	for y_index in range(ARRAY_SIZE+1):

		#0.5 x 0.5 locali, M1, M2, 
		# 0.4 x 0.4 pcontact, vialocali, M1-M2 via 

		x_center = x_index * PITCH
		y_center = y_index * PITCH

		x1 = x_center - CHANNEL_LENGTH/2
		y1 = y_center - CHANNEL_LENGTH/2

		x2 = x_center + CHANNEL_LENGTH/2
		y2 = y_center + CHANNEL_LENGTH/2

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)


		cmd_str = "paint %s \n" % (LOCALI_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M2_LAYER)
		fout.write(cmd_str)


		x1 = x_center - CHANNEL_LENGTH/2 + 0.08
		y1 = y_center - CHANNEL_LENGTH/2 + 0.08

		x2 = x_center + CHANNEL_LENGTH/2 - 0.08
		y2 = y_center + CHANNEL_LENGTH/2 - 0.08

		cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
		fout.write(cmd_str)

		cmd_str = "paint %s \n" % (POLY_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
		fout.write(cmd_str)
		cmd_str = "paint %s \n" % (M1_CONTACT_LAYER)
		fout.write(cmd_str)


#substrate contacts
for x_index in range(ARRAY_SIZE):
	for y_index in range(ARRAY_SIZE):

		if((x_index+y_index)%2==0):

			x_center = PITCH * x_index + PITCH/2
			y_center = PITCH * y_index + PITCH/2

			x1 = x_center - PITCH/2 + 1.1
			y1 = y_center - PITCH/2 + 1.1

			x2 = x_center + PITCH/2 - 1.1
			y2 = y_center + PITCH/2 - 1.1

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (SUBSTRATE_DIFF)
			fout.write(cmd_str)


			cmd_str = "paint %s \n" % (LOCALI_CONTACT_LAYER)
			fout.write(cmd_str)

			x1 = x_center - PITCH/2 + 1.22
			y1 = y_center - PITCH/2 + 1.22

			x2 = x_center + PITCH/2 - 1.22
			y2 = y_center + PITCH/2 - 1.22

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (SUBSTRATE_DIFF_CONTACT)
			fout.write(cmd_str)


			x1 = x_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING + 0.17
			y1 = y_center - PITCH/2 + CHANNEL_LENGTH/2 + CHANNEL_LOCALI_SPACING + 0.17

			x2 = x_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING - 0.17
			y2 = y_center + PITCH/2 - CHANNEL_LENGTH/2 - CHANNEL_LOCALI_SPACING - 0.17

			cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
			fout.write(cmd_str)

			cmd_str = "paint %s \n" % (LOCALI_LAYER)
			fout.write(cmd_str)

#nwell
x1 = -10
y1 = -10

x2 = PITCH * ARRAY_SIZE + 15
y2 = PITCH * ARRAY_SIZE + 15

cmd_str = "box %gum %gum %gum %gum\n" % (x1, y1, x2, y2)
fout.write(cmd_str)

cmd_str = "paint %s \n" % ("nwell")
fout.write(cmd_str)

fout.write("flatten waffle_testa\n")
fout.write("load waffle_testa\n")


fout.close()




