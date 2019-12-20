*** Created July 11, 2012                                    ***.
*** Modify the path below to point to your data file         ***.

*** The specified subdirectory was not created on your       ***.
*** computer. You will need to do this.                      ***.

*** The stat program must be run against the specified       ***.
*** data file. This file is specified in the program and     ***.
*** must be saved separately                                 ***.

*** This program does not provide frequencies or             ***.
*** descriptives for all variables                           ***.

*** This program does not include reserved values in its     ***.
*** calculations for missing values                          ***.

*** There may be missing data for some institutions due to   ***.
*** the merge used to create this file                       ***.

get data  /type = txt
/file = 'c:\dct\efia2011.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
xcdactua a1
cdactua f8
xcnactua a1
cnactua f8
xcdactga a1
cdactga f8
xefteug a1
efteug f8
xeftegd a1
eftegd f8
xfteug a1
fteug f8
xftegd a1
ftegd f8
acttype f8.

variable labels
unitid 'Unique identification number for an institution'
xcdactua 'Imputation field for CDACTUA - 12-month instructional activity credit hours'
cdactua '12-month instructional activity credit hours'
xcnactua 'Imputation field for CNACTUA - 12-month instructional activity contact hours'
cnactua '12-month instructional activity contact hours'
xcdactga 'Imputation field for CDACTGA - 12-month instructional activity credit hours'
cdactga '12-month instructional activity credit hours'
xefteug 'Imputation field for EFTEUG - Estimated full-time equivalent (FTE) undergraduate enrollment, academic year 2010-11'
efteug 'Estimated full-time equivalent (FTE) undergraduate enrollment, academic year 2010-11'
xeftegd 'Imputation field for EFTEGD - Estimated full-time equivalent (FTE) graduate enrollment, academic year 2010-11'
eftegd 'Estimated full-time equivalent (FTE) graduate enrollment, academic year 2010-11'
xfteug 'Imputation field for FTEUG - Reported full-time equivalent (FTE) undergraduate enrollment, academic year 2010-11'
fteug 'Reported full-time equivalent (FTE) undergraduate enrollment, academic year 2010-11'
xftegd 'Imputation field for FTEGD - Reported full-time equivalent (FTE) graduate enrollment, academic year 2010-11'
ftegd 'Reported full-time equivalent (FTE) graduate enrollment, academic year 2001-11'
acttype 'Is instructional activity based on credit or contact hours'.

value labels
/acttype -1 'Not reported'
-2 'Not applicable'
1 'Contact hours'
2 'Credit hours'
3 'Both contact and credit hours'.
 
*  the following are the possible values and labels for the imputation field variables 
*'A' 'Not applicable'
*'B' 'Institution left item blank'
*'C' 'Analyst corrected reported value'
*'D' 'Do not know'
*'G' 'Data generated from other data values'
*'H' 'Value not derived - data not usable'
*'J' 'Logical imputation'
*'K' 'Ratio adjustment '
*'L' 'Imputed using the Group Median procedure'
*'N' 'Imputed using Nearest Neighbor procedure'
*'P' 'Imputed using Carry Forward procedure'
*'R' 'Reported'
*'Z' 'Implied zero'


frequencies variables=
 xcdactua xcnactua xcdactga xefteug xeftegd xfteug xftegd acttype.

descriptives variables=
 cdactua cnactua cdactga efteug eftegd fteug ftegd
/stats=def.

save outfile='c:\dct\efia2011.sav' /compressed.

