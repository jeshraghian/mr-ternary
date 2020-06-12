* RRAM-TMAX & TMIN Gate
* Fig. 9 from "High-Density Memristor-CMOS Ternary Logic Family"
* Netlist by Jason K. Eshraghian, University of Michigan

* Input Signals
V1 N001 GND PWL(0 0V 0.9u 0V 1u 0.5V 1.9u 0.5V 2u 1V 2.9u 1V
+3u 0.51V 3.9u 0.5V 4u 1V 4.9u 1V 5u 1V 5.9u 1V 6u 0.5V 6.9u
+0.5V 7u 1V)
V2 N002 GND PWL(0s 0V 2.9u 0V 3u 0.5V 4.9u 0.5V 5u 1V 5.9u 1V
+6u 0.5V 7.9u 0.5V 8u 1V)
V3 N003 GND PWL(0s 0V 5.9u 0V 6u 0.5V 8.9u 0.5V 9u 1V)

* TMIN Gate
XU1 Out N001 FLT1 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
XU2 Out N002 FLT2 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
XU3 Out N003 FLT3 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0


* TMAX Gate
XU4 N001 Out2 FLT4 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
XU5 N002 Out2 FLT5 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
XU6 N003 Out2 FLT6 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0

* Simulation & Libraries
.tran .5u 10u uic
.lib mem_knowm.sub
.backanno
.end
