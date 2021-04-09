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
N 270 -210 310 -210 { lab=GND}
N 300 -250 310 -250 { lab=V3V3}
N 300 -170 310 -170 { lab=IBIAS}
N 300 -170 300 -150 { lab=IBIAS}
N 690 -270 710 -270 { lab=VCP}
N 690 -230 710 -230 { lab=VBP}
N 690 -190 710 -190 { lab=VCN}
N 690 -150 710 -150 { lab=VBN}
C {devices/code_shown.sym} 198.75 -701.875 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
.options savecurrents
.save all
tran 1n 300n
write bias_circuit_tb.raw
plot VCP VBP VCN VBN
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
C {devices/vsource.sym} 550 -460 0 0 {name=V1 value=3.0}
C {devices/gnd.sym} 550 -410 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 550 -510 0 0 {name=l3 sig_type=std_logic lab=V3V3
}
C {devices/isource.sym} 400 -450 2 0 {name=I0 value=60u
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
C {design/bias-circuit/bias_circuit.sym} 500 -210 0 0 {name=x1}
