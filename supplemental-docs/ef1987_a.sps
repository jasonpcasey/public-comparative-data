*** Created: 6/13/2004 7:42:14 AM                            ***.
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
/file = 'c:\dct\ef1987_a.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
line f8
lstudy a1
section a2
efrace15 f8
efrace16 f8
xefrac15 a1
xefrac16 a1.

variable labels
unitid 'Unique identification number for an institution'
line 'Line number, ranges from 1 thru 29'
lstudy 'Level A=Undergrads,B=1st Prof.,C=Grad'
section 'Form section, 01=Full-time, 02=Part-time'
efrace15 'Total men'
efrace16 'Total women'
xefrac15 'Imputation field for EFRACE15 - Total men'
xefrac16 'Imputation field for EFRACE16 - Total women'.

value labels
/line 1 'Full-time undergraduates, degree seeking first-time freshman'
10 'Full-time first-professional all other'
11 'Full-time graduate, degree seeking first-time'
12 'Full-time graduate, degree seeking all other'
13 'Full-time all other graduates enrolled in credit courses'
14 'Total full-time postbaccalaureate students (sum 9 thru 13)'
15 'Part-time undergraduates, degree seeking first-time freshman'
16 'Part-time undergraduates, degree seeking other first year'
17 'Part-time undergraduates, degree seeking second year'
18 'Part-time undergraduates, degree seeking third year'
19 'Part-time undergraduates, degree seeking 4th year and beyond'
2 'Full-time undergraduates, degree seeking other first year'
20 'Part-time undergraduates, degree seeking unclassified by level'
21 'Part-time all other undergraduates enrolled in credit courses'
22 'Total part-time undergraduates (sum 15 thru 21)'
23 'Part-time first-professional first-time'
24 'Part-time first-professional all other'
25 'Part-time graduate, degree seeking first-time'
26 'Part-time graduate, degree seeking other'
27 'Part-time all other graduates enrolled in credit courses'
28 'Total part-time postbaccalaureate students (sum 23 thru 27)'
29 'Total all students (sum 8,14,22,28)'
3 'Full-time undergraduates, degree seeking second year'
4 'Full-time undergraduates, degree seeking third year'
5 'Full-time undergraduates, degree seeking 4th year and beyond'
6 'Full-time undergraduates, degree seeking unclassified by level'
7 'Full-time all other undergraduates enrolled in credit courses'
8 'Total full-time undergraduates (sum 1 thru 7)'
9 'Full-time first-professional first-time'
/lstudy 'A' 'Undergraduates - All forms'
'B' 'First-professional students, EF1 and CN'
'C' 'Graduate students, EF1 and CN'
'D' 'Total, EF1'
/section '01' 'Full-time students'
'02' 'Part-time students'
/xefrac15 '0' 'Reported'
'2' 'Imputed using reported data from prior year '
'4' 'Imputed using hot deck institution'
'5' 'Imputed based on national averages'
'BLANK' '{Item flag value not assigned}'
/xefrac16 '0' 'Reported'
'2' 'Imputed using reported data from prior year '
'4' 'Imputed using hot deck institution'
'5' 'Imputed based on national averages'
'BLANK' '{Item flag value not assigned}'.

frequencies variables=
 line lstudy section xefrac15 xefrac16.

descriptives variables=
 efrace15 efrace16
/stats=def.

save outfile='ef1987_a.sav' /compressed.

