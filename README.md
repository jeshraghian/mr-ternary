# mrTernary

SPICE netlists of a memristor-CMOS ternary logic family.
Contributors: Xiaoyuan Wang, Pengfei Zhou and Jason K. Eshraghian

## High-Density Memristor-CMOS Ternary Logic Family

This netlist was developed to supplement the following paper:

@article{wang2020highdensity,
  title={High-Density Memristor-CMOS Ternary Logic Family},
  author={Wang, Xiaoyuan and Zhou, Pengfei and Eshraghian, Jason K and Lin, Chih-Yang and Iu, Herbert Ho-Ching},
  journal={arXiv preprint},
  year={2020}
}

## Getting Started

Each folder has a .sp file. Add this to your LTspice or HSPICE environment and run. 
The CMOS library and memristor model have already been included in the same directory.
No additional dependencies are required.

## Running the tests

To modify inputs, change the PWL functions for V1 and/or V2.
Plot the Out (or relevant gate name) node.

Note: a standard DC-sweep for voltage transfer characteristics will be inaccurate due to the time-dependence of the memristor model.

## Circuit Models

The CMOS Library and memristor models are copyrighted by their original authors. Please credit accordingly.

CMOS Library: 50nm process Level 54 BSIM4 NMOS model, V<sub>DD</sub>=1V

@book{baker2019cmos,
  title={CMOS: circuit design, layout, and simulation},
  author={Baker, R Jacob},
  year={2019},
  publisher={John Wiley \& Sons}
}

Knowm memristor model: W. T. Molter and M. A. Nugent, "The generalized metastable switch memristor model", CNNA 2016; 15th Intl. Workshop on Cellular Nanoscale Networks and their Applications, Dresden, Germany, Aug. 2016.

@inproceedings{molter2016generalized,
  title={The generalized metastable switch memristor model},
  author={Molter, Timothy W and Nugent, M Alexander},
  booktitle={CNNA 2016; 15th International Workshop on Cellular Nanoscale Networks and their Applications},
  pages={1--2},
  year={2016},
  organization={VDE}
}
