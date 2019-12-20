*** Created: 4/13/2006 7:52:43 AM                            ***.
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
/file = 'c:\dct\hd2004.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
instnm a50
addr a60
city a20
stabbr a2
zip a9
fips f2
obereg f2
chfnm a30
chftitle a30
gentele a15
fintele a15
admtele a15
ein a9
duns a10
opeid a8
opeflag f1
webaddr a50
sector f2
iclevel f2
control f2
hloffer f2
ugoffer f2
groffer f2
fpoffer f2
hdegoffr f2
deggrant f2
hbcu f2
hospital f2
medical f2
tribal f2
carnegie f2
locale f2
openpubl f2
act a1
newid f6
deathyr f4
closedat a8
cyactive f1
postsec f2
pseflag f2
pset4flg f2
rptmth f2
fte f6
enrtot f6
instcat f2
tenursys f2.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
addr 'Street address or post office box'
city 'City location of institution'
stabbr 'State abbreviation'
zip 'ZIP code'
fips 'FIPS state code'
obereg 'Geographic region'
chfnm 'Name of chief administrator'
chftitle 'Title of chief administrator'
gentele 'General information telephone number'
fintele 'Financial aid office telephone number'
admtele 'Admissions office telephone number'
ein 'Employer Identification Number'
duns 'Dunn and Bradstreet identification number'
opeid 'Office of Postsecondary Education (OPE) ID Number'
opeflag 'OPE Title IV eligibility indicator code'
webaddr 'Institution^s internet website address'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
hloffer 'Highest level of offering'
ugoffer 'Undergraduate offering'
groffer 'Graduate offering'
fpoffer 'First-professional offering'
hdegoffr 'Highest degree offered'
deggrant 'Degree-granting status'
hbcu 'Historically Black College or University'
hospital 'Institution has hospital'
medical 'Institution grants a medical degree'
tribal 'Tribal college'
carnegie 'Carnegie Classification Code'
locale 'Degree of urbanization'
openpubl 'Institution open to the general public'
act 'Status of institution'
newid 'UNITID for merged schools'
deathyr 'Year institution was deleted from IPEDS'
closedat 'Date institution closed'
cyactive 'Institution is active in current year'
postsec 'Primarily postsecondary indicator'
pseflag 'Postsecondary institution indicator'
pset4flg 'Postsecondary and Title IV institution indicator'
rptmth 'Reporting method (academic year or program)'
fte 'Full-time equivalent enrollment'
enrtot 'Total  enrollment'
instcat 'Institutional category'
tenursys 'Does institution have a tenure system'.

