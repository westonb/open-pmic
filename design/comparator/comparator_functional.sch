v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} -220 -520 0 0 {name=p1 lab=IN_P}
C {devices/ipin.sym} -220 -480 0 0 {name=p2 lab=IN_M
}
C {devices/ipin.sym} -220 -440 0 0 {name=p3 lab=OUT}
C {devices/ipin.sym} -220 -400 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -220 -360 0 0 {name=p5 lab=VSS
}
C {devices/ipin.sym} -220 -310 0 0 {name=p6 lab=VCP}
C {devices/ipin.sym} -220 -270 0 0 {name=p7 lab=VBP}
C {devices/ipin.sym} -220 -230 0 0 {name=p8 lab=VCN}
C {devices/ipin.sym} -220 -200 0 0 {name=p9 lab=VBN}
C {devices/code_shown.sym} 238.75 -721.875 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
.save all
.options savecurrents
tran 10n 100u
plot SENSE
write current_sense_poc.raw
.endc
"}
C {devices/code_shown.sym} 1178.75 -741.875 0 0 {name=NGSPICE1
only_toplevel=false
value="

.subckt uopamp_lvl2 +IN -IN VCC VEE OUT
* Universal Opamp Level 2
* Single pole opamp with rail saturation, current consumption, current limiting, and input offset voltage
* 
* PINOUT ORDER  1   2   3   4   5
* PINOUT ORDER +IN -IN VCC VEE OUT
* 
* Parameters:
* Avol => open-loop voltage gain (V/V), default=100k
* GBW => gain-bandwidth product (Hz), default=100meg
* Rin => differential input resistance (ohm), default=100g
* Rout => open-loop output resistance (ohm), default=1
* Iq => quiescent supply current (A), default=1m
* Ilimit => maximum output current (A), default=1
* Vrail => voltage between output saturation and each rail (V), default=0
* Vos => input offset voltage (V), default=0
* Vmax => total maximum supply voltage between rails (V), default=50
* 
G1 VCC N001 N002 -IN 1u
G2 VEE N001 N002 -IN 1u
R1 VCC N001 \{Avol/1u\}
R2 N001 VEE \{Avol/1u\}
G3 OUT VCC VCC N001 \{1/(2*Rout)\}
G4 VEE OUT N001 VEE \{1/(2*Rout)\}
R4 VCC OUT \{2*Rout\}
R5 OUT VEE \{2*Rout\}
C1 VCC N001 \{1u/(2*pi*GBW)\}
C2 N001 VEE \{1u/(2*pi*GBW)\}
G6 N005 VEE N001 OUT \{1/(2*Rout)\}
G5 N006 VEE OUT N001 \{1/(2*Rout)\}
R8 -IN +IN \{Rin\}
V6 VCC N003 \{Vrail+545m\}
V7 N008 VEE \{Vrail+545m\}
V8 N002 +IN \{Vos\}
V9 OUT N007 \{Ilimit-545m\}
V10 N004 OUT \{Ilimit-545m\}
D1 N001 N003 diode
D2 N008 N001 diode
D3 VCC N005 diode
D4 VCC N006 diode
D5 VEE N005 zener
D6 VEE N006 zener
D7 N001 N004 diode
D8 N007 N001 diode
I1 VCC VEE \{Iq\}
.param Avol = 100k
.param GBW = 100meg
.param Rin = 100g
.param Rout = 1
.param Iq = 1m
.param Ilimit = 1
.param Vrail = 0
.param Vos = 0
.param Vmax = 50
.model diode D(Is=1e-14)
.model zener D(Is=1e-14 BV=\{Vmax\})
.param pi=3.1415926535898
.ends

x10 IN_P IN_M VDD VSS OUT uopamp_lvl2
"}
