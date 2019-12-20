*** Created: 6/13/2004 3:17:03 AM                            ***.
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
/file = 'c:\dct\ic9798_hdr.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
instnm a50
city a20
stabbr a2
fips f2
obereg f2
fice f6
rstatus f1
imptype f1
parchild f1
idx f6
sector f2
iclevel f1
control f101
affil f1
hloffer f2
fpoffer f1
locale f1
pctmin1 f2
pctmin2 f2
pctmin3 f2
pctmin4 f2
hbcu f1
hospital f1
medical f1
tribal f1
carnegie f2
source f1
opeid a8
opeind f1
hdegoffr f2
ncesedit f1
formrt a3
cntygeo f3
resplast f1
respstat f1
addr a60
zip a9
countynm a30
congdist f2
gentele a10
fintele a10
admtele a10
ein a9
chfnm a30
chftitle a30.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution name'
city 'City location of institution'
stabbr 'Post Office State abbreviation code'
fips 'FIPS State code'
obereg 'OBE region code'
fice 'FICE code'
rstatus 'Respondent status to IC survey Part E ONLY'
imptype 'Type of Imputation part E only'
parchild 'Parent/child institution indicator'
idx 'UNITID of parent institution reporting full-year enrollment'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
affil 'Affiliation of institution'
hloffer 'Highest level of offering'
fpoffer 'First-professional offering'
locale 'Degree of Urbanization'
pctmin1 'Percent Black, non-Hispanic'
pctmin2 'Percent American Indian/Alaskan Native'
pctmin3 'Percent Asian/Pacific Islander'
pctmin4 'Percent Hispanic'
hbcu 'Historically Black College or University'
hospital 'Institution has hospital'
medical 'Institution grants a medical degree'
tribal 'Tribal college'
carnegie 'Carnegie Classification Code'
source 'Data source'
opeid 'Office of Postsecondary Education id'
opeind 'OPE eligibility indicator code'
hdegoffr 'Highest Degree offered'
ncesedit 'Status of data edit process'
formrt 'IC survey form received by institution'
cntygeo '3-digit county fips code'
resplast 'Respondent status last year'
respstat 'Respondent status this year'
addr 'Street address or post office box'
zip 'ZIP + four'
countynm 'County name'
congdist 'Congressional district'
gentele 'General information telephone number'
fintele 'Financial Aid Office telephone number'
admtele 'Admissions office telephone number'
ein 'Employer Identification Number'
chfnm 'Name of Chief Administrator'
chftitle 'Title of Chief Administrator'.

