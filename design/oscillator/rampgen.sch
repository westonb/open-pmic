v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1310 -1240 1310 -1180 { lab=VPWR}
N 1310 -1240 1580 -1240 { lab=VPWR}
N 1580 -1240 1580 -1180 { lab=VPWR}
N 1580 -1120 1580 -1080 { lab=#net1}
N 1580 -1020 1580 -960 { lab=VRAMP}
N 1580 -900 1580 -840 { lab=#net2}
N 1580 -990 1830 -990 { lab=VRAMP}
N 1830 -990 1830 -930 { lab=VRAMP}
N 1830 -870 1830 -740 { lab=VGND}
N 1090 -740 1830 -740 { lab=VGND}
N 1090 -780 1090 -740 { lab=VGND}
N 1310 -780 1310 -740 { lab=VGND}
N 1580 -780 1580 -740 { lab=VGND}
N 1490 -1050 1540 -1050 { lab=RAMPGEN_EN}
N 1490 -1050 1490 -930 { lab=RAMPGEN_EN}
N 1490 -930 1540 -930 { lab=RAMPGEN_EN}
N 1350 -1150 1540 -1150 { lab=#net3}
N 1090 -870 1090 -840 { lab=IRAMP}
N 1130 -810 1270 -810 { lab=IRAMP}
N 1090 -890 1090 -870 { lab=IRAMP}
N 1090 -890 1180 -890 { lab=IRAMP}
N 1180 -890 1180 -810 { lab=IRAMP}
N 1090 -950 1090 -890 { lab=IRAMP}
N 1310 -1120 1310 -840 { lab=#net3}
N 1270 -880 1270 -810 { lab=IRAMP}
N 1270 -880 1520 -880 { lab=IRAMP}
N 1520 -880 1520 -810 { lab=IRAMP}
N 1520 -810 1540 -810 { lab=IRAMP}
N 1310 -1090 1400 -1090 { lab=#net3}
N 1400 -1150 1400 -1090 { lab=#net3}
N 1430 -990 1490 -990 { lab=RAMPGEN_EN}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1110 -810 0 1 {name=M1
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1290 -810 0 0 {name=M2
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1560 -810 0 0 {name=M3
L=1
W=5
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1560 -930 0 0 {name=M4
L=1
W=5
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1330 -1150 0 1 {name=M5
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1560 -1050 0 0 {name=M6
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1560 -1150 0 0 {name=M7
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1830 -900 0 0 {name=C1 model=cap_mim_m3_1 W=20 L=26 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1830 -990 2 0 {name=l1 sig_type=std_logic lab=VRAMP}
C {devices/lab_pin.sym} 1430 -990 0 0 {name=l2 sig_type=std_logic lab=RAMPGEN_EN}
C {devices/lab_pin.sym} 1580 -1240 2 0 {name=l3 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 1830 -740 2 0 {name=l4 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1090 -950 2 0 {name=l5 sig_type=std_logic lab=IRAMP}
C {devices/lab_pin.sym} 1580 -1150 2 0 {name=l6 sig_type=std_logic lab=VPB}
C {devices/lab_pin.sym} 1580 -1050 2 0 {name=l7 sig_type=std_logic lab=VPB}
C {devices/lab_pin.sym} 1310 -1150 2 1 {name=l8 sig_type=std_logic lab=VPB}
C {devices/lab_pin.sym} 1580 -930 2 0 {name=l9 sig_type=std_logic lab=VNB}
C {devices/lab_pin.sym} 1580 -810 2 0 {name=l10 sig_type=std_logic lab=VNB}
C {devices/lab_pin.sym} 1310 -810 2 0 {name=l11 sig_type=std_logic lab=VNB}
C {devices/lab_pin.sym} 1090 -810 2 1 {name=l12 sig_type=std_logic lab=VNB}
C {devices/iopin.sym} 1020 -1270 0 0 {name=p1 lab=VPWR}
C {devices/iopin.sym} 1020 -1240 0 0 {name=p2 lab=VGND}
C {devices/iopin.sym} 1020 -1210 0 0 {name=p3 lab=VPB}
C {devices/iopin.sym} 1020 -1180 0 0 {name=p4 lab=VNB}
C {devices/iopin.sym} 1020 -1150 0 0 {name=p5 lab=IRAMP}
C {devices/iopin.sym} 1020 -1120 0 0 {name=p6 lab=VRAMP}
C {devices/iopin.sym} 1020 -1090 0 0 {name=p7 lab=RAMPGEN_EN}