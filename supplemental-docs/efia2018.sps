*** Created      May 30, 2019                                ***;
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

get data /type = txt
/file = 'C:\DCT\2018\Fall\efia2018.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
xcdactua a1
cdactua   f8 
xcnactua a1
cnactua   f8 
xcdactga a1
cdactga   f8 
xefteug  a1
efteug    f8 
xeftegd  a1
eftegd    f8 
xfteug   a1
fteug     f8 
xftegd   a1
ftegd     f8 
xftedpp  a1
ftedpp    f8 
acttype   f8.

variable labels
unitid   'Unique identification number of the institution' 
xcdactua 'Imputation field for cdactua - 12-month instructional activity credit hours: undergraduates'
cdactua  '12-month instructional activity credit hours: undergraduates' 
xcnactua 'Imputation field for cnactua - 12-month instructional activity contact hours: undergraduates'
cnactua  '12-month instructional activity contact hours: undergraduates' 
xcdactga 'Imputation field for cdactga - 12-month instructional activity credit hours: graduates'
cdactga  '12-month instructional activity credit hours: graduates' 
xefteug  'Imputation field for efteug - Estimated full-time equivalent (FTE) undergraduate enrollment, 2017-18'
efteug   'Estimated full-time equivalent (FTE) undergraduate enrollment, 2017-18' 
xeftegd  'Imputation field for eftegd - Estimated full-time equivalent (FTE) graduate enrollment, 2017-18'
eftegd   'Estimated full-time equivalent (FTE) graduate enrollment, 2017-18' 
xfteug   'Imputation field for fteug - Reported full-time equivalent (FTE) undergraduate enrollment, 2017-18'
fteug    'Reported full-time equivalent (FTE) undergraduate enrollment, 2017-18' 
xftegd   'Imputation field for ftegd - Reported full-time equivalent (FTE) graduate enrollment, 2017-18'
ftegd    'Reported full-time equivalent (FTE) graduate enrollment, 2017-18' 
xftedpp  'Imputation field for ftedpp - Reported full-time equivalent (FTE) doctors professional practice, 2017-18'
ftedpp   'Reported full-time equivalent (FTE) doctors professional practice, 2017-18' 
acttype  'Is instructional activity based on credit or contact hours'.

value labels
/acttype   
1 'Contact hours' 
2 'Credit hours' 
3 'Both contact and credit hours' 
-2 'Not applicable'.
*The following are the possible values for the item imputation field variables
*A  'Not applicable'
*B  'Institution left item blank'
*C  'Analyst corrected reported value'
*D  'Do not know'
*G  'Data generated from other data values'
*H  'Value not derived - data not usable'
*J  'Logical imputation'
*K  'Ratio adjustment'
*L  'Imputed using the Group Median procedure'
*N  'Imputed using Nearest Neighbor procedure'
*P  'Imputed using Carry Forward procedure'
*R  'Reported'
*Y  'Specific professional practice program n'
*Z  'Implied zero'

frequencies variables=
xcdactua xcnactua xcdactga xefteug  xeftegd  xfteug   xftegd   xftedpp  acttype 
.

descriptives variables=
cdactua  cnactua  cdactga  efteug   eftegd   fteug    ftegd    ftedpp  
/stats=def.

save outfile='efia2018_dist.sav' /compressed.
