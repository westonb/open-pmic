v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1310 -1240 1310 -1180 { lab=vdd}
N 1310 -1240 1580 -1240 { lab=vdd}
N 1580 -1240 1580 -1180 { lab=vdd}
N 1580 -1120 1580 -1080 { lab=#net1}
N 1580 -1020 1580 -960 { lab=vramp}
N 1580 -900 1580 -840 { lab=#net2}
N 1580 -990 1830 -990 { lab=vramp}
N 1090 -740 1830 -740 { lab=vss}
N 1090 -780 1090 -740 { lab=vss}
N 1310 -780 1310 -740 { lab=vss}
N 1580 -780 1580 -740 { lab=vss}
N 1490 -1050 1540 -1050 { lab=rampgen_en}
N 1490 -1050 1490 -930 { lab=rampgen_en}
N 1490 -930 1540 -930 { lab=rampgen_en}
N 1350 -1150 1540 -1150 { lab=#net3}
N 1090 -870 1090 -840 { lab=iramp}
N 1130 -810 1270 -810 { lab=iramp}
N 1090 -890 1090 -870 { lab=iramp}
N 1090 -890 1180 -890 { lab=iramp}
N 1180 -890 1180 -810 { lab=iramp}
N 1090 -950 1090 -890 { lab=iramp}
N 1310 -1120 1310 -840 { lab=#net3}
N 1270 -880 1270 -810 { lab=iramp}
N 1270 -880 1520 -880 { lab=iramp}
N 1520 -880 1520 -810 { lab=iramp}
N 1520 -810 1540 -810 { lab=iramp}
N 1310 -1090 1400 -1090 { lab=#net3}
N 1400 -1150 1400 -1090 { lab=#net3}
N 1430 -990 1490 -990 { lab=rampgen_en}
N 1580 -1100 1770 -1100 { lab=#net1}
N 1580 -1240 1770 -1240 { lab=vdd}
N 1740 -1140 1760 -1140 { lab=vdd}
N 1740 -1190 1740 -1140 { lab=vdd}
N 1740 -1190 1800 -1190 { lab=vdd}
N 1800 -1240 1800 -1170 { lab=vdd}
N 1770 -1240 1800 -1240 { lab=vdd}
N 1800 -1110 1800 -1100 { lab=#net1}
N 1770 -1100 1800 -1100 { lab=#net1}
N 1800 -1100 1800 -1080 { lab=#net1}
N 1760 -1020 1800 -1020 { lab=#net1}
N 1760 -1050 1760 -1020 { lab=#net1}
N 1760 -1100 1760 -1050 { lab=#net1}
N 1790 -990 1790 -950 { lab=vramp}
N 1750 -890 1790 -890 { lab=vramp}
N 1750 -920 1750 -890 { lab=vramp}
N 1750 -950 1750 -920 { lab=vramp}
N 1750 -950 1790 -950 { lab=vramp}
N 1790 -770 1790 -740 { lab=vss}
N 1750 -830 1790 -830 { lab=vss}
N 1750 -830 1750 -800 { lab=vss}
N 1750 -800 1750 -770 { lab=vss}
N 1750 -770 1790 -770 { lab=vss}
N 1470 -750 1470 -740 { lab=vss}
N 1430 -780 1430 -740 { lab=vss}
N 1470 -850 1470 -810 { lab=#net3}
N 1310 -850 1470 -850 { lab=#net3}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1110 -810 0 1 {name=M1
L=1
W=5
nf=1
mult=2
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
mult=2
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
mult=16
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
mult=16
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
mult=2
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
mult=2
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
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1830 -990 2 0 {name=l1 sig_type=std_logic lab=vramp}
C {devices/lab_pin.sym} 1430 -990 0 0 {name=l2 sig_type=std_logic lab=rampgen_en}
C {devices/lab_pin.sym} 1520 -1240 1 0 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1830 -740 2 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1090 -950 2 0 {name=l5 sig_type=std_logic lab=iramp}
C {devices/lab_pin.sym} 1580 -1150 2 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1580 -1050 2 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1310 -1150 2 1 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1580 -930 2 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1580 -810 2 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1310 -810 2 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1090 -810 2 1 {name=l12 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 1020 -1270 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 1020 -1240 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 1020 -1150 0 0 {name=p5 lab=iramp}
C {devices/iopin.sym} 1020 -1120 0 0 {name=p6 lab=vramp}
C {devices/iopin.sym} 1020 -1090 0 0 {name=p7 lab=rampgen_en}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1780 -1140 0 0 {name=dum_top_pmos
L=1
W=5
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1780 -1050 0 0 {name=dum_mid_pmos
L=1
W=5
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1770 -920 0 0 {name=dum_mid_nmos
L=1
W=5
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1770 -800 0 0 {name=dum_bot_nmos_out
L=1
W=5
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1450 -780 0 0 {name=dum_bot_nmos_in
L=1
W=5
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1800 -1140 2 0 {name=l13 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1800 -1050 2 0 {name=l14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1790 -920 2 0 {name=l15 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1790 -800 2 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1470 -780 2 0 {name=l17 sig_type=std_logic lab=vss}
