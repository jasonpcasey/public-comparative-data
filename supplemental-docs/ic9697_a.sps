*** Created: 5/25/2010 10:03:52 AM                           ***.
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
/file = 'c:\dct\ic9697_a.csv'
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
fips a2
obereg f2
fice f6
rstatus f1
imptype f1
parchild f1
unitidx a6
sector f2
iclevel f1
control f1
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
formrt a1
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
peo1istr f1
peo2istr f1
peo3istr f1
peo4istr f1
peo5istr f1
peo6istr f1
public1 f1
public2 f1
public3 f1
public4 f1
public5 f1
public6 f1
public7 f1
public8 f1
public9 f1
private1 f1
private2 f1
private3 f1
private4 f1
private5 f1
private6 f1
private7 f1
private8 f1
protaffl f2
othaffl f2
level1 f1
level2 f1
level3 f1
level4 f1
level5 f1
level6 f1
level7 f1
level8 f1
level9 f1
level10 f1
level11 f1
level12 f1
postsec f1
multype f1
fopna f1
fopna1 f1
fopna2 f1
insttoyr f1
accrd1 f1
accrd2 f1
accrd3 f1
accrd4 f1
regaccrd f2
saccr f1
acc1 f1
acc102 f1
acc2 f1
acc5 f1
acc3 f1
acc4 f1
acc6 f1
acc99 f1
acc7 f1
acc12 f1
acc13 f1
acc11 f1
acc14 f1
acc15 f1
acc16 f1
acc17 f1
acc18 f1
acc19 f1
acc20 f1
acc21 f1
acc22 f1
acc23 f1
acc24 f1
acc25 f1
acc78 f1
acc28 f1
acc29 f1
acc30 f1
acc31 f1
acc32 f1
acc33 f1
acc35 f1
acc34 f1
acc36 f1
acc37 f1
acc38 f1
acc39 f1
acc41 f1
acc40 f1
acc42 f1
acc26 f1
acc46 f1
acc43 f1
acc44 f1
acc45 f1
acc27 f1
acc47 f1
acc48 f1
acc51 f1
acc49 f1
acc50 f1
acc52 f1
acc54 f1
acc53 f1
acc55 f1
acc56 f1
acc57 f1
acc58 f1
acc59 f1
acc60 f1
acc62 f1
acc63 f1
acc65 f1
acc66 f1
acc67 f1
acc111 f1
acc112 f1
acc113 f1
acc71 f1
acc86 f1
acc87 f1
acc68 f1
acc69 f1
acc70 f1
acc96 f1
acc95 f1
acc72 f1
acc73 f1
acc74 f1
acc75 f1
acc100 f1
acc77 f1
acc104 f1
acc80 f1
acc81 f1
acc82 f1
acc83 f1
acc84 f1
acc105 f1
acc106 f1
acc85 f1
acc88 f1
acc115 f1
acc89 f1
acc93 f1
acc90 f1
acc91 f1
acc92 f1
acc114 f1
acc101 f1
acc110 f1
acc116 f1
acc117 f1
acc118 f1.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
city 'City location of institution'
stabbr 'Post Office State abbreviation code'
fips 'FIPS State code'
obereg 'OBE region code'
fice 'FICE code'
rstatus 'Respondent status to IC survey Part E ONLY'
imptype 'Type of Imputation part E only'
parchild 'Parent/child institution indicator'
unitidx 'UNITID of parent institution reporting full-year enrollment'
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
peo1istr 'Occupational'
peo2istr 'Academic'
peo3istr 'Continuing professional'
peo4istr 'Recreational or avocational'
peo5istr 'Adult basic remedial or HS equivalency'
peo6istr 'Secondary (high school)'
public1 'Federal'
public2 'State'
public3 'Territorial'
public4 'School district'
public5 'County'
public6 'Township'
public7 'City'
public8 'Special district'
public9 'Other'
private1 'Profit-making'
private2 'Nonprofit'
private3 'Independent (no religious affiliation)'
private4 'Religious affiliation (general)'
private5 'Catholic'
private6 'Jewish'
private7 'Protestant'
private8 'Other'
protaffl 'Protestant affiliation, specified'
othaffl 'Other affiliation, specified'
level1 'Less than one year'
level2 'One but less than two years'
level3 'Associates Degree'
level4 'Two but less than 4 years'
level5 'Bachelors Degree'
level6 'Postbaccalaureate Certificate'
level7 'Masters Degree'
level8 'Post-Masters Certificate'
level9 'Doctors Degree'
level10 'First-Professional Degree'
level11 'First-Professional Certificate (post-degree)'
level12 'Other degree'
postsec 'Not administrative unit'
multype 'Administrative unit only'
fopna 'Programs not leading to a formal award'
fopna1 'If FOPNA = 1, are undergraduate programs'
fopna2 'If FOPNA = 1, are graduate programs'
insttoyr 'Provided instruction 2 consecutive years'
accrd1 'National or specialized accrediting agency'
accrd2 'Regional accrediting agency'
accrd3 'State accrediting or approval agency'
accrd4 'Accredit not applicable'
regaccrd 'Name of Regional accrediting agency'
saccr 'Accredited by agency recognized by USED'
acc1 'Engineering'
acc102 'Engineering-related'
acc2 'Engineering Technology'
acc5 'Allied Health Education'
acc3 'Medical Assistant Education'
acc4 'Medical Laboratory Technician Education'
acc6 'Health Services Administration'
acc99 'Continuing Education'
acc7 'Journalism and Mass Communications'
acc12 'Marriage and Family Therapy Clinical'
acc13 'Marriage and Family Therapy Graduate'
acc11 'Bible College Education'
acc14 'Nurse Anesthesia'
acc15 'Law'
acc16 'Funeral Service Education'
acc17 'Nurse Midwifery'
acc18 'Pharmacy'
acc19 'Dental Assisting'
acc20 'Dental Hygiene'
acc21 'Dental Technology'
acc22 'Dentistry'
acc23 'Dietetics undergraduate'
acc24 'Dietetics Postbaccalaureate internship'
acc25 'Librarianship'
acc78 'Medicine Programs leading to M.D. degree'
acc28 'Cytotechnologist'
acc29 'Diagnostic Medical Sonographer'
acc30 'Electroneurodiagnostic Technologist'
acc31 'Emergency Medical Technician'
acc32 'Histologic Technician/Technologist'
acc33 'Medical Assistant'
acc35 'Medical Laboratory Technician Certificate'
acc34 'Medical Laboratory Technician Associate degree'
acc36 'Medical Record Administrator'
acc37 'Medical Record Technician'
acc38 'Medical Technologist'
acc39 'Nuclear Medicine Technologist'
acc41 'Occupational Therapist'
acc40 'Ophthalmic Medical Assistant'
acc42 'Perfusionist'
acc26 'Physician Assistant'
acc46 'Radiation Therapy Technologist'
acc43 'Radiographer'
acc44 'Respiratory Therapist'
acc45 'Respiratory Therapy Technician'
acc27 'Specialist in Blood Bank Technology'
acc47 'Surgeon Assistant'
acc48 'Surgical Technologist'
acc51 'Optometry Technician programs'
acc49 'Optometry Professional degree programs'
acc50 'Optometry Residency programs'
acc52 'Osteopathic Medicine'
acc54 'Physical Therapy Programs assistant'
acc53 'Physical Therapy Professional programs'
acc55 'Podiatry'
acc56 'Clinical Psychology'
acc57 'Counseling Psychology'
acc58 'Professional Psychology Predoctoral internship'
acc59 'Professional/Scientific Psychology Doctoral'
acc60 'School Psychology'
acc62 'Audiology'
acc63 'Speech-Language Pathology'
acc65 'Veterinary Medicine'
acc66 'Clinical Pastoral Education'
acc67 'Rabbinical and Talmudic Education'
acc111 'Business Associate degree programs'
acc112 'Business Baccalaureate degree programs'
acc113 'Business'
acc71 'Theology'
acc86 'Occupational Trade and Technical degree'
acc87 'Occupational Trade and Technical nondegree'
acc68 'Business junior colleges'
acc69 'Business senior colleges'
acc70 'Business postsecondary schools'
acc96 'Opticianry 1-year programs'
acc95 'Opticianry 2-year programs'
acc72 'Chiropractic'
acc73 'Community Health Education'
acc74 'Community Health/Preventive Medicine'
acc75 'Public Health'
acc100 'Naturopathy'
acc77 'Interior Design'
acc104 'Acupuncture'
acc80 'Cosmetology'
acc81 'Architecture'
acc82 'Art'
acc83 'Dance'
acc84 'Music Baccalaureate and graduate programs'
acc105 'Music junior college programs'
acc106 'Music Nondegree programs'
acc85 'Theatre'
acc88 'Teacher Education'
acc115 'Environmental Health Science and Protection'
acc89 'Home Study Education'
acc93 'Nursing Practical nursing programs'
acc90 'Nursing Associate degree programs'
acc91 'Nursing Diploma programs'
acc92 'Nursing Baccalaureate and higher programs'
acc114 'Christian Education'
acc101 'Clinical Pastoral Education'
acc110 'New York State Board of Regents'
acc116 'Liberal Education'
acc117 'Montessori Education'
acc118 'Occupational Education'.

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
/fips '01' 'Alabama                                                                                             '
'02' 'Alaska                                                                                              '
'04' 'Arizona                                                                                             '
'05' 'Arkansas                                                                                            '
'06' 'California                                                                                          '
'08' 'Colorado                                                                                            '
'09' 'Connecticut                                                                                         '
'10' 'Delaware                                                                                            '
'11' 'District of Columbia                                                                                '
'12' 'Florida                                                                                             '
'13' 'Georgia                                                                                             '
'15' 'Hawaii                                                                                              '
'16' 'Idaho                                                                                               '
'17' 'Illinois                                                                                            '
'18' 'Indiana                                                                                             '
'19' 'Iowa                                                                                                '
'20' 'Kansas                                                                                              '
'21' 'Kentucky                                                                                            '
'22' 'Louisiana                                                                                           '
'23' 'Maine                                                                                               '
'24' 'Maryland                                                                                            '
'25' 'Massachusetts                                                                                       '
'26' 'Michigan                                                                                            '
'27' 'Minnesota                                                                                           '
'28' 'Mississippi                                                                                         '
'29' 'Missouri                                                                                            '
'30' 'Montana                                                                                             '
'31' 'Nebraska                                                                                            '
'32' 'Nevada                                                                                              '
'33' 'New Hampshire                                                                                       '
'34' 'New Jersey                                                                                          '
'35' 'New Mexico                                                                                          '
'36' 'New York                                                                                            '
'37' 'North Carolina                                                                                      '
'38' 'North Dakota                                                                                        '
'39' 'Ohio                                                                                                '
'40' 'Oklahoma                                                                                            '
'41' 'Oregon                                                                                              '
'42' 'Pennsylvania                                                                                        '
'44' 'Rhode Island                                                                                        '
'45' 'South Carolina                                                                                      '
'46' 'South Dakota                                                                                        '
'47' 'Tennessee                                                                                           '
'48' 'Texas                                                                                               '
'49' 'Utah                                                                                                '
'50' 'Vermont                                                                                             '
'51' 'Virginia                                                                                            '
'53' 'Washington                                                                                          '
'54' 'West Virginia                                                                                       '
'55' 'Wisconsin                                                                                           '
'56' 'Wyoming                                                                                             '
'60' 'American Samoa                                                                                      '
'64' 'Federated States of Micronesia                                                                      '
'66' 'Guam                                                                                                '
'68' 'Marshall Islands                                                                                    '
'69' 'Northern Marianas                                                                                   '
'70' 'Palau                                                                                               '
'72' 'Puerto Rico                                                                                         '
'78' 'Virgin Islands'
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
3 'Nonrespondent to Part E, not imputed                                                                '
4 'Nonrespondent to Part E, imputed'
/imptype -1 'No Response/Missing                                                                                 '
1 'Imputed using mean average                                                                          '
2 'Imputed previous years data                                                                         '
9 'Partial imputation'
/parchild -1 'No Response/Missing                                                                                 '
1 'Parent record                                                                                       '
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
/affil -1 'No Response/Missing                                                                                 '
1 'Public                                                                                              '
2 'Private for-profit                                                                                  '
3 'Private nonprofit independent                                                                       '
4 'Private nonprofit Catholic                                                                          '
5 'Private nonprofit Jewish                                                                            '
6 'Private nonprofit Protestant                                                                        '
7 'Private nonprofit other religious'
/hloffer -1 'No Response/Missing                                                                                 '
0 'Other                                                                                               '
1 'Less than one academic year                                                                         '
2 'At least one but less than two academic years                                                       '
3 'Associates Degree                                                                                   '
4 'At least two but less than four academic years                                                      '
5 'Bachelors Degree                                                                                    '
6 'Postbaccalaureate Certificate                                                                       '
7 'Masters Degree                                                                                      '
8 'Post-Masters Certificate                                                                            '
9 'Doctors Degree'
/fpoffer -1 'No Response/Missing                                                                                 '
1 'Yes'
/locale -1 'No Response/Missing                                                                                 '
1 'Large City                                                                                          '
2 'Mid-size City                                                                                       '
3 'Urban Fringe of Large City                                                                          '
4 'Urban Fringe of Mid-size City                                                                       '
5 'Large Town                                                                                          '
6 'Small Town                                                                                          '
7 'Rural                                                                                               '
9 'Not Assigned'
/hbcu -1 'No Response/Missing                                                                                 '
1 'Yes'
/hospital -1 'No Response/Missing                                                                                 '
1 'Yes'
/medical -1 'No Response/Missing                                                                                 '
1 'Yes'
/tribal -1 'No Response/Missing                                                                                 '
1 'Yes'
/carnegie -1 'No Response/Missing                                                                                 '
11 'RESEARCH UNIVERSITIES I                                                                             '
12 'RESEARCH UNIVERSITIES II                                                                            '
13 'DOCTORAL UNIVERSITIES I                                                                             '
14 'DOCTORAL UNIVERSITIES II                                                                            '
21 'MASTERS COMPREHENSIVE I                                                                             '
22 'MASTERS COMPREHENSIVE II                                                                            '
31 'BA LIBERAL ARTS COLLEGES I                                                                          '
32 'BACCALAUREATE COLLEGES II                                                                           '
40 'ASSOCIATE OF ARTS COLLEGES                                                                          '
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
/source -1 'No Response/Missing                                                                                 '
4 'Form                                                                                                '
6 'PETS'
/opeind -1 'No Response/Missing                                                                                 '
1 'Institition is eligible                                                                             '
2 'Not listed branch or system office is eligibl                                                       '
9 'Institution is not eligible'
/hdegoffr -1 'No Response/Missing                                                                                 '
0 'Certificates only                                                                                   '
1 'First-professional degrees only                                                                     '
10 'Doctoral                                                                                            '
11 'Doctoral and First-professional                                                                     '
20 'Masters                                                                                             '
21 'Masters and First-professional                                                                      '
30 'Bachelors                                                                                           '
31 'Bachelors and First-professional                                                                    '
40 'Associates                                                                                          '
41 'Associates and First-professional'
/ncesedit -1 'No Response/Missing                                                                                 '
1 'Edited no critical errors remain                                                                    '
2 'Edited corrected/accepted errors'
/formrt '1' '4-year institutions eligible for SFA                                                                '
'2' '2-year and less eligible for SFA                                                                    '
'3' 'Private less-than-2-year eligible for SFA                                                           '
'4' 'Any institution NOT ELIGIBLE for SFA                                                                '
'A' 'Not in 1995-96 IPEDS universe'
/resplast -1 'No Response/Missing                                                                                 '
1 'Respondent                                                                                          '
3 'Nonrespondent not imputed'
/respstat 1 'Respondent                                                                                          '
3 'Nonrespondent used last year'
/peo1istr -1 'No Response/Missing                                                                                 '
1 'Yes'
/peo2istr -1 'No Response/Missing                                                                                 '
1 'Yes'
/peo3istr -1 'No Response/Missing                                                                                 '
1 'Yes'
/peo4istr -1 'No Response/Missing                                                                                 '
1 'Yes'
/peo5istr -1 'No Response/Missing                                                                                 '
1 'Yes'
/peo6istr -1 'No Response/Missing                                                                                 '
1 'Yes'
/public1 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public2 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public3 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public4 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public5 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public6 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public7 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public8 -1 'No Response/Missing                                                                                 '
1 'Yes'
/public9 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private1 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private2 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private3 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private4 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private5 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private6 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private7 -1 'No Response/Missing                                                                                 '
1 'Yes'
/private8 -1 'No Response/Missing                                                                                 '
1 'Yes'
/protaffl -1 'No Response/Missing                                                                                 '
22 'American Evangelical Lutheran Church                                                                '
24 'American Methodist Episcopal Zion Church                                                            '
27 'Assemblies of God Church                                                                            '
28 'Brethren Church                                                                                     '
29 'Brethren in Christ Church                                                                           '
30 'Roman Catholic                                                                                      '
33 'Wisconsin Evangelical Lutheran Synod                                                                '
34 'Christ and Missionary Alliance Church                                                               '
35 'Christian Reformed Church                                                                           '
36 'Evangelical Congregational Church                                                                   '
37 'Evangelical Covenant Church of America                                                              '
38 'Evangelical Free Church of America                                                                  '
39 'Evangelical Lutheran Church                                                                         '
40 'United Pentecostal Church International                                                             '
41 'Free Will Baptist Church                                                                            '
42 'Interdenominational                                                                                 '
43 'Mennonite Brethren Church                                                                           '
44 'Moravian Church                                                                                     '
45 'North American Baptist                                                                              '
46 'American Lutheran & Lutheran Church in America                                                      '
47 'Pentecostal Holiness Church                                                                         '
48 'Christian Churches and Churches of Christ                                                           '
49 'Reformed Church in America                                                                          '
50 'Reformed Episcopal Church                                                                           '
51 'African Methodist Episcopal                                                                         '
52 'American Baptist                                                                                    '
53 'American Lutheran                                                                                   '
54 'Baptist                                                                                             '
55 'Christian Methodist Episcopal                                                                       '
56 'Church of Christ (Scientist)                                                                        '
57 'Church of God                                                                                       '
58 'Church of the Brethren                                                                              '
59 'Church of the Nazarene                                                                              '
60 'Cumberland Presbyterian                                                                             '
61 'Christian Church (Disciples of Christ)                                                              '
64 'Free Methodist                                                                                      '
65 'Friends                                                                                             '
66 'Presbyterian Church (USA)                                                                           '
67 'Lutheran Church in America                                                                          '
68 'Lutheran Church - Missouri Synod                                                                    '
69 'Mennonite Church                                                                                    '
70 'General Conference Mennonite Church                                                                 '
71 'United Methodist                                                                                    '
73 'Protestant Episcopal                                                                                '
74 'Churches of Christ                                                                                  '
75 'Southern Baptist                                                                                    '
76 'United Church of Christ                                                                             '
78 'Multiple Protestant Denominations                                                                   '
79 'Other Protestant                                                                                    '
81 'Reformed Presbyterian Church                                                                        '
82 'Reorganized Latter Day Saints Church                                                                '
84 'United Brethren Church                                                                              '
86 'Independent Fundamental Churches of America                                                         '
87 'Missionary Church Inc                                                                               '
88 'Undenominational                                                                                    '
89 'Wesleyan                                                                                            '
94 'Latter Day Saints                                                                                   '
95 'Seventh Day Adventists                                                                              '
97 'The Presbyterian Church in America                                                                  '
98 'Salvation Army                                                                                      '
99 'Other'
/othaffl -1 'No Response/Missing                                                                                 '
42 'Interdenominational                                                                                 '
54 'Baptist                                                                                             '
56 'Church of Christ (Scientist)                                                                        '
65 'Friends                                                                                             '
69 'Mennonite Church                                                                                    '
71 'United Methodist                                                                                    '
79 'Other Protestant                                                                                    '
88 'Undenominational                                                                                    '
91 'Greek Orthodox                                                                                      '
92 'Russian Orthodox                                                                                    '
93 'Unitarian Universalist                                                                              '
99 'Other'
/level1 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level2 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level3 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level4 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level5 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level6 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level7 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level8 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level9 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level10 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level11 -1 'No Response/Missing                                                                                 '
1 'Yes'
/level12 -1 'No Response/Missing                                                                                 '
1 '{1}'
/postsec -1 'No Response/Missing                                                                                 '
1 'Yes                                                                                                 '
2 'No'
/multype -1 'No Response/Missing                                                                                 '
1 'Yes                                                                                                 '
2 'No'
/fopna -1 'No Response/Missing                                                                                 '
1 'Yes                                                                                                 '
2 'No'
/fopna1 -1 'No Response/Missing                                                                                 '
1 'Yes'
/fopna2 -1 'No Response/Missing                                                                                 '
1 'Yes'
/insttoyr -1 'No Response/Missing                                                                                 '
1 'Yes                                                                                                 '
2 'No                                                                                                  '
3 'Dont know'
/accrd1 -1 'No Response/Missing                                                                                 '
1 'Yes'
/accrd2 -1 'No Response/Missing                                                                                 '
1 'Yes'
/accrd3 -1 'No Response/Missing                                                                                 '
1 'Yes'
/accrd4 -1 'No Response/Missing                                                                                 '
1 'Yes'
/regaccrd -1 'No Response/Missing                                                                                 '
1 'MSACHE                                                                                              '
10 'WASCCS                                                                                              '
11 'WASCSR                                                                                              '
2 'MSACSS                                                                                              '
3 'NEASCHE                                                                                             '
4 'NEASCTC                                                                                             '
5 'NCACHE                                                                                              '
6 'NCACOS                                                                                              '
7 'NWASC                                                                                               '
8 'SACSCC                                                                                              '
9 'WASCJC'
/saccr -1 'No Response/Missing                                                                                 '
1 'Yes                                                                                                 '
2 'No'
/acc1 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc102 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc2 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc5 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc3 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc4 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc6 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc99 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc7 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc12 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc13 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc11 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc14 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc15 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc16 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc17 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc18 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc19 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc20 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc21 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc22 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc23 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc24 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc25 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc78 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc28 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc29 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc30 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc31 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc32 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc33 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc35 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc34 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc36 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc37 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc38 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc39 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc41 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc40 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc42 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc26 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc46 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc43 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc44 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc45 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc27 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc47 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc48 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc51 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc49 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc50 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc52 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc54 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc53 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc55 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc56 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc57 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc58 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc59 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc60 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc62 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc63 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc65 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc66 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc67 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc111 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc112 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc113 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc71 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc86 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc87 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc68 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc69 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc70 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc96 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc95 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc72 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc73 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc74 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc75 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc100 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc77 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc104 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc80 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc81 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc82 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc83 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc84 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc105 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc106 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc85 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc88 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc115 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc89 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc93 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc90 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc91 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc92 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc114 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc101 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc110 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc116 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc117 -1 'No Response/Missing                                                                                 '
1 'Yes'
/acc118 -1 'No Response/Missing                                                                                 '
1 'Yes'.

