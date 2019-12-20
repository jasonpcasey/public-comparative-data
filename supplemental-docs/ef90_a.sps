*** Created: 6/13/2004 7:06:37 AM                            ***.
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
/file = 'c:\dct\ef90_a.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
line f2
lstudy a1
section f2
efrace01 f6
efrace02 f6
efrace03 f6
efrace04 f6
efrace05 f6
efrace06 f6
efrace07 f6
efrace08 f6
efrace09 f6
efrace10 f6
efrace11 f6
efrace12 f6
efrace13 f6
efrace14 f6
efrace15 f6
efrace16 f6.

variable labels
unitid 'Unique identification number for an institution'
line 'Type of student count'
lstudy 'Level of study'
section 'Attendance status-Part A only'
efrace01 'Non-resident alien men'
efrace02 'Non-resident alien women'
efrace03 'Black non-Hispanic men'
efrace04 'Black non-Hispanic women'
efrace05 'American Indian or Alaskan Native men'
efrace06 'American Indian or Alaskan Native women'
efrace07 'Asian or Pacific Islander men'
efrace08 'Asian or Pacific Islander women'
efrace09 'Hispanic men'
efrace10 'Hispanic women'
efrace11 'White non-Hispanic men'
efrace12 'White non-Hispanic women'
efrace13 'Race-ethnicity unknown men'
efrace14 'Race-ethnicity unknown women'
efrace15 'Total men'
efrace16 'Total women'.

value labels
/line 1 'Full-time undergraduate degree-seeking 1st-time fr'
10 'Full-time first-professional all other            '
11 'Full-time graduate degree-seeking first-time      '
12 'Full-time graduate degree-seeking other           '
13 'Full-time graduate non-degree-seeking             '
14 'Total full-time post-baccalaureate                '
15 'Part-time undergraduate degree-seeking 1st-time fr'
16 'Part-time undergraduate degree-seeking other 1st y'
17 'Part-time undergraduate degree-seeking 2nd year   '
18 'Part-time undergraduate degree-seeking 3rd year   '
19 'Part-time undergraduate degree-seeking 4th year an'
2 'Full-time undergraduate degree-seeking other 1st y'
20 'Part-time undergraduate degree-seeking unclassifie'
21 'Part-time undergraduate non-degree seeking        '
22 'Total part-time undergraduates                    '
23 'Part-time first-professional first-time           '
24 'Part-time first-professional all other            '
25 'Part-time graduate degree-seeking first-time      '
26 'Part-time graduate degree-seeking other           '
27 'Part-time graduate non-degree-seeking             '
28 'Total part-time post-baccalaureate                '
29 'Grand total of all students                       '
3 'Full-time undergraduate degree-seeking 2nd year   '
4 'Full-time undergraduate degree-seeking 3rd year   '
5 'Full-time undergraduate degree-seeking 4th year an'
6 'Full-time undergraduate degree-seeking unclassifie'
7 'Full-time undergraduate non-degree seeking        '
8 'Total full-time undergraduates                    '
9 'Full-time first-professional first-time'
/lstudy 'A' 'Undergraduate students                            '
'B' 'First-professional students                       '
'C' 'Graduate students                                 '
'D' 'All post-baccalaureate students'
/section 1 'Full-time students                                '
2 'Part-time students'.

frequencies variables=
 line lstudy section.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace13 efrace14 efrace15 efrace16
/stats=def.

save outfile='ef90_a.sav' /compressed.

