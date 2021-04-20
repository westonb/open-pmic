v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {3.6pF nominal 
30um x 30um} -130 -530 0 0 0.4 0.4 {}
N 260 -760 360 -760 { lab=#net1}
N 200 -760 220 -760 { lab=VDD}
N 200 -800 200 -760 { lab=VDD}
N 200 -800 220 -800 { lab=VDD}
N 220 -800 220 -790 { lab=VDD}
N 400 -760 420 -760 { lab=VDD}
N 420 -800 420 -760 { lab=VDD}
N 400 -800 420 -800 { lab=VDD}
N 400 -800 400 -790 { lab=VDD}
N 400 -730 400 -690 { lab=#net1}
N 340 -760 340 -710 { lab=#net1}
N 350 -710 400 -710 { lab=#net1}
N 340 -710 350 -710 { lab=#net1}
N 380 -510 400 -510 { lab=GND}
N 440 -370 460 -370 { lab=TIMEOUT}
N 440 -510 460 -510 { lab=TIMEOUT}
N 40 -480 40 -420 { lab=ISENSE}
N 40 -420 400 -420 { lab=ISENSE}
N 400 -420 400 -400 { lab=ISENSE}
N 160 -480 160 -420 { lab=ISENSE}
N 40 -560 40 -540 { lab=IMOD}
N 40 -560 400 -560 { lab=IMOD}
N 400 -560 400 -540 { lab=IMOD}
N 220 -670 220 -560 { lab=IMOD}
N 160 -560 160 -540 { lab=IMOD}
N 400 -480 400 -420 { lab=ISENSE}
N 400 -340 400 -320 { lab=VSS}
N 380 -370 400 -370 { lab=VSS}
N 380 -370 380 -320 { lab=VSS}
N 380 -320 400 -320 { lab=VSS}
N 400 -320 400 -310 { lab=VSS}
N 880 -500 920 -500 { lab=IMOD}
N 880 -420 920 -420 { lab=VCOMP}
N 400 -310 400 -280 { lab=VSS}
N 360 -280 400 -280 { lab=VSS}
N 1020 -660 1020 -640 { lab=VDD}
N 1160 -660 1160 -640 { lab=VSS}
N 1180 -280 1180 -260 { lab=CMP_BIAS}
N 1180 -260 1200 -260 { lab=CMP_BIAS}
N 220 -820 220 -800 { lab=VDD}
N 220 -820 400 -820 { lab=VDD}
N 400 -820 400 -800 { lab=VDD}
N 1260 -460 1280 -460 { lab=CYCLE_END}
N 220 -730 220 -670 { lab=IMOD}
N 400 -690 400 -680 { lab=#net1}
N 380 -650 400 -650 { lab=VSS}
N 380 -650 380 -600 { lab=VSS}
N 380 -600 400 -600 { lab=VSS}
N 400 -620 400 -600 { lab=VSS}
N 520 -650 540 -650 { lab=VSS}
N 540 -650 540 -600 { lab=VSS}
N 520 -600 540 -600 { lab=VSS}
N 520 -620 520 -600 { lab=VSS}
N 440 -650 480 -650 { lab=ISLOPE}
N 520 -720 520 -680 { lab=ISLOPE}
N 460 -700 520 -700 { lab=ISLOPE}
N 460 -700 460 -650 { lab=ISLOPE}
C {devices/ipin.sym} -240 -600 0 0 {name=p1 lab=ISENSE}
C {devices/ipin.sym} -240 -540 0 0 {name=p2 lab=VCOMP
}
C {devices/ipin.sym} -240 -510 0 0 {name=p3 lab=TIMEOUT}
C {devices/ipin.sym} -240 -780 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -240 -740 0 0 {name=p5 lab=VSS
}
C {devices/ipin.sym} -240 -680 0 0 {name=p9 lab=CMP_BIAS}
C {design/comparator/comparator_w_obuff.sym} 1080 -460 0 0 {name=x1}
C {devices/ipin.sym} -240 -640 0 0 {name=p6 lab=ISLOPE}
C {devices/ipin.sym} -240 -460 0 0 {name=p7 lab=CYCLE_END}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 240 -760 0 1 {name=M10
L=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 -760 0 0 {name=M11
L=2
W=5
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 520 -720 2 0 {name=l74 sig_type=std_logic lab=ISLOPE
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -370 0 1 {name=M12
L=1
W=5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -510 0 1 {name=M13
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
C {devices/gnd.sym} 380 -510 1 0 {name=l76 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 40 -510 0 0 {name=C4 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 160 -510 0 0 {name=C6 model=cap_mim_m3_2 W=30 L=30 MF=1 spiceprefix=X}
C {devices/lab_wire.sym} 460 -510 0 1 {name=l34 sig_type=std_logic lab=TIMEOUT}
C {devices/lab_wire.sym} 300 -420 0 0 {name=l1 sig_type=std_logic lab=ISENSE}
C {devices/lab_wire.sym} 460 -370 0 1 {name=l2 sig_type=std_logic lab=TIMEOUT}
C {devices/lab_wire.sym} 300 -560 0 0 {name=l3 sig_type=std_logic lab=IMOD}
C {devices/lab_wire.sym} 880 -500 0 0 {name=l4 sig_type=std_logic lab=IMOD}
C {devices/lab_wire.sym} 880 -420 0 0 {name=l5 sig_type=std_logic lab=VCOMP}
C {devices/lab_wire.sym} 360 -280 0 0 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1160 -660 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1020 -660 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1200 -260 2 0 {name=l9 sig_type=std_logic lab=CMP_BIAS
}
C {devices/lab_wire.sym} 300 -820 0 0 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1280 -460 0 1 {name=l11 sig_type=std_logic lab=CYCLE_END}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -650 0 1 {name=M1
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
C {devices/lab_wire.sym} 380 -600 0 0 {name=l12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -650 0 0 {name=M2
L=1
W=5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 540 -600 0 1 {name=l13 sig_type=std_logic lab=VSS}
