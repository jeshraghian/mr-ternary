* RRAM-TNOR Gate 
* Fig. 3 from "Low-Power Memristor-CMOS Ternary Logic Family"
* Netlist by Jason K. Eshraghian, University of Michigan

* Input Signals

V1 N001 GND PWL(0s 0V 2.9u 0V 3u 0.5V 5.9u 0.5V 6u 1V)
V2 N002 GND PWL(0s 0V 0.9u 0V 1u 0.5V 1.9u 0.5V 2u 1V
+2.9u 1V 3u 0V 3.9u 0V 4u 0.5V 4.9u 0.5V 5u 1V 5.9u 1V 6u 0V
+6.9u 0V 7u 0.5V 7.9u 0.5V 8u 1V 8.9u 1V)

* TOR Gate

XU1 N001 Out FLT1 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0
XU2 N002 Out FLT2 MEM_KNOWM Ron=100 Roff=10000 Von=0.2 Voff=0.2 TAU=5E-10 x0=0

*C1 Out GND 47f ic=0


* Simulation & Libraries
.tran .5u 9u uic
.lib mem_knowm.sub
.backanno
.end
