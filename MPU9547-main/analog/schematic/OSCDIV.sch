v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 520 -140 520 -80 {lab=VDD1V2}
N 150 -140 520 -140 {lab=VDD1V2}
N 150 -140 150 -80 {lab=VDD1V2}
N 0 -140 150 -140 {lab=VDD1V2}
N 300 0 370 -0 {lab=OSC}
N 520 80 520 140 {lab=VSS}
N 150 140 520 140 {lab=VSS}
N 150 90 150 140 {lab=VSS}
N 0 140 150 140 {lab=VSS}
N 670 0 720 0 {lab=OSCDIV}
C {OSCN21.sym} 0 0 0 0 {name=x1}
C {DIV1024.sym} 370 0 0 0 {name=x2}
C {iopin.sym} 0 -140 2 0 {name=p1 lab=VDD}
C {iopin.sym} 0 140 2 0 {name=p2 lab=VSS}
C {ipin.sym} 0 0 0 0 {name=p3 lab=EN}
C {opin.sym} 720 0 0 0 {name=p4 lab=OSCDIV}
C {lab_wire.sym} 340 0 0 0 {name=p5 sig_type=std_logic lab=OSC}
