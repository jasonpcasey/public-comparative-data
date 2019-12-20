*** Created    March 12, 2012                                ***;
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
/file = 'c:\dct\ef2009a_rv.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
efalevel  f2 
line      f2 
section   f1 
lstudy    f1 
xeftotlt a1
eftotlt   f6 
xeftotlm a1
eftotlm   f6 
xeftotlw a1
eftotlw   f6 
xdvefait a1
dvefait   f6 
xdvefaim a1
dvefaim   f6 
xdvefaiw a1
dvefaiw   f6 
xdvefapt a1
dvefapt   f6 
xdvefapm a1
dvefapm   f6 
xdvefapw a1
dvefapw   f6 
xdvefbkt a1
dvefbkt   f6 
xdvefbkm a1
dvefbkm   f6 
xdvefbkw a1
dvefbkw   f6 
xdvefhst a1
dvefhst   f6 
xdvefhsm a1
dvefhsm   f6 
xdvefhsw a1
dvefhsw   f6 
xdvefwht a1
dvefwht   f6 
xdvefwhm a1
dvefwhm   f6 
xdvefwhw a1
dvefwhw   f6 
xefaiant a1
efaiant   f6 
xefaianm a1
efaianm   f6 
xefaianw a1
efaianw   f6 
xefasiat a1
efasiat   f6 
xefasiam a1
efasiam   f6 
xefasiaw a1
efasiaw   f6 
xefbkaat a1
efbkaat   f6 
xefbkaam a1
efbkaam   f6 
xefbkaaw a1
efbkaaw   f6 
xefhispt a1
efhispt   f6 
xefhispm a1
efhispm   f6 
xefhispw a1
efhispw   f6 
xefnhpit a1
efnhpit   f6 
xefnhpim a1
efnhpim   f6 
xefnhpiw a1
efnhpiw   f6 
xefwhitt a1
efwhitt   f6 
xefwhitm a1
efwhitm   f6 
xefwhitw a1
efwhitw   f6 
xef2mort a1
ef2mort   f6 
xef2morm a1
ef2morm   f6 
xef2morw a1
ef2morw   f6 
xefrac19 a1
efrace19  f6 
xefrac05 a1
efrace05  f6 
xefrac06 a1
efrace06  f6 
xefrac20 a1
efrace20  f6 
xefrac07 a1
efrace07  f6 
xefrac08 a1
efrace08  f6 
xefrac18 a1
efrace18  f6 
xefrac03 a1
efrace03  f6 
xefrac04 a1
efrace04  f6 
xefrac21 a1
efrace21  f6 
xefrac09 a1
efrace09  f6 
xefrac10 a1
efrace10  f6 
xefrac22 a1
efrace22  f6 
xefrac11 a1
efrace11  f6 
xefrac12 a1
efrace12  f6 
xefunknt a1
efunknt   f6 
xefunknm a1
efunknm   f6 
xefunknw a1
efunknw   f6 
xefnralt a1
efnralt   f6 
xefnralm a1
efnralm   f6 
xefnralw a1
efnralw   f6.

