v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 640 -270 640 -250 { lab=V3V3}
N 640 -190 640 -170 { lab=GND}
N 520 -200 520 -180 { lab=GND}
N 520 -280 520 -260 { lab=IBIAS}
N 1260 -520 1260 -500 { lab=GND}
N 1120 -520 1120 -500 { lab=V3V3}
N 1000 -360 1020 -360 { lab=#net1}
N 1000 -280 1020 -280 { lab=#net2}
N 1280 -140 1280 -120 { lab=IBIAS}
N 1360 -320 1400 -320 { lab=OPA_OUT}
N 1420 -200 1420 -180 { lab=GND}
N 1420 -290 1420 -260 { lab=OPA_OUT}
N 1380 -290 1420 -290 { lab=OPA_OUT}
N 1380 -320 1380 -290 { lab=OPA_OUT}
N 1400 -320 1540 -320 { lab=OPA_OUT}
N 1540 -320 1540 -190 { lab=OPA_OUT}
N 880 -200 880 -180 { lab=GND}
N 880 -280 880 -260 { lab=#net2}
N 880 -280 1000 -280 { lab=#net2}
N 880 -290 880 -280 { lab=#net2}
N 880 -360 880 -350 { lab=#net1}
N 880 -360 1000 -360 { lab=#net1}
N 2080 -370 2110 -370 { lab=V3V3}
N 2110 -420 2110 -370 { lab=V3V3}
N 2080 -420 2110 -420 { lab=V3V3}
N 2080 -420 2080 -400 { lab=V3V3}
N 2020 -370 2040 -370 { lab=GND}
N 2080 -340 2080 -300 { lab=#net3}
N 2010 -200 2040 -200 { lab=#net4}
N 2080 -200 2110 -200 { lab=V3V3}
N 2080 -440 2080 -420 { lab=V3V3}
N 2080 -240 2080 -230 { lab=follow_out}
N 2220 -340 2220 -240 { lab=follow_out}
N 2080 -240 2220 -240 { lab=follow_out}
N 2110 -420 2220 -420 { lab=V3V3}
N 2220 -420 2220 -400 { lab=V3V3}
N 2080 -40 2080 -20 { lab=GND}
N 2080 -120 2090 -120 { lab=#net5}
N 2010 -70 2040 -70 { lab=#net5}
N 2010 -120 2010 -70 { lab=#net5}
N 2010 -120 2080 -120 { lab=#net5}
N 2080 -70 2110 -70 { lab=GND}
N 2110 -70 2110 -30 { lab=GND}
N 2080 -30 2110 -30 { lab=GND}
N 2080 -120 2080 -100 { lab=#net5}
N 2080 -170 2080 -120 { lab=#net5}
N 1920 -420 2080 -420 { lab=V3V3}
N 1920 -220 1920 -200 { lab=#net6}
N 2220 -420 2320 -420 { lab=V3V3}
N 2320 -420 2320 -380 { lab=V3V3}
N 2320 -320 2320 -240 { lab=follow_out}
N 2220 -240 2320 -240 { lab=follow_out}
N 2020 -30 2080 -30 { lab=GND}
N 2080 -300 2110 -300 { lab=#net3}
N 700 200 720 200 { lab=#net7}
N 720 200 720 240 { lab=#net7}
N 700 240 720 240 { lab=#net7}
N 700 230 700 240 { lab=#net7}
N 560 200 560 220 { lab=#net8}
N 560 200 660 200 { lab=#net8}
N 700 140 700 170 { lab=V3V3}
N 700 240 700 300 { lab=#net7}
N 560 360 560 380 { lab=GND}
N 560 380 700 380 { lab=GND}
N 560 280 560 300 { lab=#net9}
N 700 360 700 380 { lab=GND}
N 1920 -30 1920 -10 { lab=GND}
N 1920 -200 1920 -180 { lab=#net6}
N 1920 -120 1920 -90 { lab=#net6}
N 1920 -200 1950 -200 { lab=#net6}
N 700 300 800 300 { lab=#net7}
N 800 360 800 380 { lab=#net10}
N 800 440 800 460 { lab=GND}
N 1920 -180 1920 -120 { lab=#net6}
N 2020 -280 2020 -200 { lab=#net4}
N 1940 -280 1960 -280 { lab=OPA_OUT}
N 2280 -180 2280 -160 { lab=GND}
N 1800 -420 1810 -420 { lab=OPA_OUT}
N 1810 -440 1810 -420 { lab=OPA_OUT}
N 1810 -520 1810 -500 { lab=V3V3}
C {devices/code_shown.sym} 198.75 -701.875 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.save all
.options savecurrents
ac dec 200 10 1000Meg
settype decibel opa_out
plot vdb(opa_out)
let opa_outd = 180/PI*cph(opa_out)
settype phase opa_outd
plot opa_outd

settype decibel follow_out
plot vdb(follow_out)
let follow_outd = 180/PI*cph(follow_out)
settype phase follow_outd
plot follow_outd
write current_sense_ac.raw
.endc
"}
C {devices/code.sym} -180 -440 0 0 {name=STDCELL_MODELS 
only_toplevel=true
place=end
format="tcleval(@value )"
value="[sky130_models]"
}
C {devices/code.sym} 60 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice ss
"
}
C {devices/vsource.sym} 640 -220 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 640 -170 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 640 -270 0 0 {name=l3 sig_type=std_logic lab=V3V3
}
C {devices/isource.sym} 520 -230 2 0 {name=I0 value=15u
}
C {devices/gnd.sym} 520 -180 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 520 -280 0 0 {name=l4 sig_type=std_logic lab=IBIAS
}
C {design/folded-cascode-n-in/folded_cascode_n_in.sym} 1180 -320 0 0 {}
C {devices/lab_pin.sym} 1120 -520 0 0 {name=l21 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 1260 -520 2 0 {name=l22 lab=GND}
C {devices/gnd.sym} 1420 -180 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 1540 -220 2 0 {name=l16 sig_type=std_logic lab=OPA_OUT
}
C {devices/lab_pin.sym} 1280 -120 0 0 {name=l5 sig_type=std_logic lab=IBIAS
}
C {devices/capa.sym} 1420 -230 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 880 -230 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 880 -180 0 0 {name=l23 lab=GND}
C {devices/vsource.sym} 880 -320 0 0 {name=V3 value="AC 1"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2060 -370 0 0 {name=M6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2060 -200 0 0 {name=M7
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
C {devices/lab_pin.sym} 2080 -440 0 0 {name=l27 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 2020 -370 1 0 {name=l19 lab=GND}
C {devices/isource.sym} 2220 -370 0 0 {name=I2 value=2000u}
C {devices/gnd.sym} 2080 -20 0 0 {name=l28 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2060 -70 0 0 {name=M8
L=0.5
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
C {devices/vsource.sym} 1920 -60 0 0 {name=V5 value=1.5}
C {devices/lab_pin.sym} 2320 -240 2 0 {name=l29 sig_type=std_logic lab=follow_out
}
C {devices/capa.sym} 2110 -270 0 0 {name=C4
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 200 0 0 {name=M9
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
C {devices/isource.sym} 700 330 0 0 {name=I3 value=60u}
C {devices/vsource.sym} 560 250 0 0 {name=V6 value="AC 1"}
C {devices/lab_pin.sym} 700 140 2 0 {name=l20 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 700 380 0 0 {name=l33 lab=GND}
C {devices/vsource.sym} 560 330 0 0 {name=V7 value=2}
C {devices/gnd.sym} 1920 -10 0 0 {name=l35 lab=GND}
C {devices/res.sym} 1980 -200 1 0 {name=R2
value=10E6
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 800 330 0 0 {name=C5
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 800 410 2 0 {name=R4
value=2k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 800 460 0 0 {name=l36 lab=GND}
C {devices/capa.sym} 1990 -280 3 0 {name=C6
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1940 -280 0 0 {name=l37 sig_type=std_logic lab=OPA_OUT
}
C {devices/capa.sym} 2280 -210 0 0 {name=C7
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2280 -160 0 0 {name=l38 lab=GND}
C {devices/lab_pin.sym} 2110 -200 2 0 {name=l6 sig_type=std_logic lab=V3V3
}
C {devices/capa.sym} 1810 -470 0 0 {name=C2
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1800 -420 0 0 {name=l7 sig_type=std_logic lab=OPA_OUT
}
C {devices/lab_pin.sym} 1810 -520 0 0 {name=l8 sig_type=std_logic lab=V3V3
}
