*** Created    April 25, 2017                                ***;
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
/file = 'c:\dct\effy2007.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
effylev   f1 
lstudy    f3 
xfyrac01 a1
fyrace01  f6 
xfyrac02 a1
fyrace02  f6 
xfyrac03 a1
fyrace03  f6 
xfyrac04 a1
fyrace04  f6 
xfyrac05 a1
fyrace05  f6 
xfyrac06 a1
fyrace06  f6 
xfyrac07 a1
fyrace07  f6 
xfyrac08 a1
fyrace08  f6 
xfyrac09 a1
fyrace09  f6 
xfyrac10 a1
fyrace10  f6 
xfyrac11 a1
fyrace11  f6 
xfyrac12 a1
fyrace12  f6 
xfyrac13 a1
fyrace13  f6 
xfyrac14 a1
fyrace14  f6 
xfyrac15 a1
fyrace15  f6 
xfyrac16 a1
fyrace16  f6 
xfyrac17 a1
fyrace17  f6 
xfyrac18 a1
fyrace18  f6 
xfyrac19 a1
fyrace19  f6 
xfyrac20 a1
fyrace20  f6 
xfyrac21 a1
fyrace21  f6 
xfyrac22 a1
fyrace22  f6 
xfyrac23 a1
fyrace23  f6 
xfyrac24 a1
fyrace24  f6.

variable labels
unitid   'Unique identification number of the institution' 
effylev  'Level of student' 
lstudy   'Original level of study on survey form' 
xfyrac01 'Imputation field for fyrace01 - Nonresident alien men'
fyrace01 'Nonresident alien men' 
xfyrac02 'Imputation field for fyrace02 - Nonresident alien women'
fyrace02 'Nonresident alien women' 
xfyrac03 'Imputation field for fyrace03 - Black non-Hispanic men'
fyrace03 'Black non-Hispanic men' 
xfyrac04 'Imputation field for fyrace04 - Black non-Hispanic women'
fyrace04 'Black non-Hispanic women' 
xfyrac05 'Imputation field for fyrace05 - American Indian or Alaska Native men'
fyrace05 'American Indian or Alaska Native men' 
xfyrac06 'Imputation field for fyrace06 - American Indian or Alaska Native women'
fyrace06 'American Indian or Alaska Native women' 
xfyrac07 'Imputation field for fyrace07 - Asian or Pacific Islander men'
fyrace07 'Asian or Pacific Islander men' 
xfyrac08 'Imputation field for fyrace08 - Asian or Pacific Islander women'
fyrace08 'Asian or Pacific Islander women' 
xfyrac09 'Imputation field for fyrace09 - Hispanic men'
fyrace09 'Hispanic men' 
xfyrac10 'Imputation field for fyrace10 - Hispanic women'
fyrace10 'Hispanic women' 
xfyrac11 'Imputation field for fyrace11 - White non-Hispanic men'
fyrace11 'White non-Hispanic men' 
xfyrac12 'Imputation field for fyrace12 - White non-Hispanic women'
fyrace12 'White non-Hispanic women' 
xfyrac13 'Imputation field for fyrace13 - Race/ethnicity unknown men'
fyrace13 'Race/ethnicity unknown men' 
xfyrac14 'Imputation field for fyrace14 - Race/ethnicity unknown women'
fyrace14 'Race/ethnicity unknown women' 
xfyrac15 'Imputation field for fyrace15 - Grand total men'
fyrace15 'Grand total men' 
xfyrac16 'Imputation field for fyrace16 - Grand total women'
fyrace16 'Grand total women' 
xfyrac17 'Imputation field for fyrace17 - Nonresident alien total'
fyrace17 'Nonresident alien total' 
xfyrac18 'Imputation field for fyrace18 - Black non-Hispanic  total'
fyrace18 'Black non-Hispanic  total' 
xfyrac19 'Imputation field for fyrace19 - American Indian or Alaska Native total'
fyrace19 'American Indian or Alaska Native total' 
xfyrac20 'Imputation field for fyrace20 - Asian or Pacific Islander total'
fyrace20 'Asian or Pacific Islander total' 
xfyrac21 'Imputation field for fyrace21 - Hispanic total'
fyrace21 'Hispanic total' 
xfyrac22 'Imputation field for fyrace22 - White non-Hispanic total'
fyrace22 'White non-Hispanic total' 
xfyrac23 'Imputation field for fyrace23 - Race/ethnicity unknown total'
fyrace23 'Race/ethnicity unknown total' 
xfyrac24 'Imputation field for fyrace24 - Grand total'
fyrace24 'Grand total'.

value labels
/effylev   
1 'All students total' 
2 'Undergraduate' 
3 'First professional' 
4 'Graduate' 
/lstudy    
1 'Undergraduate' 
2 'First professional' 
3 'Graduate' 
999 'Generated total'.
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
effylev  lstudy   xfyrac01 xfyrac02 xfyrac03 xfyrac04 xfyrac05 xfyrac06 xfyrac07
xfyrac08 xfyrac09 xfyrac10 xfyrac11 xfyrac12 xfyrac13 xfyrac14 xfyrac15 xfyrac16 xfyrac17
xfyrac18 xfyrac19 xfyrac20 xfyrac21 xfyrac22 xfyrac23 xfyrac24 .

descriptives variables=
fyrace01 fyrace02 fyrace03 fyrace04 fyrace05 fyrace06 fyrace07
fyrace08 fyrace09 fyrace10 fyrace11 fyrace12 fyrace13 fyrace14 fyrace15 fyrace16 fyrace17
fyrace18 fyrace19 fyrace20 fyrace21 fyrace22 fyrace23 fyrace24
/stats=def.

save outfile='effy2007_dist.sav' /compressed.
