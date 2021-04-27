v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -340 20 -320 { lab=VDD}
N 140 -340 140 -320 { lab=VSS}
N 260 -200 280 -200 { lab=BIAS_OPA_N}
N 260 -140 280 -140 { lab=BIAS_OPA_P}
N 260 -80 280 -80 { lab=BIAS_CMP}
N 660 -420 660 -400 { lab=VDD}
N 800 -420 800 -400 { lab=VSS}
N 820 -40 820 0 { lab=BIAS_OPA_P}
N 1500 -800 1500 -780 { lab=VSS}
N 1380 -800 1380 -780 { lab=VDD}
N 680 -800 680 -780 { lab=VDD}
N 800 -800 800 -780 { lab=VSS}
N 560 -540 580 -540 { lab=BIAS_OPA_N}
N 1600 -600 1620 -600 { lab=CYCLE_END}
N 1260 -540 1280 -540 { lab=TIMEOUT}
N 1260 -600 1280 -600 { lab=VCOMP}
N 1260 -660 1280 -660 { lab=ISENSE}
N 1520 -420 1520 -400 { lab=BIAS_CMP}
N 1380 -420 1380 -340 { lab=ISLOPE}
N 900 -640 920 -640 { lab=IMON}
N 900 -580 920 -580 { lab=ISENSE}
N -120 -140 -100 -140 { lab=IBIAS}
N 540 -260 560 -260 { lab=VREF}
N 540 -180 560 -180 { lab=VFB}
N 900 -220 920 -220 { lab=VCOMP}
N 560 -660 580 -660 { lab=SW_NODE}
N 560 -600 580 -600 { lab=SENSE_FET}
N 980 -120 980 -100 { lab=VSS}
N 980 -150 1000 -150 { lab=VSS}
N 1000 -150 1000 -100 { lab=VSS}
N 980 -100 1000 -100 { lab=VSS}
N 920 -150 940 -150 { lab=VCOMP}
N 920 -190 920 -150 { lab=VCOMP}
N 920 -190 980 -190 { lab=VCOMP}
N 980 -190 980 -180 { lab=VCOMP}
N 920 -220 920 -190 { lab=VCOMP}
N 1480 -420 1480 -380 { lab=BIAS_CMP2}
N 1420 -420 1420 -350 { lab=IOC}
N 1600 -560 1620 -560 { lab=OVERCURRENT}
N 260 -40 280 -40 { lab=BIAS_CMP2}
C {devices/iopin.sym} 0 -900 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} 0 -870 0 0 {name=p2 lab=VSS
}
C {design/folded-cascode-p-in/folded_cascode_p_in.sym} 720 -220 0 0 {name=x1}
C {design/current-sense/current_sense.sym} 740 -600 0 0 {name=x2}
C {design/modulator/modulator.sym} 1440 -600 0 0 {name=x3}
C {design/bias-circuit/bias_distribution.sym} 80 -140 0 0 {name=x4}
C {devices/lab_wire.sym} 680 -800 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1380 -800 0 1 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 660 -420 0 1 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 800 -420 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 20 -340 0 1 {name=l5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 -340 0 1 {name=l6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 800 -800 0 1 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1500 -800 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -200 0 1 {name=l9 sig_type=std_logic lab=BIAS_OPA_N}
C {devices/lab_wire.sym} 280 -140 0 1 {name=l10 sig_type=std_logic lab=BIAS_OPA_P}
C {devices/lab_wire.sym} 280 -80 0 1 {name=l11 sig_type=std_logic lab=BIAS_CMP}
C {devices/lab_wire.sym} 560 -540 0 0 {name=l13 sig_type=std_logic lab=BIAS_OPA_N}
C {devices/lab_wire.sym} 1620 -600 0 1 {name=l14 sig_type=std_logic lab=CYCLE_END}
C {devices/lab_wire.sym} 920 -640 0 1 {name=l15 sig_type=std_logic lab=IMON}
C {devices/lab_wire.sym} 920 -580 0 1 {name=l16 sig_type=std_logic lab=ISENSE}
C {devices/lab_wire.sym} 1260 -660 0 0 {name=l17 sig_type=std_logic lab=ISENSE}
C {devices/lab_wire.sym} 1260 -600 0 0 {name=l18 sig_type=std_logic lab=VCOMP}
C {devices/lab_wire.sym} 1260 -540 0 0 {name=l19 sig_type=std_logic lab=TIMEOUT}
C {devices/lab_wire.sym} 1520 -400 0 1 {name=l20 sig_type=std_logic lab=BIAS_CMP}
C {devices/lab_wire.sym} 1380 -340 0 0 {name=l21 sig_type=std_logic lab=ISLOPE}
C {devices/iopin.sym} 0 -820 0 0 {name=p3 lab=IBIAS
}
C {devices/iopin.sym} 0 -720 0 0 {name=p4 lab=SENSE_FET
}
C {devices/iopin.sym} 0 -690 0 0 {name=p5 lab=SW_NODE
}
C {devices/iopin.sym} 0 -790 0 0 {name=p6 lab=ISLOPE
}
C {devices/iopin.sym} 0 -640 0 0 {name=p7 lab=VREF
}
C {devices/iopin.sym} 0 -610 0 0 {name=p8 lab=VFB
}
C {devices/iopin.sym} 0 -580 0 0 {name=p9 lab=VCOMP
}
C {devices/lab_wire.sym} 540 -260 0 0 {name=l22 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 540 -180 0 0 {name=l23 sig_type=std_logic lab=VFB}
C {devices/iopin.sym} 0 -530 0 0 {name=p10 lab=TIMEOUT
}
C {devices/lab_wire.sym} -120 -140 0 0 {name=l24 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 920 -220 0 1 {name=l25 sig_type=std_logic lab=VCOMP}
C {devices/lab_wire.sym} 560 -660 0 0 {name=l26 sig_type=std_logic lab=SW_NODE}
C {devices/lab_wire.sym} 560 -600 0 0 {name=l27 sig_type=std_logic lab=SENSE_FET}
C {devices/iopin.sym} 0 -490 0 0 {name=p11 lab=CYCLE_END
}
C {devices/iopin.sym} 0 -420 0 0 {name=p12 lab=IMON
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 960 -150 0 0 {name=M1
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
C {devices/lab_wire.sym} 1000 -100 0 1 {name=l28 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 820 0 0 1 {name=l12 sig_type=std_logic lab=BIAS_OPA_P}
C {devices/lab_wire.sym} 1480 -380 0 1 {name=l29 sig_type=std_logic lab=BIAS_CMP2}
C {devices/lab_wire.sym} 1420 -350 0 1 {name=l30 sig_type=std_logic lab=IOC}
C {devices/iopin.sym} 0 -760 0 0 {name=p13 lab=IOC
}
C {devices/iopin.sym} 0 -460 0 0 {name=p14 lab=OVERCURRENT}
C {devices/lab_wire.sym} 1620 -560 0 1 {name=l31 sig_type=std_logic lab=OVERCURRENT}
C {devices/lab_wire.sym} 280 -40 0 1 {name=l32 sig_type=std_logic lab=BIAS_CMP2}
