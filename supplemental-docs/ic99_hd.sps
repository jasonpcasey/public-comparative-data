*** Created: 6/12/2004 11:30:25 PM                           ***.
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
/file = 'c:\dct\ic99_hd.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
form_ic f2
stat_ic f2
stat_pte f2
prch_ic f2
idx_ic f6
imp_ic f2
cyactive f1
closedat a8
instnm a50
addr a60
city a20
stabbr a2
zip a9
countynm a30
cntygeo f3
fips f2
obereg f2
chfnm a30
chftitle a30
gentele a10
fintele a10
admtele a10
ein a9
duns a10
opeid a8
opeflag f1
webaddr a50
refu_ic f2
src_ic f2
edit_ic f2
date_ic a8
sector f2
iclevel f2
control f2
affil f2
hloffer f2
ugoffer f2
groffer f2
fpoffer f2
hdegoffr f2
pctmin1 f2
pctmin2 f2
pctmin3 f2
pctmin4 f2
hbcu f2
hospital f2
medical f2
tribal f2
carnegie f2
locale f2
act a1
newid f6
deathyr a4.

variable labels
unitid 'Unique identification number for an institution'
form_ic 'Survey form'
stat_ic 'Response status of the institution'
stat_pte 'IC response status'
prch_ic 'Parent/Child indicator'
idx_ic 'UNITID of parent institution reporting full-year enrollment'
imp_ic 'Impute status of the institution'
cyactive 'Institution is active in current year'
closedat 'Date institution closed'
instnm 'Institution (entity) name'
addr 'Street address or post office box'
city 'City location of institution'
stabbr 'Post Office State abbreviation code'
zip 'ZIP + four'
countynm 'County name'
cntygeo '3-digit county fips code'
fips 'FIPS State code'
obereg 'OBE region code'
chfnm 'Name of Chief Administrator'
chftitle 'Title of Chief Administrator'
gentele 'General information telephone number'
fintele 'Financial Aid Office telephone number'
admtele 'Admissions office telephone number'
ein 'Employer Identification Number'
duns 'Dunn and Bradstreet identification number'
opeid 'Office of Postsecondary Education ID'
opeflag 'OPE eligibility indicator code'
webaddr 'Institution^s internet website address'
refu_ic 'Refusal status of the institution'
src_ic 'Medium used to collect data'
edit_ic 'Edit status of the institution'
date_ic 'Date last edited or imputed'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
affil 'Affiliation of institution'
hloffer 'Highest level of offering'
ugoffer 'Undergraduate offering'
groffer 'Graduate offering'
fpoffer 'First-professional offering'
hdegoffr 'Highest Degree offered'
pctmin1 'Percent Black, non-Hispanic'
pctmin2 'Percent American Indian/Alaskan Native'
pctmin3 'Percent Asian/Pacific Islander'
pctmin4 'Percent Hispanic'
hbcu 'Historically Black College or University'
hospital 'Institution has hospital'
medical 'Institution grants a medical degree'
tribal 'Tribal college'
carnegie 'Carnegie Classification Code'
locale 'Degree of Urbanization'
act 'Status of institution'
newid 'UNITID for merged schools'
deathyr 'Year institution was deleted from IPEDS'.

