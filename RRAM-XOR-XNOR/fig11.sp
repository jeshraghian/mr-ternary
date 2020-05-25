* RRAM-CMOS TXOR and TXNOR Gates
* Fig. 11 from "Low-Power Memristor-CMOS Ternary Logic Family"
* Netlist by Jason K. Eshraghian, University of Michigan
* Note: if convergence fails, input increase rise and fall times

* Input Signals
V1 N001 GND PWL(0s 0V 2.8m 0V 3m 0.5V 5.8m 0.5V 6m 1V)
V2 N002 GND PWL(0s 0V 0.8m 0V 1m 0.5V 1.8m 0.5V 2m 1V
+2.8m 1V 3m 0V 3.8m 0V 4m 0.5V 4.8m 0.5V 5m 1V 5.8m 1V 6m 0V
+6.8m 0V 7m 0.5V 7.8m 0.5V 8m 1V 8.8m 1V)
VDD VDD GND dc 1
VB1 VB1 GND dc -0.5

* Finite Source Resistance to reduce convergence issues
R1 N001 IN1 100m
R2 N002 IN2 100m

*TXOR and TXNOR Gates
XU9 IN1 IN2 X2 FLT3 FLT4 tor
XU10 IN1 IN2 X3 FLT5 FLT6 VDD VB1 GND tnand
XU11 X2 X3 XOR FLT1 FLT2 tand
XU12 XOR XNOR VDD VB1 GND sti

********

* TAND Gate Definition
.subckt tand A1 B1 Y1 FLT1 FLT2
XU1 Y1 A1 FLT1 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-9 x0=0
XU2 Y1 B1 FLT2 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-9 x0=0
.lib mem_knowm.sub
.ends tand

* TOR Gate Definition
.subckt tor A2 B2 Y2 FLT3 FLT4
XU3 A2 Y2 FLT3 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
XU4 B2 Y2 FLT4 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
.lib mem_knowm.sub
.ends tor

* STI Gate Definition
.subckt sti A3 Y3 VDD VB1 GND
XU5 Y3 VDD FLT5 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
XU6 GND N002 FLT6 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
M3 Y3 A3 N002 GND N_50n l=50n w=1U
M4 N002 A3 GND VB1 N_50n l=50n w=1U
.include cmosedu_models.txt
.lib mem_knowm.sub
.ends sti

* TNAND Gate Definition
.subckt tnand A4 B4 Y4 FLT5 FLT6 VDD VB1 GND
XU7 A4 B4 X1 FLT5 FLT6 tand
XU8 X1 Y4 VDD VB1 GND sti
.include cmosedu_models.txt
.lib mem_knowm.sub
.ends tnand

* Simulation & Libraries

.tran 0.7m 10m uic
.model nmos nmos
.lib mem_knowm.sub
.include cmosedu_models.txt
.backanno
.end
