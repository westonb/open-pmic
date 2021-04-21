
DRAIN_FILENAME = "N_waffle_drain"
DRAIN_RIGHT_FILENAME = "N_waffle_drain_r"
DRAIN_LEFT_FILENAME = "N_waffle_drain_l"
DRAIN_TOP_FILENAME = "N_waffle_drain_t"
DRAIN_BOTTOM_FILENAME = "N_waffle_drain_b"
DRAIN_LOWER_LEFT_FILENAME = "N_waffle_drain_ll"
DRAIN_UPPER_RIGHT_FILENAME = "N_waffle_drain_ur"


SOURCE_FILENAME = "N_waffle_source"
SOURCE_RIGHT_FILENAME = "N_waffle_source_r"
SOURCE_LEFT_FILENAME = "N_waffle_source_l"
SOURCE_TOP_FILENAME = "N_waffle_source_t"
SOURCE_BOTTOM_FILENAME = "N_waffle_source_b"
SOURCE_LOWER_RIGHT_FILENAME = "N_waffle_source_lr"
SOURCE_UPPER_LEFT_FILENAME = "N_waffle_source_ul"

PITCH = 5.5
ARRAY_SIZE = 10

f = open("N_waffle_gen_full.tcl", "w")

tcl_lines = []

#place cells
for x_index in range(ARRAY_SIZE):
	for y_index in range(ARRAY_SIZE):

		#check drain or source 
		DRAIN_CHECK = ((x_index+y_index)%2 == 0)

		x_pos = x_index * PITCH
		y_pos = y_index * PITCH

		if(x_index==0) and (y_index==0):
			#ll corner 
			place_file = DRAIN_LOWER_LEFT_FILENAME

		elif(x_index==0) and (y_index== ARRAY_SIZE-1):
			#ul corner
			place_file = SOURCE_UPPER_LEFT_FILENAME

		elif(x_index==ARRAY_SIZE-1) and (y_index==0):
			place_file = SOURCE_LOWER_RIGHT_FILENAME

		elif(x_index==ARRAY_SIZE-1) and (y_index==ARRAY_SIZE-1):
			place_file = DRAIN_UPPER_RIGHT_FILENAME

		elif(y_index==0):
			if(DRAIN_CHECK):
				place_file = DRAIN_BOTTOM_FILENAME
			else:
				place_file = SOURCE_BOTTOM_FILENAME

		elif(y_index==ARRAY_SIZE-1):
			if(DRAIN_CHECK):
				place_file = DRAIN_TOP_FILENAME
			else:
				place_file = SOURCE_TOP_FILENAME

		elif(x_index==0):
			if(DRAIN_CHECK):
				place_file = DRAIN_LEFT_FILENAME
			else:
				place_file = SOURCE_LEFT_FILENAME

		elif(x_index==ARRAY_SIZE-1):
			if(DRAIN_CHECK):
				place_file = DRAIN_RIGHT_FILENAME
			else:
				place_file = SOURCE_RIGHT_FILENAME

		else:
			if(DRAIN_CHECK):
				place_file = DRAIN_FILENAME
			else:
				place_file = SOURCE_FILENAME


		tcl_lines.append("box position %gum %gum\n" % (x_pos, y_pos)) 
		tcl_lines.append("getcell %s child 0 0\n" % place_file)

#place interconnects
#left / top is drain
#bottom / right is source

#offset from center:
# metal 3/ 4 ( -5.15,  2.75 ), ( -2.75,  5.15 )
# metal 5 ( -4.30,  2.75 ), ( -2.75,  4.30 )

EXTENTION_LENGTH = 5

#drain, left side
M34_UR_X_OFFSET = -2.75
M34_UR_Y_OFFSET = 5.15
M34_HEIGHT = 3.4

M5_UR_X_OFFSET = -2.75
M5_UR_Y_OFFSET = 4.3
M5_HEIGHT = 2.2
for y_index in range(ARRAY_SIZE):
	if(y_index%2==0):

		y_pos = y_index * PITCH

		M5_UR_X = M5_UR_X_OFFSET 
		M5_UR_Y = M5_UR_Y_OFFSET + y_pos
		M5_LL_X = M5_UR_X - EXTENTION_LENGTH
		M5_LL_Y = M5_UR_Y-M5_HEIGHT

		tcl_lines.append("box values %gum %gum %gum %gum\n" % (M5_LL_X, M5_LL_Y, M5_UR_X, M5_UR_Y))
		tcl_lines.append("paint metal5\n")

		M34_UR_X = M34_UR_X_OFFSET
		M34_UR_Y = M34_UR_Y_OFFSET + y_pos
		M34_LL_X = M34_UR_X - EXTENTION_LENGTH
		M34_LL_Y = M34_UR_Y - M34_HEIGHT

		tcl_lines.append("box values %gum %gum %gum %gum\n" % (M34_LL_X, M34_LL_Y, M34_UR_X, M34_UR_Y))
		tcl_lines.append("paint metal3\n")
		tcl_lines.append("paint metal4\n")





	





f.writelines(tcl_lines)
f.close()






