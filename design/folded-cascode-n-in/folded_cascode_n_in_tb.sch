v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {IREF is 4x bias current} 240 -100 0 0 0.4 0.4 {}
N 550 -510 550 -490 { lab=V3V3}
N 550 -430 550 -410 { lab=GND}
N 400 -420 400 -400 { lab=GND}
N 400 -500 400 -480 { lab=IBIAS}
N 270 -210 310 -210 { lab=GND}
N 300 -250 310 -250 { lab=V3V3}
N 300 -170 310 -170 { lab=IBIAS}
N 300 -170 300 -150 { lab=IBIAS}
N 690 -270 710 -270 { lab=VCP}
N 690 -230 710 -230 { lab=VBP}
N 690 -190 710 -190 { lab=VCN}
N 690 -150 710 -150 { lab=VBN}
N 740 -420 740 -400 { lab=GND}
N 740 -500 740 -480 { lab=INM}
N 740 -500 760 -500 { lab=INM}
N 740 -580 740 -560 { lab=INP}
N 740 -580 760 -580 { lab=INP}
N 1260 -520 1260 -500 { lab=GND}
N 1120 -520 1120 -500 { lab=V3V3}
N 1000 -360 1020 -360 { lab=INP}
N 1000 -280 1020 -280 { lab=INM}
N 1100 -140 1100 -120 { lab=VCP}
N 1160 -140 1160 -120 { lab=VBP}
N 1220 -140 1220 -120 { lab=VCN}
N 1280 -140 1280 -120 { lab=VBN}
N 1360 -320 1400 -320 { lab=OUT}
N 1420 -200 1420 -180 { lab=GND}
N 1420 -290 1420 -260 { lab=OUT}
N 1380 -290 1420 -290 { lab=OUT}
N 1380 -320 1380 -290 { lab=OUT}
C {devices/code_shown.sym} 198.75 -701.875 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.save all
ac dec 200 10 100Meg
plot OUT
plot INP
write folded_cascode_n_in_tb.raw
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
C {devices/isource.sym} 400 -450 2 0 {name=I0 value=160u
}
C {devices/gnd.sym} 400 -400 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 400 -500 0 0 {name=l4 sig_type=std_logic lab=IBIAS
}
C {devices/lab_pin.sym} 300 -250 0 0 {name=l5 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 270 -210 1 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 300 -150 0 0 {name=l7 sig_type=std_logic lab=IBIAS
}
C {devices/lab_pin.sym} 710 -150 2 0 {name=l8 sig_type=std_logic lab=VBN
}
C {devices/lab_pin.sym} 710 -190 2 0 {name=l9 sig_type=std_logic lab=VCN
}
C {devices/lab_pin.sym} 710 -230 2 0 {name=l10 sig_type=std_logic lab=VBP
}
C {devices/lab_pin.sym} 710 -270 2 0 {name=l11 sig_type=std_logic lab=VCP


}
C {/home/wbraun/projects/open-pmic/design/folded-cascode-n-in/folded_cascode_n_in.sym} 1180 -320 0 0 {}
C {devices/lab_pin.sym} 1100 -120 3 0 {name=l12 sig_type=std_logic lab=VCP


}
C {devices/lab_pin.sym} 1160 -120 3 0 {name=l13 sig_type=std_logic lab=VBP
}
C {devices/lab_pin.sym} 1220 -120 3 0 {name=l14 sig_type=std_logic lab=VCN
}
C {devices/lab_pin.sym} 1280 -120 3 0 {name=l15 sig_type=std_logic lab=VBN
}
C {devices/vsource.sym} 740 -450 0 0 {name=V2 value=2.0}
C {devices/gnd.sym} 740 -400 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 740 -530 0 0 {name=V3 value="AC 0.01m"}
C {devices/lab_pin.sym} 760 -500 2 0 {name=l17 sig_type=std_logic lab=INM
}
C {devices/lab_pin.sym} 760 -580 2 0 {name=l18 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} 1000 -360 0 0 {name=l19 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} 1000 -280 0 0 {name=l20 sig_type=std_logic lab=INM
}
C {devices/lab_pin.sym} 1120 -520 0 0 {name=l21 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 1260 -520 2 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1400 -320 2 0 {name=l23 sig_type=std_logic lab=OUT
}
C {devices/capa.sym} 1420 -230 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1420 -180 0 0 {name=l24 lab=GND}
C {/home/wbraun/projects/open-pmic/design/bias-circuit/bias_circuit.sym} 500 -210 0 0 {name=x2}
