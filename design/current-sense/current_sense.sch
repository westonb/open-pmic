v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {current sink for output monitoring} 1050 -100 0 0 0.4 0.4 {}
T {todo: add ESD protection} -60 160 0 0 0.4 0.4 {}
T {Each Resistor 6.7k nominal} 1360 -160 0 0 0.4 0.4 {}
T {1.5pF nominal} 530 -320 0 0 0.4 0.4 {}
N 340 -540 340 -520 { lab=VSS}
N 200 -540 200 -520 { lab=VDD}
N 80 -380 100 -380 { lab=SW_NODE}
N 80 -300 100 -300 { lab=SENSE_FET}
N 360 -160 360 -140 { lab=IBIAS}
N 440 -340 580 -340 { lab=OPA_OUT}
N 780 -210 780 -190 { lab=VSS}
N 780 -310 780 -290 { lab=#net1}
N 780 -290 780 -270 { lab=#net1}
N 780 -420 780 -370 { lab=SENSE_FET}
N 780 -340 880 -340 { lab=VDD}
N 720 -240 740 -240 { lab=#net1}
N 720 -280 720 -240 { lab=#net1}
N 720 -280 780 -280 { lab=#net1}
N 780 -240 800 -240 { lab=VSS}
N 800 -240 800 -200 { lab=VSS}
N 780 -200 800 -200 { lab=VSS}
N 780 -280 920 -280 { lab=#net1}
N 920 -280 920 -230 { lab=#net1}
N 920 -230 960 -230 { lab=#net1}
N 960 -230 980 -230 { lab=#net1}
N 1080 -200 1080 -190 { lab=VSS}
N 980 -230 1040 -230 { lab=#net1}
N 1080 -230 1100 -230 { lab=VSS}
N 1100 -230 1100 -190 { lab=VSS}
N 1080 -190 1100 -190 { lab=VSS}
N 1080 -190 1080 -180 { lab=VSS}
N 1080 -370 1080 -270 { lab=#net2}
N 1080 -270 1080 -260 { lab=#net2}
N 1080 -380 1080 -370 { lab=#net2}
N 1080 -480 1080 -440 { lab=VDD}
N 1060 -410 1080 -410 { lab=VDD}
N 1060 -450 1060 -410 { lab=VDD}
N 1060 -450 1080 -450 { lab=VDD}
N 1020 -230 1020 -140 { lab=#net1}
N 1020 -140 1180 -140 { lab=#net1}
N 1180 -230 1180 -140 { lab=#net1}
N 1180 -230 1200 -230 { lab=#net1}
N 1240 -190 1240 -180 { lab=VSS}
N 1240 -200 1240 -190 { lab=VSS}
N 1240 -230 1260 -230 { lab=VSS}
N 1260 -230 1260 -190 { lab=VSS}
N 1240 -190 1260 -190 { lab=VSS}
N 1240 -280 1240 -260 { lab=IMON}
N 1120 -410 1140 -410 { lab=#net2}
N 1140 -410 1140 -370 { lab=#net2}
N 1080 -370 1140 -370 { lab=#net2}
N 680 -340 740 -340 { lab=OPA_OUT}
N 1440 -480 1440 -440 { lab=VDD}
N 1440 -450 1460 -450 { lab=VDD}
N 1460 -450 1460 -410 { lab=VDD}
N 1440 -410 1460 -410 { lab=VDD}
N 1440 -260 1440 -180 { lab=VSS}
N 1440 -380 1440 -320 { lab=ISENSE}
N 1390 -290 1420 -290 { lab=VSS}
N 1390 -290 1390 -240 { lab=VSS}
N 1390 -240 1440 -240 { lab=VSS}
N 1560 -290 1560 -260 { lab=VSS}
N 1560 -260 1580 -260 { lab=VSS}
N 1560 -260 1560 -200 { lab=VSS}
N 1440 -200 1560 -200 { lab=VSS}
N 1140 -410 1400 -410 { lab=#net2}
N 1440 -360 1620 -360 { lab=ISENSE}
N 1580 -360 1580 -320 { lab=ISENSE}
N 580 -340 680 -340 { lab=OPA_OUT}
N 780 -440 780 -420 {}
N 650 -420 650 -410 {}
N 650 -420 780 -420 {}
N 540 -420 540 -410 {}
N 540 -420 650 -420 {}
N 650 -350 650 -340 {}
N 540 -350 540 -340 {}
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 760 -340 0 0 {name=M1
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 760 -240 0 0 {name=M2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1060 -230 0 0 {name=M4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1100 -410 0 1 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1220 -230 0 0 {name=M5
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
C {devices/lab_wire.sym} 440 -340 0 1 {name=l1 sig_type=std_logic lab=OPA_OUT}
C {devices/lab_pin.sym} 1620 -360 2 0 {name=l17 sig_type=std_logic lab=ISENSE
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1420 -410 0 0 {name=M6
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
C {sky130_fd_pr/res_high_po_1p41.sym} 1440 -290 0 0 {name=R6
W=1.41
L=20
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 1580 -290 0 0 {name=R1
W=1.41
L=20
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 1240 -280 0 1 {name=l2 sig_type=std_logic lab=IMON}
C {devices/lab_pin.sym} 80 -300 0 0 {name=l3 sig_type=std_logic lab=SENSE_FET
}
C {devices/lab_pin.sym} 780 -440 0 1 {name=l4 sig_type=std_logic lab=SENSE_FET
}
C {devices/lab_pin.sym} 360 -140 0 0 {name=l5 sig_type=std_logic lab=IBIAS
}
C {devices/lab_pin.sym} 340 -540 0 0 {name=l6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 780 -190 0 0 {name=l7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1080 -180 0 0 {name=l8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1240 -180 0 0 {name=l9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1440 -180 0 0 {name=l10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 200 -540 0 0 {name=l12 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1080 -480 0 0 {name=l11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1440 -480 0 0 {name=l13 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 880 -340 2 0 {name=l14 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 540 -380 0 0 {name=C4 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 650 -380 0 0 {name=C6 model=cap_mim_m3_2 W=20 L=20 MF=1 spiceprefix=X}
