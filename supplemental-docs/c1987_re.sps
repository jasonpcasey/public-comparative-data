*** Created: 6/13/2004 7:57:16 AM                            ***.
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
/file = 'c:\dct\c1987_re.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
cipcode a7
awlevel f8
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
bal_m f6
bal_w f6
crace15 f6
crace16 f6.

variable labels
unitid 'Unique identification number for an institution'
cipcode 'CIP code'
awlevel 'Award level code'
crace01 'Non-resident alien men'
crace02 'Non-resident alien women'
crace03 'Black non-Hispanic men'
crace04 'Black Non-Hispanic women'
crace05 'American Indian/Alaskan native men'
crace06 'American Indian/Alaskan native women'
crace07 'Asian/Pacific Islander men'
crace08 'Asian/Pacific Islander women'
crace09 'Hispanic men'
crace10 'Hispanic women'
crace11 'White Non-Hispanic men'
crace12 'White Non-Hispanic women'
bal_m 'Balance row men'
bal_w 'Balance row women'
crace15 'Total men'
crace16 'Total women'.

value labels
/cipcode '01.0000' 'Agricultural Business and Production'
'02.0000' 'Agricultural Sciences'
'03.0000' 'Conservation and Renewable Natural Resources'
'04.0000' 'Architecture and Related Programs'
'05.0000' 'Area, Ethnic and Cultural Studies'
'06.0000' 'Business and Management'
'07.0000' 'Business (Admin Support)'
'08.0000' 'Marketing Operations/Marketing and Distribution'
'09.0000' 'Communications'
'10.0000' 'Communications Technologies'
'11.0000' 'Computer and Information Sciences'
'12.0000' 'Personal and Miscellaneous Services'
'13.0000' 'Education'
'14.0000' 'Engineering'
'15.0000' 'Engineering-Related Technologies'
'16.0000' 'Foreign Languages and Literatures'
'17.0000' 'Allied Health'
'18.0000' 'Health Sciences'
'18.0301' 'Chiropractic'
'18.0401' 'Dentistry, General'
'18.1001' 'Medical, General'
'18.1201' 'Optometry'
'18.1301' 'Osteopathic Medicine'
'18.1401' 'Pharmacy'
'18.1501' 'Podiatry'
'18.2401' 'Veterinary Medicine'
'19.0000' 'Home Economics'
'20.0000' 'Vocational Home Economics'
'22.0000' 'Law (non-first professional)'
'22.0101' 'Law (LL.B., J.D.)'
'23.0000' 'English Language and Literature/Letters'
'24.0000' 'Liberal/General Studies and Humanities'
'25.0000' 'Library Science'
'26.0000' 'Biological Sciences/Life Sciences'
'27.0000' 'Mathematics'
'28.0000' 'Military Services'
'29.0000' 'Military Technologies'
'30.0000' 'Multi/Interdisciplinary Studies'
'31.0000' 'Parks, Recreation, Leisure and Fitness'
'38.0000' 'Philosophy and Religion'
'39.0000' 'Theological Studies/Religious Vocations'
'39.0601' 'Theology/Theological Studies'
'40.0000' 'Physical Sciences'
'41.0000' 'Science Technologies'
'42.0000' 'Psychology'
'43.0000' 'Protective Services'
'44.0000' 'Public Administration and Services'
'45.0000' 'Social Sciences and History'
'46.0000' 'Construction Trades'
'47.0000' 'Mechanics and Repairers'
'48.0000' 'Precision Production Trades'
'49.0000' 'Transportation and Material Moving Workers'
'50.0000' 'Visual and Performing Arts'
'99.0000' 'Institution Total'
/awlevel 1 'Awards of less than 1 academic year'
10 'First-professional degrees'
2 'Awards of at least 1 but less than 2 academic years'
3 'Associates degrees'
4 'Awards of at least 2 but less than 4 academic years'
5 'Bachelors degrees'
6 'Postbaccalaureate certificates'
7 'Masters degrees'
8 'Post-Masters certificates'
9 'Doctors degrees'.

frequencies variables=
 cipcode awlevel.

descriptives variables=
 crace01 crace02 crace03 crace04 crace05 crace06 crace07 crace08 crace09 crace10 crace11 crace12 bal_m bal_w crace15 crace16
/stats=def.

save outfile='c1987_re.sav' /compressed.