value labels
/stabbr 'AK' 'Alaska                                  '
'AL' 'Alabama                                 '
'AR' 'Arkansas                                '
'AS' 'American Samoa                          '
'AZ' 'Arizona                                 '
'CA' 'California                              '
'CO' 'Colorado                                '
'CT' 'Connecticut                             '
'DC' 'District of Columbia                    '
'DE' 'Delaware                                '
'FL' 'Florida                                 '
'FM' 'Federated States of Micronesia          '
'GA' 'Georgia                                 '
'GU' 'Guam                                    '
'HI' 'Hawaii                                  '
'IA' 'Iowa                                    '
'ID' 'Idaho                                   '
'IL' 'Illinois                                '
'IN' 'Indiana                                 '
'KS' 'Kansas                                  '
'KY' 'Kentucky                                '
'LA' 'Louisiana                               '
'MA' 'Massachusetts                           '
'MD' 'Maryland                                '
'ME' 'Maine                                   '
'MH' 'Marshall Islands                        '
'MI' 'Michigan                                '
'MN' 'Minnesota                               '
'MO' 'Missouri                                '
'MP' 'Northern Marianas                       '
'MS' 'Mississippi                             '
'MT' 'Montana                                 '
'NC' 'North Carolina                          '
'ND' 'North Dakota                            '
'NE' 'Nebraska                                '
'NH' 'New Hampshire                           '
'NJ' 'New Jersey                              '
'NM' 'New Mexico                              '
'NV' 'Nevada                                  '
'NY' 'New York                                '
'OH' 'Ohio                                    '
'OK' 'Oklahoma                                '
'OR' 'Oregon                                  '
'PA' 'Pennsylvania                            '
'PR' 'Puerto Rico                             '
'PW' 'Palau                                   '
'RI' 'Rhode Island                            '
'SC' 'South Carolina                          '
'SD' 'South Dakota                            '
'TN' 'Tennessee                               '
'TX' 'Texas                                   '
'UT' 'Utah                                    '
'VA' 'Virginia                                '
'VI' 'Virgin Islands                          '
'VT' 'Vermont                                 '
'WA' 'Washington                              '
'WI' 'Wisconsin                               '
'WV' 'West Virginia                           '
'WY' 'Wyoming'
/fips 1 'Alabama'
10 'Delaware   '
11 'District of Columbia                    '
12 'Florida  '
13 'Georgia  '
15 'Hawaii   '
16 'Idaho'
17 'Illinois '
18 'Indiana '
19 'Iowa'
2 'Alaska'
20 'Kansas         '
21 'Kentucky '
22 'Louisiana '
23 'Maine    '
24 'Maryland  '
25 'Massachusetts'
26 'Michigan   '
27 'Minnesota    '
28 'Mississippi   '
29 'Missouri '
30 'Montana'
31 'Nebraska  '
32 'Nevada'
33 'New Hampshire'
34 'New Jersey  '
35 'New Mexico                              '
36 'New York'
37 'North Carolina  '
38 'North Dakota  '
39 'Ohio'
4 'Arizona'
40 'Oklahoma   '
41 'Oregon '
42 'Pennsylvania  '
44 'Rhode Island   '
45 'South Carolina         '
46 'South Dakota'
47 'Tennessee          '
48 'Texas'
49 'Utah'
5 'Arkansas'
50 'Vermont'
51 'Virginia   '
53 'Washington'
54 'West Virginia'
55 'Wisconsin                               '
56 'Wyoming          '
6 'California'
60 'American Samoa'
64 'Federated States of Micronesia          '
66 'Guam'
68 'Marshall Islands  '
69 'Northern Marianas   '
70 'Palau'
72 'Puerto Rico  '
78 'Virgin Islands    '
8 'Colorado     '
9 'Connecticut'
/obereg 0 'US Service schools'
1 'New England CT ME MA NH RI VT'
2 'Mid East DE DC MD NJ NY PA'
3 'Great Lakes IL IN MI OH WI'
4 'Plains IA KS MN MO NE ND SD'
5 'Southeast AL AR FL GA KY LA MS NC SC TN VA WV'
6 'Southwest AZ NM OK TX'
7 'Rocky Mountains CO ID MT UT WY'
8 'Far West AK CA HI NV OR WA'
9 'Outlying areas AS FM GU MH MP PR PW VI'
/chfnm '-1' '{Not reported}'
'Alpha' '{Alpha}'
/chftitle '-1' '{Not reported}'
'Alpha' '{Alpha}'
/opeflag 1 'Participates in Title IV federal financial aid programs'
2 'Branch campus of a main campus that participates in Title IV '
3 'Deferment only - limited participation '
4 'New participants (became eligible during the winter collection period)'
5 'Not currently participating in Title IV, has an OPE ID number'
6 'Not currently participating in Title IV, does not have OPE ID number'
7 'Stopped participating during the survey year'
8 'New participants (became eligible during the spring collection period)'
/webaddr '-1' '{Not reported}'
'-2' 'Not applicable'
'Alpha' '{Alpha}'
/sector 0 'Administrative unit'
1 'Public, 4-year or above'
2 'Private not-for-profit, 4-year or above'
3 'Private for-profit, 4-year or above'
4 'Public, 2-year'
5 'Private not-for-profit, 2-year'
6 'Private for-profit, 2-year'
7 'Public, less-than 2-year'
8 'Private not-for-profit, less-than 2-year'
9 'Private for-profit, less-than 2-year'
99 'Sector unknown (not active)'
/iclevel -3 '{Not available}'
1 'Four or more years'
2 'At least 2 but less than 4 years'
3 'Less than 2 years (below associate)'
/control -3 '{Not available}'
1 'Public'
2 'Private not-for-profit'
3 'Private for-profit'
/hloffer -2 'Not applicable, first-professional only'
-3 '{Not available}'
1 'Award of less than one academic year'
2 'At least 1, but less than 2 academic yrs'
3 'Associates degree'
4 'At least 2, but less than 4 academic yrs'
5 'Bachelors degree'
6 'Postbaccalaureate certificate'
7 'Masters degree'
8 'Post-masters certificate'
9 'Doctors degree'
/ugoffer -3 '{Not available}'
1 'Undergraduate degree or certificate offering'
2 'No undergraduate offering'
/groffer -3 '{Not available}'
1 'Graduate degree or certificate offering'
2 'No graduate offering'
/fpoffer -3 '{Not available}'
1 'First-professional degree/certificate'
2 'No first-professional offering'
/hdegoffr -3 '{Not available}'
0 'Nondegree-granting'
1 'First-professional only'
10 'Doctoral'
11 'Doctoral and first-professional'
20 'Masters'
21 'Masters and first-professional'
30 'Bachelors'
31 'Bachelors and first-professional'
40 'Associates'
/deggrant -3 '{Not available}'
1 'Degree-granting'
2 'Nondegree-granting, primarily postsecondary'
/hbcu -3 '{Not available}'
1 'Yes'
2 'No'
/hospital -3 '{Not available}'
1 'Yes'
2 'No'
/medical -1 'Not reported'
-2 'Not applicable'
1 'Yes'
2 'No'
/tribal -3 '{Not available}'
1 'Yes'
2 'No'
/carnegie -3 '{Item not available}'
15 'Doctoral/Research Universities--Extensive'
16 'Doctoral/Research Universities--Intensive'
21 'Masters Colleges and Universities I'
22 'Masters Colleges and Universities II'
31 'Baccalaureate Colleges--Liberal Arts'
32 'Baccalaureate Colleges--General'
33 'Baccalaureate/Associates Colleges'
40 'Associates Colleges'
51 'Theological seminaries and other specialized faith-related institutions'
52 'Medical schools and medical centers'
53 'Other separate health profession schools'
54 'Schools of engineering and technology'
55 'Schools of business and management'
56 'Schools of art, music, and design'
57 'Schools of law'
58 'Teachers colleges'
59 'Other specialized institutions'
60 'Tribal colleges'
/locale -3 '{Not available}'
1 'Large city'
2 'Mid-size city'
3 'Urban fringe of large city'
4 'Urban fringe of mid-size city'
5 'Large town'
6 'Small town'
7 'Rural'
9 'Not assigned'
/openpubl 0 'Institution is not open to the public'
1 'Institution is open to the public'
/act 'A' 'Active - institution active and not an add'
'C' 'Combined with other institution'
'D' 'Delete out of business'
'M' 'Death with data - closed in current yr'
'N' 'New - added during the current year'
'P' 'Potential new/add institution'
'Q' 'Potential restore institution'
'R' 'Restore - restored to the current universe'
'W' 'Potential add not within scope of IPEDS'
'X' 'Potential restore not within scope of IPEDS'
/closedat '-2' 'Not applicable'
'Alpha' '{Alpha}'
/cyactive 1 'Yes'
2 'No, potential add or restore'
3 'No, closed, combined, or out-of-scope'
/postsec 1 'Primarily postsecondary institution'
2 'Not primarily postsecondary'
/pseflag 1 'Active postsecondary institution'
2 'Not primarily postsecondary or open to public'
3 'Not active'
/pset4flg 1 'Title IV postsecondary institution'
2 'Non-Title IV postsecondary institution
'
3 'Title IV NOT primarily postsecondary institution
'
4 'Non-Title IV NOT primarily postsecondary institution
'
6 'Non-Title IV postsecondary institution that is NOT open to the public
'
9 'Institution is not active in current universe
'
/rptmth -2 'Not applicable'
1 'Academic year'
2 'Reports  by program'
/instcat -1 'Not reported'
-2 'Not applicable'
1 'Degree-granting, graduate with no undergraduate degrees'
2 'Degree-granting, primarily baccalaureate or above'
3 'Degree-granting, other baccalaureate granting'
4 'Degree-granting, associates and certificates 
'
5 'Nondegree-granting, above the baccalaureate'
6 'Nondegree-granting, sub-baccalaureate'
/tenursys -1 'Not reported'
-2 'Not applicable'
0 'No tenure system'
1 'Has tenure system'.

frequencies variables=
 stabbr fips obereg opeflag sector iclevel control hloffer ugoffer groffer fpoffer hdegoffr deggrant hbcu hospital medical tribal carnegie locale openpubl act deathyr cyactive postsec pseflag pset4flg rptmth instcat tenursys.

descriptives variables=
 newid fte enrtot
/stats=def.

save outfile='hd2004.sav' /compressed.

