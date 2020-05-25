# mrTernary

SPICE netlists of RRAM-CMOS ternary logic gates.

## Getting Started

Each file has a .sp file. Add this to your LTspice or HSPICE environment and run. 
The CMOS library and memristor model are already included in the same directory. 

## Running the tests

To modify inputs, change the PWL functions for V1 and/or V2 functions.
Plot the Out (or gate name) node.

Note: a standard DC-sweep for voltage transfer characteristics will be inaccurate due to the time-dependence of the memristor model.

## Circuit Models
CMOS Library: 50nm process Level 54 BSIM4 NMOS model, V<sub>DD</sub>=1V

Knowm memristor model: W. T. Molter and M. A. Nugent, "The generalized metastable switch memristor model", CNNA 2016; 15th Intl. Workshop on Cellular Nanoscale Networks and their Applications, Dresden, Germany, Aug. 2016.

## Low-Power Memristor-CMOS Ternary Logic Family
Paper: TBC
