* RRAM-CMOS STI Gate
* Fig. 6 from "High-Density Memristor-CMOS Ternary Logic Family"
* Netlist by Jason K. Eshraghian, University of Michigan

* Input Signals

V1 IN1 GND PWL(0s 0V 2.9us 0V 3.0us 0.5V 5.9us 0.5V 6.0us 1V)
VDD VDD GND dc 1
VB1 VB1 GND dc -0.5
VB2 VB2 GND dc -1
VB3 VB3 GND dc 0.5

* STI Gate

XU1 Out1 VDD FLT1 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
M1 Out1 IN1 N002 GND N_50n l=50n w=1U
XU2 GND N002 FLT2 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
M2 N002 IN1 GND VB1 N_50n l=50n w=1U

* PTI Gate

XU3 Out2 VDD FLT3 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=1
M3 Out2 IN1 GND VB2 N_50n l=50n w=500n

* NTI Gate

XU4 Out3 VDD FLT4 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
M4 Out3 IN1 GND VB3 N_50n l=50n w=2u

* Simulation & Libraries

.tran 0.5us 9us uic
.model nmos nmos
.lib mem_knowm.sub
.include cmosedu_models.txt
.backanno
.end