value labels
/stabbr 'AK' 'Alaska                                                                                              '
'AL' 'Alabama                                                                                             '
'AR' 'Arkansas                                                                                            '
'AS' 'American Samoa                                                                                      '
'AZ' 'Arizona                                                                                             '
'CA' 'California                                                                                          '
'CO' 'Colorado                                                                                            '
'CT' 'Connecticut                                                                                         '
'DC' 'District of Columbia                                                                                '
'DE' 'Delaware                                                                                            '
'FL' 'Florida                                                                                             '
'FM' 'Federated States of Micronesia                                                                      '
'GA' 'Georgia                                                                                             '
'GU' 'Guam                                                                                                '
'HI' 'Hawaii                                                                                              '
'IA' 'Iowa                                                                                                '
'ID' 'Idaho                                                                                               '
'IL' 'Illinois                                                                                            '
'IN' 'Indiana                                                                                             '
'KS' 'Kansas                                                                                              '
'KY' 'Kentucky                                                                                            '
'LA' 'Louisiana                                                                                           '
'MA' 'Massachusetts                                                                                       '
'MD' 'Maryland                                                                                            '
'ME' 'Maine                                                                                               '
'MH' 'Marshall Islands                                                                                    '
'MI' 'Michigan                                                                                            '
'MN' 'Minnesota                                                                                           '
'MO' 'Missouri                                                                                            '
'MP' 'Northern Marianas                                                                                   '
'MS' 'Mississippi                                                                                         '
'MT' 'Montana                                                                                             '
'NC' 'North Carolina                                                                                      '
'ND' 'North Dakota                                                                                        '
'NE' 'Nebraska                                                                                            '
'NH' 'New Hampshire                                                                                       '
'NJ' 'New Jersey                                                                                          '
'NM' 'New Mexico                                                                                          '
'NV' 'Nevada                                                                                              '
'NY' 'New York                                                                                            '
'OH' 'Ohio                                                                                                '
'OK' 'Oklahoma                                                                                            '
'OR' 'Oregon                                                                                              '
'PA' 'Pennsylvania                                                                                        '
'PR' 'Puerto Rico                                                                                         '
'PW' 'Palau                                                                                               '
'RI' 'Rhode Island                                                                                        '
'SC' 'South Carolina                                                                                      '
'SD' 'South Dakota                                                                                        '
'TN' 'Tennessee                                                                                           '
'TX' 'Texas                                                                                               '
'UT' 'Utah                                                                                                '
'VA' 'Virginia                                                                                            '
'VI' 'Virgin Islands                                                                                      '
'VT' 'Vermont                                                                                             '
'WA' 'Washington                                                                                          '
'WI' 'Wisconsin                                                                                           '
'WV' 'West Virginia                                                                                       '
'WY' 'Wyoming'
/fips 1 'Alabama                                                                                             '
10 'Delaware                                                                                            '
11 'District of Columbia                                                                                '
12 'Florida                                                                                             '
13 'Georgia                                                                                             '
15 'Hawaii                                                                                              '
16 'Idaho                                                                                               '
17 'Illinois                                                                                            '
18 'Indiana                                                                                             '
19 'Iowa                                                                                                '
2 'Alaska                                                                                              '
20 'Kansas                                                                                              '
21 'Kentucky                                                                                            '
22 'Louisiana                                                                                           '
23 'Maine                                                                                               '
24 'Maryland                                                                                            '
25 'Massachusetts                                                                                       '
26 'Michigan                                                                                            '
27 'Minnesota                                                                                           '
28 'Mississippi                                                                                         '
29 'Missouri                                                                                            '
30 'Montana                                                                                             '
31 'Nebraska                                                                                            '
32 'Nevada                                                                                              '
33 'New Hampshire                                                                                       '
34 'New Jersey                                                                                          '
35 'New Mexico                                                                                          '
36 'New York                                                                                            '
37 'North Carolina                                                                                      '
38 'North Dakota                                                                                        '
39 'Ohio                                                                                                '
4 'Ariizona                                                                                            '
40 'Oklahoma                                                                                            '
41 'Oregon                                                                                              '
42 'Pennsylvania                                                                                        '
44 'Rhode Island                                                                                        '
45 'South Carolina                                                                                      '
46 'South Dakota                                                                                        '
47 'Tennessee                                                                                           '
48 'Texas                                                                                               '
49 'Utah                                                                                                '
5 'Arkansas                                                                                            '
50 'Vermont                                                                                             '
51 'Virginia                                                                                            '
53 'Washington                                                                                          '
54 'West Virginia                                                                                       '
55 'Wisconsin                                                                                           '
56 'Wyoming                                                                                             '
6 'California                                                                                          '
60 'American Samoa                                                                                      '
64 'Federated States of Micronesia                                                                      '
66 'Guam                                                                                                '
68 'Marshall Islands                                                                                    '
69 'Northern Marianas                                                                                   '
70 'Palau                                                                                               '
72 'Puerto Rico                                                                                         '
78 'Virgin Islands                                                                                      '
8 'Colorado                                                                                            '
9 'Connecticut'
/obereg 0 'US Service schools                                                                                  '
1 'New England CT ME MA NH RI VT                                                                       '
2 'Mid East DE DC MD NJ NY PA                                                                          '
3 'Great Lakes IL IN MI OH WI                                                                          '
4 'Plains IA KS MN MO NE ND SD                                                                         '
5 'Southeast AL AR FL GA KY LA MS NC SC TN VA WV                                                       '
6 'Southwest AZ NM OK TX                                                                               '
7 'Rocky Mountains CO ID MT UT WY                                                                      '
8 'Far West AK CA HI NV OR WA                                                                          '
9 'Outlying Areas AS FM GU MH MP PR PW VI'
/rstatus 1 'Respondent to Part E                                                                                '
3 'Nonrespondent to Part E not imputed                                                                 '
4 'Nonrespondent to Part E imputed'
/imptype 1 'Imputed current year mean average method                                                            '
2 'Imputed previous years data                                                                         '
9 'Partial imputation'
/parchild 1 'Parent record                                                                                       '
2 'Child record'
/sector 0 'Administrative unit                                                                                 '
1 'Public 4-year or above                                                                              '
2 'Private nonprofit 4-year or above                                                                   '
3 'Private for-profit 4-year or above                                                                  '
4 'Public 2-year                                                                                       '
5 'Private nonprofit 2-year                                                                            '
6 'Private for-profit 2-year                                                                           '
7 'Public less-than-2-year                                                                             '
8 'Private nonprofit less-than-2-year                                                                  '
9 'Private for-profit less-than-2-year'
/iclevel 1 'Baccalaureate or higher degree                                                                      '
2 'Below the Baccalaureate                                                                             '
3 'Below Associates Degree'
/control 1 'Public                                                                                              '
2 'Private nonprofit                                                                                   '
3 'Private for-profit'
/affil 1 'Public                                                                                              '
2 'Private for-profit                                                                                  '
3 'Private nonprofit independent                                                                       '
4 'Private nonprofit Catholic                                                                          '
5 'Private nonprofit Jewish                                                                            '
6 'Private nonprofit Protestant                                                                        '
7 'Private nonprofit other religious'
/hloffer 0 'Other                                                                                               '
1 'Less than one academic year                                                                         '
2 'At least one but less than two academic years                                                       '
3 'Associates Degree                                                                                   '
4 'At least two but less than four academic year                                                       '
5 'Bachelors Degree                                                                                    '
6 'Postbaccalaureate Certificate                                                                       '
7 'Masters Degree                                                                                      '
8 'Post-Masters Certificate                                                                            '
9 'Doctors Degree'
/locale 1 'Large City                                                                                          '
2 'Mid-size City                                                                                       '
3 'Urban Fringe of Large City                                                                          '
4 'Urban Fringe of Mid-size City                                                                       '
5 'Large Town                                                                                          '
6 'Small Town                                                                                          '
7 'Rural                                                                                               '
9 'Not Assigned'
/carnegie 11 'Research universities I                                                                             '
12 'Research universities II                                                                            '
13 'Doctoral universities I                                                                             '
14 'Doctoral universities II                                                                            '
21 'Masters comprehensive I                                                                             '
22 'Masters comprehensive II                                                                            '
31 'BA liberal arts colleges I                                                                          '
32 'Baccalaureate colleges II                                                                           '
40 'Associate of arts colleges                                                                          '
51 'Theological seminaries                                                                              '
52 'Medical schools                                                                                     '
53 'Other health profession schools                                                                     '
54 'Schools of engineering and technology                                                               '
55 'Schools of business and management                                                                  '
56 'Schools of art, music, and design                                                                   '
57 'Schools of law                                                                                      '
58 'Teachers colleges                                                                                   '
59 'Other specialized institutions                                                                      '
60 'Tribal colleges'
/source 4 'Form                                                                                                '
6 'PETS'
/opeind 1 'Institution is eligible                                                                             '
2 'Branch campus of eligible                                                                           '
3 'Not Eligible in 1997, eligible in 1996                                                              '
9 'On OPE file, not eligible'
/hdegoffr 0 'Non-degree granting                                                                                 '
1 'First-professional degrees only                                                                     '
10 'Doctoral                                                                                            '
11 'Doctoral and First-professional                                                                     '
20 'Masters                                                                                             '
21 'Masters and First-professional                                                                      '
30 'Bachelors                                                                                           '
31 'Bachelors and First-professional                                                                    '
40 'Associates'
/ncesedit 1 'Edited no critical errors remain                                                                    '
2 'Edited corrected/accepted errors                                                                    '
3 'Edited errors not resolved'
/formrt 'IC1' 'IC1                                                                                                 '
'IC3' 'IC3                                                                                                 '
'IC4' 'IC4                                                                                                 '
'ICA' 'IC ADD form'
/resplast 1 'Respondent                                                                                          '
3 'Nonrespondent not imputed'
/respstat 1 'Respondent                                                                                          '
3 'Nonrespondent used last year'.

frequencies variables=
 stabbr fips obereg rstatus imptype parchild sector iclevel control affil hloffer fpoffer locale hbcu hospital medical tribal carnegie source opeind hdegoffr ncesedit formrt resplast respstat.

descriptives variables=
 fice idx pctmin1 pctmin2 pctmin3 pctmin4 cntygeo congdist
/stats=def.

save outfile='ic9798_hdr.sav' /compressed.