variable labels
unitid   'Unique identification number of the institution' 
efalevel 'Level of student' 
line     'Level of student (original line number on survey form)' 
section  'Attendance status of student' 
lstudy   'Level of student' 
xeftotlt 'Imputation field for eftotlt - Grand total'
eftotlt  'Grand total' 
xeftotlm 'Imputation field for eftotlm - Grand total men'
eftotlm  'Grand total men' 
xeftotlw 'Imputation field for eftotlw - Grand total women'
eftotlw  'Grand total women' 
xdvefait 'Imputation field for dvefait - American Indian or Alaska Native total - derived'
dvefait  'American Indian or Alaska Native total - derived' 
xdvefaim 'Imputation field for dvefaim - American Indian or Alaska Native men - derived'
dvefaim  'American Indian or Alaska Native men - derived' 
xdvefaiw 'Imputation field for dvefaiw - American Indian or Alaska Native women - derived'
dvefaiw  'American Indian or Alaska Native women - derived' 
xdvefapt 'Imputation field for dvefapt - Asian/Native Hawaiian/Other Pacific Islander total - derived'
dvefapt  'Asian/Native Hawaiian/Other Pacific Islander total - derived' 
xdvefapm 'Imputation field for dvefapm - Asian/Native Hawaiian/Other Pacific Islander men - derived'
dvefapm  'Asian/Native Hawaiian/Other Pacific Islander men - derived' 
xdvefapw 'Imputation field for dvefapw - Asian/Native Hawaiian/Other Pacific Islander women - derived'
dvefapw  'Asian/Native Hawaiian/Other Pacific Islander women - derived' 
xdvefbkt 'Imputation field for dvefbkt - Black or African American/Black non-Hispanic total - derived'
dvefbkt  'Black or African American/Black non-Hispanic total - derived' 
xdvefbkm 'Imputation field for dvefbkm - Black or African American/Black non-Hispanic men - derived'
dvefbkm  'Black or African American/Black non-Hispanic men - derived' 
xdvefbkw 'Imputation field for dvefbkw - Black or African American/Black non-Hispanic women - derived'
dvefbkw  'Black or African American/Black non-Hispanic women - derived' 
xdvefhst 'Imputation field for dvefhst - Hispanic or Latino/Hispanic  total - derived'
dvefhst  'Hispanic or Latino/Hispanic  total - derived' 
xdvefhsm 'Imputation field for dvefhsm - Hispanic or Latino/Hispanic  men - derived'
dvefhsm  'Hispanic or Latino/Hispanic  men - derived' 
xdvefhsw 'Imputation field for dvefhsw - Hispanic or Latino/Hispanic  women - derived'
dvefhsw  'Hispanic or Latino/Hispanic  women - derived' 
xdvefwht 'Imputation field for dvefwht - White/White non-Hispanic total - derived'
dvefwht  'White/White non-Hispanic total - derived' 
xdvefwhm 'Imputation field for dvefwhm - White/White non-Hispanic men - derived'
dvefwhm  'White/White non-Hispanic men - derived' 
xdvefwhw 'Imputation field for dvefwhw - White/White non-Hispanic women - derived'
dvefwhw  'White/White non-Hispanic women - derived' 
xefaiant 'Imputation field for efaiant - American Indian or Alaska Native total - new'
efaiant  'American Indian or Alaska Native total - new' 
xefaianm 'Imputation field for efaianm - American Indian or Alaska Native men - new'
efaianm  'American Indian or Alaska Native men - new' 
xefaianw 'Imputation field for efaianw - American Indian or Alaska Native women - new'
efaianw  'American Indian or Alaska Native women - new' 
xefasiat 'Imputation field for efasiat - Asian total - new'
efasiat  'Asian total - new' 
xefasiam 'Imputation field for efasiam - Asian men - new'
efasiam  'Asian men - new' 
xefasiaw 'Imputation field for efasiaw - Asian women - new'
efasiaw  'Asian women - new' 
xefbkaat 'Imputation field for efbkaat - Black or African American total - new'
efbkaat  'Black or African American total - new' 
xefbkaam 'Imputation field for efbkaam - Black or African American men - new'
efbkaam  'Black or African American men - new' 
xefbkaaw 'Imputation field for efbkaaw - Black or African American women - new'
efbkaaw  'Black or African American women - new' 
xefhispt 'Imputation field for efhispt - Hispanic total - new'
efhispt  'Hispanic total - new' 
xefhispm 'Imputation field for efhispm - Hispanic men - new'
efhispm  'Hispanic men - new' 
xefhispw 'Imputation field for efhispw - Hispanic women - new'
efhispw  'Hispanic women - new' 
xefnhpit 'Imputation field for efnhpit - Native Hawaiian or Other Pacific Islander total - new'
efnhpit  'Native Hawaiian or Other Pacific Islander total - new' 
xefnhpim 'Imputation field for efnhpim - Native Hawaiian or Other Pacific Islander men - new'
efnhpim  'Native Hawaiian or Other Pacific Islander men - new' 
xefnhpiw 'Imputation field for efnhpiw - Native Hawaiian or Other Pacific Islander women - new'
efnhpiw  'Native Hawaiian or Other Pacific Islander women - new' 
xefwhitt 'Imputation field for efwhitt - White total - new'
efwhitt  'White total - new' 
xefwhitm 'Imputation field for efwhitm - White men - new'
efwhitm  'White men - new' 
xefwhitw 'Imputation field for efwhitw - White women - new'
efwhitw  'White women - new' 
xef2mort 'Imputation field for ef2mort - Two or more races total - new'
ef2mort  'Two or more races total - new' 
xef2morm 'Imputation field for ef2morm - Two or more races men - new'
ef2morm  'Two or more races men - new' 
xef2morw 'Imputation field for ef2morw - Two or more races women - new'
ef2morw  'Two or more races women - new' 
xefrac19 'Imputation field for efrace19 - American Indian or Alaska Native total'
efrace19 'American Indian or Alaska Native total' 
xefrac05 'Imputation field for efrace05 - American Indian or Alaska Native men - old'
efrace05 'American Indian or Alaska Native men - old' 
xefrac06 'Imputation field for efrace06 - American Indian or Alaska Native women - old'
efrace06 'American Indian or Alaska Native women - old' 
xefrac20 'Imputation field for efrace20 - Asian or Pacific Islander total  - old'
efrace20 'Asian or Pacific Islander total  - old' 
xefrac07 'Imputation field for efrace07 - Asian or Pacific Islander men - old'
efrace07 'Asian or Pacific Islander men - old' 
xefrac08 'Imputation field for efrace08 - Asian or Pacific Islander women - old'
efrace08 'Asian or Pacific Islander women - old' 
xefrac18 'Imputation field for efrace18 - Black non-Hispanic  total - old'
efrace18 'Black non-Hispanic  total - old' 
xefrac03 'Imputation field for efrace03 - Black non-Hispanic men - old'
efrace03 'Black non-Hispanic men - old' 
xefrac04 'Imputation field for efrace04 - Black non-Hispanic women - old'
efrace04 'Black non-Hispanic women - old' 
xefrac21 'Imputation field for efrace21 - Hispanic total - old'
efrace21 'Hispanic total - old' 
xefrac09 'Imputation field for efrace09 - Hispanic men - old'
efrace09 'Hispanic men - old' 
xefrac10 'Imputation field for efrace10 - Hispanic women - old'
efrace10 'Hispanic women - old' 
xefrac22 'Imputation field for efrace22 - White non-Hispanic total - old'
efrace22 'White non-Hispanic total - old' 
xefrac11 'Imputation field for efrace11 - White non-Hispanic men - old'
efrace11 'White non-Hispanic men - old' 
xefrac12 'Imputation field for efrace12 - White non-Hispanic women - old'
efrace12 'White non-Hispanic women - old' 
xefunknt 'Imputation field for efunknt - Race/ethnicity unknown total'
efunknt  'Race/ethnicity unknown total' 
xefunknm 'Imputation field for efunknm - Race/ethnicity unknown men'
efunknm  'Race/ethnicity unknown men' 
xefunknw 'Imputation field for efunknw - Race/ethnicity unknown women'
efunknw  'Race/ethnicity unknown women' 
xefnralt 'Imputation field for efnralt - Nonresident alien total'
efnralt  'Nonresident alien total' 
xefnralm 'Imputation field for efnralm - Nonresident alien men'
efnralm  'Nonresident alien men' 
xefnralw 'Imputation field for efnralw - Nonresident alien women'
efnralw  'Nonresident alien women'.

