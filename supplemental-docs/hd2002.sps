*** Created: 6/12/2004 11:12:46 AM                           ***.
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
/file = 'c:\dct\hd2002.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
instnm a60
addr a60
city a20
stabbr a2
zip a10
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
webaddr a75
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
closedat a10
cyactive f1
postsec f2
pseflag f2
pset4flg f2
stat_fa f2
stat_ic f2
lock_ic f2
stat_c f2
lock_c f2
prch_c f2
idx_c f6
imp_c f2
stat_wi f2
stat_sa f2
lock_sa f2
prch_sa f2
idx_sa f6
imp_sa f2
stat_s f2
lock_s f2
prch_s f2
idx_s f6
imp_s f2
stat_eap f2
lock_eap f2
prch_eap f2
idx_eap f6
imp_eap f2
ftemp15 f2
sa_excl f3
tpr f2
hpr f2
stat_sp f2
stat_ef f2
lock_ef f2
prch_ef f2
idx_ef f6
imp_ef f2
pta99_ef f2
ptacipef f2
ptb_ef f2
ptc_ef f2
ptd_ef f2
pteeffy f2
pteefia f2
fyrpyear f2
form_f f2
stat_f f2
lock_f f2
prch_f f2
idx_f f6
imp_f f2
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
imp_gr f2
cohrtstu f2
pyaid f2
cohrtaid f2
sport1 f2
sport2 f2
sport3 f2
sport4 f2
sport5 f2
transver f2
longpgm f2
cohrtmt f2
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
stabbr 'USPS state abbreviation'
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
opeid 'Office of Postsecondary Education (OPE) ID number'
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
hdegoffr 'Highest degree offered'
deggrant 'Degree-granting status'
pctmin1 'Percent Black, non-Hispanic'
pctmin2 'Percent American Indian/Alaska Native'
pctmin3 'Percent Asian/Pacific Islander'
pctmin4 'Percent Hispanic'
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
postsec 'Primarily postsecondary'
pseflag 'Postsecondary institution indicator'
pset4flg 'Postsecondary and Title IV institution indicator'
stat_fa 'Response status of institution for any of the Fall components'
stat_ic 'Response status -  Institutional Characteristics'
lock_ic 'Status of IC component when institution was migrated'
stat_c 'Response status -  Completions component'
lock_c 'Status of completions component when institution was migrated'
prch_c 'Parent/child indicator for completions'
idx_c 'UNITID of parent institution reporting completions'
imp_c 'Imputation method used when institution did not report completions data'
stat_wi 'Response status of institution for any of the Winter components'
stat_sa 'Response status - Salaries'
lock_sa 'Status of Faculty Salary survey when data collection closed'
prch_sa 'Parent/child  indicator SA'
idx_sa 'UNITID of parent institution reporting Faculty Salaries'
imp_sa 'Type of Imputation method SA'
stat_s 'Response status - Fall Staff'
lock_s 'Status of Fall Staff survey when data collection closed'
prch_s 'Parent/child indicator Fall Staff'
idx_s 'UNITID of parent institution reporting Fall Staff'
imp_s 'Type of Imputation method Fall Staff'
stat_eap 'Response status - Employees by Assigned Position'
lock_eap 'Status of EAP survey when data collection closed'
prch_eap 'Parent/child indicator EAP'
idx_eap 'UNITID of parent institution reporting EAP'
imp_eap 'Type of Imputation method EAP'
ftemp15 'Does institution have 15 or more full-time employees'
sa_excl 'Salary exclusion'
tpr 'Fringe Benefit Tuition Plan Restricted'
hpr 'Fringe Benefit Housing Plan Restricted'
stat_sp 'Response status of institution for any of the Spring components'
stat_ef 'Response status - Fall enrollment'
lock_ef 'Status of Fall Enrollment survey when data collection closed'
prch_ef 'Parent/child indicator for Fall enrollment'
idx_ef 'UNITID of parent institution reporting Enrollment'
imp_ef 'Imputation method Fall enrollment'
pta99_ef 'Status enrollment by race/ethnicity (99.0000 CIP)'
ptacipef 'Status enrollment by race/ethnicity (Major field)'
ptb_ef 'Status enrollment summary by age'
ptc_ef 'Status residence of first-time first-year students'
ptd_ef 'Status total entering class'
pteeffy 'Status full year enrollment Headcount'
pteefia 'Status full year instructional activity'
fyrpyear '12-month reporting period  for enrollment and instructional activity'
form_f 'Reporting standards used to report finance data'
stat_f 'Response status - Finance survey'
lock_f 'Status of Finance survey when data collection closed'
prch_f 'Parent/child indicator for Finance survey'
idx_f 'UNITID of parent institution reporting Finance'
imp_f 'Type of imputation method used for Finance survey'
fybeg 'Beginning date of fiscal year covered (all finance)'
fyend 'End date of fiscal year covered  (all finance)'
gpfs 'Clean Opinion GPFS from auditor (all finance)'
f1gasbcr 'GASB current accounting model'
f1gasbal 'GASB alternative accounting model'
stat_sfa 'Response status - Student Financial Aid survey'
lock_sfa 'Status of Student Financial Aid Survey when data collection closed'
prch_sfa 'Parent/child indicator Student Financial Aid survey'
idx_sfa 'UNITID of parent institution reporting Student Financial Aid'
imp_sfa 'Type of imputation method used for Student Financial Aid'
stat_gr 'Response status - Graduation Rates'
lock_gr 'Status of Survey when data collection closed'
prch_gr 'Parent/child indicator (GRS)'
idx_gr 'UNITID of parent institution reporting Graduation Rates'
imp_gr 'Imputation method'
cohrtstu 'Enrolled any full-time first-time students'
pyaid 'Institution offered  athletic aid 2001-2002'
cohrtaid 'Institution offered  athletic aid in cohort year'
sport1 'Athletic aid for football  in cohort year'
sport2 'Athletic aid for basketball  in cohort year'
sport3 'Athletic aid for baseball  in cohort year'
sport4 'Athletic aid  cross-country and  track  in cohort year'
sport5 'Athletic aid  all other sports combined in cohort year'
transver 'Institution has transfer mission'
longpgm 'Institution has 5-year or 3-year programs'
cohrtmt 'Cohort method'
cindon 'Total price for in-district students living on campus  2002-2003'
cinson 'Total price for in-state students living on campus 2002-2003'
cotson 'Total price out-of-state students living on campus 2002-2003'
cindoff 'Total price for in-district students living off-campus (not with family)  2002-2003'
cinsoff 'Total price for in-state students living off campus (not with family)  2002-2003'
cotsoff 'Total price for out-of-state students living off campus (not with family)  2002-2003'
cindfam 'Total price for in-district students living off campus (with family)  2002-2003'
cinsfam 'Total price for in-state students living off campus (with family)  2002-2003'
cotsfam 'Total price for out-of-state students living off campus (with family)  2002-2003'
fte 'Full-time eqivalent enrollment'
ocrmsi 'Minority Serving Institution'
ocrhsi 'Hispanic Serving Institution'.

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
/fips 1 'AL'
10 'DE'
11 'DC'
12 'FL'
13 'GA'
15 'HI'
16 'ID'
17 'IL'
18 'IN'
19 'IA'
2 'AK'
20 'KS'
21 'KY'
22 'LA'
23 'ME'
24 'MD'
25 'MA'
26 'MI'
27 'MN'
28 'MS'
29 'MO'
30 'MT'
31 'NE'
32 'NV'
33 'NH'
34 'NJ'
35 'NM'
36 'NY'
37 'NC'
38 'ND'
39 'OH'
4 'AZ'
40 'OK'
41 'OR'
42 'PA'
44 'RI'
45 'SC'
46 'SD'
47 'TN'
48 'TX'
49 'UT'
5 'AR'
50 'VT'
51 'VA'
53 'WA'
54 'WV'
55 'WI'
56 'WY'
6 'CA'
60 'AS'
64 'FM'
66 'GU'
68 'MH'
69 'MP'
70 'PW'
72 'PR'
78 'VI'
8 'CO'
9 'CT'
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
/opeflag 1 'Participates in Title IV federal financial aid programs'
2 'Branch campus of a main campus that participates in Title IV '
3 'Deferment only - limited participation '
4 'New participants (became eligible during the fall collection period)'
5 'Not currently participating in Title IV, has an OPE ID number'
6 'Not currently participating in Title IV, does not have OPE ID number'
/sector 0 'Administrative Unit Only'
1 'Public, 4-year or above'
2 'Private nonprofit, 4-year or above'
3 'Private for-profit, 4-year or above'
4 'Public, 2-year'
5 'Private nonprofit, 2-year'
6 'Private for-profit'
7 'Public, less-than 2-year'
8 'Private nonprofit, less-than 2-year'
9 'Private for-profit, less-than 2-year'
/iclevel 1 'Four or more years'
2 'At least 2 but less than 4 years'
3 'Less than 2 years (below associate)'
/control 1 'Public'
2 'Private, nonprofit'
3 'Private, for-profit'
/affil 1 'Public'
2 'Private, for-profit'
3 'Private, nonprofit, no religious affiliation'
4 'Private, nonprofit, religious affiliated'
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
41 'Associates'
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
'C' 'Combined with other institution'
'D' 'Delete out of business'
'M' 'Death with data - closed in current yr'
'N' 'New - added during the current year'
'O' 'Out of scope of IPEDS definition'
'P' 'Potential new/add institution'
'Q' 'Potential restore institution'
'R' 'Restore - restored to the current universe'
'S' 'Split - split into more than one institution'
'U' 'Duplicate unitid previously assigned'
'W' 'Potential restore not within scope of IPEDS'
/cyactive 1 'Yes'
2 'No, not active'
/postsec 1 'Primarily postsecondary'
2 'Not primarily postsecondary'
3 'Not postsecondary'
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
5 'Title IV postsecondary institution that is NOT open to the public
'
6 'Non-Title IV postsecondary institution that is NOT open to the public
'
9 'Institution is not active in current universe
'
/stat_fa -2 '{Item not applicable}'
1 'response'
5 'nonresponse, not imputed'
/stat_ic -2 '{Item not applicable}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/lock_ic 0 'No data'
1 'Has entered  data'
3 'Edited'
5 'Clean, perform edits have been cleaned'
7 'Locked, intermediate lock applied'
8 'Complete, final lock applied'
/stat_c -2 '{Item not applicable}'
1 'Response'
4 'Nonrespondent, imputed'
5 'Nonrespondent, not imputed'
/lock_c 0 'No data'
1 'Has entered data'
3 'Edited'
5 'Clean, perform edits have been cleaned'
7 'Locked, intermediate lock applied'
8 'Complete, final lock applied'
/prch_c -2 'not applicable (not parent/child)'
1 'Parent record -  includes data from child campuses'
2 'Child data record, no data'
/imp_c -2 '{Item not applicable}'
1 'Carry foreward (CF)'
2 'Nearest neighbor (NN)'
3 'Group Median (GM)'
/stat_wi -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
5 'nonresponse, not imputed'
/stat_sa -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
4 'Nonrespondent, imputed'
5 'Nonrespondent not imputed'
/lock_sa 0 'No data was entered'
1 'Has data, but has not been edited'
3 'Edited, data was edited and some errors/warnings remain'
5 'Clean, data was edited and errors/warnings resolved'
7 'Locked, first or intermediate lock applied '
8 'Complete, final lock applied'
/prch_sa -2 'not applicable (not parent/child)'
1 'Parent record includes data from child campuses'
2 'Child record - all data reported with parent campus'
/imp_sa -2 '{Item not applicable}'
1 'Carry foreward (CF)'
2 'Nearest neighbor (NN)'
/stat_s -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
5 'Nonrespondent'
/lock_s 0 'No data was entered'
1 'Has data, but has not been edited'
3 'Edited, data was edited and some errors/warnings remain'
5 'Clean, data was edited and errors/warnings resolved'
7 'Locked, first or intermediate lock applied '
8 'Complete, final lock applied'
/prch_s -2 'not applicable (not parent/child)'
1 'Parent record includes data from child campuses'
2 'Child record - all data reported with parent campus'
/stat_eap -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
4 'Nonrespondent, imputed'
5 'Nonrespondent, not imputed'
/lock_eap -2 '{Item not applicable}'
0 'No data was entered'
3 'Edited, data was edited and some errors/warnings remain'
8 'Complete, final lock applied'
/prch_eap -2 'Not applicable (not parent/child)'
1 'Parent record includes data from child campuses'
2 'Child record - all data reported with parent campus'
/imp_eap -2 '{Item not applicable}'
1 'Carry foreward (CF)'
2 'Nearest neighbor (NN)'
3 'Group Median (GM)'
/ftemp15 -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Yes'
2 'No'
/sa_excl -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Yes'
2 'No'
/tpr -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Yes, and tuition plan is restricted.'
2 'Yes, and tuition plan is not restricted'
3 'No tuition plan'
/hpr -1 '{Not reported}'
-2 '{Item not applicable}'
1 'Yes, and housing plan is restricted'
2 'Yes, and housing plan is not retricted'
3 'No housing plan'
/stat_sp -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
5 'Nonrespondent, not imputed'
/stat_ef -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
2 'Partial respondent imputed'
4 'Nonrespondent imputed'
5 'Nonrespondent not imputed'
/lock_ef -2 '{Item not applicable}'
0 'No data was entered'
1 'Has data'
3 'Edited, data was edited and some errors/warnings remain'
8 'Complete, final lock applied'
/prch_ef -2 'Not applicable (not parent/child)'
1 'Parent record includes data from child campuses'
2 'Child record - data reported with parent campus'
/imp_ef -2 '{Item not applicable}'
1 'Carry foreward (CF)'
2 'Nearest neighbor (NN)'
3 'Group median (GM)'
/pta99_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
2 'Partial respondent imputed'
4 'Nonrespondent imputed'
5 'Nonrespondent not imputed'
/ptacipef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
5 'Nonrespondent not imputed'
/ptb_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
5 'Nonrespondent not imputed'
/ptc_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
5 'Nonrespondent not imputed'
/ptd_ef -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
5 'Nonrespondent not imputed'
/pteeffy -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
4 'Nonrespondent imputed'
5 'Nonrespondent not imputed'
/pteefia -2 '{Item not applicable}'
-9 '{Not active}'
1 'Respondent'
4 'Nonrespondent imputed'
5 'Nonrespondent not imputed'
/fyrpyear -1 '{Not reported}'
-2 '{Item not applicable}'
1 'July 1, 2001 through June 30, 2002'
2 'September 1,2001 through August 31,2002'
/form_f 1 'GASB Reporting Standards before GASB 34/35'
2 'FASB Reporting Standards'
3 'Private for-profit institutions'
4 'GASB Reporting Standards 34/35'
/stat_f -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
2 'Partial respondent imputed'
3 'Partial respondent not imputed'
4 'Nonrespondent imputed'
5 'Nonrespondent not imputed'
/lock_f 1 'Has data'
3 'Edited'
8 'Complete, final lock applied'
/prch_f -2 'Not applicable (not parent/child)'
1 'Parent record - includes data from branch campuses'
2 'Child record - data reported with parent campus'
3 'Partial child record - reports partial data and other data reported with parent campus'
4 'Child record - data included with entity that is not a postsecondary institution'
5 'Child record - reports partial data but other data is included  with entity that is not a postsecondary institution'
/imp_f -2 '{Item not applicable}'
1 'Carry foreward (CF)'
2 'Nearest neighbor (NN)'
/gpfs 1 'Yes'
2 'No'
3 'Dont know'
/f1gasbcr 1 'AICPA College and University Audit Guide Model'
2 'GASB Governmental Model'
/f1gasbal 1 'Business Type Activities'
2 'Governmental Activities'
3 'Governmental Activities with Business-Type Activities'
4 'Dont know or undecided at this time'
/stat_sfa -2 '{Item not applicable}'
-9 '{Institution not active}'
1 'Respondent'
5 'Nonrepondent'
/lock_sfa 1 'Has data'
3 'Edited'
5 'Clean'
7 'Locked'
8 'Complete, final lock applied'
/prch_sfa -2 'Not applicable (not parent/child)'
1 'Parent record - includes data from branch campuses'
2 'Child record - data reported with parent campus'
/stat_gr -2 '{Item not applicable}'
-9 '{institution not active}'
1 'Respondent'
2 'Partial respondent imputed'
4 'Nonrespondent, in-scope of imputation'
5 'Nonrespondent, not in-scope of imputation'
/lock_gr -2 '{item not applicable}'
0 'No data submitted'
1 'Has data'
8 'Complete'
/prch_gr -2 '{Item not applicable}'
1 'Parent record -  includes data from child campuses'
2 'Child record - data reported at parent campus'
/imp_gr -2 '{Item not applicable}'
1 'Carry foreward (CF)'
2 'Nearest neighbor (NN)'
/cohrtstu -1 '{Item not reported}'
-2 '{Item not applicable}'
1 'Yes'
2 'No, did not enroll full-time, first-time (undergraduate) students'
3 'No, did not offer programs at or below the baccalaureate level'
4 'No, institution was not in operation in cohort year'
/pyaid -2 '{Item not applicable}'
1 'Yes'
2 'No'
/cohrtaid -2 '{Item not applicable}'
1 'Yes'
2 'No'
/sport1 -1 '{Item not reported}'
-2 '{Item not applicable}'
0 '{Implied no}'
1 'Yes'
/sport2 -1 '{Item not reported}'
-2 '{Item not applicable}'
0 '{Implied no}'
1 'Yes'
/sport3 -1 '{Item not reported}'
-2 '{Item not applicable}'
0 '{Implied no}'
1 'Yes'
/sport4 -1 '{Item not reported}'
-2 '{Item not applicable}'
0 '{Implied no}'
1 'Yes'
/sport5 -1 '{Item not reported}'
-2 '{Item not applicable}'
0 '{Implied no}'
1 'Yes'
/transver -2 '{Item not applicable}'
1 'Yes'
2 'No'
/longpgm -2 '{Item not applicable}'
1 'Yes'
2 'No'
/cohrtmt -1 '{Item not reported}'
-2 '{Item not applicable}'
1 'Fall cohort'
2 'Full-year cohort'
/ocrmsi -1 '{not reported}'
-2 '{not applicable}'
0 'No'
1 'Yes, minority serving'
/ocrhsi -1 '{not reported}'
-2 '{not applicable}'
0 'No'
1 'Yes, Hispanic serving'.

