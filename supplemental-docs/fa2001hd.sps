*** Created: 6/12/2004 8:22:32 PM                            ***.
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
/file = 'c:\dct\fa2001hd.csv'
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
pseflag f2
pset4flg f2
stat_fa f2
lock_fa f2
stat_ic f2
stat_c f2
prch_c f2
idx_c f6
imp_c f2
dmajor f2
stat_wi f2
stat_sa f2
prch_sa f2
idx_sa f6
imp_sa f2
stat_s f2
prch_s f2
idx_s f6
imp_s f2
stat_eap f2
prch_eap f2
idx_eap f6
imp_eap f2
lock_sa f2
lock_s f2
lock_eap f2
ftemp15 f2
sa_excl f2
stat_sp f2
stat_ef f2
lock_ef f2
prch_ef f2
idx_ef f6
imp_ef f2
pta99_ef f2
ptb_ef f2
ptc_ef f2
pte_ef f2
ptdiaef f2
ptdfyef f2
fyrpyear f2
fyflag f2
stat_f f2
lock_f f2
prch_f f2
idx_f f6
imp_f f2
form_f f2
fybeg a6
fyend a6
gpfs f2
f1gasbcr f2
f1gasbal f2
stat_sfa f2
lock_sfa f2
prch_sfa f2
idx_sfa f6
imp_sfa f2
stat_gr f2
lock_gr f2
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
ocrmsi f2
ocrhsi f2.

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
carnegie 'Carnegie Classification Code'
locale 'Degree of Urbanization'
openpubl 'Institution open to the general public'
act 'Status of institution'
newid 'UNITID for merged schools'
deathyr 'Year institution was deleted from IPEDS'
closedat 'Date institution closed'
cyactive 'Institution is active in current year'
pseflag 'Postsecondary institution indicator'
pset4flg 'Postsecondary and Title IV institution indicator'
stat_fa 'Response status of institution - Fall data collection'
lock_fa 'Final status of institution when fall data collection closed'
stat_ic 'Response status of institution - Institutional Characteristics'
stat_c 'Response status of institution - Completions'
prch_c 'Parent/child indicator - Completions'
idx_c 'UNITID of parent institution reporting Completions'
imp_c 'Type of imputation method  - Completions'
dmajor 'Students awarded degrees with double majors'
stat_wi 'Response status of institution - Winter Survey'
stat_sa 'Response status of institution - Faculty Salaries'
prch_sa 'Parent/child  indicator - Faculty Salaries'
idx_sa 'UNITID of parent  institution reporting Faculty Salaries'
imp_sa 'Type of imputation method - Faculty Salaries'
stat_s 'Response status of institution -  Fall Staff'
prch_s 'Parent/child indicator -  Fall Staff'
idx_s 'UNITID of parent institution reporting Fall Staff'
imp_s 'Type of Imputation method -  Fall Staff'
stat_eap 'Response status or instittuions - EAP'
prch_eap 'Parent/child indicator -  EAP'
idx_eap 'UNITID of parent institution reporting EAP'
imp_eap 'Type of Imputation method - EAP'
lock_sa 'Status of Faculty Salary survey when data collection closed'
lock_s 'Status of Fall Staff survey when data collection closed'
lock_eap 'Status of EAP survey when data collection closed'
ftemp15 'Does your institution have 15 or more full-time employees?'
sa_excl 'Salary exclusion'
stat_sp 'Response status to Spring survey'
stat_ef 'Response status of institution - Enrollment'
lock_ef 'Status of Fall Enrollment survey when data collection closed'
prch_ef 'Parent/child indicator - Enrollment'
idx_ef 'UNITID of parent institution reporting Enrollment'
imp_ef 'Type of imputation method  - Enrollment'
pta99_ef 'Status enrollment by race/ethnicity (99.0000 CIP)'
ptb_ef 'Status enrollment summary by age'
ptc_ef 'Status residence of first-time first-year students'
pte_ef 'Status total entering class'
ptdiaef 'Status full year instructional activity'
ptdfyef 'Status full year enrollment Headcount'
fyrpyear '12-month reporting period  for enrollment and instructional activity'
fyflag 'Report 12-month enrollment by race'
stat_f 'Response status of institution - Finance'
lock_f 'Status of Finance survey when data collection closed'
prch_f 'Parent/child indicator -  Finance'
idx_f 'UNITID of parent institution reporting Finance'
imp_f 'Type of imputation method  - Finance'
form_f 'Reporting standards used to report finance data'
fybeg 'Beginning date of fiscal year covered (all finance)'
fyend 'End date of fiscal year covered  (all finance)'
gpfs 'Clean Opinion GPFS from auditor (all finance)'
f1gasbcr 'GASB current accounting model'
f1gasbal 'GASB alternative accounting model'
stat_sfa 'Response status of institution - Student Financial Aid'
lock_sfa 'Status of Student Financial Aid Survey when data collection closed'
prch_sfa 'Parent/child indicator - Student Financial Aid'
idx_sfa 'UNITID of parent institution reporting Student Financial Aid'
imp_sfa 'Type of imputation method  Student Financial Aid'
stat_gr 'Response status of  institution - Graduation Rates'
lock_gr 'Status of Survey when data collection closed'
prch_gr 'Parent/child indicator - Graduation Rates'
idx_gr 'UNITID of parent institution reporting Graduation Rates'
cohrtstu 'Enrolled any full-time first-time students'
cohrtyr1 'First cohort year for which data are available'
pyaid 'Institution offered  athletic aid 2000-2001'
cohrtaid 'Institution offered  athletic aid in cohort year'
sport1 'Athletic aid for football  in cohort year'
sport2 'Athletic aid for basketball  in cohort year'
sport3 'Athletic aid for baseball  in cohort year'
sport4 'Athletic aid  cross-country and  track  in cohort year'
sport5 'Athletic aid  all other sports combined in cohort year'
transver 'Institution has transfer mission'
longpgm 'Institution has 5-year or 3-year programs'
cohrtmt 'cohrtmt'
cindon 'Total price for in-district students living on campus  2001-2002'
cinson 'Total price for in-state students living on campus 2001-2002'
cotson 'Total price out-of-state students living on campus 2001-2002'
cindoff 'Total price for in-district students living off-campus (not with family)  2001-2002'
cinsoff 'Total price for in-state students living off campus (not with family)  2001-2002'
cotsoff 'Total price for out-of-state students living off campus (not with family)  2001-2002'
cindfam 'Total price for in-district students living off campus (with family)  2001-2002'
cinsfam 'Total price for in-state students living off campus (with family)  2001-2002'
cotsfam 'Total price for out-of-state students living off campus (with family)  2001-2002'
fte 'Full-time eqivalent enrollment'
ocrmsi 'Minority Serving Institution'
ocrhsi 'Hispanic Serving Institution'.

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
5 'Southeast AL AR FL GA KY LA MS NC SC TN'
6 'Southwest AZ NM OK TX'
7 'Rocky Mountains CO ID MT UT WY'
8 'Far West AK CA HI NV OR WA'
9 'Outlying areas AS FM GU MH MP PR PW VI'
/chfnm '-1' '{Not reported}'
'-3' '{Not available}'
'Alpha' '{Alpha}'
/chftitle '-1' '{Not reported}'
'-3' '{Not available}'
'Alpha' '{Alpha}'
/gentele '-1' '{Not reported}'
'-3' '{Not available}'
'Alpha' '{Alpha}'
/fintele '-1' '{Not reported}'
'-3' '{Not available}'
'Alpha' '{Alpha}'
/admtele '-1' '{Not reported}'
'-3' '{Not available}'
'Alpha' '{Alpha}'
/opeflag 1 'Title IV participating'
2 'Unlisted branch/system office of partici'
3 'Title IV participating, deferment only'
5 'Not currently participating'
6 'Not participating and is not listed on P'
/webaddr '-1' '{Not reported}'
'-3' '{Not available}'
'Alpha' '{Alpha}'
/sector 0 'Central office or Administrative Unit'
1 '4-year public'
2 '4-year private, not-for-profit'
3 '4-year private, for-profit'
4 '2-year public'
5 '2-year private, not-for-profit'
6 '2-year private, for-profit'
7 'Less than 2-year public'
8 'Less than 2-year private, not-for-profit'
9 'Less than 2-year private, for-profit'
99 'sector not known'
/iclevel -3 '{Not available}'
1 'Four or more years'
2 'At least 2 but less than 4 years'
3 'Less than 2 years (below associate)'
/control -3 '{Not available}'
1 'Public'
2 'Private, not-for-profit'
3 'Private, for-profit'
/affil -3 '{Not available}'
1 'Public'
2 'Private, for-profit'
3 'Private, not for-profit, no religious af'
4 'Private, not for-profit, religious affil'
/hloffer -2 '{Not applicable, first-professional only'
-3 '{Not available}'
0 'Other'
1 'Award of less than one academic year'
2 'At least 1, but less than 2 academic yea'
3 'Associates degree'
4 'At least 2, but less than 4 academic yea'
5 'Bachelors degree'
6 'Postbaccalaureate certificate'
7 'Masters degree'
8 'Post-masters certificate'
9 'Doctors degree'
/ugoffer -3 '{Not available}'
1 'Undergraduate degree or certificate offe'
2 'No undergraduate degree or certificate o'
/groffer -3 '{Not available}'
1 'Graduate degree or certificate offered'
2 'No graduate degree or certificate offere'
/fpoffer -3 '{Not available}'
1 'First-professional degree or certificate'
2 'No first-professional degree or certific'
/hdegoffr -3 '{Not available}'
0 'Non-degree granting'
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
2 'Nondegree-granting, primarily postsecond'
3 'Not primarily postsecondary institutions'
4 'Institution is not an educational entity'
/hbcu 1 'Yes'
2 'No'
/hospital 1 'Yes'
2 'No'
/medical -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Yes'
2 'No'
/tribal 1 'Yes'
2 'No'
/carnegie -3 '{Not available}'
15 'Doctoral or Research Universities--Extensive'
16 'Doctoral or Research Universities--Intensive'
21 'Masters Colleges and Universities I'
22 'Masters (Comprehensive) Colleges and Universities II'
31 'Baccalaureate Colleges--Liberal Arts'
32 'Baccalaureate Colleges--General'
33 'Baccalaureate/Associates Colleges'
40 'Associates Colleges'
51 'Theological seminaries and other special'
52 'Medical schools and medical centers'
53 'Other separate health profession schools'
54 'Schools of engineering and technology'
55 'Schools of business and management'
56 'Schools of art, music, and design'
57 'Schools of law'
58 'Teachers colleges'
59 'Other specialized institutions'
60 'Tribal Colleges and Universities'
/locale -3 '{Not available}'
1 'Large city'
2 'Mid-size city'
3 'Urban fringe of large city'
4 'Urban fringe of mid-size city'
5 'Large town'
6 'Small town'
7 'Rural'
9 'Not assigned'
/openpubl -3 '{Not available}'
1 'Insititution is open to the public'
2 'Insititution is not open to the public'
/act 'A' 'Active - institution active and not a ne'
'B' 'IPEDS scope not determined'
'C' 'Combined - merged with another inst'
'D' 'Delete - institution is out of business'
'M' 'Death with data - closed in current year'
'N' 'New - added during the current year'
'O' 'Out-of-scope - not within scope of unive'
'P' 'Potential add - might be added'
'Q' 'Potential restore - might be restored'
'R' 'Restore - restored to the current univer'
'U' 'Duplicate - UNITID previously assigned'
'W' 'Potential add that was not added'
/deathyr '-2' '{Item not applicable}'
'2000' 'Processing year 2000'
'2001' 'Processing year 2001'
/closedat '-2' '{Item not applicable}'
'-3' '{Not available}'
/cyactive 1 'Yes'
2 'No'
/pseflag 1 'Active postsecondary institution'
2 'Not primarily postsec or not open to pub'
3 'Not active'
/pset4flg 1 'Title IV postsecondary institution'
2 'Non-Title IV postsecondary institution'
3 'Title IV NOT primarily postsecondary ins'
4 'Non-Title IV NOT primarily postsecondary'
6 'Non-Title IV postsecondary, not open to'
9 'Institution is not active in current uni'
/stat_fa -2 '{Item not applicable}'
-9 '{Not active}'
1 'Response'
5 'Nonresponse, not imputed'
/lock_fa -3 '{Not available}'
-9 '{Form not mailed}'
0 'Inactive (Not Registered)'
11 'User Level Partial(Reg. Active)'
141 'Closed, or out-of-scope'
151 'Refused'
170 'MDF'
21 'Coordinator1 Partial'
31 'Coordinator2 partial'
71 'Complete'
/stat_ic -2 'Undergraduate'
-9 '{Not active}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/stat_c -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
2 'Partial respondent, imputed'
4 'Nonrespondent, imputed'
5 'Nonrespondent, not imputed'
/prch_c -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (data reported with parent)'
/imp_c -2 '{Item not applicable}'
1 'Carry Forward (CF)'
2 'Nearest Neighbor (NN)'
3 'Group Median (GM)'
/dmajor -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Yes'
2 'No'
/stat_wi -2 '{Item not applicable}'
-9 '{Not active}'
1 'Response'
5 'Nonresponse, not imputed'
/stat_sa -2 '{Item not applicable}'
-9 '{Not active}'
1 'Response'
2 'Partial respondent, imputed'
4 'Nonrespondent, imputed'
5 'Nonresponse, not imputed'
/prch_sa -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (data reported with parent)'
/imp_sa -2 '{Item not applicable}'
1 'Carry Forward (CF)'
2 'Nearest Neighbor S'
3 'Nearest Neighbor FTE'
4 'Group Median (GM)'
5 'Partial imputation'
/stat_s -2 '{Item not applicable}'
-9 '{Not active}'
1 'Response'
2 'Partial respondent, imputed'
4 'Nonrespondent, imputed'
5 'Nonresponse, not imputed'
/prch_s -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (data reported with parent)'
/imp_s -2 '{Item not applicable}'
1 'Carry Forward (CF)'
2 'Nearest Neighbor (NN)'
3 'Group Median (GM)'
4 'Partial imputation'
5 'Carry forward and Partial Imputation'
7 'Group median and Partial Imputation'
/stat_eap -2 '{Item not applicable}'
-9 '{Not active}'
1 'Response'
5 'Nonresponse, not imputed'
/prch_eap -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (data reported with parent)'
/lock_sa -2 '{Item not applicable}'
0 'Inactive (Not Registered)'
1 'Has data'
3 'Data was edited'
5 'Clean'
8 'Complete'
/lock_s -2 '{Item not applicable}'
0 'Inactive (Not Registered)'
1 'Has data'
3 'Data was edited'
5 'Clean'
8 'Complete'
/lock_eap -2 '{Item not applicable}'
0 'No data'
1 'Has data'
5 'Clean'
8 'Complete'
/ftemp15 -1 '{Not reported}'
-2 '{Item not applicable}'
0 'No'
1 'Yes'
/sa_excl -1 '{Not reported}'
-2 '{Item not applicable}'
0 'No'
1 'Yes'
/stat_sp -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
5 'Nonresponse, not imputed'
/stat_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
2 'Partial respondent, imputed'
4 'Nonrespondent, imputed'
5 'Nonrespondent, not imputed'
/lock_ef -2 '{Item not applicable}'
0 'Inactive (Not Registered)'
1 'Has data'
3 'Edited'
5 'Clean'
8 'Complete'
/prch_ef -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (data reported with parent)'
/imp_ef -2 '{Item not applicable}'
1 'Carry forward (CF) from prior year'
2 'Nearest Neighbor (NN)'
4 'Group Median (GM)'
5 'Partial Imputation'
/pta99_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
2 'Partial respondent, imputed'
4 'Nonrespondent, imputed'
5 'Nonrespondent, not imputed'
/ptb_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/ptc_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/pte_ef -2 '{Item not applicable}'
-9 '{Form not mailed}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/ptdiaef -2 '{Item not applicable}'
-9 '{Form not mailed}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/ptdfyef -2 '{Item not applicable}'
-9 '{Form not mailed}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/fyrpyear -1 '{Not reported}'
-2 '{Item not applicable}'
1 'July 1, 2000 through June 30, 2001'
2 'September 1,2000 through August 31,2001'
/fyflag -1 '{Not reported}'
-2 '{Item not applicable}'
0 'No'
1 'Yes'
/stat_f -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
2 'Partial responsdent, imputed'
3 'Nonresponsedent, not imputed'
4 'Nonrespondent, imputed'
5 'Nonrespondent, not imputed'
/lock_f -2 '{Item not applicable}'
0 'Inactive (Not Registered)'
1 'Has data'
3 'Edited'
5 'Clean'
7 'Locked'
8 'Complete'
/prch_f -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (data reported with parent)'
3 'Child with data'
4 'Child inst all data reported w non-posts'
5 'Child inst w data some data reported w n'
/imp_f -2 '{Item not applicable}'
1 'Carry forward (CF) from prior year'
2 'Nearest Neighbor (NN-CNF)'
3 'Nearest Neighbor (NN-FTE)'
4 'Group Median (GM)'
/form_f -2 '{Item not applicable}'
1 'GASB form for public institutions'
2 'FASB form for private not-for-profit ins'
3 'Finance form for private for-profit inst'
/fybeg '-1' '{Not reported}'
'-2' '{Item not applicable}'
'Alpha' '{Alpha}'
/fyend '-1' '{Not reported}'
'-2' '{Item not applicable}'
'Alpha' '{Alpha}'
/gpfs -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Yes'
2 'No'
/f1gasbcr -1 '{Not reported}'
-2 '{Item not applicable}'
1 'AICPA College and University Audit Guide'
2 'GASB Governmental Model'
/f1gasbal -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Business Type Activities'
2 'Governmental Activities'
3 'Governmental Activities with Business-Ty'
/stat_sfa -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
3 'Nonrespondent'
5 'Nonresponse, not imputed'
/lock_sfa -2 '{Item not applicable}'
0 'Inactive (Not Registered)'
1 'Has data'
3 'Edited'
5 'Clean'
8 'Complete'
/prch_sfa -2 '{Item not applicable}'
1 'Parent record (combined data)'
2 'Child record (data reported with parent)'
/stat_gr -2 'not applicable'
-9 'not active'
1 'Respondent'
5 'Nonrespondent'
/lock_gr -2 'Not applicable'
0 'No data'
1 'Has data'
3 'Edited'
8 'Complete'
/prch_gr -2 'not applicable'
1 'Parent institution - included data from branch campuses (child)'
2 'Child instittution - all data reported with parent'
/cohrtstu 1 'Yes, has full-time, first-time undergraduates and data is available'
2 'Yes, has full-time, first-time undergraduates, but data is not available'
3 'No, did not enroll full-time first-time undergraduate students'
4 'No, did not offer programs below the baccalaureate level'
/pyaid 0 'No'
1 'Yes'
b '{Institution left item blank}'
/cohrtaid 0 'No'
1 'Yes'
b '{Institution left item blank}'
/sport1 0 '{implied no}'
1 'Yes'
b '{Institution left item blank}'
/sport2 0 '{implied no}'
1 'Yes'
b '{Institution left item blank}'
/sport3 0 '{implied no}'
1 'Yes'
2 '{Institution left item blank}'
/sport4 0 '{implied no}'
1 'Yes'
b '{Institution left item blank}'
/sport5 0 '{implied no}'
1 'Yes'
b '{Institution left item blank}'
/transver -2 '{Institution left item blank}'
1 'Yes,  has information on students who transfer out.'
2 'Yes, but  does not have any information on students who transfer out'
3 'No'
/longpgm -2 'not applicable'
1 'Yes'
2 'No'
/ocrmsi -1 '{Enrollment data not reported}'
-2 '{Not applicable, institution is not in-scope of MSI calculation}'
0 'No'
1 'Yes, Minority serving (MSI)'
/ocrhsi -1 '{Enrollment data not reported}'
-2 '{Not applicable, institution is not in-scope of HSI calculation}'
0 'No'
1 'Yes, Hispanic serving (HSI)'.