value labels
/efalevel  
1 'All students total' 
2 'All students, Undergraduate total' 
3 'All students, Undergraduate, Degree/certificate-seeking total' 
4 'All students, Undergraduate, Degree/certificate-seeking, First-time' 
5 'All students, Undergraduate, Other degree/certificate-seeking' 
19 'All students, Undergraduate, Other degree/certifcate-seeking, Transfer-ins' 
20 'All students, Undergraduate, Other degree/certifcate-seeking, Continuing' 
11 'All students, Undergraduate, Non-degree/certificate-seeking' 
12 'All students, Graduate' 
21 'Full-time students total' 
22 'Full-time students, Undergraduate total' 
23 'Full-time students, Undergraduate, Degree/certificate-seeking total' 
24 'Full-time students, Undergraduate, Degree/certificate-seeking, First-time' 
25 'Full-time students, Undergraduate, Degree/certificate-seeking, Other degree/certificate-seeking' 
39 'Full-time students, Undergraduate, Other degree/certifcate-seeking, Transfer-ins' 
40 'Full-time students, Undergraduate, Other degree/certifcate-seeking, Continuing' 
31 'Full-time students, Undergraduate, Non-degree/certificate-seeking' 
32 'Full-time students, Graduate' 
41 'Part-time students total' 
42 'Part-time students, Undergraduate total' 
43 'Part-time students, Undergraduate, Degree/certificate-seeking total' 
44 'Part-time students, Undergraduate, Degree/certificate-seeking, First-time' 
45 'Part-time students, Undergraduate, Degree/certificate-seeking, Other degree/certificate-seeking' 
59 'Part-time students, Undergraduate, Other degree/certifcate-seeking, Transfer-ins' 
60 'Part-time students, Undergraduate, Other degree/certifcate-seeking, Continuing' 
51 'Part-time students, Undergraduate, Non-degree/certificate-seeking' 
52 'Part-time students, Graduate' 
/line      
1 'Full-time, first-time, first-year, degree-seeking undergraduates' 
2 'Full-time undergraduate, other degree/certifcate-seeking, transfer-ins' 
3 'Full-time  undergraduate, other degree/certifcate-seeking, continuing' 
6 'Full-time degree-seeking undergraduates, total' 
7 'Full-time nondegree-seeking undergraduates' 
8 'Total  full-time undergraduates' 
11 'Full-time graduates' 
14 'Total full-time students' 
15 'Part-time, first-time, first-year, degree-seeking undergraduates' 
16 'Part-time undergraduate, other degree/certifcate-seeking, transfer-ins' 
17 'Part-time undergraduate, other degree/certifcate-seeking, continuing' 
20 'Part-time degree-seeking undergraduates, total' 
21 'Part-time nondegree-seeking undergraduates' 
22 'Total part-time undergraduates' 
25 'Part-time graduates' 
28 'Total part-time' 
29 'Total enrollment' 
99 'Generated record not on original survey' 
/section   
1 'Full-time' 
2 'Part-time' 
3 'All students' 
/lstudy    
1 'Undergraduate' 
3 'Graduate' 
4 'All students'.
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
*Z  'Implied zero'

