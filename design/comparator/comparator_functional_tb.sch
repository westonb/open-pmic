v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 550 -510 550 -490 { lab=V3V3}
N 550 -430 550 -410 { lab=GND}
N 1260 -520 1260 -500 { lab=GND}
N 1120 -520 1120 -500 { lab=V3V3}
N 1000 -360 1020 -360 { lab=INP}
N 1000 -280 1020 -280 { lab=INM}
N 1100 -140 1100 -120 { lab=VCP}
N 1160 -140 1160 -120 { lab=VBP}
N 1220 -140 1220 -120 { lab=VCN}
N 1280 -140 1280 -120 { lab=VBN}
N 1360 -320 1400 -320 { lab=OPA_OUT}
N 1420 -200 1420 -180 { lab=GND}
N 1420 -290 1420 -260 { lab=OPA_OUT}
N 1380 -290 1420 -290 { lab=OPA_OUT}
N 1380 -320 1380 -290 { lab=OPA_OUT}
N 1400 -320 1540 -320 { lab=OPA_OUT}
N 1540 -320 1540 -190 { lab=OPA_OUT}
N 910 -290 910 -270 { lab=INM}
N 890 -270 910 -270 { lab=INM}
N 900 -370 910 -370 { lab=INP}
N 910 -370 910 -350 { lab=INP}
N 910 -270 910 -250 { lab=INM}
N 910 -190 910 -170 { lab=GND}
N 1540 -190 1540 -170 { lab=OPA_OUT}
N 1540 -110 1540 -100 { lab=GND}
C {devices/code_shown.sym} 198.75 -701.875 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.save all
tran 5n 10u
plot SENSE
write comparator_functional_tb.raw
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
C {devices/lab_pin.sym} 1100 -120 3 0 {name=l12 sig_type=std_logic lab=VCP


}
C {devices/lab_pin.sym} 1160 -120 3 0 {name=l13 sig_type=std_logic lab=VBP
}
C {devices/lab_pin.sym} 1220 -120 3 0 {name=l14 sig_type=std_logic lab=VCN
}
C {devices/lab_pin.sym} 1280 -120 3 0 {name=l15 sig_type=std_logic lab=VBN
}
C {devices/lab_pin.sym} 1000 -360 0 0 {name=l19 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} 1000 -280 0 0 {name=l20 sig_type=std_logic lab=INM
}
C {devices/lab_pin.sym} 1120 -520 0 0 {name=l21 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 1260 -520 2 0 {name=l22 lab=GND}
C {devices/gnd.sym} 1420 -180 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 1540 -220 2 0 {name=l16 sig_type=std_logic lab=OPA_OUT
}
C {design/comparator/comparator_functional.sym} 1180 -320 0 0 {name=x1}
C {devices/vsource.sym} 910 -320 0 0 {name=V4 value="PULSE(-1 1 0 50n 200n 300n 600n)"}
C {devices/lab_pin.sym} 890 -270 0 0 {name=l17 sig_type=std_logic lab=INM
}
C {devices/gnd.sym} 910 -170 0 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} 900 -370 0 0 {name=l1 sig_type=std_logic lab=INP
}
C {devices/vsource.sym} 910 -220 0 0 {name=V2 value=1}
C {devices/res.sym} 1540 -140 0 0 {name=R1
value=1E6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1540 -100 0 0 {name=l4 lab=GND}
