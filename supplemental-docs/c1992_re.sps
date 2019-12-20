*** Created: 6/13/2004 6:38:25 AM                            ***.
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
/file = 'c:\dct\c1992_re.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
cipcode a7
awlevel f1
crace01 f5
crace02 f5
crace03 f5
crace04 f5
crace05 f5
crace06 f5
crace07 f5
crace08 f5
crace09 f5
crace10 f5
crace11 f5
crace12 f5
crace13 f5
crace14 f5
crace15 f5
crace16 f5
bal_m f1
bal_w f1.

variable labels
unitid 'Unique identification number for an institution'
cipcode 'CIP Code'
awlevel 'Award level code'
crace01 'Nonresident alien, men'
crace02 'Nonresident alien, women'
crace03 'Black non-Hispanic, men'
crace04 'Black non-Hispanic, women'
crace05 'American Indian/Alaskan Native, men'
crace06 'American Indian/Alaskan Native, women'
crace07 'Asian/Pacific Islander, men'
crace08 'Asian/Pacific Islander, women'
crace09 'Hispanic, men'
crace10 'Hispanic, women'
crace11 'White, non-Hispanic, men'
crace12 'White, non-Hispanic, women'
crace13 'Race/ethnicity unknown, men'
crace14 'Race/ethnicity unknown, women'
crace15 'Total men'
crace16 'Total women'
bal_m 'Men balance'
bal_w 'Women balance'.

value labels
/cipcode '01.0000' 'Agricultural Business and Production'
'02.0000' 'Agricultural Sciences'
'03.0000' 'Conservation and Renewable Natural Resources'
'04.0000' 'Architecture and Related Programs'
'05.0000' 'Area, Ethnic and Cultural Studies'
'08.0000' 'Marketing Opers./Market. and Distribution'
'09.0000' 'Communications'
'10.0000' 'Communications Technologies'
'11.0000' 'Computer and Information Sciences'
'12.0000' 'Personal and Miscellaneous Services'
'13.0000' 'Education'
'14.0000' 'Engineering'
'15.0000' 'Engineering-Related Technologies'
'16.0000' 'Foreign Languages and Literatures'
'19.0000' 'Home Economics'
'20.0000' 'Vocational Home Economics'
'22.0000' 'Law and Legal Studies'
'22.0101' 'Law (LL.B., J.D.)'
'23.0000' 'English Language and Literature/Letters'
'24.0000' 'Liberal/General Studies and Humanities'
'25.0000' 'Library Science'
'26.0000' 'Biological Sciences/Life Sciences'
'27.0000' 'Mathematics'
'29.0000' 'Military Technologies'
'30.0000' 'Multi/Interdisciplinary Studies'
'31.0000' 'Parks, Recreation, Leisure and Fitness'
'38.0000' 'Philosophy and Religion'
'39.0000' 'Theological Studies/Religious Vocations'
'39.0602' 'Divinity/Ministry (B.D., M.Div.)'
'39.0603' 'Rabbinical and Talmudic Studies (M.H.L./Rav)'
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
'51.0000' 'Health Professions and Related Sciences'
'51.0101' 'Chiropractic (D.C., D.C.M.)'
'51.0401' 'Dentistry (D.D.S., D.M.D.)'
'51.1201' 'Medicine (M.D.)'
'51.1701' 'Optometry (O.D.)'
'51.1901' 'Osteopathic Medicine (D.O.)'
'51.2001' 'Pharmacy (B. Pharm., Pharm.D.)'
'51.2101' 'Podiatry (D.P.M., D.P., Pod.D.)'
'51.2401' 'Veterinary Medicine (D.V.M.)'
'51.2704' 'Naturopathic Medicine'
'52.0000' 'Business Management and Admin. Services'
'95.0000' 'Undesignated Field of Study'
'95.9500' 'Undesignated Field of Study'
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
 crace01 crace02 crace03 crace04 crace05 crace06 crace07 crace08 crace09 crace10 crace11 crace12 crace13 crace14 crace15 crace16 bal_m bal_w
/stats=def.

save outfile='c1992_re.sav' /compressed.