frequencies variables=
 stabbr fips obereg opeflag sector iclevel control affil hloffer ugoffer groffer fpoffer hdegoffr deggrant hbcu hospital medical tribal carnegie locale openpubl act newid deathyr cyactive pseflag pset4flg stat_fa lock_fa stat_ic stat_c prch_c imp_c dmajor stat_wi stat_sa prch_sa imp_sa stat_s prch_s imp_s stat_eap prch_eap imp_eap lock_sa lock_s lock_eap ftemp15 sa_excl stat_sp stat_ef lock_ef prch_ef imp_ef pta99_ef ptb_ef ptc_ef pte_ef ptdiaef ptdfyef fyrpyear fyflag stat_f lock_f prch_f imp_f form_f fybeg fyend gpfs f1gasbcr f1gasbal stat_sfa lock_sfa prch_sfa imp_sfa stat_gr lock_gr prch_gr cohrtstu cohrtyr1 pyaid cohrtaid sport1 sport2 sport3 sport4 sport5 transver longpgm ocrmsi ocrhsi.

descriptives variables=
 pctmin1 pctmin2 pctmin3 pctmin4 idx_c idx_sa idx_s idx_eap idx_ef idx_f idx_sfa idx_gr cindon cinson cotson cindoff cinsoff cotsoff cindfam cinsfam cotsfam fte
/stats=def.

save outfile='fa2001hd.sav' /compressed.

