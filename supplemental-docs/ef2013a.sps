*** CreatedSeptember 24, 2014                                ***;
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
/file = 'c:\dct\ef2013a.csv' 
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
xefaiant 'Imputation field for efaiant - American Indian or Alaska Native total'
efaiant  'American Indian or Alaska Native total' 
xefaianm 'Imputation field for efaianm - American Indian or Alaska Native men'
efaianm  'American Indian or Alaska Native men' 
xefaianw 'Imputation field for efaianw - American Indian or Alaska Native women'
efaianw  'American Indian or Alaska Native women' 
xefasiat 'Imputation field for efasiat - Asian total'
efasiat  'Asian total' 
xefasiam 'Imputation field for efasiam - Asian men'
efasiam  'Asian men' 
xefasiaw 'Imputation field for efasiaw - Asian women'
efasiaw  'Asian women' 
xefbkaat 'Imputation field for efbkaat - Black or African American total'
efbkaat  'Black or African American total' 
xefbkaam 'Imputation field for efbkaam - Black or African American men'
efbkaam  'Black or African American men' 
xefbkaaw 'Imputation field for efbkaaw - Black or African American women'
efbkaaw  'Black or African American women' 
xefhispt 'Imputation field for efhispt - Hispanic total'
efhispt  'Hispanic total' 
xefhispm 'Imputation field for efhispm - Hispanic men'
efhispm  'Hispanic men' 
xefhispw 'Imputation field for efhispw - Hispanic women'
efhispw  'Hispanic women' 
xefnhpit 'Imputation field for efnhpit - Native Hawaiian or Other Pacific Islander total'
efnhpit  'Native Hawaiian or Other Pacific Islander total' 
xefnhpim 'Imputation field for efnhpim - Native Hawaiian or Other Pacific Islander men'
efnhpim  'Native Hawaiian or Other Pacific Islander men' 
xefnhpiw 'Imputation field for efnhpiw - Native Hawaiian or Other Pacific Islander women'
efnhpiw  'Native Hawaiian or Other Pacific Islander women' 
xefwhitt 'Imputation field for efwhitt - White total'
efwhitt  'White total' 
xefwhitm 'Imputation field for efwhitm - White men'
efwhitm  'White men' 
xefwhitw 'Imputation field for efwhitw - White women'
efwhitw  'White women' 
xef2mort 'Imputation field for ef2mort - Two or more races total'
ef2mort  'Two or more races total' 
xef2morm 'Imputation field for ef2morm - Two or more races men'
ef2morm  'Two or more races men' 
xef2morw 'Imputation field for ef2morw - Two or more races women'
ef2morw  'Two or more races women' 
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
efalevel line     section  lstudy   xeftotlt xeftotlm xeftotlw xefaiant xefaianm
xefaianw xefasiat xefasiam xefasiaw xefbkaat xefbkaam xefbkaaw xefhispt xefhispm xefhispw
xefnhpit xefnhpim xefnhpiw xefwhitt xefwhitm xefwhitw xef2mort xef2morm xef2morw xefunknt
xefunknm xefunknw xefnralt xefnralm xefnralw .

descriptives variables=
eftotlt  eftotlm  eftotlw  efaiant  efaianm 
efaianw  efasiat  efasiam  efasiaw  efbkaat  efbkaam  efbkaaw  efhispt  efhispm  efhispw 
efnhpit  efnhpim  efnhpiw  efwhitt  efwhitm  efwhitw  ef2mort  ef2morm  ef2morw  efunknt 
efunknm  efunknw  efnralt  efnralm  efnralw 
/stats=def.

save outfile='ef2013a.sav' /compressed.
