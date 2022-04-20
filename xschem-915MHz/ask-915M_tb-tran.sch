v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -60 -110 -60 -100 {
lab=in}
N 155 -210 155 -190 {
lab=vd}
N 165 -160 165 -140 {
lab=vd}
N 315 -80 325 -80 {
lab=out0}
N 5 -80 20 -80 {
lab=in}
N 165 80 165 100 {
lab=vd}
N 315 160 325 160 {
lab=out1}
N 5 160 20 160 {
lab=in}
N 165 330 165 350 {
lab=vd}
N 315 410 325 410 {
lab=out2}
N 5 410 20 410 {
lab=in}
N 165 560 165 580 {
lab=vd}
N 315 640 325 640 {
lab=out3}
N 5 640 20 640 {
lab=in}
C {devices/vsource.sym} 155 -240 2 0 {name=Vdd value=3.3}
C {devices/vsource.sym} -60 -140 2 0 {name=Vin value="PULSE(0V	1.8V	0.5ns	0.1ns	0.1ns	50ns	100ns)"}
C {devices/gnd.sym} 165 -30 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 325 -80 1 0 {name=l2 sig_type=std_logic lab=out0}
C {devices/lab_pin.sym} 155 -190 2 0 {name=l3 sig_type=std_logic lab=vd}
C {devices/gnd.sym} -60 -170 2 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 400 -635 0 0 {name=Simulation only_toplevel=false value="
*.tran 0.2n 30n
.tran 0.005n 100n
*.tran 0.3n 400n
*.tran 0.05n 1.3n

.control
destroy all
run

set color0=white
set color1=black

plot out0 title 'Out0 - Ideal Inductor'
plot out1 title 'Out1 - R=0.3431 ohms'
plot out2 title 'Out2 - R=3.431 ohms'
plot out3 title 'Out3 - R=34.31 ohms'
plot out0 out1 out2 out3 xlimit 0 10n title 'Out0, Out1, Out2 and Out3'
.endc"
}
C {devices/code_shown.sym} 410 -70 0 0 {name=Lib only_toplevel=false value=".lib "/home/hugodg/sky130_workspace/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice" tt"}
C {devices/gnd.sym} 155 -270 2 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -60 -100 2 0 {name=l4 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 165 -160 2 0 {name=l7 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 5 -80 1 0 {name=l8 sig_type=std_logic lab=in}
C {devices/gnd.sym} 165 210 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 325 160 1 0 {name=l10 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 165 80 2 0 {name=l11 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 5 160 1 0 {name=l12 sig_type=std_logic lab=in}
C {devices/gnd.sym} 165 460 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 325 410 1 0 {name=l14 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 165 330 2 0 {name=l15 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 5 410 1 0 {name=l16 sig_type=std_logic lab=in}
C {devices/gnd.sym} 165 690 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 325 640 1 0 {name=l18 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 165 560 2 0 {name=l19 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 5 640 1 0 {name=l20 sig_type=std_logic lab=in}
C {/home/hugodg/projects_sky130/momag-2022_inductor-resistance-ask-modulator/xschem-915MHz/ask-915M-0.sym} 165 -80 0 0 {name=x1}
C {/home/hugodg/projects_sky130/momag-2022_inductor-resistance-ask-modulator/xschem-915MHz/ask-915M-1.sym} 165 160 0 0 {name=x2}
C {/home/hugodg/projects_sky130/momag-2022_inductor-resistance-ask-modulator/xschem-915MHz/ask-915M-2.sym} 165 410 0 0 {name=x3}
C {/home/hugodg/projects_sky130/momag-2022_inductor-resistance-ask-modulator/xschem-915MHz/ask-915M-3.sym} 165 640 0 0 {name=x4}