frequencies variables=
 stabbr fips obereg rstatus imptype parchild sector iclevel control affil hloffer fpoffer locale hbcu hospital medical tribal carnegie source opeind hdegoffr ncesedit formrt resplast respstat peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr public1 public2 public3 public4 public5 public6 public7 public8 public9 private1 private2 private3 private4 private5 private6 private7 private8 protaffl othaffl level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 postsec multype fopna fopna1 fopna2 insttoyr accrd1 accrd2 accrd3 accrd4 regaccrd saccr acc1 acc102 acc2 acc5 acc3 acc4 acc6 acc99 acc7 acc12 acc13 acc11 acc14 acc15 acc16 acc17 acc18 acc19 acc20 acc21 acc22 acc23 acc24 acc25 acc78 acc28 acc29 acc30 acc31 acc32 acc33 acc35 acc34 acc36 acc37 acc38 acc39 acc41 acc40 acc42 acc26 acc46 acc43 acc44 acc45 acc27 acc47 acc48 acc51 acc49 acc50 acc52 acc54 acc53 acc55 acc56 acc57 acc58 acc59 acc60 acc62 acc63 acc65 acc66 acc67 acc111 acc112 acc113 acc71 acc86 acc87 acc68 acc69 acc70 acc96 acc95 acc72 acc73 acc74 acc75 acc100 acc77 acc104 acc80 acc81 acc82 acc83 acc84 acc105 acc106 acc85 acc88 acc115 acc89 acc93 acc90 acc91 acc92 acc114 acc101 acc110 acc116 acc117 acc118.

descriptives variables=
 fice pctmin1 pctmin2 pctmin3 pctmin4 cntygeo congdist
/stats=def.

save outfile='ic9697_a.sav' /compressed.

