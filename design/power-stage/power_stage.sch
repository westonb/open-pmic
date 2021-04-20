v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1160 -700 1160 -580 { lab=SW_NODE}
N 1160 -520 1160 -480 { lab=VSS}
N 1160 -550 1180 -550 { lab=VSS}
N 1180 -550 1180 -500 { lab=VSS}
N 1160 -500 1180 -500 { lab=VSS}
N 1160 -780 1160 -760 { lab=VDD_PWR}
N 1160 -780 1400 -780 { lab=VDD_PWR}
N 1400 -780 1400 -760 { lab=VDD_PWR}
N 1160 -730 1180 -730 { lab=VDD_PWR}
N 1180 -780 1180 -730 { lab=VDD_PWR}
N 1400 -730 1420 -730 { lab=VDD_PWR}
N 1420 -780 1420 -730 { lab=VDD_PWR}
N 1400 -780 1420 -780 { lab=VDD_PWR}
N 1400 -700 1400 -660 { lab=REF_CURRENT}
N 1080 -550 1120 -550 { lab=N_DRIVE}
N 1080 -730 1120 -730 { lab=P_DRIVE}
N 1340 -730 1360 -730 { lab=P_DRIVE}
N 960 -1220 960 -1200 { lab=VDD_PWR}
N 940 -940 960 -940 { lab=VSS}
N 960 -960 960 -940 { lab=VSS}
N 1480 -940 1500 -940 { lab=VSS}
N 1500 -960 1500 -940 { lab=VSS}
N 1320 -1120 1340 -1120 { lab=P_IN}
N 1500 -1220 1500 -1200 { lab=VDD_PWR}
N 1320 -1040 1340 -1040 { lab=P_IN_N}
N 1660 -1080 1680 -1080 { lab=P_DRIVE}
N 1120 -1080 1140 -1080 { lab=N_DRIVE}
N 780 -1120 800 -1120 { lab=N_IN}
N 780 -1040 800 -1040 { lab=N_IN_N}
C {devices/ipin.sym} 260 -580 0 0 {name=p2 lab=N_IN}
C {devices/ipin.sym} 260 -680 0 0 {name=p3 lab=VSS}
C {devices/ipin.sym} 260 -640 0 0 {name=p5 lab=P_IN}
C {devices/ipin.sym} 260 -620 0 0 {name=p6 lab=P_IN_N}
C {devices/ipin.sym} 260 -560 0 0 {name=p7 lab=N_IN_N}
C {devices/ipin.sym} 260 -720 0 0 {name=p1 lab=VDD_PWR}
C {devices/ipin.sym} 260 -520 0 0 {name=p8 lab=REF_CURRENT}
C {devices/lab_wire.sym} 960 -1220 0 0 {name=l1 sig_type=std_logic lab=VDD_PWR}
C {devices/lab_wire.sym} 940 -940 0 0 {name=l2 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1140 -550 0 0 {name=M13
L=0.5
W=4.6
nf=1
mult=2520
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1140 -730 0 0 {name=M14
L=0.5
W=4.6
nf=1
mult=5040
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1380 -730 0 0 {name=M15
L=0.5
W=4.6
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
C {devices/lab_wire.sym} 1160 -480 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1400 -660 0 0 {name=l6 sig_type=std_logic lab=REF_CURRENT}
C {devices/lab_wire.sym} 1080 -550 0 0 {name=l7 sig_type=std_logic lab=N_DRIVE}
C {devices/lab_wire.sym} 1080 -730 0 0 {name=l8 sig_type=std_logic lab=P_DRIVE}
C {devices/lab_wire.sym} 1330 -780 0 0 {name=l10 sig_type=std_logic lab=VDD_PWR}
C {devices/lab_wire.sym} 1340 -730 0 0 {name=l16 sig_type=std_logic lab=P_DRIVE}
C {devices/ipin.sym} 260 -480 0 0 {name=p9 lab=SW_NODE}
C {devices/lab_wire.sym} 1160 -630 0 0 {name=l17 sig_type=std_logic lab=SW_NODE}
C {design/power-stage/gate_drive.sym} 960 -1080 0 0 {name=x1}
C {design/power-stage/gate_drive.sym} 1500 -1080 0 0 {name=x2}
C {devices/lab_wire.sym} 1480 -940 0 0 {name=l26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 780 -1120 0 0 {name=l27 sig_type=std_logic lab=N_IN}
C {devices/lab_wire.sym} 780 -1040 0 0 {name=l28 sig_type=std_logic lab=N_IN_N}
C {devices/lab_wire.sym} 1140 -1080 0 1 {name=l29 sig_type=std_logic lab=N_DRIVE}
C {devices/lab_wire.sym} 1680 -1080 0 1 {name=l30 sig_type=std_logic lab=P_DRIVE}
C {devices/lab_wire.sym} 1320 -1120 0 0 {name=l31 sig_type=std_logic lab=P_IN}
C {devices/lab_wire.sym} 1320 -1040 0 0 {name=l32 sig_type=std_logic lab=P_IN_N}
C {devices/lab_wire.sym} 1500 -1220 0 0 {name=l33 sig_type=std_logic lab=VDD_PWR}
