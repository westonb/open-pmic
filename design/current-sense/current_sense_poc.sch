v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 550 -510 550 -490 { lab=V3V3}
N 550 -430 550 -410 { lab=GND}
N 400 -420 400 -400 { lab=GND}
N 400 -500 400 -480 { lab=IBIAS}
N 1260 -520 1260 -500 { lab=GND}
N 1120 -520 1120 -500 { lab=V3V3}
N 1000 -360 1020 -360 { lab=INP}
N 1000 -280 1020 -280 { lab=INM}
N 1280 -140 1280 -120 { lab=IBIAS}
N 1360 -320 1400 -320 { lab=OPA_OUT}
N 1420 -200 1420 -180 { lab=GND}
N 1420 -290 1420 -260 { lab=OPA_OUT}
N 1380 -290 1420 -290 { lab=OPA_OUT}
N 1380 -320 1380 -290 { lab=OPA_OUT}
N 1790 -290 1820 -290 { lab=VPWR}
N 1820 -340 1820 -290 { lab=VPWR}
N 1790 -340 1820 -340 { lab=VPWR}
N 1790 -340 1790 -320 { lab=VPWR}
N 1820 -340 2030 -340 { lab=VPWR}
N 2030 -340 2030 -320 { lab=VPWR}
N 2030 -290 2050 -290 { lab=VPWR}
N 2050 -340 2050 -290 { lab=VPWR}
N 2030 -340 2050 -340 { lab=VPWR}
N 1970 -290 1990 -290 { lab=GATE_PWR}
N 1730 -290 1750 -290 { lab=GATE_PWR}
N 2030 -260 2030 -200 { lab=INP}
N 1950 -370 1950 -340 { lab=VPWR}
N 1820 -540 1820 -530 { lab=VPWR}
N 1790 -60 1790 -40 { lab=GND}
N 1790 -160 1790 -120 { lab=SENSE}
N 1790 -260 1790 -220 { lab=INM}
N 1760 -240 1790 -240 { lab=INM}
N 1720 -190 1750 -190 { lab=OPA_OUT}
N 2000 -240 2030 -240 { lab=INP}
N 2380 -140 2380 -120 { lab=GND}
N 1400 -320 1540 -320 { lab=OPA_OUT}
N 1540 -320 1540 -190 { lab=OPA_OUT}
N 1540 -190 1720 -190 { lab=OPA_OUT}
N 1790 -140 1800 -140 { lab=SENSE}
N 1820 -530 1820 -520 { lab=VPWR}
N 1790 -190 1820 -190 { lab=VPWR}
N 1820 -290 1820 -190 { lab=VPWR}
N 1760 -250 1760 -240 { lab=INM}
N 1760 -260 1760 -250 { lab=INM}
N 1710 -260 1760 -260 { lab=INM}
N 1710 -260 1710 -240 { lab=INM}
N 1640 -240 1650 -240 { lab=OPA_OUT}
N 1640 -240 1640 -190 { lab=OPA_OUT}
N 1640 -100 1640 -80 { lab=GND}
N 1640 -190 1640 -160 { lab=OPA_OUT}
N 2190 -220 2240 -220 { lab=#net1}
N 2380 -220 2380 -200 { lab=#net2}
N 2030 -220 2130 -220 { lab=INP}
N 2380 -220 2460 -220 { lab=#net2}
N 1920 -440 1940 -440 { lab=GATE_PWR}
N 1820 -460 1820 -440 { lab=#net3}
N 1820 -440 1860 -440 { lab=#net3}
N 2280 -530 2300 -530 { lab=GATE_PWR_N}
N 2180 -530 2220 -530 { lab=#net4}
N 2180 -440 2180 -430 { lab=GND}
N 2180 -430 2180 -420 { lab=GND}
N 2180 -530 2180 -500 { lab=#net4}
N 1980 -660 2000 -660 { lab=VPWR}
N 2000 -660 2000 -640 { lab=VPWR}
N 2000 -580 2000 -560 { lab=GND}
N 1790 -660 1810 -660 { lab=V3V3}
N 2030 -200 2030 -160 { lab=INP}
N 2030 -100 2030 -80 { lab=GND}
N 1980 -130 1980 -80 { lab=GATE_PWR_N}
N 1980 -130 1990 -130 { lab=GATE_PWR_N}
N 2030 -130 2040 -130 { lab=GND}
N 2040 -130 2040 -80 { lab=GND}
N 2030 -80 2040 -80 { lab=GND}
N 2460 -140 2460 -120 { lab=GND}
N 2460 -220 2460 -200 { lab=#net2}
N 2300 -220 2380 -220 { lab=#net2}
N 1870 -660 1880 -660 { lab=#net5}
N 1940 -660 1980 -660 { lab=VPWR}
C {devices/code_shown.sym} 198.75 -701.875 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.save all
.options savecurrents
tran 10n 300u
plot SENSE
write current_sense_poc.raw
.endc
"}
C {devices/code.sym} 60 -420 0 0 {name=STDCELL_MODELS 
only_toplevel=true
place=end
format="tcleval(@value )"
value="[sky130_models]"
name=s1 only_toplevel=false value=blabla}
C {devices/code.sym} 60 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"
}
C {devices/vsource.sym} 550 -460 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 550 -410 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 550 -510 0 0 {name=l3 sig_type=std_logic lab=V3V3
}
C {devices/isource.sym} 400 -450 2 0 {name=I0 value=20u
}
C {devices/gnd.sym} 400 -400 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 400 -500 0 0 {name=l4 sig_type=std_logic lab=IBIAS
}
C {design/folded-cascode-n-in/folded_cascode_n_in.sym} 1180 -320 0 0 {}
C {devices/lab_pin.sym} 1000 -360 0 0 {name=l19 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} 1000 -280 0 0 {name=l20 sig_type=std_logic lab=INM
}
C {devices/lab_pin.sym} 1120 -520 0 0 {name=l21 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 1260 -520 2 0 {name=l22 lab=GND}
C {devices/gnd.sym} 1420 -180 0 0 {name=l24 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1770 -290 0 0 {name=M1
L=0.5
W=50
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2010 -290 0 0 {name=M2
L=0.5
W=50
nf=1
mult=200
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1730 -290 0 0 {name=l25 sig_type=std_logic lab=GATE_PWR
}
C {devices/lab_pin.sym} 1970 -290 0 0 {name=l26 sig_type=std_logic lab=GATE_PWR
}
C {devices/lab_pin.sym} 1950 -370 0 0 {name=l28 sig_type=std_logic lab=VPWR
}
C {devices/lab_pin.sym} 1820 -540 0 0 {name=l29 sig_type=std_logic lab=VPWR
}
C {devices/lab_pin.sym} 1940 -440 2 0 {name=l30 sig_type=std_logic lab=GATE_PWR
}
C {devices/vsource.sym} 1820 -490 0 0 {name=V4 value="PULSE(0 3.3 0 10n 10n 950n 2u)"}
C {devices/gnd.sym} 2380 -120 0 0 {name=l27 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1770 -190 0 0 {name=M3
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
C {devices/res.sym} 1790 -90 0 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1790 -40 0 0 {name=l31 lab=GND}
C {devices/lab_pin.sym} 1760 -240 0 0 {name=l32 sig_type=std_logic lab=INM
}
C {devices/lab_pin.sym} 2000 -240 0 0 {name=l34 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} 1540 -220 2 0 {name=l16 sig_type=std_logic lab=OPA_OUT
}
C {devices/lab_pin.sym} 1800 -140 2 0 {name=l17 sig_type=std_logic lab=SENSE
}
C {devices/res.sym} 2380 -170 0 0 {name=R2
value=20
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1640 -130 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1640 -80 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 1280 -120 0 0 {name=l5 sig_type=std_logic lab=IBIAS
}
C {devices/ind.sym} 2160 -220 1 0 {name=L1
m=1
value=20u
footprint=1206
device=inductor}
C {devices/capa.sym} 2460 -170 0 0 {name=C2
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1890 -440 1 0 {name=R3
value=20
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 2300 -530 2 0 {name=l7 sig_type=std_logic lab=GATE_PWR_N
}
C {devices/vsource.sym} 2180 -470 0 0 {name=V2 value="PULSE(0 3.3 1u 10n 10n 980n 2u)"}
C {devices/res.sym} 2250 -530 1 0 {name=R4
value=20
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 2180 -420 0 0 {name=l6 lab=GND}
C {devices/ind.sym} 1840 -660 1 0 {name=L2
m=1
value=5n
footprint=1206
device=inductor}
C {devices/lab_pin.sym} 1820 -540 0 0 {name=l8 sig_type=std_logic lab=VPWR
}
C {devices/lab_pin.sym} 2000 -660 2 0 {name=l9 sig_type=std_logic lab=VPWR
}
C {devices/capa.sym} 2000 -610 0 0 {name=C3
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2000 -560 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 1790 -660 0 0 {name=l11 sig_type=std_logic lab=V3V3
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2010 -130 0 0 {name=M4
L=0.5
W=50
nf=1
mult=200
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 2030 -80 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 1980 -80 0 0 {name=l13 sig_type=std_logic lab=GATE_PWR_N
}
C {devices/gnd.sym} 2460 -120 0 0 {name=l14 lab=GND}
C {devices/res.sym} 2270 -220 1 0 {name=R5
value=0.1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1910 -660 1 0 {name=R6
value=0.01
footprint=1206
device=resistor
m=1}
