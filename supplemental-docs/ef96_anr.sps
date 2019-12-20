*** Created: 6/13/2004 4:09:49 AM                            ***.
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
/file = 'c:\dct\ef96_anr.csv'
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
section a2
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
balmen f6
balwomen f6
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
line 'Type of students counted'
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
efrace16 'Total women'
balmen 'Balance men'
balwomen 'Balance women'
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
/line 1 'Full-time,degree seeking first year,first-time                                                      '
10 'Full-time,first prof, other                                                                         '
11 'Full-time,graduate,degree seeking,first-time                                                        '
12 'Full-time,graduate,degree seeking,other                                                             '
13 'Full-time,graduate,other                                                                            '
14 'Full-time,post-baccalaureate                                                                        '
15 'Part-time,degree seeking,first-time first year                                                      '
16 'Part-time,degree seeking,other first                                                                '
17 'Part-time,degree seeking,second year                                                                '
18 'Part-time,degree seeking,third year                                                                 '
19 'Part-time,degree seeking.fourth+ year                                                               '
2 'Full-time,degree seeking first year,other                                                           '
20 'Part-time,degree seeking,no level                                                                   '
21 'Part-time,other undergraduates                                                                      '
22 'Total Part-time undergraduates                                                                      '
23 'Part-time,1st-prof,first-time                                                                       '
24 'Part-time,1st-prof,other                                                                            '
25 'Part-time,graduate,degree seeking, first-time                                                       '
26 'Part-time,graduate,degree seeking, other                                                            '
27 'Part-time,graduate,other                                                                            '
28 'Part-time,post-baccalaureate                                                                        '
29 'Grand total                                                                                         '
3 'Full-time,degree seeking second year                                                                '
4 'Full-time,degree seeking third year                                                                 '
5 'Full-time,degree seeking fourth+ year                                                               '
6 'Full-time,degree seeking,no level                                                                   '
7 'Full-time,other undergraduates                                                                      '
8 'Total Full-time undergraduates                                                                      '
9 'Full-time,first prof, first time'
/lstudy 'A' 'Undergraduates - All forms                                                                          '
'B' 'First-professional students, forms EF1 and CN                                                       '
'C' 'Graduate students, forms EF1 and CN                                                                 '
'D' 'Total postbaccalaureate, form EF1'
/section '01' 'Full-time students                                                                                  '
'02' 'Part-time students'.

frequencies variables=
 line lstudy section.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace13 efrace14 efrace15 efrace16 balmen balwomen
/stats=def.

save outfile='ef96_anr.sav' /compressed.