frequencies variables=
efalevel line     section  lstudy   xeftotlt xeftotlm xeftotlw xdvefait xdvefaim
xdvefaiw xdvefapt xdvefapm xdvefapw xdvefbkt xdvefbkm xdvefbkw xdvefhst xdvefhsm xdvefhsw
xdvefwht xdvefwhm xdvefwhw xefaiant xefaianm xefaianw xefasiat xefasiam xefasiaw xefbkaat
xefbkaam xefbkaaw xefhispt xefhispm xefhispw xefnhpit xefnhpim xefnhpiw xefwhitt xefwhitm
xefwhitw xef2mort xef2morm xef2morw xefrac19 xefrac05 xefrac06 xefrac20 xefrac07 xefrac08
xefrac18 xefrac03 xefrac04 xefrac21 xefrac09 xefrac10 xefrac22 xefrac11 xefrac12 xefunknt
xefunknm xefunknw xefnralt xefnralm xefnralw .

descriptives variables=
eftotlt  eftotlm  eftotlw  dvefait  dvefaim 
dvefaiw  dvefapt  dvefapm  dvefapw  dvefbkt  dvefbkm  dvefbkw  dvefhst  dvefhsm  dvefhsw 
dvefwht  dvefwhm  dvefwhw  efaiant  efaianm  efaianw  efasiat  efasiam  efasiaw  efbkaat 
efbkaam  efbkaaw  efhispt  efhispm  efhispw  efnhpit  efnhpim  efnhpiw  efwhitt  efwhitm 
efwhitw  ef2mort  ef2morm  ef2morw  efrace19 efrace05 efrace06 efrace20 efrace07 efrace08
efrace18 efrace03 efrace04 efrace21 efrace09 efrace10 efrace22 efrace11 efrace12 efunknt 
efunknm  efunknw  efnralt  efnralm  efnralw 
/stats=def.

save outfile='ef2009a_rv.sav' /compressed.