frequencies variables=
 stabbr fips obereg opeflag sector iclevel control affil hloffer ugoffer groffer fpoffer hdegoffr deggrant hbcu hospital medical tribal carnegie locale openpubl act newid deathyr cyactive postsec pseflag pset4flg stat_fa stat_ic lock_ic stat_c lock_c prch_c imp_c stat_wi stat_sa lock_sa prch_sa imp_sa stat_s lock_s prch_s imp_s stat_eap lock_eap prch_eap imp_eap ftemp15 sa_excl tpr hpr stat_sp stat_ef lock_ef prch_ef imp_ef pta99_ef ptacipef ptb_ef ptc_ef ptd_ef pteeffy pteefia fyrpyear form_f stat_f lock_f prch_f imp_f fybeg fyend gpfs f1gasbcr f1gasbal stat_sfa lock_sfa prch_sfa imp_sfa stat_gr lock_gr prch_gr imp_gr cohrtstu pyaid cohrtaid sport1 sport2 sport3 sport4 sport5 transver longpgm cohrtmt ocrmsi ocrhsi.

descriptives variables=
 pctmin1 pctmin2 pctmin3 pctmin4 idx_c idx_sa idx_s idx_eap idx_ef idx_f idx_sfa idx_gr cindon cinson cotson cindoff cinsoff cotsoff cindfam cinsfam cotsfam fte
/stats=def.

save outfile='hd2002.sav' /compressed.

