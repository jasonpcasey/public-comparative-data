*** Created: 6/13/2004 5:34:41 AM                            ***.
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
/file = 'c:\dct\ef1994_anr.csv'
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
bal_w f6
ia01 f
ia02 f
ia03 f
ia04 f
ia05 f
ia06 f
ia07 f
ia08 f
ia09 f
ia10 f
ia11 f
ia12 f
ia13 f
ia14 f
ia15 f
ia16 f.

variable labels
unitid 'Unique identification number for an institution'
part 'part'
line 'Line number'
lstudy 'Level of study'
section 'Attendence status- corresponds to form section'
efrace01 'Non-resident alien, men'
efrace02 'Non-resident alien, women'
efrace03 'Black Non-Hispanic, men'
efrace04 'Black Non-Hispanic, women'
efrace05 'American Indian/Alaskan native, men'
efrace06 'American Indian/Alaskan native, women'
efrace07 'Asian/Pacific Islander, men'
efrace08 'Asian/Pacific Islander, women'
efrace09 'Hispanic, men'
efrace10 'Hispanic, women'
efrace11 'White Non-Hispanic, men'
efrace12 'White Non-Hispanic, women'
efrace13 'Race/ethnicity unknown, men'
efrace14 'Race/ethnicity unknown, women'
efrace15 'Total men'
efrace16 'Total women'
bal_m 'Men balance'
bal_w 'Women balance'
ia01 'ia01'
ia02 'ia02'
ia03 'ia03'
ia04 'ia04'
ia05 'ia05'
ia06 'ia06'
ia07 'ia07'
ia08 'ia08'
ia09 'ia09'
ia10 'ia10'
ia11 'ia11'
ia12 'ia12'
ia13 'ia13'
ia14 'ia14'
ia15 'ia15'
ia16 'ia16'.

value labels
/line 1 'Full-time undergraduates, degree seeking first-time freshman'
10 'Full-time first-professional all other'
11 'Full-time graduate, degree seeking first-time'
12 'Full-time graduate, degree seeking all other'
13 'Full-time all other graduates enrolled in credit courses'
14 'Total Full-time postbaccalaureate students (sum 9 thru 13)'
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
8 'Total Full-time undergraduates (sum 1 thru 7)'
9 'Full-time first-professional first-time'
/lstudy 'A' 'Undergraduates - All forms'
'B' 'First-professional students, EF1 and CN'
'C' 'Graduate students, EF1 and CN'
'D' 'Total postbaccalaureate, EF1'
/section 1 'Full-time students'
2 'Part-time students'.

frequencies variables=
 line lstudy section.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace13 efrace14 efrace15 efrace16 bal_m bal_w
/stats=def.

save outfile='ef1994_anr.sav' /compressed.

