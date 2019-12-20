*** Created: 6/13/2004 6:49:58 AM                            ***.
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
/file = 'c:\dct\ic1991_hdr.csv'
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
rstatus f2
unitidx f6
sector f2
iclevel f2
control f2
affil f2
hloffer f2
fpoffer f2
formrt a1
resplast f1
respstat f1
addr a60
zip a9
countynm a30
congdist f2
gentele a10
chfnm a20
chftitle a15.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
city 'City location of institution'
stabbr 'Post Office state abbreviation code'
fips 'FIPS state code'
obereg 'OBE region code'
fice 'FICE code'
rstatus 'Respondent status code'
unitidx 'UNITID of parent institution reporting full-year enrollment'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
affil 'Affiliation of institution'
hloffer 'Highest level of offering'
fpoffer 'First-professional offering'
formrt 'IC survey form submitted by institution'
resplast 'Respondent status last year'
respstat 'Respondent status this year'
addr 'Street address or post office box'
zip 'ZIP + four'
countynm 'County name'
congdist 'Congressional district'
gentele 'General information telephone number'
chfnm 'Name of Chief Administrator'
chftitle 'Title of Chief Administrator'.

value labels
/stabbr 'AK' 'Alaska'
'AL' 'Alabama'
'AR' 'Arkansas'
'AS' 'American Samoa'
'AZ' 'Arizona'
'CA' 'California'
'CO' 'Colorado'
'CT' 'Connecticut'
'DC' 'District of Columbia'
'DE' 'Delaware'
'FL' 'Florida'
'FM' 'Federated States of Micronesia'
'GA' 'Georgia'
'GU' 'Guam'
'HI' 'Hawaii'
'IA' 'Iowa'
'ID' 'Idaho'
'IL' 'Illinois'
'IN' 'Indiana'
'KS' 'Kansas'
'KY' 'Kentucky'
'LA' 'Louisiana'
'MA' 'Massachusetts'
'MD' 'Maryland'
'ME' 'Maine'
'MH' 'Marshall Islands'
'MI' 'Michigan'
'MN' 'Minnesota'
'MO' 'Missouri'
'MP' 'Northern Mariana Island'
'MS' 'Mississippi'
'MT' 'Montana'
'NC' 'North Carolina'
'ND' 'North Dakota'
'NE' 'Nebraska'
'NH' 'New Hampshire'
'NJ' 'New Jersey'
'NM' 'New Mexico'
'NV' 'Nevada'
'NY' 'New York'
'OH' 'Ohio'
'OK' 'Oklahoma'
'OR' 'Oregon'
'PA' 'Pennsylvania'
'PR' 'Puerto Rico'
'PW' 'Palau'
'RI' 'Rhode Island'
'SC' 'South Carolina'
'SD' 'South Dakota'
'TN' 'Tennessee'
'TX' 'Texas'
'UT' 'Utah'
'VA' 'Virginia'
'VI' 'Virgin Islands'
'VT' 'Vermont'
'WA' 'Washington'
'WI' 'Wisconsin'
'WV' 'West Virginia'
'WY' 'Wyoming'
/fips 1 'Alabama'
10 'Delaware'
11 'District of Columbia'
12 'Florida'
13 'Georgia'
15 'Hawaii'
16 'Idaho'
17 'Illinois'
18 'Indiana'
19 'Iowa'
2 'Alaska'
20 'Kansas'
21 'Kentucky'
22 'Louisiana'
23 'Maine'
24 'Maryland'
25 'Massachusetts'
26 'Michigan'
27 'Minnesota'
28 'Mississippi'
29 'Missouri'
30 'Montana'
31 'Nebraska'
32 'Nevada'
33 'New Hampshire'
34 'New Jersey'
35 'New Mexico'
36 'New York'
37 'North Carolina'
38 'North Dakota'
39 'Ohio'
4 'Arizona'
40 'Oklahoma'
41 'Oregon'
42 'Pennsylvania'
44 'Rhode Island'
45 'South Carolina'
46 'South Dakota'
47 'Tennessee'
48 'Texas'
49 'Utah'
5 'Arkansas'
50 'Vermont'
51 'Virginia'
53 'Washington'
54 'West Virginia'
55 'Wisconsin'
56 'Wyoming'
6 'California'
60 'American Samoa'
64 'Federated States of Micronesia'
66 'Guam'
68 'Marshall Islands'
69 'Northern Mariana Island'
70 'Palau'
72 'Puerto Rico'
78 'Virgin Islands'
8 'Colorado'
9 'Connecticut'
/obereg 0 'U.S. Service schools'
1 'New England-CT ME MA NH RI VT'
2 'Mid East-DE DC MD NJ NY PA'
3 'Great Lakes-IL IN MI OH WI'
4 'Plains-IA KS MN MO NE ND SD'
5 'Southeast-AL AR FL GA KY LA MS NC SC TN VA WV'
6 'Southwest-AZ NM OK TX'
7 'Rocky Mountains-CO ID MT UT WY'
8 'Far West-AK CA HI NV OR WA'
9 'Outlying Areas-AS GU CM PR TT VI'
/sector 0 'Central, system or corporate offices'
1 'Public, 4-year or above'
2 'Private, nonprofit, 4-year or above'
3 'Private, for profit, 4-year or above'
4 'Public, 2-year'
5 'Private, nonprofit, 2-year'
6 'Private, for profit, 2-year'
7 'Public, less-than-2-year'
8 'Private, nonprofit, less-than-2-year'
9 'Private, for profit, less-than-2-year'
/iclevel 0 'No reponse'
1 '4 or more years (Baccalaureate or higher degree)'
2 'At least 2 but less than 4 years (below the Baccalaureate)'
3 'Less than 2 years (below Associates Degree)'
/control 0 'No response'
1 'Public'
2 'Private, nonprofit'
3 'Private for profit'
/affil 1 'Public'
2 'Private, for profit'
3 'Private, nonprofit, no religious affiliation'
4 'Private, nonprofit, Catholic'
5 'Private, nonprofit, Jewish'
6 'Private, nonprofit, Protestant'
7 'Private, nonprofit, Other religious affiliation'
/hloffer 0 'Other'
1 'Postsecondary award, certificate or diploma of less than one academic year'
2 'Postsecondary award, certificate or diploma of at least one but less than two academic years'
3 'Associates Degree'
4 'Postsecondary award, certificate or diploma of at least two but less than four academic years'
5 'Bachelors Degree'
6 'Postbaccalaureate Certificate'
7 'Masters Degree'
8 'Post-masters Certificate'
9 'Doctors Degree'
/formrt '1' 'Form IC1'
'2' 'Form IC2'
'3' 'Form IC3'
/resplast 1 'Respondent'
3 'Nonrespondent, not imputed'
/respstat 1 'Respondent'
3 'Nonrespondent, not imputed'
5 'Combined data respondent'.

frequencies variables=
  stabbr fips obereg rstatus sector iclevel control affil hloffer fpoffer formrt resplast respstat.

descriptives variables=
 fice unitidx congdist
/stats=def.

save outfile='ic1991_hdr.sav' /compressed.

