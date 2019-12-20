*** Created: 6/13/2004 7:08:42 AM                            ***.
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
/file = 'c:\dct\c8990re.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
cipcode a7
awlevel f2
crace01 f6
crace02 f6
crace03 f6
crace04 f6
crace05 f6
crace06 f6
crace07 f6
crace08 f6
crace09 f6
crace10 f6
crace11 f6
crace12 f6
crace13 f6
crace14 f6
crace15 f6
crace16 f6
bal_m f6
bal_w f6.

variable labels
unitid 'Unique identification number for an institution'
cipcode 'CIP Code 2-digit'
awlevel 'Award Level code'
crace01 'Nonresident alien, men'
crace02 'Nonresident alien, women'
crace03 'Black, non-Hispanic, men'
crace04 'Black, non-Hispanic, women'
crace05 'American Indian/Alaskan Native, men'
crace06 'American Indian/Alaskan Native, women'
crace07 'Asian or Pacific Islander, men'
crace08 'Asian or Pacific Islander, women'
crace09 'Hispanic, men'
crace10 'Hispanic, women'
crace11 'White, non-Hispanic, men'
crace12 'White, non-Hispanic, women'
crace13 'Race/ethnicity unknown, men'
crace14 'Race/ethnicity unknown, women'
crace15 'Grand total, men'
crace16 'Grand total, women'
bal_m 'Men Balance'
bal_w 'Women Balance'.

value labels
/cipcode '01.0000' 'Agribusiness and Agricultural Production          '
'02.0000' 'Agricultural Sciences                             '
'03.0000' 'Renewable Natural Resources                       '
'04.0000' 'Architecture and Environmental Design             '
'05.0000' 'Area and Ethnic Studies                           '
'06.0000' 'Business and Management                           '
'07.0000' 'Business (Administrative Support)                 '
'08.0000' 'Marketing and Distribution                        '
'09.0000' 'Communications                                    '
'10.0000' 'Communications Technologies                       '
'11.0000' 'Computer and Information Sciences                 '
'12.0000' 'Consumer, Personal and Misc. Services             '
'13.0000' 'Education                                         '
'14.0000' 'Engineering                                       '
'15.0000' 'Engineering and Engineering Related Tech          '
'16.0000' 'Foreign Languages                                 '
'17.0000' 'Allied Health                                     '
'18.0000' 'Health Sciences                                   '
'18.0301' 'Chiropractic                                      '
'18.0401' 'Dentistry, Gen.                                   '
'18.1001' 'Medicine, Gen.                                    '
'18.1201' 'Optometry                                         '
'18.1301' 'Osteopathic Medicine                              '
'18.1401' 'Pharmacy                                          '
'18.1501' 'Podiatry                                          '
'18.2401' 'Veterinary Medicine                               '
'19.0000' 'Home Economics                                    '
'20.0000' 'Vocational Home Economics                         '
'22.0000' 'Law                                               '
'22.0101' 'Law                                               '
'23.0000' 'Letters                                           '
'24.0000' 'Liberal/General Studies                           '
'25.0000' 'Library and Archival Sciences                     '
'26.0000' 'Life Sciences                                     '
'27.0000' 'Mathematics                                       '
'28.0000' 'Military Sciences                                 '
'29.0000' 'Military Technologies                             '
'30.0000' 'Multi/Interdisciplinary Studies                   '
'31.0000' 'Parks and Recreation                              '
'38.0000' 'Philosophy and Religion                           '
'39.0000' 'Theology                                          '
'39.0601' 'Theological Studies                               '
'40.0000' 'Physical Sciences                                 '
'41.0000' 'Science Technologies                              '
'42.0000' 'Psychology                                        '
'43.0000' 'Protective Services                               '
'44.0000' 'Public Affairs                                    '
'45.0000' 'Social Sciences                                   '
'46.0000' 'Construction Trades                               '
'47.0000' 'Mechanics and Repairers                           '
'48.0000' 'Precision Production                              '
'49.0000' 'Transportation and Material Moving                '
'50.0000' 'Visual and Performing Arts                        '
'95.0000' 'Undesignated Field of Study                       '
'99.0000' 'Award Level Total'
/awlevel 1 'Awards of less than one academic year             '
10 'First-professional degrees                        '
2 'Awards at least 1 but less than 2 academic years  '
3 'Associates degrees                                '
4 'Awards at least 2 but less than 4 academic years  '
5 'Bachelors degrees                                 '
6 'Postbaccalaureate certificates                    '
7 'Masters degrees                                   '
8 'Post-Masters certificates                         '
9 'Doctors degrees'.

frequencies variables=
 cipcode awlevel.

descriptives variables=
 crace01 crace02 crace03 crace04 crace05 crace06 crace07 crace08 crace09 crace10 crace11 crace12 crace13 crace14 crace15 crace16 bal_m bal_w
/stats=def.

save outfile='c8990re.sav' /compressed.

