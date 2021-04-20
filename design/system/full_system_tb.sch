v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {slope = ri * Vin / L 
ri = 1.69} 180 -420 0 0 0.4 0.4 {}
T {source for current sensing} 2120 -660 0 0 0.4 0.4 {}
N 550 -510 550 -490 { lab=V3V3}
N 550 -430 550 -410 { lab=GND}
N 680 -160 680 -140 { lab=GND}
N 680 -240 680 -220 { lab=IBIAS}
N 700 -500 700 -480 { lab=VDD_PWR}
N 700 -420 700 -400 { lab=GND}
N 560 -660 560 -640 { lab=VREF}
N 560 -580 560 -560 { lab=GND}
N 820 -160 820 -140 { lab=GND}
N 820 -240 820 -220 { lab=ISLOPE}
N 1200 -720 1210 -720 { lab=V3V3}
N 1210 -720 1220 -720 { lab=V3V3}
N 1200 -680 1220 -680 { lab=VDD_PWR}
N 1200 -640 1220 -640 { lab=GND}
N 1200 -640 1200 -620 { lab=GND}
N 2340 -540 2340 -500 { lab=#net1}
N 2340 -560 2340 -540 { lab=#net1}
N 2240 -560 2340 -560 { lab=#net1}
N 2240 -560 2240 -540 { lab=#net1}
N 2240 -480 2240 -460 { lab=#net2}
N 2340 -440 2340 -380 { lab=VOUT}
N 2240 -380 2340 -380 { lab=VOUT}
N 2240 -400 2240 -380 { lab=VOUT}
N 2340 -280 2340 -260 { lab=GND}
N 2340 -380 2340 -340 { lab=VOUT}
N 2460 -280 2460 -260 { lab=GND}
N 2340 -380 2460 -380 { lab=VOUT}
N 2460 -370 2460 -340 { lab=VOUT}
N 2460 -380 2460 -370 { lab=VOUT}
N 2140 -560 2240 -560 { lab=#net1}
N 2340 -560 2360 -560 { lab=#net1}
N 2080 -700 2080 -680 { lab=SW_NODE}
N 2080 -620 2080 -560 { lab=#net1}
N 2080 -560 2140 -560 { lab=#net1}
N 2580 -320 2580 -280 { lab=VFB}
N 2580 -220 2580 -200 { lab=GND}
N 2460 -380 2580 -380 { lab=VOUT}
N 2580 -300 2600 -300 { lab=VFB}
N 1200 -540 1220 -540 { lab=VREF}
N 1200 -500 1220 -500 { lab=VFB}
N 1000 -160 1000 -120 { lab=GND}
N 1000 -240 1000 -220 { lab=VCOMP}
N 1200 -460 1220 -460 { lab=VCOMP}
N 1200 -380 1220 -380 { lab=ISLOPE}
N 1200 -420 1220 -420 { lab=IBIAS}
N 700 -660 700 -640 { lab=IMON}
N 700 -580 700 -560 { lab=GND}
N 1200 -340 1220 -340 { lab=IMON}
N 540 -160 540 -140 { lab=GND}
N 540 -240 540 -220 { lab=IOSC}
N 1200 -300 1220 -300 { lab=IOSC}
N 220 -160 220 -140 { lab=GND}
N 220 -240 220 -220 { lab=TIMEOUT_EXT}
N 220 -260 240 -260 { lab=TIMEOUT_EXT}
N 220 -260 220 -240 { lab=TIMEOUT_EXT}
N 1780 -680 1800 -680 { lab=TIMEOUT_EXT}
N 1780 -720 1800 -720 { lab=V3V3}
N 1780 -580 1800 -580 { lab=GND}
N 1800 -580 1800 -360 { lab=GND}
N 1780 -540 1800 -540 { lab=GND}
N 1780 -500 1800 -500 { lab=GND}
N 1780 -460 1800 -460 { lab=GND}
N 1780 -420 1800 -420 { lab=GND}
N 1780 -380 1800 -380 { lab=GND}
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
C {devices/lab_pin.sym} 550 -510 0 0 {name=l3 sig_type=std_logic lab=V3V3
}
C {devices/isource.sym} 680 -190 2 0 {name=I0 value=100u
}
C {devices/gnd.sym} 680 -140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 680 -240 0 0 {name=l4 sig_type=std_logic lab=IBIAS
}
C {devices/vsource.sym} 700 -450 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 700 -400 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 700 -500 0 0 {name=l43 sig_type=std_logic lab=VDD_PWR
}
C {devices/vsource.sym} 560 -610 0 0 {name=V6 value=1.25}
C {devices/gnd.sym} 560 -560 0 0 {name=l54 lab=GND}
C {devices/lab_pin.sym} 560 -660 0 0 {name=l55 sig_type=std_logic lab=VREF
}
C {devices/isource.sym} 820 -190 2 0 {name=I4 value=20u
}
C {devices/gnd.sym} 820 -140 0 0 {name=l78 lab=GND}
C {devices/lab_pin.sym} 820 -240 0 0 {name=l79 sig_type=std_logic lab=ISLOPE
}
C {design/system/full_system.sym} 1500 -460 0 0 {name=x1}
C {devices/lab_pin.sym} 1200 -720 0 0 {name=l9 sig_type=std_logic lab=V3V3
}
C {devices/lab_pin.sym} 1200 -680 0 0 {name=l10 sig_type=std_logic lab=VDD_PWR
}
C {devices/gnd.sym} 1200 -620 0 0 {name=l11 lab=GND}
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
C {devices/capa.sym} 1000 -190 0 0 {name=C5
m=1
value=200p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1000 -120 0 0 {name=l61 lab=GND}
C {devices/lab_pin.sym} 1200 -460 2 1 {name=l15 sig_type=std_logic lab=VCOMP
}
C {devices/lab_pin.sym} 1000 -240 2 1 {name=l16 sig_type=std_logic lab=VCOMP
}
C {devices/lab_pin.sym} 1200 -380 0 0 {name=l5 sig_type=std_logic lab=ISLOPE
}
C {devices/lab_pin.sym} 1200 -420 0 0 {name=l6 sig_type=std_logic lab=IBIAS
}
C {devices/vsource.sym} 700 -610 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 700 -560 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 700 -660 0 0 {name=l8 sig_type=std_logic lab=IMON
}
C {devices/lab_pin.sym} 1200 -340 0 0 {name=l17 sig_type=std_logic lab=IMON
}
C {devices/isource.sym} 540 -190 2 0 {name=I1 value=20u
}
C {devices/gnd.sym} 540 -140 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 540 -240 0 0 {name=l19 sig_type=std_logic lab=IOSC
}
C {devices/lab_pin.sym} 1200 -300 0 0 {name=l21 sig_type=std_logic lab=IOSC
}
C {devices/vsource.sym} 220 -190 0 0 {name=V7 value="PULSE(0 3.3 0 3n 3n 200n 2u)"}
C {devices/gnd.sym} 220 -140 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 240 -260 0 1 {name=l23 sig_type=std_logic lab=TIMEOUT_EXT
}
C {devices/lab_pin.sym} 1800 -680 0 1 {name=l24 sig_type=std_logic lab=TIMEOUT_EXT
}
C {devices/lab_pin.sym} 1800 -720 0 1 {name=l25 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 1800 -360 0 0 {name=l26 lab=GND}
