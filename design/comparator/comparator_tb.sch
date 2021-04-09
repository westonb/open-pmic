v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 190 -510 190 -480 { lab=V3V3}
N 190 -420 190 -390 { lab=GND}
N 880 -410 880 -370 { lab=V3V3}
N 880 -210 880 -180 { lab=GND}
N 120 -420 120 -390 { lab=GND}
N 120 -510 120 -480 { lab=IBIAS}
N 950 -210 950 -170 { lab=IBIAS}
N 1030 -290 1100 -290 { lab=VOUT}
N 300 -540 300 -510 { lab=VINP}
N 300 -450 300 -420 { lab=VINM}
N 670 -310 730 -310 { lab=VINP}
N 670 -255 730 -255 { lab=VINM}
N 300 -430 320 -430 { lab=VINM}
N 300 -360 300 -300 { lab=GND}
N 1170 -290 1240 -290 { lab=VOUT}
C {devices/vsource.sym} 190 -450 0 0 {name=V1 value=3.3
}
C {devices/lab_pin.sym} 190 -510 0 0 {name=l1 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 190 -390 0 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 880 -410 0 0 {name=l3 sig_type=std_logic lab=V3V3
}
C {devices/gnd.sym} 880 -180 0 0 {name=l4 lab=GND}
C {devices/isource.sym} 120 -450 0 0 {name=I0 value=20u}
C {devices/gnd.sym} 120 -390 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 120 -510 0 0 {name=l6 sig_type=std_logic lab=IBIAS

}
C {devices/lab_pin.sym} 950 -170 0 1 {name=l7 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 1050 -290 1 1 {name=l8 sig_type=std_logic lab=VOUT

}
C {devices/lab_pin.sym} 300 -540 0 0 {name=l9 sig_type=std_logic lab=VINP

}
C {devices/lab_pin.sym} 320 -430 2 0 {name=l10 sig_type=std_logic lab=VINM


}
C {devices/lab_pin.sym} 670 -310 0 0 {name=l11 sig_type=std_logic lab=VINP

}
C {devices/lab_pin.sym} 670 -255 0 0 {name=l12 sig_type=std_logic lab=VINM


}
C {devices/code.sym} 1260 -400 0 0 {name=STDCELL_MODELS 
only_toplevel=true
place=end
format="tcleval(@value )"
value="[sky130_models]"
name=s1 only_toplevel=false value=blabla}
C {devices/code.sym} 1260 -230 0 0 {name=TT_MODELS
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
C {devices/code_shown.sym} 758.75 -111.875 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
tran 0.1n 2.2u
write comparator_tb.raw vinp
.endc
"}
C {/home/atumkur/EE272B/comparator/comparator2.sym} 880 -290 0 0 {name=x1}
C {devices/gnd.sym} 300 -300 0 1 {name=l13 lab=GND}
C {devices/vsource.sym} 300 -390 0 0 {name=V3 value=0.1
}
C {devices/vsource.sym} 300 -480 0 0 {name=V2 value="pwl 0 -160m 99n -160m 100n -140m 199n -140m 200n -120m 299n -120m 300n -100m 399n -100m 400n -80m 499n -80m 500n -60m 599n -60m 600n -40m 699n -40m 700n -20m 799n -20m 800n 0 899n 0 900n 20m 999n 20m 1u 40m 1.099u 40m 1.1u 60m 1.199u 60m 1.2u 80m 1.299u 80m 1.3u 100m 1.399u 100m 1.4u 120m 1.499u 120m 1.5u 140m 1.599u 140m 1.6u 160m 1.699u 160m"}
C {sky130_stdcells/inv_4.sym} 1130 -290 0 0 {name=x2 VGND=GND VNB=GND VPB=V3V3 VPWR=V3V3 prefix=sky130_fd_sc_hvl__ }
C {devices/lab_pin.sym} 1210 -290 1 1 {name=l14 sig_type=std_logic lab=INVOUT

}
