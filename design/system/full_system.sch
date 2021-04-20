v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Power Rails} -120 -1490 0 0 0.4 0.4 {}
T {Signals to analog mux GPIO} -120 -1340 0 0 0.4 0.4 {}
T {Logic Signals to GPIO Pad} -120 -1020 0 0 0.4 0.4 {}
T {Logic Signals driven by LA bus} -120 -900 0 0 0.4 0.4 {}
T {switching node} -120 -620 0 0 0.4 0.4 {}
N 460 -1480 460 -1460 { lab=VDD}
N 460 -1480 540 -1480 { lab=VDD}
N 540 -1480 540 -1460 { lab=VDD}
N 620 -1480 620 -1460 { lab=VSS}
N 620 -1480 700 -1480 { lab=VSS}
N 700 -1480 700 -1460 { lab=VSS}
N 800 -1220 1080 -1220 { lab=PMOS_CTRL}
N 800 -1180 1080 -1180 { lab=PMOS_CTRL_N}
N 800 -1120 1080 -1120 { lab=NMOS_CTRL}
N 800 -1080 1080 -1080 { lab=NMOS_CTRL_N}
N 800 -1000 840 -1000 { lab=TIMEOUT_SIG}
N 740 -500 760 -500 { lab=CYCLE_END}
N 360 -380 380 -380 { lab=TIMEOUT_SIG}
N 1060 -1400 1080 -1400 { lab=VDD_PWR}
N 1060 -1320 1080 -1320 { lab=VSS}
N 1480 -1240 1500 -1240 { lab=SW_NODE}
N 1480 -1280 1500 -1280 { lab=SENSE_FET}
N 360 -620 380 -620 { lab=SENSE_FET}
N 360 -580 380 -580 { lab=SW_NODE}
N 360 -520 380 -520 { lab=VREF}
N 360 -480 380 -480 { lab=VFB}
N 360 -440 380 -440 { lab=VCOMP}
N 740 -420 760 -420 { lab=IMON}
N 620 -260 620 -220 { lab=ISLOPE}
N 480 -260 480 -220 { lab=IBIAS}
N 340 -1160 360 -1160 { lab=SW_EN}
N 340 -1220 360 -1220 { lab=CYCLE_END}
N 340 -1300 360 -1300 { lab=TIMEOUT_EXT}
N 340 -1260 360 -1260 { lab=TIMEOUT_SEL}
N 340 -1100 360 -1100 { lab=SW_OVERRIDE}
N 340 -1060 360 -1060 { lab=PMOS_VAL}
N 340 -1020 360 -1020 { lab=NMOS_VAL}
N 340 -960 360 -960 { lab=PMOS_DT}
N 340 -920 360 -920 { lab=NMOS_DT}
N 500 -760 500 -740 { lab=VDD}
N 1180 -780 1180 -760 { lab=VDD}
N 1300 -780 1300 -760 { lab=VSS}
N 620 -760 620 -740 { lab=VSS}
N 1060 -640 1080 -640 { lab=IOSC}
N 1400 -640 1420 -640 { lab=TIMEOUT_INT}
N 340 -1340 360 -1340 { lab=TIMEOUT_INT}
C {devices/iopin.sym} -120 -1440 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} -120 -1380 0 0 {name=p2 lab=VSS
}
C {devices/iopin.sym} -120 -1190 0 0 {name=p3 lab=IBIAS
}
C {devices/iopin.sym} -120 -1160 0 0 {name=p6 lab=ISLOPE
}
C {devices/iopin.sym} -120 -1280 0 0 {name=p7 lab=VREF
}
C {devices/iopin.sym} -120 -1250 0 0 {name=p8 lab=VFB
}
C {devices/iopin.sym} -120 -1220 0 0 {name=p9 lab=VCOMP
}
C {design/system/analog_subsystem.sym} 560 -500 0 0 {name=x1}
C {design/power-stage/power_stage.sym} 1280 -1260 0 0 {name=x2}
C {design/switch-control/switch_control.sym} 580 -1160 0 0 {name=x3}
C {devices/lab_wire.sym} 460 -1480 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 500 -760 0 1 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 760 -500 0 1 {name=l3 sig_type=std_logic lab=CYCLE_END}
C {devices/lab_wire.sym} 340 -1220 0 0 {name=l4 sig_type=std_logic lab=CYCLE_END}
C {devices/lab_wire.sym} 840 -1000 0 1 {name=l5 sig_type=std_logic lab=TIMEOUT_SIG}
C {devices/lab_wire.sym} 820 -1220 0 1 {name=l6 sig_type=std_logic lab=PMOS_CTRL}
C {devices/lab_wire.sym} 820 -1180 0 1 {name=l7 sig_type=std_logic lab=PMOS_CTRL_N}
C {devices/lab_wire.sym} 820 -1120 0 1 {name=l8 sig_type=std_logic lab=NMOS_CTRL}
C {devices/lab_wire.sym} 820 -1080 0 1 {name=l9 sig_type=std_logic lab=NMOS_CTRL_N}
C {devices/lab_wire.sym} 360 -380 0 0 {name=l10 sig_type=std_logic lab=TIMEOUT_SIG}
C {devices/lab_wire.sym} 620 -1480 0 1 {name=l11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1060 -1400 0 0 {name=l12 sig_type=std_logic lab=VDD_PWR}
C {devices/lab_wire.sym} 1060 -1320 0 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1500 -1240 0 1 {name=l14 sig_type=std_logic lab=SW_NODE}
C {devices/lab_wire.sym} 1500 -1280 0 1 {name=l15 sig_type=std_logic lab=SENSE_FET}
C {devices/iopin.sym} -120 -1410 0 0 {name=p11 lab=VDD_PWR
}
C {devices/lab_wire.sym} 360 -620 0 0 {name=l16 sig_type=std_logic lab=SENSE_FET}
C {devices/lab_wire.sym} 360 -580 0 0 {name=l17 sig_type=std_logic lab=SW_NODE}
C {devices/lab_wire.sym} 360 -520 0 0 {name=l18 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 360 -480 0 0 {name=l19 sig_type=std_logic lab=VFB}
C {devices/lab_wire.sym} 360 -440 0 0 {name=l20 sig_type=std_logic lab=VCOMP}
C {devices/lab_wire.sym} 480 -220 0 0 {name=l21 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 620 -220 0 0 {name=l22 sig_type=std_logic lab=ISLOPE}
C {devices/lab_wire.sym} 760 -420 0 1 {name=l23 sig_type=std_logic lab=IMON}
C {devices/iopin.sym} -120 -1130 0 0 {name=p12 lab=IMON}
C {devices/iopin.sym} -120 -970 0 0 {name=p13 lab=SW_EN
}
C {devices/iopin.sym} -120 -940 0 0 {name=p14 lab=TIMEOUT_EXT
}
C {devices/iopin.sym} -120 -850 0 0 {name=p15 lab=TIMEOUT_SEL
}
C {devices/iopin.sym} -120 -820 0 0 {name=p16 lab=SW_OVERRIDE
}
C {devices/iopin.sym} -120 -790 0 0 {name=p17 lab=PMOS_VAL
}
C {devices/iopin.sym} -120 -760 0 0 {name=p18 lab=NMOS_VAL
}
C {devices/iopin.sym} -120 -730 0 0 {name=p19 lab=PMOS_DT
}
C {devices/iopin.sym} -120 -700 0 0 {name=p20 lab=NMOS_DT
}
C {devices/lab_wire.sym} 340 -1160 0 0 {name=l24 sig_type=std_logic lab=SW_EN}
C {devices/lab_wire.sym} 340 -1300 0 0 {name=l25 sig_type=std_logic lab=TIMEOUT_EXT}
C {devices/lab_wire.sym} 340 -1260 0 0 {name=l26 sig_type=std_logic lab=TIMEOUT_SEL}
C {devices/lab_wire.sym} 340 -1100 0 0 {name=l27 sig_type=std_logic lab=SW_OVERRIDE}
C {devices/lab_wire.sym} 340 -1060 0 0 {name=l28 sig_type=std_logic lab=PMOS_VAL}
C {devices/lab_wire.sym} 340 -1020 0 0 {name=l29 sig_type=std_logic lab=NMOS_VAL}
C {devices/lab_wire.sym} 340 -960 0 0 {name=l30 sig_type=std_logic lab=PMOS_DT}
C {devices/lab_wire.sym} 340 -920 0 0 {name=l31 sig_type=std_logic lab=NMOS_DT}
C {devices/iopin.sym} -120 -1100 0 0 {name=p4 lab=IOSC}
C {design/oscillator/osc_placeholder.sym} 1230 -660 0 0 {name=x4}
C {devices/lab_wire.sym} 1180 -780 0 1 {name=l32 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1300 -780 0 1 {name=l33 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -760 0 1 {name=l34 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1060 -640 0 0 {name=l35 sig_type=std_logic lab=IOSC}
C {devices/lab_wire.sym} 1420 -640 0 1 {name=l36 sig_type=std_logic lab=TIMEOUT_INT}
C {devices/lab_wire.sym} 340 -1340 0 0 {name=l37 sig_type=std_logic lab=TIMEOUT_INT}
C {devices/iopin.sym} -120 -560 0 0 {name=p5 lab=SW_NODE
}
