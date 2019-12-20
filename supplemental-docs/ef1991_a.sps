*** Created: 6/13/2004 6:51:19 AM                            ***.
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
/file = 'c:\dct\ef1991_a.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
part f
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
efrace16 f6
bal_m f6
bal_w f6.

variable labels
unitid 'Unique identification number for an institution'
part 'part'
line 'Line number'
lstudy 'Level of study'
section 'Attendance status- Part A only'
efrace01 'Non-resident alien men'
efrace02 'Non-resident alien women'
efrace03 'Black Non-Hispanic men'
efrace04 'Black Non-Hispanic women'
efrace05 'American Indian/Alaskan native men'
efrace06 'American Indian/Alaskan native women'
efrace07 'Asian/Pacific Islander men'
efrace08 'Asian/Pacific Islander women'
efrace09 'Hispanic men'
efrace10 'Hispanic women'
efrace11 'White Non-Hispanic men'
efrace12 'White Non-Hispanic women'
efrace13 'Original unknown MEN'
efrace14 'Original unknown WOMEN'
efrace15 'Total men'
efrace16 'Total women'
bal_m 'Balance men'
bal_w 'Balance women'.

value labels
/line 1 'Full-time undergraduates, degree seeking first-time freshman'
10 'Full-time first-professional all other'
11 'Full-time graduate, degree seeking first-time'
12 'Full-time graduate, degree seeking other'
13 'Full-time other graduates enrolled in credit courses'
14 'Total full-time postbaccalaureate students (sum 9 thru 13)'
15 'Part-time undergraduates, degree seeking first-time freshman'
16 'Part-time undergraduates, degree seeking other first year'
17 'Part-time undergraduates, degree seeking second year'
18 'Part-time undergraduates, degree seeking third  year'
19 'Part-time undergraduates, degree seeking 4th year and beyond'
2 'Full-time undergraduates, degree seeking other first year'
20 'Part-time undergraduates, degree seeking unclassified'
21 'Part-time other undergraduates enrolled in credit courses.'
22 'Total part-time undergraduates (sum 15 thru 21)'
23 'Part-time first-professional first-time'
24 'Part-time first-professional all other'
25 'Part-time graduate, degree seeking first-time'
26 'Part-time graduate, degree seeking other'
27 'Part-time other graduates enrolled in credit courses'
28 'Total part-time postbaccalaureate students (sum 23 thru 27)'
29 'Total all students (sum 8,14,22,28)'
3 'Full-time undergraduates, degree seeking second year'
4 'Full-time undergraduates, degree seeking third  year'
5 'Full-time undergraduates, degree seeking 4th year and beyond'
6 'Full-time undergraduates, degree seeking unclassified'
7 'Full-time other undergraduates enrolled in credit courses.'
8 'Total full-time undergraduates (sum 1 thru 7)'
9 'Full-time first-professional first-time'
/lstudy 'A' 'Undergraduates only'
'B' 'First professional students'
'C' 'Graduate students'
'D' 'Total post Bacaalaureate'
/section 1 'FT'
2 'PT'.

frequencies variables=
 line lstudy section.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace13 efrace14 efrace15 efrace16 bal_m bal_w
/stats=def.

save outfile='ef1991_a.sav' /compressed.