value labels
/form_ic 1 '4- & 2-year inst & <2-yr public'
15 'Institution added during current year'
3 'Private less-than-2-year institution'
/stat_ic 1 'Mailed, response'
3 'Mailed, nonresponse, not imputed'
/stat_pte 1 'Mailed, Part E response'
3 'Mailed, Part E nonresponse, not imputed'
/prch_ic -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (reported with parent)'
/closedat '-2' '{Item not applicable}'
'Alpha' '{Alpha}'
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
'MP' 'Northern Marianas'
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
/countynm '-1' '{Not reported}'
'Alpha' '{Alpha}'
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
69 'Northern Marianas'
70 'Palau'
72 'Puerto Rico'
78 'Virgin Islands'
8 'Colorado'
9 'Connecticut'
/obereg 0 'US Service schools'
1 'New England CT ME MA NH RI VT'
2 'Mid East DE DC MD NJ NY PA'
3 'Great Lakes IL IN MI OH WI'
4 'Plains IA KS MN MO NE ND SD'
5 'AL AR FL GA KY LA MS NC SC TN VA WV'
6 'Southwest AZ NM OK TX'
7 'Rocky Mountains CO ID MT UT WY'
8 'Far West AK CA HI NV OR WA'
9 'Outlying areas AS FM GU MH MP PR PW VI'
/chfnm '-1' '{Not reported}'
'Alpha' '{Alpha}'
/chftitle '-1' '{Not reported}'
'Alpha' '{Alpha}'
/gentele '-1' '{Not reported}'
'Alpha' '{Alpha}'
/fintele '-1' '{Not reported}'
'Alpha' '{Alpha}'
/admtele '-1' '{Not reported}'
'Alpha' '{Alpha}'
/opeflag 1 'Eligible for Title IV aid'
2 'Branch campus not on Title IV file'
3 'Eligible/Title IV aid, deferment only'
4 'Eligible for Title IV aid, out-of-scope'
5 'Not currently eligible for Title IV aid'
6 'Not on Title IV file, and not eligible'
/refu_ic -2 '{Item not applicable}'
1 'Refused to provide data'
/src_ic -2 '{Item not applicable}'
4 'Form'
/edit_ic -2 '{Item not applicable}'
1 'Passed edits'
2 'Edit flags remain, analyst accepted'
/date_ic '-2' '{Item not applicable}'
'Alpha' '{Alpha}'
/sector 0 'Administrative unit only'
1 'Public, 4-year or above'
2 'Private nonprofit, 4-year or above'
3 'Private for-profit, 4-year or above'
4 'Public, 2-year'
5 'Private nonprofit, 2-year'
6 'Private for-profit, 2-year'
7 'Public, less-than-2-year'
8 'Private nonprofit, less-than-2-year'
9 'Private for-profit, less-than-2-year'
/iclevel 1 'Four or more years'
2 'At least 2 but less than 4 years'
3 'Less than 2 years (below associate)'
/control 1 'Public'
2 'Private, nonprofit'
3 'Private, for-profit'
/affil 1 'Public'
2 'Private, for-profit'
3 'Private, nonprofit, no religious affiliation'
4 'Private, nonprofit'
/hloffer -2 '{Not applicable, first-professional only}'
-3 '{Not available}'
0 'Other'
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
/hdegoffr 0 'Non-degree granting'
1 'First-professional only'
10 'Doctoral'
11 'Doctoral and first-professional'
20 'Masters'
21 'Masters and first-professional'
30 'Bachelors'
31 'Bachelors and first-professional'
40 'Associates'
/hbcu 1 'Yes'
2 'No'
/hospital 1 'Yes'
2 'No'
/medical 1 'Yes'
2 'No'
/tribal 1 'Yes'
2 'No'
/carnegie -2 '{Item not applicable}'
11 'Research universities I'
12 'Research universities II'
13 'Doctoral universities I'
14 'Doctoral universities II'
21 'Masters comprehensive I'
22 'Masters comprehensive II'
31 'BA liberal arts colleges I'
32 'Baccalaureate colleges II'
40 'Associate of Arts colleges'
51 'Theological seminaries'
52 'Medical schools'
53 'Other health profession schools'
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
/act 'A' 'Active - institution active and not an add'
'M' 'Death with data - closed in current yr'
'N' 'New - added during the current year'
'R' 'Restore - restored to the current universe'
'S' 'Split - split into more than one institution'
'Z' 'Universe III - out-of-scope'.

frequencies variables=
 form_ic stat_ic stat_pte prch_ic imp_ic cyactive stabbr fips obereg opeflag refu_ic src_ic edit_ic sector iclevel control affil hloffer ugoffer groffer fpoffer hdegoffr hbcu hospital medical tribal carnegie locale act newid deathyr.

descriptives variables=
 idx_ic cntygeo pctmin1 pctmin2 pctmin3 pctmin4
/stats=def.

save outfile='ic99_hd.sav' /compressed.

