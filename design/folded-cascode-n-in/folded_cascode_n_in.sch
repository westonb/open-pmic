v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 860 -210 880 -210 { lab=IN_M}
N 500 -210 520 -210 { lab=IN_P}
N 640 -410 660 -410 { lab=VBP_INT}
N 640 -470 640 -410 { lab=VBP_INT}
N 600 -470 640 -470 { lab=VBP_INT}
N 640 -470 780 -470 { lab=VBP_INT}
N 700 -470 700 -440 { lab=VBP_INT}
N 700 -380 700 -360 { lab=VS1_M}
N 700 -360 820 -360 { lab=VS1_M}
N 820 -440 820 -360 { lab=VS1_M}
N 420 -410 430 -410 { lab=VSS}
N 430 -400 440 -400 { lab=VSS}
N 430 -410 430 -400 { lab=VSS}
N 360 -410 380 -410 { lab=VBP_INT}
N 420 -450 420 -440 { lab=VBP_INT}
N 540 -470 560 -470 { lab=VDD}
N 540 -520 540 -470 { lab=VDD}
N 540 -520 820 -520 { lab=VDD}
N 820 -520 820 -500 { lab=VDD}
N 560 -440 560 -240 { lab=VS1_P}
N 820 -360 820 -240 { lab=VS1_M}
N 420 -380 420 -340 { lab=VS1_P}
N 420 -340 560 -340 { lab=VS1_P}
N 560 -520 560 -500 { lab=VDD}
N 820 -470 840 -470 { lab=VDD}
N 840 -520 840 -470 { lab=VDD}
N 820 -520 840 -520 { lab=VDD}
N 260 -470 420 -470 { lab=VBP_INT}
N 420 -470 420 -450 { lab=VBP_INT}
N 360 -470 360 -410 { lab=VBP_INT}
N 280 -470 280 -420 { lab=VBP_INT}
N 220 -420 280 -420 { lab=VBP_INT}
N 220 -440 220 -420 { lab=VBP_INT}
N 220 -520 220 -500 { lab=VDD}
N 220 -520 540 -520 { lab=VDD}
N 200 -470 220 -470 { lab=VDD}
N 200 -520 200 -470 { lab=VDD}
N 200 -520 220 -520 { lab=VDD}
N 220 -420 220 -140 { lab=VBP_INT}
N 220 -80 220 -40 { lab=VSS}
N 220 -40 700 -40 { lab=VSS}
N 700 -80 700 -40 { lab=VSS}
N 220 -110 240 -110 { lab=VSS}
N 240 -110 240 -40 { lab=VSS}
N 710 -400 720 -400 { lab=VSS}
N 710 -410 710 -400 { lab=VSS}
N 700 -410 710 -410 { lab=VSS}
N 560 -180 560 -160 { lab=#net1}
N 560 -160 820 -160 { lab=#net1}
N 820 -180 820 -160 { lab=#net1}
N 700 -160 700 -140 { lab=#net1}
N 640 -110 660 -110 { lab=VBN}
N 700 -110 720 -110 { lab=VSS}
N 720 -110 720 -40 { lab=VSS}
N 700 -40 720 -40 { lab=VSS}
N 140 -110 180 -110 { lab=VBN}
N 1100 -480 1100 -460 { lab=VS1_M}
N 1080 -430 1100 -430 { lab=VDD}
N 1080 -520 1080 -430 { lab=VDD}
N 840 -520 1080 -520 { lab=VDD}
N 1140 -430 1280 -430 { lab=VCP}
N 1320 -480 1320 -460 { lab=VS1_P}
N 1320 -430 1340 -430 { lab=VDD}
N 1340 -520 1340 -430 { lab=VDD}
N 1080 -520 1340 -520 { lab=VDD}
N 720 -40 1100 -40 { lab=VSS}
N 1100 -80 1100 -40 { lab=VSS}
N 1100 -40 1320 -40 { lab=VSS}
N 1320 -80 1320 -40 { lab=VSS}
N 1320 -110 1340 -110 { lab=VSS}
N 1340 -110 1340 -40 { lab=VSS}
N 1320 -40 1340 -40 { lab=VSS}
N 1070 -110 1100 -110 { lab=VSS}
N 1070 -110 1070 -40 { lab=VSS}
N 1140 -110 1280 -110 { lab=#net2}
N 1320 -170 1320 -140 { lab=#net3}
N 1100 -170 1100 -140 { lab=#net4}
N 1100 -400 1100 -230 { lab=#net2}
N 1320 -400 1320 -230 { lab=VS1_P}
N 1260 -200 1280 -200 { lab=VCN}
N 1140 -200 1160 -200 { lab=VCN}
N 1100 -260 1210 -260 { lab=#net2}
N 1210 -260 1210 -110 { lab=#net2}
N 1320 -200 1340 -200 { lab=VSS}
N 1340 -200 1340 -110 { lab=VSS}
N 1070 -200 1100 -200 { lab=VSS}
N 1070 -200 1070 -110 { lab=VSS}
N 560 -210 820 -210 { lab=VSS}
N 1320 -320 1340 -320 { lab=VS1_P}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -110 0 0 {name=M1
L=1
W=7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 -210 0 0 {name=M3
L=1
W=180
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 840 -210 0 1 {name=M4
L=1
W=180
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -200 0 1 {name=M9
L=1
W=7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1300 -110 0 0 {name=M10
L=1
W=7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -110 0 1 {name=M11
L=1
W=7
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1300 -200 0 0 {name=M12
L=1
W=7
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
C {devices/lab_wire.sym} 500 -210 0 0 {name=l12 sig_type=std_logic lab=IN_P
}
C {devices/lab_wire.sym} 880 -210 0 1 {name=l13 sig_type=std_logic lab=IN_M}
C {devices/ipin.sym} -220 -520 0 0 {name=p1 lab=IN_P}
C {devices/ipin.sym} -220 -480 0 0 {name=p2 lab=IN_M
}
C {devices/ipin.sym} -220 -440 0 0 {name=p3 lab=OUT}
C {devices/ipin.sym} -220 -400 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -220 -360 0 0 {name=p5 lab=VSS
}
C {devices/ipin.sym} -220 -310 0 0 {name=p6 lab=VCP}
C {devices/ipin.sym} -220 -270 0 0 {name=p7 lab=VBP}
C {devices/ipin.sym} -220 -230 0 0 {name=p8 lab=VCN}
C {devices/ipin.sym} -220 -200 0 0 {name=p9 lab=VBN}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 580 -470 0 1 {name=M5
L=1
W=7
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 800 -470 0 0 {name=M13
L=1
W=7
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
C {devices/lab_wire.sym} 440 -400 0 1 {name=l7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 400 -410 0 0 {name=M15
L=1
W=7
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
C {devices/lab_wire.sym} 730 -470 0 0 {name=l8 sig_type=std_logic lab=VBP_INT}
C {devices/lab_wire.sym} 720 -400 0 1 {name=l9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -410 0 0 {name=M16
L=1
W=7
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
C {devices/lab_wire.sym} 420 -470 0 0 {name=l10 sig_type=std_logic lab=VBP_INT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 200 -110 0 0 {name=M17
L=1
W=7
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 240 -470 0 1 {name=M18
L=1
W=7
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
C {devices/lab_wire.sym} 470 -40 0 0 {name=l6 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 470 -520 0 0 {name=l11 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 640 -110 0 0 {name=l14 sig_type=std_logic lab=VBN
}
C {devices/lab_wire.sym} 140 -110 0 0 {name=l15 sig_type=std_logic lab=VBN
}
C {devices/lab_wire.sym} 560 -340 0 1 {name=l16 sig_type=std_logic lab=VS1_P

}
C {devices/lab_wire.sym} 820 -360 0 1 {name=l17 sig_type=std_logic lab=VS1_M

}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1120 -430 0 1 {name=M14
L=1
W=7
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1300 -430 0 0 {name=M19
L=1
W=7
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
C {devices/lab_wire.sym} 1100 -480 0 1 {name=l20 sig_type=std_logic lab=VS1_M

}
C {devices/lab_wire.sym} 1180 -430 0 1 {name=l21 sig_type=std_logic lab=VCP

}
C {devices/lab_wire.sym} 1320 -480 0 0 {name=l22 sig_type=std_logic lab=VS1_P

}
C {devices/lab_wire.sym} 1160 -200 0 1 {name=l23 sig_type=std_logic lab=VCN

}
C {devices/lab_wire.sym} 1260 -200 0 0 {name=l24 sig_type=std_logic lab=VCN

}
C {devices/lab_wire.sym} 700 -210 0 0 {name=l1 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1340 -320 0 1 {name=l2 sig_type=std_logic lab=OUT

}
