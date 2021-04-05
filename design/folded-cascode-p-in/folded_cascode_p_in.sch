v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 680 -560 680 -540 { lab=VDD}
N 680 -560 1100 -560 { lab=VDD}
N 1100 -560 1100 -540 { lab=VDD}
N 1100 -560 1320 -560 { lab=VDD}
N 1320 -560 1320 -540 { lab=VDD}
N 1080 -510 1100 -510 { lab=VDD}
N 1080 -560 1080 -510 { lab=VDD}
N 1320 -510 1340 -510 { lab=VDD}
N 1340 -560 1340 -510 { lab=VDD}
N 1320 -560 1340 -560 { lab=VDD}
N 680 -510 700 -510 { lab=VDD}
N 700 -560 700 -510 { lab=VDD}
N 1080 -410 1100 -410 { lab=VDD}
N 1080 -510 1080 -410 { lab=VDD}
N 1320 -410 1340 -410 { lab=VDD}
N 1340 -510 1340 -410 { lab=VDD}
N 1100 -480 1100 -440 { lab=#net1}
N 1320 -480 1320 -440 { lab=#net2}
N 1140 -510 1280 -510 { lab=#net3}
N 1140 -410 1160 -410 { lab=VCP}
N 1260 -410 1280 -410 { lab=VCP}
N 1200 -510 1200 -360 { lab=#net3}
N 1100 -360 1200 -360 { lab=#net3}
N 1100 -380 1100 -360 { lab=#net3}
N 1320 -380 1320 -360 { lab=OUT}
N 540 -410 820 -410 { lab=VDD}
N 680 -480 680 -460 { lab=#net4}
N 540 -460 680 -460 { lab=#net4}
N 540 -460 540 -440 { lab=#net4}
N 680 -460 820 -460 { lab=#net4}
N 820 -460 820 -440 { lab=#net4}
N 540 -120 540 -80 { lab=VSS}
N 540 -80 1320 -80 { lab=VSS}
N 520 -150 540 -150 { lab=VSS}
N 520 -150 520 -80 { lab=VSS}
N 520 -80 540 -80 { lab=VSS}
N 820 -150 840 -150 { lab=VSS}
N 840 -150 840 -80 { lab=VSS}
N 820 -120 820 -80 { lab=VSS}
N 1320 -80 1340 -80 { lab=VSS}
N 540 -380 540 -180 { lab=VS1_P}
N 820 -380 820 -180 { lab=VS1_M}
N 1080 -190 1100 -190 { lab=VSS}
N 1080 -190 1080 -80 { lab=VSS}
N 1320 -190 1340 -190 { lab=VSS}
N 1340 -190 1340 -80 { lab=VSS}
N 1140 -190 1180 -190 { lab=VCN}
N 1180 -190 1280 -190 { lab=VCN}
N 1100 -360 1100 -220 { lab=#net3}
N 1320 -360 1320 -220 { lab=OUT}
N 1100 -160 1100 -140 { lab=VS1_M}
N 1320 -160 1320 -140 { lab=VS1_P}
N 580 -150 780 -150 { lab=VBN_INT}
N 660 -180 660 -150 { lab=VBN_INT}
N 600 -210 620 -210 { lab=VBN_INT}
N 600 -210 600 -150 { lab=VBN_INT}
N 660 -280 660 -240 { lab=VS1_M}
N 660 -280 820 -280 { lab=VS1_M}
N 660 -210 670 -210 { lab=VDD}
N 670 -210 670 -200 { lab=VDD}
N 670 -200 680 -200 { lab=VDD}
N 400 -280 400 -240 { lab=VS1_P}
N 400 -280 540 -280 { lab=VS1_P}
N 400 -210 410 -210 { lab=VDD}
N 410 -210 410 -200 { lab=VDD}
N 410 -200 420 -200 { lab=VDD}
N 340 -210 360 -210 { lab=VBN_INT}
N 300 -210 300 -150 { lab=VBN_INT}
N 400 -180 400 -150 { lab=VBN_INT}
N 280 -150 300 -150 { lab=VBN_INT}
N 240 -210 240 -180 { lab=VBN_INT}
N 240 -210 300 -210 { lab=VBN_INT}
N 240 -120 240 -80 { lab=VSS}
N 280 -80 520 -80 { lab=VSS}
N 240 -480 240 -210 { lab=VBN_INT}
N 240 -560 240 -540 { lab=VDD}
N 280 -560 680 -560 { lab=VDD}
N 240 -510 260 -510 { lab=VDD}
N 260 -560 260 -510 { lab=VDD}
N 180 -510 200 -510 { lab=VBP}
N 340 -210 340 -150 { lab=VBN_INT}
N 340 -150 400 -150 { lab=VBN_INT}
N 300 -150 340 -150 { lab=VBN_INT}
N 240 -80 280 -80 { lab=VSS}
N 260 -560 280 -560 { lab=VDD}
N 240 -560 260 -560 { lab=VDD}
N 480 -410 500 -410 { lab=IN_M}
N 860 -410 880 -410 { lab=IN_P}
N 1320 -320 1340 -320 { lab=OUT}
N 620 -510 640 -510 { lab=VBP}
N 220 -150 240 -150 { lab=VSS}
N 220 -140 220 -80 { lab=VSS}
N 220 -80 240 -80 { lab=VSS}
N 220 -150 220 -140 { lab=VSS}
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 660 -510 0 0 {name=M7
L=1
W=12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 520 -410 0 0 {name=M8
L=1
W=12
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 840 -410 0 1 {name=M15
L=1
W=12
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 560 -150 0 1 {name=M16
L=1
W=12
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 800 -150 0 0 {name=M20
L=1
W=12
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1120 -410 0 1 {name=M22
L=1
W=12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1120 -510 0 1 {name=M23
L=1
W=12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1300 -410 0 0 {name=M24
L=1
W=12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1300 -510 0 0 {name=M25
L=1
W=12
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1300 -190 0 0 {name=M26
L=1
W=12
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -190 0 1 {name=M27
L=1
W=12
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
C {devices/lab_wire.sym} 1160 -410 0 1 {name=l3 sig_type=std_logic lab=VCP

}
C {devices/lab_wire.sym} 1260 -410 0 0 {name=l4 sig_type=std_logic lab=VCP

}
C {devices/lab_wire.sym} 680 -410 0 0 {name=l5 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 1180 -190 0 1 {name=l18 sig_type=std_logic lab=VCN

}
C {devices/lab_wire.sym} 1100 -140 0 1 {name=l19 sig_type=std_logic lab=VS1_M

}
C {devices/lab_wire.sym} 1320 -140 0 0 {name=l26 sig_type=std_logic lab=VS1_P

}
C {devices/lab_wire.sym} 820 -320 0 1 {name=l27 sig_type=std_logic lab=VS1_M

}
C {devices/lab_wire.sym} 540 -320 0 0 {name=l28 sig_type=std_logic lab=VS1_P

}
C {devices/lab_wire.sym} 680 -200 0 1 {name=l29 sig_type=std_logic lab=VDD

}
C {devices/lab_wire.sym} 420 -200 0 1 {name=l30 sig_type=std_logic lab=VDD

}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 -150 0 1 {name=M29
L=1
W=12
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 220 -510 0 0 {name=M30
L=1
W=12
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
C {devices/lab_wire.sym} 180 -510 0 0 {name=l31 sig_type=std_logic lab=VBP

}
C {devices/lab_wire.sym} 250 -210 0 1 {name=l32 sig_type=std_logic lab=VBN_INT

}
C {devices/lab_wire.sym} 690 -150 0 1 {name=l33 sig_type=std_logic lab=VBN_INT

}
C {devices/lab_wire.sym} 880 -410 0 1 {name=l34 sig_type=std_logic lab=IN_P
}
C {devices/lab_wire.sym} 480 -410 0 0 {name=l35 sig_type=std_logic lab=IN_M}
C {devices/lab_wire.sym} 1340 -320 0 1 {name=l36 sig_type=std_logic lab=OUT

}
C {devices/lab_wire.sym} 620 -510 0 0 {name=l37 sig_type=std_logic lab=VBP

}
C {devices/lab_wire.sym} 430 -560 0 1 {name=l1 sig_type=std_logic lab=VDD

}
C {devices/lab_wire.sym} 320 -80 0 1 {name=l2 sig_type=std_logic lab=VSS

}
