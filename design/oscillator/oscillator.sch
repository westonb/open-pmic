v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1550 -760 1550 -720 { lab=vpwr}
N 1550 -760 1650 -760 { lab=vpwr}
N 1650 -760 1650 -720 { lab=vpwr}
N 1550 -560 1550 -500 { lab=vgnd}
N 1550 -500 1650 -500 { lab=vgnd}
N 1650 -560 1650 -500 { lab=vgnd}
N 1340 -640 1450 -640 { lab=vramp}
N 1750 -640 1850 -640 { lab=timeout_int}
N 1850 -640 1850 -430 { lab=timeout_int}
N 710 -430 1850 -430 { lab=timeout_int}
N 710 -640 710 -430 { lab=timeout_int}
N 710 -640 760 -640 { lab=timeout_int}
N 840 -640 910 -640 { lab=#net1}
N 990 -640 1040 -640 { lab=#net2}
N 1190 -500 1550 -500 { lab=vgnd}
N 1190 -550 1190 -500 { lab=vgnd}
N 1250 -760 1550 -760 { lab=vpwr}
N 1100 -550 1100 -500 { lab=iramp}
N 1190 -760 1190 -730 { lab=vpwr}
N 1190 -760 1250 -760 { lab=vpwr}
N 1740 -640 1750 -640 { lab=timeout_int}
N 1450 -640 1470 -640 { lab=vramp}
N 1010 -700 1010 -640 { lab=#net2}
N 1010 -830 1010 -780 { lab=#net3}
C {design/oscillator/rampgen.sym} 1190 -640 0 0 {name=x1}
C {sky130_stdcells/inv_1.sym} 800 -640 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hvl__ }
C {sky130_stdcells/inv_4.sym} 950 -640 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hvl__ }
C {devices/lab_pin.sym} 1650 -760 0 1 {name=l1 sig_type=std_logic lab=vpwr}
C {devices/lab_pin.sym} 1650 -500 0 1 {name=l2 sig_type=std_logic lab=vgnd}
C {devices/lab_pin.sym} 1850 -640 0 1 {name=l3 sig_type=std_logic lab=timeout_int}
C {devices/lab_pin.sym} 1100 -500 0 0 {name=l4 sig_type=std_logic lab=iramp}
C {devices/lab_pin.sym} 1400 -640 1 1 {name=l5 sig_type=std_logic lab=vramp}
C {devices/iopin.sym} 600 -940 0 0 {name=p1 lab=vpwr}
C {devices/iopin.sym} 600 -910 0 0 {name=p2 lab=vgnd}
C {devices/iopin.sym} 600 -880 0 0 {name=p3 lab=iramp}
C {devices/iopin.sym} 600 -850 0 0 {name=p4 lab=vramp}
C {devices/iopin.sym} 600 -820 0 0 {name=p5 lab=timeout_int}
C {layout/oscillator/sky130_fd_sc_hvl__schmittbuf_1.sym} 1160 -380 0 0 {name=x5}
C {sky130_stdcells/inv_8.sym} 1010 -740 3 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hvl__ }
