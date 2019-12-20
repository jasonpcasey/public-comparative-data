*** Created: 6/12/2004 10:16:59 PM                           ***.
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
/file = 'c:\dct\fa2000hd.csv'
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
gentele a10
fintele a10
admtele a10
ein a9
duns a10
opeid a8
opeflag f1
webaddr a50
sector f2
iclevel f2
control f2
affil f2
hloffer f2
ugoffer f2
groffer f2
fpoffer f2
hdegoffr f2
deggrant f2
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
openpubl f2
act a1
newid f6
deathyr a4
closedat a8
cyactive f1
stat_fa f2
pseflag f2
pset4flg f2
lock_fa f2
date_fa a8
stat_ic f2
stat_c f2
prch_c f2
idx_c f6
imp_c f2
lock_sp f2
stat_sp f2
stat_ef f2
prch_ef f2
idx_ef f6
imp_ef f2
pta99_ef f2
ptacipef f2
ptb_ef f2
ptc_ef f2
ptd_ef f2
form_f f2
stat_f f2
prch_f f2
idx_f f6
imp_f f2
fybeg a6
fyend a6
gpfs f2
f1gasbcr f2
f1gasbal f2
stat_sfa f2
prch_sfa f2
idx_sfa f6
stat_gr f2
prch_gr f2
idx_gr f6
cohrtstu f2
cohrtyr1 f4
pyaid f2
cohrtaid f2
sport1 f2
sport2 f2
sport3 f2
sport4 f2
sport5 f2
transver f2
longpgm f2
cohrtmt f
cindon f5
cinson f5
cotson f5
cindoff f5
cinsoff f5
cotsoff f5
cindfam f5
cinsfam f5
cotsfam f5
fte f6
ocrhsi f2
ocrmsi f2.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
addr 'Street address or post office box'
city 'City location of institution'
stabbr 'Post Office State abbreviation code'
zip 'ZIP + four'
fips 'FIPS State code'
obereg 'Bureau of Economic Analysis Code (OBE) Region'
chfnm 'Name of Chief Administrator'
chftitle 'Title of Chief Administrator'
gentele 'General information telephone number'
fintele 'Financial Aid Office telephone number'
admtele 'Admissions office telephone number'
ein 'Employer Identification Number'
duns 'Dunn and Bradstreet identification numbe'
opeid 'Office of Postsecondary Education ID Number'
opeflag 'OPE Title IV eligibility indicator code'
webaddr 'Institution^s internet website address'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
affil 'Affiliation of institution'
hloffer 'Highest level of offering'
ugoffer 'Undergraduate offering'
groffer 'Graduate offering'
fpoffer 'First-professional offering'
hdegoffr 'Highest Degree offered'
deggrant 'Degree granting status'
pctmin1 'Percent Black, non-Hispanic'
pctmin2 'Percent American Indian/Alaskan Native'
pctmin3 'Percent Asian/Pacific Islander'
pctmin4 'Percent Hispanic'
hbcu 'Historically Black College or University'
hospital 'Institution has hospital'
medical 'Institution grants a medical degree'
tribal 'Tribal college'
carnegie 'Carnegie classification code'
locale 'Degree of Urbanization'
openpubl 'Institution open to the general public'
act 'Status of institution'
newid 'UNITID for merged schools'
deathyr 'Year institution was deleted from IPEDS'
closedat 'Date institution closed'
cyactive 'Institution is active in current year'
stat_fa 'Response status of Fall data collection'
pseflag 'Postsecondary institution indicator'
pset4flg 'Postsecondary and Title IV institution indicator'
lock_fa 'Final Lock/Edit status of the institution when collection closed'
date_fa 'Date last edited or imputed'
stat_ic 'Response status of Fall data collection  - Institutional characteristics'
stat_c 'Response status of the institution Fall Collection Completions component'
prch_c 'Parent/child indicator for completions'
idx_c 'UNITID of parent institution reporting Completions'
imp_c 'Imputation status of the institution completions'
lock_sp 'Migration status of Spring data collection'
stat_sp 'Response status of Spring data collection'
stat_ef 'Response status of institution Fall enrollment'
prch_ef 'Parent/child indicator for Fall enrollment'
idx_ef 'UNITID of parent institution reporting Enrollment'
imp_ef 'Imputation method Fall enrollment'
pta99_ef 'Status enrollment by race/ethnicity (99.0000 CIP)'
ptacipef 'Status enrollment by race/ethnicity (Major field)'
ptb_ef 'Status enrollment summary by age'
ptc_ef 'Status residence of first-time first-year students'
ptd_ef 'Status full year enrollment and instructional activity'
form_f 'Finance Form Type'
stat_f 'Response status (all finance)'
prch_f 'Parent/child indicator (all finance)'
idx_f 'UNITID of parent institution reporting Finance'
imp_f 'Imputation method (all finance)'
fybeg 'Beginning date of fiscal year covered (all finance)'
fyend 'End date of fiscal year covered  (all finance)'
gpfs 'Clean Opinion GPFS from auditor (all finance)'
f1gasbcr 'F1 GASB current accounting model'
f1gasbal 'F1 GASB alternative accounting model'
stat_sfa 'Response status of the institution SFA'
prch_sfa 'Parent/child indicator SFA'
idx_sfa 'UNITID of parent institution reporting Student Financial Aid'
stat_gr 'Response status of the institution (GRS)'
prch_gr 'Parent/child indicator (GRS)'
idx_gr 'UNITID of parent institution reporting Graduation Rates'
cohrtstu 'Enrolled any full-time first-time students'
cohrtyr1 'First cohort year for which data are available'
pyaid 'Institution offered  athletic aid 1999-2000'
cohrtaid 'Institution offered  athletic aid in cohort year'
sport1 'Athletic aid for football  in cohort year'
sport2 'Athletic aid for basketball  in cohort year'
sport3 'Athletic aid for baseball  in cohort year'
sport4 'Athletic aid  cross-country and  track  in cohort year'
sport5 'Athletic aid  all other sports combined in cohort year'
transver 'Institution has transfer mission'
longpgm 'Institution has 5-year or 3-year programs'
cohrtmt 'cohrtmt'
cindon 'Total price for in-district students living on campus  2000-2001'
cinson 'Total price for in-state students living on campus 2000-2001'
cotson 'Total price out-of-state students living on campus 2000-2001'
cindoff 'Total price for in-district students living off-campus (not with family)  2000-2001'
cinsoff 'Total price for in-state students living off campus (not with family)  2000-2001'
cotsoff 'Total price for out-of-state students living off campus (not with family)  2000-2001'
cindfam 'Total price for in-district students living off campus (with family)  2000-2001'
cinsfam 'Total price for in-state students living off campus (with family)  2000-2001'
cotsfam 'Total price for out-of-state students living off campus (with family)  2000-2001'
fte 'Full-time equivalent enrollment'
ocrhsi 'Hispanic Serving Institution'
ocrmsi 'Minority Serving Institution'.

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
5 'Southeast AL AR FL GA KY LA MS NC SC TN VA WV'
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
/opeflag 1 'Participates in Title IV federal financial aid programs'
2 'Branch campus of a main campus that participates  in Title IV'
3 'Deferment only - limited participation '
4 'New participants (became eligible during the fall collection period)'
5 'Not currently participating in Title IV, has an OPE ID number '
6 'Not currently participating in Title IV, does not have OPE ID number'
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
/deggrant 1 'Degree-granting'
2 'Nondegree-granting, primarily postsecondary'
3 'Nondegree-granting, not  primarily postsecondary'
4 'Not an educational entity'
/hbcu 1 'Yes'
2 'No'
/hospital 1 'Yes'
2 'No'
/medical 1 'Yes'
2 'No'
/tribal 1 'Yes'
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
/openpubl 1 'Insititution is open to the public'
2 'Insititution is not open to the public'
/act 'A' 'Active - institution active and not an add'
'M' 'Death with data - closed in current yr'
'N' 'New - added during the current year'
'R' 'Restore - restored to the current universe'
'S' 'Split - split into more than one institution'
'Z' 'Universe III - out-of-scope'
/closedat '-2' '{Item not applicable}'
'Alpha' '{Alpha}'
/stat_fa -2 '{Item not applicable}'
1 'Response'
3 'Nonresponse, not imputed'
/pseflag 1 'Active postsecondary institution'
2 'not primarily postsec or open to public
'
3 'not active'
/pset4flg 1 'Title IV postsecondary institution'
2 'Non-Title IV postsecondary institution '
3 'Title IV NOT primarily postsecondary institution'
4 'Non-Title IV NOT primarily postsecondary institution'
5 'Title IV postsecondary institution that is NOT open to the public'
6 'Non-Title IV postsecondary institution that is NOT open to the public'
9 'Institution is not active in current universe'
/lock_fa 0 'Inactive, not registered'
10 'User level, inactive, registered'
11 'User level active, partial'
141 'Closed, or out-of-scope'
151 'Refused'
20 'Coordinator level inactive'
21 'Coordinator level active  partial'
71 'Complete'
81 'Migrated'
/date_fa '-2' '{Item not applicable}'
'Alpha' '{Alpha}'
/stat_ic -2 '{Item not applicable}'
1 'Respondent'
3 'Nonrespondent, not imputed'
/stat_c -2 'Not in imputation scope'
1 'Respondent'
2 'Partial response'
3 'Nonrespondent, not imputed'
4 'Total nonrespondent, data imputed'
/prch_c -2 '{Item not applicable}'
-9 '{Form not mailed}'
1 'Parent data record'
2 'Child data record, no data'
/imp_c -2 '{Item not applicable}'
1 'Carry forward (CF)'
2 'Nearest neighbor (NN)'
3 'Group median (GM)'
4 'Both CF and NN'
6 'Both NM and GM'
/stat_sp 1 'Respondent'
3 'Nonrespondent'
/form_f 1 'Finance form for public institutions'
2 'Finance form for private not-for-profit  institutions'
3 'Finance form for private for-profit  institutions'
/gpfs -1 'Dont know'
1 'Yes'
2 'No'
/f1gasbcr 1 'AICPA College and University Audit Guide Model'
2 'GASB Governmental Model'
/f1gasbal -1 'Dont know or undecided at this time'
1 'Business Type Activities'
2 'Governmental Activities'
3 'Governmental Activities with Business-Type Activities'
/stat_gr -2 'not applicable'
1 'Respondent'
3 'Nonrespondent'
/prch_gr -2 'not applicable'
1 'Parent institution - included data from branch campuses (child)'
2 'Child instittution - all data reported with parent'
/cohrtstu 1 'Yes, has full-time, first-time undergraduates and data is available'
2 'Yes, has full-time, first-time undergraduates, but data is not available'
3 'No, did not enroll full-time first-time undergraduate students'
4 'No, did not offer programs below the baccalaureate level'
/cohrtyr1 -2 'not applicable'
1995 '1995'
1996 '1996'
1997 '1997'
1999 '1999'
2003 '2003'
/pyaid -2 'not applicable'
1 'Yes'
2 'No'
/cohrtaid -2 'not applicable'
1 'Yes'
2 'No'
/sport1 -2 'not applicable'
0 'No'
1 'Yes'
2 'implied no'
/sport2 -2 'not applicable'
0 'No'
1 'Yes'
2 'implied no'
/sport3 -2 'not applicable'
0 'No'
1 'Yes'
2 'implied no'
/sport4 -2 'not applicable'
0 'No'
1 'Yes'
2 'implied no'
/sport5 -2 'not applicable'
0 'No'
1 'Yes'
2 'implied no'
/transver -2 'Not applicable'
1 'Yes,  has information on students who transfer out. '
2 'Yes, but  does not have any information on students who transfer out'
3 'No'
/longpgm -2 'not applicable'
1 'Yes'
2 'No'
/ocrhsi -1 'Enrollment data not reported'
-2 'Not applicable, institution is not in-scope of HSI calculation. '
0 'No'
1 'Yes, Hispanic serving'
/ocrmsi -1 'Enrollment data not reported'
-2 'Not applicable, institution is not in-scope of MSI calculation'
0 'No'
1 'Yes, Minority serving'.

frequencies variables=
 stabbr fips obereg opeflag sector iclevel control affil hloffer ugoffer groffer fpoffer hdegoffr deggrant hbcu hospital medical tribal carnegie locale openpubl act newid deathyr cyactive stat_fa pseflag pset4flg lock_fa stat_ic stat_c prch_c imp_c lock_sp stat_sp stat_ef prch_ef imp_ef pta99_ef ptacipef ptb_ef ptc_ef ptd_ef form_f stat_f prch_f imp_f fybeg fyend gpfs f1gasbcr f1gasbal stat_sfa prch_sfa stat_gr prch_gr cohrtstu cohrtyr1 pyaid cohrtaid sport1 sport2 sport3 sport4 sport5 transver longpgm ocrhsi ocrmsi.

descriptives variables=
 pctmin1 pctmin2 pctmin3 pctmin4 idx_c idx_ef idx_f idx_sfa idx_gr cindon cinson cotson cindoff cinsoff cotsoff cindfam cinsfam cotsfam fte
/stats=def.

save outfile='fa2000hd.sav' /compressed.

