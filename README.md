# mrTernary

SPICE netlists of a memristor-CMOS ternary logic family. <br/>
Contributors: Xiaoyuan Wang, Pengfei Zhou and Jason K. Eshraghian

## High-Density Memristor-CMOS Ternary Logic Family

This netlist was developed to supplement the following paper. Please cite the following when using any part of this code:

@article{wang2020highdensity, <br/>
  title={High-Density Memristor-CMOS Ternary Logic Family}, <br/>
  author={Wang, Xiaoyuan and Zhou, Pengfei and Eshraghian, Jason K. and Lin, Chih-Yang and Iu, Herbert Ho-Ching and Chang, Ting-Chang and Kang, Sung-Mo}, <br/>
  journal={IEEE Transactions on Circuits and Systems I: Regular Papers}, <br/>
  month={October}<br/>
  year={2020} <br/>
  doi={10.1109/TCSI.2020.3027693}
} <br/>

## Getting Started

Each folder has a .sp file. Add this to your LTspice or HSPICE environment and run. <br/>
The CMOS library and memristor model have already been included in the same directory. <br/>
No additional dependencies are required. 

## Running the tests

To modify inputs, change the PWL functions for V1 and/or V2. <br/>
Plot the Out (or relevant gate name) node. <br/>

Note: a standard DC-sweep for voltage transfer characteristics will be inaccurate due to the time-dependence of the memristor model.

## Circuit Models

The CMOS Library and memristor models are copyrighted by their original authors. Please credit accordingly.<br/>

CMOS Library: 50nm process Level 54 BSIM4 NMOS model, V<sub>DD</sub>=1V <br/>

@book{baker2019cmos, <br/>
  title={CMOS: circuit design, layout, and simulation}, <br/>
  author={Baker, R Jacob}, <br/>
  year={2019}, <br/>
  publisher={John Wiley \& Sons} <br/>
} <br/>

Knowm memristor model: W. T. Molter and M. A. Nugent, "The generalized metastable switch memristor model", CNNA 2016; 15th Intl. Workshop on Cellular Nanoscale Networks and their Applications, Dresden, Germany, Aug. 2016. <br/>

@inproceedings{molter2016generalized, <br/>
  title={The generalized metastable switch memristor model}, <br/>
  author={Molter, Timothy W and Nugent, M Alexander}, <br/>
  booktitle={CNNA 2016; 15th International Workshop on Cellular Nanoscale Networks and their Applications}, <br/>
  pages={1--2}, <br/>
  year={2016},<br/>
  organization={VDE}<br/>
}<br/>
