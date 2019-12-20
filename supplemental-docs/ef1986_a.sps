*** Created: 6/13/2004 8:08:13 AM                            ***.
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
/file = 'c:\dct\ef1986_a.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
section f8
lstudy a1
line f8
efrace01 f8
efrace02 f8
efrace03 f8
efrace04 f8
efrace05 f8
efrace06 f8
efrace07 f8
efrace08 f8
efrace09 f8
efrace10 f8
efrace11 f8
efrace12 f8
efrace15 f8
efrace16 f8
balmen f8
balwomen f8
xefrac01 a1
xefrac02 a1
xefrac03 a1
xefrac04 a1
xefrac05 a1
xefrac06 a1
xefrac07 a1
xefrac08 a1
xefrac09 a1
xefrac10 a1
xefrac11 a1
xefrac12 a1
xefrac15 a1
xefrac16 a1.

variable labels
unitid 'Unique identification number for an institution'
section 'Form section, 1 = Full-time, 2 = Part-time'
lstudy 'Level A=Undergraduates only, B=First professional students, C=Graduate students'
line 'Line number, ranges from 1 thru 29'
efrace01 'Non-resident alien men'
efrace02 'Non-resident alien women'
efrace03 'Black Non-Hispanic men'
efrace04 'Black Non-Hispanic women'
efrace05 'American Indian/Alaskan native men'
efrace06 'American Ind/Alaskan native women'
efrace07 'Asian/Pacific Islander men'
efrace08 'Asian/Pacific Islander women'
efrace09 'Hispanic men'
efrace10 'Hispanic women'
efrace11 'White Non-Hispanic men'
efrace12 'White Non-Hispanic women'
efrace15 'Total men'
efrace16 'Total women'
balmen 'Original balance column for men'
balwomen 'Original balance column for women'
xefrac01 'Imputation field for EFRACE01 - Non-resident alien men'
xefrac02 'Imputation field for EFRACE02 - Non-resident alien women'
xefrac03 'Imputation field for EFRACE03 - Black Non-Hispanic men'
xefrac04 'Imputation field for EFRACE04 - Black Non-Hispanic women'
xefrac05 'Imputation field for EFRACE05 - American Indian/Alaskan native men'
xefrac06 'Imputation field for EFRACE06 - American Ind/Alaskan native women'
xefrac07 'Imputation field for EFRACE07 - Asian/Pacific Islander men'
xefrac08 'Imputation field for EFRACE08 - Asian/Pacific Islander women'
xefrac09 'Imputation field for EFRACE09 - Hispanic men'
xefrac10 'Imputation field for EFRACE10 - Hispanic women'
xefrac11 'Imputation field for EFRACE11 - White Non-Hispanic men'
xefrac12 'Imputation field for EFRACE12 - White Non-Hispanic women'
xefrac15 'Imputation field for EFRACE15 - Total men'
xefrac16 'Imputation field for EFRACE16 - Total women'.

value labels
/section 1 'Full-time'
2 'Part-time'
/lstudy 'A' 'Undergraduates only'
'B' 'First professional students'
'C' 'Graduate students'
'D' 'Total post Baccalaureate'
/line 1 'Full-time, degree seeking first year, first-time'
10 'Full-time, first professional, other'
11 'Full-time, graduate, degree seeking, first-time'
12 'Full-time, graduate, degree seeking, other'
13 'Postbaccalaureate full-time students not in graduate programs'
14 'Full-time, post-baccalaureate'
15 'Part-time, degree seeking, first-time first year'
16 'Part-time, degree seeking, other first'
17 'Part-time, degree seeking, second year'
18 'Part-time, degree seeking, third year'
19 'Part-time, degree seeking, fourth+ year'
2 'Full-time, degree seeking, first year, other'
20 'Part-time, degree seeking, unclassified'
21 'Part-time, non-degree seeking undergraduates'
22 'Total Part-time undergraduates'
23 'Part-time, first professional, first-time'
24 'Part-time, first professional, other'
25 'Part-time, graduate, degree seeking, first-time'
26 'Part-time, graduate, degree seeking, other'
27 'Postbaccalaureate part-time students not in graduate programs'
28 'Part-time, post-baccalaureate'
29 'Grand total'
3 'Full-time, degree seeking, second year'
4 'Full-time, degree seeking, third year'
5 'Full-time, degree seeking, fourth+ year'
6 'Full-time, degree seeking, unclassified'
7 'Full-time, non-degree seeking undergraduates'
8 'Total Full-time undergraduates'
9 'Full-time, first professional, first time'
/xefrac01 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac02 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac03 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac04 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac05 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac06 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac07 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac08 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac09 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac10 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac11 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac12 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac15 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'
/xefrac16 '0' 'Reported'
'1' 'Generated data'
'2' 'Imputed'
'3' 'Adjusted data'
'6' 'Entry unknown'
'BLANK' '{Item flag value not assigned}'.

frequencies variables=
 section lstudy line xefrac01 xefrac02 xefrac03 xefrac04 xefrac05 xefrac06 xefrac07 xefrac08 xefrac09 xefrac10 xefrac11 xefrac12 xefrac15 xefrac16.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace15 efrace16 balmen balwomen
/stats=def.

save outfile='ef1986_a.sav' /compressed.

