v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 70 -200 140 -200 {
lab=in}
N 180 -310 180 -290 {
lab=out}
N 180 -290 180 -230 {
lab=out}
N 180 -200 180 -170 {
lab=GND}
C {devices/gnd.sym} 180 -170 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 70 -170 0 0 {name=Va value=1.8}
C {devices/vsource.sym} 180 -340 2 0 {name=V2 value=3.3}
C {devices/gnd.sym} 70 -140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 180 -370 2 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 100 -200 1 0 {name=l4 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 180 -290 2 0 {name=l5 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 395 -450 0 0 {name=Simulation only_toplevel=false value=".dc V2 0V 10 0.01V
.control
run
set color0=white
set color1=black

let zout= out/(-i(v2))
let id=-I(v2) 
plot zout
plot ph(zout)
plot id
plot id xlimit 2.5 3.5 ylimit 0m 2m
.endc"}
C {devices/code_shown.sym} 370 -180 0 0 {name=Lib only_toplevel=false value=".lib "/home/hugodg/sky130_workspace/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice" tt"}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 160 -200 0 0 {name=M1
L=0.5
W=8.7
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
