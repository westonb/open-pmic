v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {slope = ri * Vin / L 
ri = 1.69} 180 -420 0 0 0.4 0.4 {}
T {source for current sensing} 2120 -660 0 0 0.4 0.4 {}
T {I/O Pad Emulation} 260 -1790 0 0 0.4 0.4 {}
N 550 -510 550 -490 { lab=#net1}
N 550 -430 550 -410 { lab=GND}
N 560 -150 560 -130 { lab=GND}
N 560 -230 560 -210 { lab=#net2}
N 780 -500 780 -480 { lab=#net3}
N 780 -420 780 -400 { lab=GND}
N 560 -700 560 -680 { lab=#net4}
N 560 -620 560 -600 { lab=GND}
N 820 -160 820 -140 { lab=GND}
N 820 -240 820 -220 { lab=#net5}
N 1200 -720 1210 -720 { lab=V3V3}
N 1210 -720 1220 -720 { lab=V3V3}
N 1200 -680 1220 -680 { lab=VDD_PWR}
N 1200 -640 1220 -640 { lab=VSS}
N 2340 -540 2340 -500 { lab=#net6}
N 2340 -560 2340 -540 { lab=#net6}
N 2240 -560 2340 -560 { lab=#net6}
N 2240 -560 2240 -540 { lab=#net6}
N 2240 -480 2240 -460 { lab=#net7}
N 2340 -440 2340 -380 { lab=VOUT}
N 2240 -380 2340 -380 { lab=VOUT}
N 2240 -400 2240 -380 { lab=VOUT}
N 2340 -280 2340 -260 { lab=GND}
N 2340 -380 2340 -340 { lab=VOUT}
N 2460 -280 2460 -260 { lab=GND}
N 2340 -380 2460 -380 { lab=VOUT}
N 2460 -370 2460 -340 { lab=VOUT}
N 2460 -380 2460 -370 { lab=VOUT}
N 2140 -560 2240 -560 { lab=#net6}
N 2340 -560 2360 -560 { lab=#net6}
N 2080 -700 2080 -680 { lab=SW_NODE}
N 2080 -620 2080 -560 { lab=#net6}
N 2080 -560 2140 -560 { lab=#net6}
N 2580 -320 2580 -280 { lab=VFB}
N 2580 -220 2580 -200 { lab=GND}
N 2460 -380 2580 -380 { lab=VOUT}
N 2580 -300 2600 -300 { lab=VFB}
N 1200 -540 1220 -540 { lab=VREF}
N 1200 -500 1220 -500 { lab=VFB}
N 1060 -160 1060 -120 { lab=GND}
N 1060 -240 1060 -220 { lab=#net8}
N 1200 -460 1220 -460 { lab=VCOMP}
N 1200 -380 1220 -380 { lab=ISLOPE}
N 1200 -420 1220 -420 { lab=IBIAS}
N 700 -700 700 -680 { lab=#net9}
N 700 -620 700 -600 { lab=GND}
N 1200 -340 1220 -340 { lab=IMON}
N 300 -150 300 -130 { lab=GND}
N 300 -230 300 -210 { lab=#net10}
N 1200 -300 1220 -300 { lab=IOSC}
N 60 -160 60 -140 { lab=VSS}
N 60 -240 60 -220 { lab=TIMEOUT_EXT}
N 60 -260 80 -260 { lab=TIMEOUT_EXT}
N 60 -260 60 -240 { lab=TIMEOUT_EXT}
N 1780 -680 1800 -680 { lab=TIMEOUT_EXT}
N 1780 -720 1800 -720 { lab=SW_EN}
N 1780 -580 1800 -580 { lab=VSS}
N 1800 -580 1800 -360 { lab=VSS}
N 1780 -540 1800 -540 { lab=VSS}
N 1780 -500 1800 -500 { lab=VSS}
N 1780 -460 1800 -460 { lab=VSS}
N 1780 -420 1800 -420 { lab=VSS}
N 1780 -380 1800 -380 { lab=VSS}
N 1800 -360 1820 -360 { lab=VSS}
N -40 -240 -40 -220 { lab=SW_EN}
N -40 -160 -40 -140 { lab=VSS}
N 780 -1140 820 -1140 { lab=VREF_EXT}
N 780 -1140 780 -1120 { lab=VREF_EXT}
N 780 -1060 780 -1040 { lab=VSS}
N 760 -1040 780 -1040 { lab=VSS}
N 880 -1140 900 -1140 { lab=VREF}
N 740 -1140 780 -1140 { lab=VREF_EXT}
N 380 -1140 420 -1140 { lab=IBIAS_EXT}
N 380 -1140 380 -1120 { lab=IBIAS_EXT}
N 380 -1060 380 -1040 { lab=VSS}
N 360 -1040 380 -1040 { lab=VSS}
N 480 -1140 500 -1140 { lab=IBIAS}
N 340 -1140 380 -1140 { lab=IBIAS_EXT}
N 760 -1340 800 -1340 { lab=VFB_EXT}
N 760 -1340 760 -1320 { lab=VFB_EXT}
N 760 -1260 760 -1240 { lab=VSS}
N 740 -1240 760 -1240 { lab=VSS}
N 860 -1340 880 -1340 { lab=VFB}
N 720 -1340 760 -1340 { lab=VFB_EXT}
N 380 -1340 420 -1340 { lab=VCOMP_EXT}
N 380 -1340 380 -1320 { lab=VCOMP_EXT}
N 380 -1260 380 -1240 { lab=VSS}
N 360 -1240 380 -1240 { lab=VSS}
N 480 -1340 500 -1340 { lab=VCOMP}
N 340 -1340 380 -1340 { lab=VCOMP_EXT}
N 800 -1560 840 -1560 { lab=ISLOPE_EXT}
N 800 -1560 800 -1540 { lab=ISLOPE_EXT}
N 800 -1480 800 -1460 { lab=VSS}
N 780 -1460 800 -1460 { lab=VSS}
N 900 -1560 920 -1560 { lab=ISLOPE}
N 760 -1560 800 -1560 { lab=ISLOPE_EXT}
N 400 -1560 440 -1560 { lab=IOSC_EXT}
N 400 -1560 400 -1540 { lab=IOSC_EXT}
N 400 -1480 400 -1460 { lab=VSS}
N 380 -1460 400 -1460 { lab=VSS}
N 500 -1560 520 -1560 { lab=IOSC}
N 360 -1560 400 -1560 { lab=IOSC_EXT}
N 780 -1760 820 -1760 { lab=IMON_EXT}
N 780 -1760 780 -1740 { lab=IMON_EXT}
N 780 -1680 780 -1660 { lab=VSS}
N 760 -1660 780 -1660 { lab=VSS}
N 880 -1760 900 -1760 { lab=IMON}
N 740 -1760 780 -1760 { lab=IMON_EXT}
N 560 -780 560 -760 { lab=VREF_EXT}
N 700 -780 700 -760 { lab=IMON_EXT}
N 300 -310 300 -290 { lab=IOSC_EXT}
N 560 -310 560 -290 { lab=IBIAS_EXT}
N 820 -320 820 -300 { lab=ISLOPE_EXT}
N 1060 -320 1060 -300 { lab=VCOMP_EXT}
N 880 -520 900 -520 { lab=VDD_PWR}
N 780 -520 820 -520 { lab=#net3}
N 780 -520 780 -500 { lab=#net3}
N 640 -520 660 -520 { lab=V3V3}
N 550 -520 580 -520 { lab=#net1}
N 550 -520 550 -510 { lab=#net1}
N 1200 -640 1200 -610 { lab=VSS}
N 1120 -640 1200 -640 { lab=VSS}
N 1040 -640 1060 -640 { lab=GND}
N 1040 -640 1040 -620 { lab=GND}
N 820 -230 890 -230 { lab=#net5}
N 890 -230 890 -220 { lab=#net5}
N 890 -160 890 -140 { lab=GND}
N 640 -220 640 -210 { lab=#net5}
N 640 -150 640 -130 { lab=GND}
N 380 -220 380 -210 { lab=#net5}
N 380 -150 380 -130 { lab=GND}
N 300 -220 380 -220 {}
N 560 -220 640 -220 {}
C {devices/code_shown.sym} 198.75 -701.875 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.save all
.options savecurrents
tran 10n 300u
write full_system_tb.raw
.endc
"}
C {devices/code.sym} -290 -440 0 0 {name=STDCELL_MODELS 
only_toplevel=true
place=end
format="tcleval(@value )"
value="[sky130_models]"
name=s1 only_toplevel=false value=blabla}
C {devices/code.sym} -290 -270 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice ff
"
}
C {devices/vsource.sym} 550 -460 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 550 -410 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 660 -520 0 1 {name=l3 sig_type=std_logic lab=V3V3
}
C {devices/isource.sym} 560 -180 2 0 {name=I0 value=100u
}
C {devices/gnd.sym} 560 -130 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 560 -310 0 0 {name=l4 sig_type=std_logic lab=IBIAS_EXT
}
C {devices/vsource.sym} 780 -450 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 780 -400 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 900 -520 0 1 {name=l43 sig_type=std_logic lab=VDD_PWR
}
C {devices/vsource.sym} 560 -650 0 0 {name=V6 value=1.25}
C {devices/gnd.sym} 560 -600 0 0 {name=l54 lab=GND}
C {devices/lab_pin.sym} 560 -780 0 0 {name=l55 sig_type=std_logic lab=VREF_EXT
}
C {devices/isource.sym} 820 -190 2 0 {name=I4 value=20u
}
C {devices/gnd.sym} 820 -140 0 0 {name=l78 lab=GND}
C {devices/lab_pin.sym} 820 -320 0 0 {name=l79 sig_type=std_logic lab=ISLOPE_EXT
}
C {design/system/full_system.sym} 1500 -460 0 0 {name=x1}
C {devices/lab_pin.sym} 1200 -720 0 0 {name=l9 sig_type=std_logic lab=V3V3
}
C {devices/lab_pin.sym} 1200 -680 0 0 {name=l10 sig_type=std_logic lab=VDD_PWR
}
C {devices/lab_pin.sym} 1200 -540 0 0 {name=l12 sig_type=std_logic lab=VREF
}
C {devices/ind.sym} 2240 -510 0 0 {name=L1
m=1
value=22u
footprint=1206
device=inductor}
C {devices/res.sym} 2240 -430 2 0 {name=R3
value=0.1
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 2340 -470 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2340 -310 0 0 {name=C3
m=1
value=47u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2340 -260 0 0 {name=l35 lab=GND}
C {devices/res.sym} 2460 -310 2 0 {name=R4
value=20
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2460 -260 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 2080 -700 2 0 {name=l20 sig_type=std_logic lab=SW_NODE
}
C {devices/vsource.sym} 2080 -650 0 0 {name=V4 value=0}
C {devices/res.sym} 2580 -350 2 0 {name=R2
value=17.6k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 2340 -410 2 0 {name=l57 sig_type=std_logic lab=VOUT
}
C {devices/res.sym} 2580 -250 2 0 {name=R5
value=40k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2580 -200 0 0 {name=l58 lab=GND}
C {devices/lab_pin.sym} 2600 -300 2 0 {name=l59 sig_type=std_logic lab=VFB
}
C {devices/lab_pin.sym} 1780 -280 2 0 {name=l13 sig_type=std_logic lab=SW_NODE
}
C {devices/lab_pin.sym} 1200 -500 2 1 {name=l14 sig_type=std_logic lab=VFB
}
C {devices/capa.sym} 1060 -190 0 0 {name=C5
m=1
value=200p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1060 -120 0 0 {name=l61 lab=GND}
C {devices/lab_pin.sym} 1200 -460 2 1 {name=l15 sig_type=std_logic lab=VCOMP
}
C {devices/lab_pin.sym} 1060 -320 2 1 {name=l16 sig_type=std_logic lab=VCOMP_EXT
}
C {devices/lab_pin.sym} 1200 -380 0 0 {name=l5 sig_type=std_logic lab=ISLOPE
}
C {devices/lab_pin.sym} 1200 -420 0 0 {name=l6 sig_type=std_logic lab=IBIAS
}
C {devices/vsource.sym} 700 -650 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 700 -600 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 700 -780 0 0 {name=l8 sig_type=std_logic lab=IMON_EXT
}
C {devices/lab_pin.sym} 1200 -340 0 0 {name=l17 sig_type=std_logic lab=IMON
}
C {devices/isource.sym} 300 -180 2 0 {name=I1 value=20u
}
C {devices/gnd.sym} 300 -130 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 300 -310 0 0 {name=l19 sig_type=std_logic lab=IOSC_EXT
}
C {devices/lab_pin.sym} 1200 -300 0 0 {name=l21 sig_type=std_logic lab=IOSC
}
C {devices/vsource.sym} 60 -190 0 0 {name=V7 value="PULSE(0 3.3 0 3n 3n 200n 2u)"}
C {devices/lab_pin.sym} 80 -260 0 1 {name=l23 sig_type=std_logic lab=TIMEOUT_EXT
}
C {devices/lab_pin.sym} 1800 -680 0 1 {name=l24 sig_type=std_logic lab=TIMEOUT_EXT
}
C {devices/lab_pin.sym} 1200 -610 0 0 {name=l27 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1820 -360 0 1 {name=l28 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} -40 -190 0 0 {name=V3 value=3.3}
C {devices/lab_pin.sym} -40 -240 0 0 {name=l29 sig_type=std_logic lab=SW_EN
}
C {devices/lab_pin.sym} 1800 -720 0 1 {name=l30 sig_type=std_logic lab=SW_EN
}
C {devices/lab_pin.sym} -40 -140 0 0 {name=l22 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 60 -140 0 0 {name=l25 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 900 -1140 0 1 {name=l26 sig_type=std_logic lab=VREF
}
C {devices/lab_pin.sym} 880 -1340 2 0 {name=l31 sig_type=std_logic lab=VFB
}
C {devices/lab_pin.sym} 500 -1340 2 0 {name=l32 sig_type=std_logic lab=VCOMP
}
C {devices/lab_pin.sym} 920 -1560 0 1 {name=l33 sig_type=std_logic lab=ISLOPE
}
C {devices/lab_pin.sym} 500 -1140 0 1 {name=l34 sig_type=std_logic lab=IBIAS
}
C {devices/lab_pin.sym} 900 -1760 0 1 {name=l36 sig_type=std_logic lab=IMON
}
C {devices/lab_pin.sym} 520 -1560 0 1 {name=l37 sig_type=std_logic lab=IOSC
}
C {devices/res.sym} 850 -1140 1 0 {name=R1
value=120
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 780 -1090 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 760 -1040 0 0 {name=l38 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 740 -1140 0 0 {name=l40 sig_type=std_logic lab=VREF_EXT
}
C {devices/res.sym} 450 -1140 1 0 {name=R6
value=120
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 380 -1090 0 0 {name=C4
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 360 -1040 0 0 {name=l44 sig_type=std_logic lab=VSS
}
C {devices/res.sym} 830 -1340 1 0 {name=R7
value=120
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 760 -1290 0 0 {name=C6
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 740 -1240 0 0 {name=l47 sig_type=std_logic lab=VSS
}
C {devices/res.sym} 450 -1340 1 0 {name=R8
value=120
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 380 -1290 0 0 {name=C7
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 360 -1240 0 0 {name=l50 sig_type=std_logic lab=VSS
}
C {devices/res.sym} 870 -1560 1 0 {name=R9
value=120
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 800 -1510 0 0 {name=C8
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 780 -1460 0 0 {name=l49 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 760 -1560 0 0 {name=l51 sig_type=std_logic lab=ISLOPE_EXT
}
C {devices/res.sym} 470 -1560 1 0 {name=R10
value=120
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 400 -1510 0 0 {name=C9
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 380 -1460 0 0 {name=l52 sig_type=std_logic lab=VSS
}
C {devices/res.sym} 850 -1760 1 0 {name=R11
value=120
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 780 -1710 0 0 {name=C10
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 760 -1660 0 0 {name=l53 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 360 -1560 0 0 {name=l41 sig_type=std_logic lab=IOSC_EXT
}
C {devices/lab_pin.sym} 340 -1340 2 1 {name=l45 sig_type=std_logic lab=VCOMP_EXT
}
C {devices/lab_pin.sym} 340 -1140 0 0 {name=l46 sig_type=std_logic lab=IBIAS_EXT
}
C {devices/lab_pin.sym} 720 -1340 2 1 {name=l48 sig_type=std_logic lab=VFB_EXT
}
C {devices/lab_pin.sym} 740 -1760 0 0 {name=l56 sig_type=std_logic lab=IMON_EXT

}
C {devices/res.sym} 560 -730 0 1 {name=R12
value=120
footprint=10
device=resistor
m=1}
C {devices/res.sym} 700 -730 0 1 {name=R13
value=120
footprint=10
device=resistor
m=1}
C {devices/res.sym} 300 -260 0 1 {name=R14
value=10
footprint=10
device=resistor
m=1}
C {devices/res.sym} 560 -260 0 1 {name=R15
value=10
footprint=10
device=resistor
m=1}
C {devices/res.sym} 820 -270 0 1 {name=R16
value=10
footprint=10
device=resistor
m=1}
C {devices/res.sym} 1060 -270 0 1 {name=R17
value=10
footprint=10
device=resistor
m=1}
C {devices/ind.sym} 850 -520 1 0 {name=L2
m=1
value=2n
footprint=1206
device=inductor}
C {devices/ind.sym} 610 -520 1 0 {name=L3
m=1
value=2n
footprint=1206
device=inductor}
C {devices/ind.sym} 1090 -640 1 0 {name=L4
m=1
value=1n
footprint=1206
device=inductor}
C {devices/gnd.sym} 1040 -620 0 0 {name=l11 lab=GND}
C {devices/capa.sym} 890 -190 0 0 {name=C11
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 890 -140 0 0 {name=l60 lab=GND}
C {devices/capa.sym} 640 -180 0 0 {name=C12
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 640 -130 0 0 {name=l62 lab=GND}
C {devices/capa.sym} 380 -180 0 0 {name=C13
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 380 -130 0 0 {name=l63 lab=GND}
