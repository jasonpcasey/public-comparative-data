*** Created: 6/12/2004 12:50:12 PM                           ***.
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
/file = 'c:\dct\efia2002.csv'
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
cdactga f8.

variable labels
unitid 'Unique identification number for an institution'
xcdactua 'Imputation field for CDACTUA - 12-month instructional activity credit hours'
cdactua '12-month instructional activity credit hours'
xcnactua 'Imputation field for CNACTUA - 12-month instructional activity contact hours'
cnactua '12-month instructional activity contact hours'
xcdactga 'Imputation field for CDACTGA - 12-month instructional activity credit hours'
cdactga '12-month instructional activity credit hours'.

value labels
/xcdactua 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xcnactua 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xcdactga 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'.

frequencies variables=
 xcdactua xcnactua xcdactga.

descriptives variables=
 cdactua cnactua cdactga
/stats=def.

save outfile='efia2002.sav' /compressed.

