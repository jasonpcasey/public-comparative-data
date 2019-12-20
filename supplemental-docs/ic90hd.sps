*** Created: 6/13/2004 7:01:19 AM                            ***.
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
/file = 'c:\dct\ic90hd.csv'
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
sector f2
iclevel f1
control f1
affil f1
hloffer f2
fpoffer f1
formrt a1
resplast f1
respstat f1
addr a60
zip a9
countynm a30
congdist f2
gentele a10
chfnm a30
chftitl a30.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
city 'City location of institution'
stabbr 'Post Office State abbreviation code'
fips 'FIPS State code'
obereg 'OBE region code'
fice 'FICE code'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
affil 'Affiliation of institution'
hloffer 'Highest level of offering'
fpoffer 'First-professional offering'
formrt 'IC survey form received by institution'
resplast 'Respondent status last year'
respstat 'Respondent status this year'
addr 'Street address or post office box'
zip 'ZIP + four'
countynm 'County name'
congdist 'Congressional district'
gentele 'General information telephone number'
chfnm 'Name of Chief Administrator'
chftitl 'Title of Chief Administrator'.

value labels
/stabbr 'AK' 'Alaska                                            '
'AL' 'Alabama                                           '
'AR' 'Arkansas                                          '
'AS' 'American Samoa                                    '
'AZ' 'Arizona                                           '
'CA' 'California                                        '
'CO' 'Colorado                                          '
'CT' 'Connecticut                                       '
'DC' 'District of Columbia                              '
'DE' 'Delaware                                          '
'FL' 'Florida                                           '
'FM' 'Federated States of Micronesia                    '
'GA' 'Georgia                                           '
'GU' 'Guam                                              '
'HI' 'Hawaii                                            '
'IA' 'Iowa                                              '
'ID' 'Idaho                                             '
'IL' 'Illinois                                          '
'IN' 'Indiana                                           '
'KS' 'Kansas                                            '
'KY' 'Kentucky                                          '
'LA' 'Louisiana                                         '
'MA' 'Massachusetts                                     '
'MD' 'Maryland                                          '
'ME' 'Maine                                             '
'MI' 'Michigan                                          '
'MN' 'Minnesota                                         '
'MO' 'Missouri                                          '
'MP' 'Northern Marianas                                 '
'MS' 'Mississippi                                       '
'MT' 'Montana                                           '
'NC' 'North Carolina                                    '
'ND' 'North Dakota                                      '
'NE' 'Nebraska                                          '
'NH' 'New Hampshire                                     '
'NJ' 'New Jersey                                        '
'NM' 'New Mexico                                        '
'NV' 'Nevada                                            '
'NY' 'New York                                          '
'OH' 'Ohio                                              '
'OK' 'Oklahoma                                          '
'OR' 'Oregon                                            '
'PA' 'Pennsylvania                                      '
'PR' 'Puerto Rico                                       '
'PW' 'Palau                                             '
'RI' 'Rhode Island                                      '
'SC' 'South Carolina                                    '
'SD' 'South Dakota                                      '
'TN' 'Tennessee                                         '
'TX' 'Texas                                             '
'UT' 'Utah                                              '
'VA' 'Virginia                                          '
'VI' 'Virgin Islands                                    '
'VT' 'Vermont                                           '
'WA' 'Washington                                        '
'WI' 'Wisconsin                                         '
'WV' 'West Virginia                                     '
'WY' 'Wyoming'
/fips 1 'Alabama                                           '
10 'Delaware                                          '
11 'District of Columbia                              '
12 'Florida                                           '
13 'Georgia                                           '
15 'Hawaii                                            '
16 'Idaho                                             '
17 'Illinois                                          '
18 'Indiana                                           '
19 'Iowa                                              '
2 'Alaska                                            '
20 'Kansas                                            '
21 'Kentucky                                          '
22 'Louisiana                                         '
23 'Maine                                             '
24 'Maryland                                          '
25 'Massachusetts                                     '
26 'Michigan                                          '
27 'Minnesota                                         '
28 'Mississippi                                       '
29 'Missouri                                          '
30 'Montana                                           '
31 'Nebraska                                          '
32 'Nevada                                            '
33 'New Hampshire                                     '
34 'New Jersey                                        '
35 'New Mexico                                        '
36 'New York                                          '
37 'North Carolina                                    '
38 'North Dakota                                      '
39 'Ohio                                              '
4 'Arizona                                           '
40 'Oklahoma                                          '
41 'Oregon                                            '
42 'Pennsylvania                                      '
44 'Rhode Island                                      '
45 'South Carolina                                    '
46 'South Dakota                                      '
47 'Tennessee                                         '
48 'Texas                                             '
49 'Utah                                              '
5 'Arkansas                                          '
50 'Vermont                                           '
51 'Virginia                                          '
53 'Washington                                        '
54 'West Virginia                                     '
55 'Wisconsin                                         '
56 'Wyoming                                           '
6 'California                                        '
60 'American Samoa                                    '
64 'Federated States of Micronesia                    '
66 'Guam                                              '
69 'Northern Marianas                                 '
70 'Palau                                             '
72 'Puerto Rico                                       '
78 'Virgin Islands                                    '
8 'Colorado                                          '
9 'Connecticut'
/obereg 0 'US Service schools                                '
1 'New England CT ME MA NH RI VT                     '
2 'Mid East DE DC MD NJ NY PA                        '
3 'Great Lakes IL IN MI OH WI                        '
4 'Plains IA KS MN MO NE ND SD                       '
5 'Southeast AL AR FL GA KY LA MS NC SC TN VA WV     '
6 'Southwest AZ NM OK TX                             '
7 'Rocky Mountains CO ID MT UT WY                    '
8 'Far West AK CA HI NV OR WA                        '
9 'Outlying Areas AS FM GU MH MP PR PW VI'
/sector 0 'Administrative unit                               '
1 'Public 4-year or above                            '
2 'Private nonprofit 4-year or above                 '
3 'Private for-profit 4-year or above                '
4 'Public 2-year                                     '
5 'Private nonprofit 2-year                          '
6 'Private for-profit 2-year                         '
7 'Public less-than-2-year                           '
8 'Private nonprofit less-than-2-year                '
9 'Private for-profit less-than-2-year'
/iclevel 0 'Administrative unit                               '
1 'Baccalaureate or higher degree                    '
2 'Below the Baccalaureate                           '
3 'Below Associates Degree'
/control 0 'Administrative unit                               '
1 'Public                                            '
2 'Private nonprofit                                 '
3 'Private for-profit'
/affil 1 'Public                                            '
2 'Private for-profit                                '
3 'Private nonprofit independent                     '
4 'Private nonprofit Catholic                        '
5 'Private nonprofit Jewish                          '
6 'Private nonprofit Protestant                      '
7 'Private nonprofit other religious'
/hloffer 0 'Other                                             '
1 'Less than one academic year                       '
2 'At least one but less than two academic years     '
3 'Associates Degree                                 '
4 'At least two but less than four academic year     '
5 'Bachelors Degree                                  '
6 'Postbaccalaureate Certificate                     '
7 'Masters Degree                                    '
8 'Post-Masters Certificate                          '
9 'Doctors Degree'
/formrt '1' 'IC1 Form mailed to 4-year institutions            '
'2' 'IC2 Form mailed to 2-year & public <2yr           '
'3' 'IC3 Form, mailed to private less-than-2-year'
/resplast 1 'Respondent                                        '
3 'Nonrespondent, not imputed'
/respstat 1 'Respondent                                        '
3 'Nonrespondent, not imputed                        '
4 'Nonrespondent, imputed'.

frequencies variables=
 stabbr fips obereg sector iclevel control affil hloffer fpoffer formrt resplast respstat.

descriptives variables=
 fice congdist
/stats=def.

save outfile='ic90hd.sav' /compressed.

