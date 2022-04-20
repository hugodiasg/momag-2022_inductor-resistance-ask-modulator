v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {R = 207.675 ohms} 240 -590 0 0 0.4 0.4 {}
T {L=1.077nH} 0 -610 0 0 0.4 0.4 {}
T {C=1.103pF
3 x C (//) = 3.309fF} -280 -550 0 0 0.4 0.4 {}
N 200 -592.5 200 -572.5 {
lab=a}
N 200 -490 200 -470 {
lab=GND}
N 122.5 -490 200 -490 {
lab=GND}
N -20 -490 122.5 -490 {
lab=GND}
N 122.5 -572.5 200 -572.5 {
lab=a}
N 200 -572.5 200 -550 {
lab=a}
N -20 -572.5 122.5 -572.5 {
lab=a}
N -20 -572.5 -20 -550 {
lab=a}
C {devices/lab_pin.sym} 200 -592.5 0 0 {name=l1 sig_type=std_logic lab=a}
C {devices/gnd.sym} 200 -470 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 200 -622.5 2 0 {name=Vdd value="DC 0 AC 1"}
C {devices/gnd.sym} 200 -652.5 2 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 440 -360 0 0 {name=Lib only_toplevel=false value=".lib "/home/hugodg/sky130_workspace/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice" tt"}
C {devices/code_shown.sym} 430 -250 0 0 {name=Simulation only_toplevel=false value="
.ac lin 1Meg 2.4G 3G
.control
destroy all
run
let z=a/(-i(vdd))

set color0=white
set color1=black

plot ph(z)
plot mag(z)


.endc"}
C {/home/hugodg/projects_sky130/temp_sensor/ask_modulator/xschem/l0.sym} 120 -535 1 0 {name=xl0}
C {devices/gnd.sym} 180 -520 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/cap_mim_m3_2.sym} -20 -520 0 0 {name=C0 model=cap_mim_m3_2 W=24.5 L=24.5 MF=3 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 200 -520 0 0 {name=R1
W=0.35
L=5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
