v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {current sink for output monitoring} 950 -100 0 0 0.4 0.4 {}
T {todo: add ESD protection} -20 -100 0 0 0.4 0.4 {}
N 340 -540 340 -520 { lab=VSS}
N 200 -540 200 -520 { lab=VDD}
N 80 -380 100 -380 { lab=SW_NODE}
N 80 -300 100 -300 { lab=SENSE_FET}
N 360 -160 360 -140 { lab=IBIAS}
N 440 -340 580 -340 { lab=OPA_OUT}
N 680 -210 680 -190 { lab=VSS}
N 680 -310 680 -290 { lab=#net1}
N 680 -290 680 -270 { lab=#net1}
N 680 -420 680 -370 { lab=SENSE_FET}
N 680 -340 780 -340 { lab=VDD}
N 620 -240 640 -240 { lab=#net1}
N 620 -280 620 -240 { lab=#net1}
N 620 -280 680 -280 { lab=#net1}
N 680 -240 700 -240 { lab=VSS}
N 700 -240 700 -200 { lab=VSS}
N 680 -200 700 -200 { lab=VSS}
N 680 -280 820 -280 { lab=#net1}
N 820 -280 820 -230 { lab=#net1}
N 820 -230 860 -230 { lab=#net1}
N 860 -230 880 -230 { lab=#net1}
N 980 -200 980 -190 { lab=VSS}
N 880 -230 940 -230 { lab=#net1}
N 980 -230 1000 -230 { lab=VSS}
N 1000 -230 1000 -190 { lab=VSS}
N 980 -190 1000 -190 { lab=VSS}
N 980 -190 980 -180 { lab=VSS}
N 980 -370 980 -270 { lab=#net2}
N 980 -270 980 -260 { lab=#net2}
N 980 -380 980 -370 { lab=#net2}
N 980 -480 980 -440 { lab=VDD}
N 960 -410 980 -410 { lab=VDD}
N 960 -450 960 -410 { lab=VDD}
N 960 -450 980 -450 { lab=VDD}
N 920 -230 920 -140 { lab=#net1}
N 920 -140 1080 -140 { lab=#net1}
N 1080 -230 1080 -140 { lab=#net1}
N 1080 -230 1100 -230 { lab=#net1}
N 1140 -190 1140 -180 { lab=VSS}
N 1140 -200 1140 -190 { lab=VSS}
N 1140 -230 1160 -230 { lab=VSS}
N 1160 -230 1160 -190 { lab=VSS}
N 1140 -190 1160 -190 { lab=VSS}
N 1140 -280 1140 -260 { lab=IMON}
N 1020 -410 1040 -410 { lab=#net2}
N 1040 -410 1040 -370 { lab=#net2}
N 980 -370 1040 -370 { lab=#net2}
N 580 -340 640 -340 { lab=OPA_OUT}
N 1340 -480 1340 -440 { lab=VDD}
N 1340 -450 1360 -450 { lab=VDD}
N 1360 -450 1360 -410 { lab=VDD}
N 1340 -410 1360 -410 { lab=VDD}
N 1340 -260 1340 -180 { lab=VSS}
N 1340 -380 1340 -320 { lab=ISENSE}
N 1290 -290 1320 -290 { lab=VSS}
N 1290 -290 1290 -240 { lab=VSS}
N 1290 -240 1340 -240 { lab=VSS}
N 1460 -290 1460 -260 { lab=VSS}
N 1460 -260 1480 -260 { lab=VSS}
N 1460 -260 1460 -200 { lab=VSS}
N 1340 -200 1460 -200 { lab=VSS}
N 1040 -410 1300 -410 { lab=#net2}
N 1340 -360 1520 -360 { lab=ISENSE}
N 1480 -360 1480 -320 { lab=ISENSE}
C {devices/ipin.sym} -220 -520 0 0 {name=p1 lab=SW_NODE}
C {devices/ipin.sym} -220 -480 0 0 {name=p2 lab=SENSE_FET
}
C {devices/ipin.sym} -220 -630 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -220 -600 0 0 {name=p5 lab=VSS
}
C {devices/ipin.sym} -220 -410 0 0 {name=p9 lab=IBIAS}
C {devices/ipin.sym} -220 -360 0 0 {name=p6 lab=IMON}
C {devices/ipin.sym} -220 -320 0 0 {name=p7 lab=ISENSE}
C {devices/lab_pin.sym} 80 -380 0 0 {name=l30 sig_type=std_logic lab=SW_NODE
}
C {design/folded-cascode-n-in/folded_cascode_n_in.sym} 260 -340 0 0 {name=x1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 660 -340 0 0 {name=M1
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 660 -240 0 0 {name=M2
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 960 -230 0 0 {name=M4
L=1
W=5
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1000 -410 0 1 {name=M3
L=1
W=5
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -230 0 0 {name=M5
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 460 -340 0 1 {name=l1 sig_type=std_logic lab=OPA_OUT}
C {devices/lab_pin.sym} 1520 -360 2 0 {name=l17 sig_type=std_logic lab=ISENSE
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1320 -410 0 0 {name=M6
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_1p41.sym} 1340 -290 0 0 {name=R6
W=1.41
L=20
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1480 -290 0 0 {name=R1
W=1.41
L=20
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 1140 -280 0 1 {name=l2 sig_type=std_logic lab=IMON}
C {devices/lab_pin.sym} 80 -300 0 0 {name=l3 sig_type=std_logic lab=SENSE_FET
}
C {devices/lab_pin.sym} 680 -420 0 0 {name=l4 sig_type=std_logic lab=SENSE_FET
}
C {devices/lab_pin.sym} 360 -140 0 0 {name=l5 sig_type=std_logic lab=IBIAS
}
C {devices/lab_pin.sym} 340 -540 0 0 {name=l6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 680 -190 0 0 {name=l7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 980 -180 0 0 {name=l8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1140 -180 0 0 {name=l9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1340 -180 0 0 {name=l10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 200 -540 0 0 {name=l12 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 980 -480 0 0 {name=l11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1340 -480 0 0 {name=l13 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 780 -340 2 0 {name=l14 sig_type=std_logic lab=VDD
}
