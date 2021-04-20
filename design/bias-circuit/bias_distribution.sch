v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Opamps are N input current mirror 
cmp is P input current mirror} 380 -800 0 0 0.4 0.4 {}
T {100uA nominal input current} 240 -380 0 0 0.4 0.4 {}
T {20uA nominal} 1040 -590 0 0 0.4 0.4 {}
T {20uA nominal} 1270 -590 0 0 0.4 0.4 {}
T {20uA nominal} 620 -400 0 0 0.4 0.4 {}
N 440 -490 460 -490 { lab=VSS}
N 460 -490 460 -440 { lab=VSS}
N 440 -440 460 -440 { lab=VSS}
N 440 -460 440 -440 { lab=VSS}
N 440 -440 440 -420 { lab=VSS}
N 380 -490 400 -490 { lab=BIAS_IN}
N 380 -540 380 -490 { lab=BIAS_IN}
N 380 -540 440 -540 { lab=BIAS_IN}
N 440 -540 440 -520 { lab=BIAS_IN}
N 440 -580 440 -540 { lab=BIAS_IN}
N 680 -490 700 -490 { lab=VSS}
N 700 -490 700 -440 { lab=VSS}
N 680 -440 700 -440 { lab=VSS}
N 680 -460 680 -440 { lab=VSS}
N 680 -440 680 -420 { lab=VSS}
N 440 -540 580 -540 { lab=BIAS_IN}
N 580 -540 580 -490 { lab=BIAS_IN}
N 580 -490 640 -490 { lab=BIAS_IN}
N 680 -560 680 -520 { lab=BIAS_CMP}
N 580 -620 580 -540 { lab=BIAS_IN}
N 580 -620 820 -620 { lab=BIAS_IN}
N 820 -620 820 -490 { lab=BIAS_IN}
N 820 -490 860 -490 { lab=BIAS_IN}
N 900 -490 920 -490 { lab=VSS}
N 920 -490 920 -440 { lab=VSS}
N 900 -440 920 -440 { lab=VSS}
N 900 -460 900 -440 { lab=VSS}
N 900 -440 900 -420 { lab=VSS}
N 900 -680 900 -520 { lab=#net1}
N 900 -780 900 -760 { lab=VDD}
N 880 -710 900 -710 { lab=VDD}
N 880 -760 880 -710 { lab=VDD}
N 880 -760 900 -760 { lab=VDD}
N 900 -760 900 -740 { lab=VDD}
N 940 -710 960 -710 { lab=#net1}
N 960 -710 960 -660 { lab=#net1}
N 900 -660 960 -660 { lab=#net1}
N 1100 -710 1120 -710 { lab=VDD}
N 1120 -760 1120 -710 { lab=VDD}
N 1100 -760 1120 -760 { lab=VDD}
N 1100 -760 1100 -740 { lab=VDD}
N 900 -760 1100 -760 { lab=VDD}
N 1100 -680 1100 -640 { lab=BIAS_OPA_N}
N 960 -710 1060 -710 { lab=#net1}
N 1020 -710 1020 -600 { lab=#net1}
N 1020 -600 1260 -600 { lab=#net1}
N 1260 -710 1260 -600 { lab=#net1}
N 1260 -710 1270 -710 { lab=#net1}
N 1270 -710 1280 -710 { lab=#net1}
N 1320 -710 1340 -710 { lab=VDD}
N 1340 -760 1340 -710 { lab=VDD}
N 1320 -760 1340 -760 { lab=VDD}
N 1320 -760 1320 -740 { lab=VDD}
N 1120 -760 1320 -760 { lab=VDD}
N 1320 -680 1320 -640 { lab=BIAS_OPA_P}
C {devices/ipin.sym} 270 -550 0 0 {name=p2 lab=BIAS_OPA_P}
C {devices/ipin.sym} 270 -670 0 0 {name=p3 lab=VSS}
C {devices/ipin.sym} 270 -690 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 270 -610 0 0 {name=p5 lab=BIAS_IN}
C {devices/ipin.sym} 270 -590 0 0 {name=p6 lab=BIAS_OPA_N}
C {devices/ipin.sym} 270 -530 0 0 {name=p7 lab=BIAS_CMP}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 920 -710 0 1 {name=M10
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 -490 0 0 {name=M13
L=2
W=5
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 440 -420 0 1 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -580 0 1 {name=l2 sig_type=std_logic lab=BIAS_IN}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 660 -490 0 0 {name=M1
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 680 -420 0 1 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 680 -560 0 1 {name=l4 sig_type=std_logic lab=BIAS_CMP}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 880 -490 0 0 {name=M2
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 900 -420 0 1 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 900 -780 0 1 {name=l6 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1080 -710 0 0 {name=M3
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
C {devices/lab_wire.sym} 1100 -640 0 1 {name=l7 sig_type=std_logic lab=BIAS_OPA_N}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1300 -710 0 0 {name=M4
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
C {devices/lab_wire.sym} 1320 -640 0 1 {name=l8 sig_type=std_logic lab=BIAS_OPA_P}
