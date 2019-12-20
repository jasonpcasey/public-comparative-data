*** Created: 6/13/2004 7:15:20 AM                            ***.
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
/file = 'c:\dct\ic1989_a.csv'
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
peo1istr f1
peo2istr f1
peo3istr f1
peo4istr f1
peo5istr f1
peo6istr f1
multype f1
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
leveloth a20
fopna f1
fopna1 f1
fopna2 f1
accrd1 f1
accrd2 f1
accrd3 f1
accrd4 f1
saccr f1
acc1 f1
acc2 f1
acc3 f1
acc4 f1
acc5 f1
acc6 f1
acc7 f1
acc8 f1
acc9 f1
acc10 f1
acc11 f1
acc12 f1
acc13 f1
acc14 f1
acc15 f1
acc16 f1
acc17 f1
acc97 f1
acc18 f1
acc19 f1
acc20 f1
acc21 f1
acc22 f1
acc23 f1
acc24 f1
acc25 f1
acc26 f1
acc27 f1
acc28 f1
acc29 f1
acc30 f1
acc31 f1
acc32 f1
acc33 f1
acc34 f1
acc35 f1
acc36 f1
acc37 f1
acc38 f1
acc39 f1
acc40 f1
acc41 f1
acc42 f1
acc43 f1
acc44 f1
acc45 f1
acc46 f1
acc47 f1
acc48 f1
acc49 f1
acc50 f1
acc51 f1
acc52 f1
acc53 f1
acc54 f1
acc55 f1
acc56 f1
acc57 f1
acc58 f1
acc59 f1
acc60 f1
acc61 f1
acc62 f1
acc63 f1
acc64 f1
acc65 f1
acc66 f1
acc67 f1
acc68 f1
acc69 f1
acc70 f1
acc71 f1
acc72 f1
acc73 f1
acc74 f1
acc75 f1
acc76 f1
acc77 f1
acc78 f1
acc79 f1
acc80 f1
acc81 f1
acc82 f1
acc83 f1
acc84 f1
acc85 f1
acc86 f1
acc87 f1
acc88 f1
acc89 f1
acc90 f1
acc91 f1
acc92 f1
acc93 f1
acc94 f1
acc95 f1
acc96 f1
acc98 f1
acc99 f1
acc100 f1
acc101 f1
acc102 f1
acc103 f1
acc104 f1
acc105 f1
acc106 f1
acc107 f1
calsys f1
crsloc1 f1
crsloc2 f1
crsloc3 f1
crsloc4 f1
crsloc5 f1
crsloc6 f1
facloc1 f1
facloc2 f1
facloc3 f1
facloc4 f1
facloc6 f1
facloc7 f1
facloc8 f1
facloc9 f1
facloc10 f1
facloc12 f1
mili f1
mil1insl f1
mil2insl f1
admreq1 f1
admreq2 f1
admreq3 f1
admreq4 f1
admreq5 f1
admreq6 f1
admreq7 f1
admreq8 f1
admreq9 f1
admreq10 f1
admreq11 f1
avgperc f2
uwwou f1
mode1 f1
mode2 f1
mode3 f1
mode4 f1
mode5 f1
mode6 f1
mode7 f1
mode8 f1
mode9 f1
mode10 f1
mode11 f1
mode12 f1
mode13 f1
mode14 f1
stusrv1 f1
stusrv2 f1
stusrv3 f1
stusrv4 f1
stusrv5 f1
stusrv6 f1
stusrv7 f1
stusrv8 f1
stusrv9 f1
aslib1 f1
aslib2 f1
aslib3 f1
ftstu f1
libfac f8.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
city 'City location of institution'
stabbr 'Post office state abbreviation code'
fips 'FIPS state code'
obereg 'OBE region code'
fice 'FICE code'
unitidx 'UNITID of parent institution reporting full-year enrollment'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
affil 'Affiliation of institution'
hloffer 'Highest level of offering'
fpoffer 'First-professional offering'
formrt 'Survey forms IC1, IC2, IC3, IC4, IC-Add'
resplast 'Respondent status last year'
respstat 'Respondent status this year'
addr 'Street address or post office box'
zip 'ZIP + four'
countynm 'County name'
congdist 'Congressional district'
gentele 'General information telephone number'
peo1istr 'Types of educational offerings - occupational'
peo2istr 'Types of educational offerings - academic'
peo3istr 'Types of educational offerings - continuing professional'
peo4istr 'Types of educational offerings - recreational or avocational'
peo5istr 'Types of educational offerings - adult basic, remedial, or high school equivalency'
peo6istr 'Types of educational offerings - secondary (high school)'
multype 'Administrative unit only (entity is a central, system, or coporate office)'
public1 'Public institution type - federal'
public2 'Public institution type - state'
public3 'Public institution type - territorial'
public4 'Public institution type - school district'
public5 'Public institution type - county'
public6 'Public institution type - township'
public7 'Public institution type - city'
public8 'Public institution type - special district'
public9 'Public institution type - other'
private1 'Private institution type- profit-making'
private2 'Private institution type- nonprofit'
private3 'Private institution type- independent (no religious affiliation)'
private4 'Private institution type- religious affiliation (general)'
private5 'Private institution type- Catholic'
private6 'Private institution type- Jewish'
private7 'Private institution type- Protestant'
private8 'Private institution type- other'
protaffl 'Protestant affiliation, specified'
othaffl 'Other affiliation, specified'
level1 'Level of offering - Less than one year'
level2 'Level of offering - More than one but less than two years'
level3 'Level of offering - Associate^s Degree'
level4 'Level of offering - Two but less than four years'
level5 'Level of offering - Bachelor^s Degree'
level6 'Level of offering - Postbaccalaureate Certificate'
level7 'Level of offering - Master^s Degree'
level8 'Level of offering - Post-Masters Certificate'
level9 'Level of offering - Doctor^s Degree'
level10 'Level of offering - First-Professional Degree'
level11 'Level of offering - First-Professional Certificate (post-degree)'
level12 'Level of offering - Other award level'
leveloth 'Level of offering - Other award level specified'
fopna 'Programs not leading to a formal award'
fopna1 'FOPNA are undergraduate programs'
fopna2 'FOPNA are graduate programs'
accrd1 'National or specialized accrediting agency'
accrd2 'Regional accrediting agency'
accrd3 'State accrediting or approval agency'
accrd4 'Accredit not applicable'
saccr 'Accredited by agency recognized by USED'
acc1 'Engineering'
acc2 'Engineering Technology'
acc3 'Medical Assistant Education'
acc4 'Medical Laboratory Technician Education'
acc5 'Applied Health Education'
acc6 'Health Services Administration'
acc7 'Journalism and Mass Communications'
acc8 'Microbiology'
acc9 'Business (BUS)'
acc10 'Business (BUSA)'
acc11 'Bible College Education'
acc12 'Marriage and Family Therapy Clinical'
acc13 'Marriage and Family Therapy Graduate'
acc14 'Nurse Anesthesia'
acc15 'Law'
acc16 'Funeral Service Education'
acc17 'Nurse Midwifery'
acc97 'Construction Education (CONST)'
acc18 'Pharmacy'
acc19 'Dental Assisting'
acc20 'Dental Hygiene'
acc21 'Dental Technology'
acc22 'Dentistry'
acc23 'Dietetics - Coordinated undergraduate programs'
acc24 'Dietetics - Postbaccalaureate internship programs'
acc25 'Librarianship'
acc26 'Physician Assistant'
acc27 'Specialist in Blood Bank Technology'
acc28 'Cytotechnologist'
acc29 'Diagnostic Medical Sonographer'
acc30 'Electroneurodiagnostic Technician'
acc31 'Emergency Medical Technician'
acc32 'Histologic Technician/Technologist'
acc33 'Medical Assistant (MA)'
acc34 'Medical Laboratory Technician (MLTAD) - Associate degree'
acc35 'Medical Laboratory Technician (MLTC) - Certificate'
acc36 'Medical Record Administrator'
acc37 'Medical Record Technician'
acc38 'Medical Technologist'
acc39 'Nuclear Medicine Technologist'
acc40 'Ophthalmic Medical Assistant'
acc41 'Occupational Therapist'
acc42 'Perfusionist'
acc43 'Radiographer'
acc44 'Respiratory Therapist'
acc45 'Respiratory Therapy Technician'
acc46 'Radiation Therapy Technologist'
acc47 'Surgeon Assistant'
acc48 'Surgical Technologist'
acc49 'Optometry - Professional degree programs'
acc50 'Optometry - Residency programs'
acc51 'Optometry - Technician programs'
acc52 'Osteopathic Medicine'
acc53 'Physical Therapy (PTA) - Professional programs for the physical therapist'
acc54 'Physical Therapy (PTAA) - Programs for the physical therapist assistant'
acc55 'Podiatry'
acc56 'Clinical Psychology'
acc57 'Counseling Psychology'
acc58 'Professional Psychology - Predoctoral internship'
acc59 'Professional/Scientific Psychology Doctoral'
acc60 'School Psychology'
acc61 'Landscape Architecture'
acc62 'Audiology'
acc63 'Speech-Language Pathology'
acc64 'Veterinary Medicine - Program in animal technology'
acc65 'Veterinary Medicine - Professional programs leading to D.V.M. or V.M.D degrees'
acc66 'Clinical Pastoral Education'
acc67 'Rabbinical and Talmudic Education'
acc68 'Business - Private junior colleges'
acc69 'Business - Private senior colleges'
acc70 'Business postsecondary schools'
acc71 'Theology'
acc72 'Chiropractic'
acc73 'Community Health Education'
acc74 'Community Health/Preventive Medicine'
acc75 'Public Health'
acc76 'Social Work'
acc77 'Interior Design'
acc78 'Medicine'
acc79 'Blind and Visually Handicapped Education'
acc80 'Cosmetology'
acc81 'Architecture'
acc82 'Art'
acc83 'Dance'
acc84 'Music Baccalaureate and graduate degree programs'
acc85 'Theatre'
acc86 'Occupational, Trade and Technical Education - Private degree-granting institutions'
acc87 'Occupational, Trade and Technical Education - Private nondegree-granting institutions'
acc88 'Teacher Education'
acc89 'Home Study Education'
acc90 'Nursing - Associate degree programs'
acc91 'Nursing - Diploma programs'
acc92 'Nursing - Baccalaureate and higher degree programs'
acc93 'Nursing - Practical nursing programs'
acc94 'Forestry'
acc95 'Opticianry 2-year programs'
acc96 'Opticianry 1-year programs'
acc98 'Rehabilitation Training (occupational skills training in rehabilitation organizations) 

rehabilitation organizations)'
acc99 'Continuing Education'
acc100 'Naturopathy (NATUR)'
acc101 'Clinical Pastoral Education (CPE)'
acc102 'Engineering-related'
acc103 'Computer Science'
acc104 'Acupuncture (ACUP)'
acc105 'Music (MUSA)'
acc106 'Music (MUSN)'
acc107 'Chiropractic (SCE)'
calsys 'Calendar system'
crsloc1 'Credit, in-state'
crsloc2 'Credit, out-of-state'
crsloc3 'Credit, abroad'
crsloc4 'Noncredit, in-state'
crsloc5 'Noncredit, out-of-state'
crsloc6 'Noncredit, abroad'
facloc1 'Credit, on-campus'
facloc2 'Credit, correctional facility'
facloc3 'Credit, local education agency facility'
facloc4 'Credit, other government facility'
facloc6 'Credit, other'
facloc7 'Noncredit, on-campus'
facloc8 'Noncredit, correctional facility'
facloc9 'Noncredit, local education agency facility'
facloc10 'Noncredit, other government facility'
facloc12 'Noncredit, other'
mili 'Courses are offered at military installations'
mil1insl 'Course offered - military instal-states/territories'
mil2insl 'Course offered - military instal-abroad'
admreq1 'High school diploma or equivalent'
admreq2 'High school class standing'
admreq3 'Admissions test scores (general)'
admreq4 'SAT test score'
admreq5 'ACT test score'
admreq6 'Other test score'
admreq7 'Residence'
admreq8 'Evidence of ability to benefit from instruction'
admreq9 'Age'
admreq10 'Test of English as a Foreign Language (TOEFL)'
admreq11 'Open admission'
avgperc 'Average high school percentile rank'
uwwou 'University without walls/open university'
mode1 'Credit, work in a program-related setting with pay'
mode2 'Credit, work in a program-related setting without pay'
mode3 'Credit, home study (general)'
mode4 'Credit, home study, correspondence'
mode5 'Credit, home study, radio and TV'
mode6 'Credit, home study, newspaper'
mode7 'Credit, none of the above'
mode8 'Noncredit, work in a program-related setting with pay'
mode9 'Noncredit, work in a program-related setting without pay'
mode10 'Noncredit, home study (general)'
mode11 'Noncredit, home study, correspondence'
mode12 'Noncredit, home study, radio and TV'
mode13 'Noncredit, home study, newspaper'
mode14 'Noncredit, none of the above'
stusrv1 'Remedial services'
stusrv2 'Academic/career counseling service'
stusrv3 'Employment services for current students'
stusrv4 'Placement services for program completers'
stusrv5 'Assistance for the visually impaired'
stusrv6 'Assistance for the hearing impaired'
stusrv7 'Access for the mobility impaired'
stusrv8 'On-campus day care for children of students'
stusrv9 'None of the above services'
aslib1 'Administratively separate library - law'
aslib2 'Administratively separate library - medicine'
aslib3 'Administratively separate library - other'
ftstu 'Full-time students are enrolled'
libfac 'Library facilities at institution'.

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
69 'Northern Mariana Island'
70 'Palau'
72 'Puerto Rico'
78 'Virgin Islands'
8 'Colorado'
9 'Connecticut'
/obereg 0 'U.S. service schools'
1 'New England-CT ME MA NH RI VT'
2 'Mid East-DE DC MD NJ NY PA'
3 'Great Lakes-IL IN MI OH WI'
4 'Plains-IA KS MN MO NE ND SD'
5 'New Mexico'
6 'Southwest-AZ NM OK TX'
7 'Rocky Mountains-CO ID MT UT WY'
8 'Far West-AK CA HI NV OR WA'
9 'Outlying Areas-AS GU CM PR TT VI'
/sector 0 'Administrative unit only'
1 'Public, 4-year or above'
2 'Private, nonprofit, 4-year or above'
3 'Private, for profit, 4-year or above'
4 'Public, 2-year'
5 'Private, nonprofit, 2-year'
6 'Private, for profit, 2-year'
7 'Public, less-than-2-year'
8 'Private, nonprofit, less-than-2-year'
9 'Private, for profit, less-than-2-year'
/iclevel 0 'No response'
1 '4 or more years (Baccalaureate or higher degree)'
2 'At least 2 but less than 4 years below the Baccalaureate'
3 'Less than 2 years (below Associates Degree)'
/control 0 'No response'
1 'Public'
2 'Private nonprofit'
3 'Private for-profit'
/affil 1 'Public'
2 'Private for-profit'
3 'Private nonprofit, independent'
4 'Private nonprofit, Catholic'
5 'Private nonprofit, Jewish'
6 'Private nonprofit, Protestant'
7 'Private nonprofit, other religious affiliation'
/hloffer 0 'Other'
1 'Postsecondary award, certificate or diploma of less than one academic year'
2 'Postsecondary award, certificate or diploma of at least one but less than two academic years'
3 'Associates Degree'
4 'Postsecondary award, certificate or diploma of at least two but less than four academic years'
5 'Bachelors Degree'
6 'Postbaccalaureate Certificate'
7 'Masters Degree'
8 'Post-Masters Certificate'
9 'Doctors Degree'
/formrt '1' 'Form IC1'
'2' 'Form IC2'
'3' 'Form IC3'
/resplast 1 'Respondent'
3 'Nonrespondent, not imputed'
/respstat 1 'Respondent'
3 'Nonrespondent, not imputed'
/multype 1 'Yes'
2 'No'
/protaffl 27 'Assemblies of God Church'
28 'Brethren Church'
29 'Brethren in Christ Church'
33 'Wisconsin Evangelical Lutheran Synod'
34 'Christ and Missionary Alliance Church'
35 'Christian Reformed Church'
36 'Evangelical Congregational Church'
37 'Evangelical Covenant Church of America'
38 'Evangelical Free Church of America'
39 'Evangelical Lutheran Church'
41 'Free Will Baptist Church'
42 'Interdenominational'
43 'Mennonite Brethren Church'
44 'Moravian Church'
46 'American Lutheran and Lutheran Church in America'
47 'Pentecostal Holiness Church'
48 'Christian Churches and Churches of Christ'
49 'Reformed Church in America'
50 'Reformed Episcopal Church'
51 'African Methodist Episcopal'
52 'American Baptist'
54 'Baptist'
55 'Christian Methodist Episcopal'
56 'Church of Christ (Scientist)'
57 'Church of God'
58 'Church of the Brethren'
59 'Church of the Nazarene'
60 'Cumberland Presbyterian'
61 'Christian Church (Disciples of Christ)'
64 'Free Methodist'
65 'Friends'
66 'Presbyterian Church (USA)'
67 'Lutheran Church in America'
68 'Lutheran Church - Missouri Synod'
69 'Mennonite Church'
70 'General Conference Mennonite Church'
71 'United Methodist'
73 'Protestant Episcopal'
74 'Churches of Christ'
75 'Southern Baptist'
76 'United Church of Christ'
78 'Multiple Protestant Denominations'
79 'Other Protestant'
81 'Reformed Presbyterian Church'
84 'United Brethren Church'
87 'Missionary Church Inc'
88 'Undenominational'
89 'Wesleyan'
92 'Russian Orthodox'
93 'Unitarian Universalist'
94 'Latter Day Saints'
95 'Seventh Day Adventists'
96 'Church of God of Prophecy'
97 'The Presbyterian Church in America'
99 'Other'
/othaffl 24 'American Methodist Episcopal Zion Church'
39 'Evangelical Lutheran Church'
42 'Interdenominational'
48 'Christian Churches and Churches of Christ'
50 'Reformed Episcopal Church'
52 'American Baptist'
54 'Baptist'
56 'Church of Christ (Scientist)'
57 'Church of God'
59 'Church of the Nazarene'
61 'Christian Church (Disciples of Christ)'
65 'Friends'
66 'Presbyterian Church (USA)'
67 'Letheran Church in American'
68 'Lutheran Church - Missouri Synod'
69 'Mennonite Church'
70 'Genreal Conference Mennonite Church'
71 'United Methodist'
74 'Churches of Christ'
75 'Southern Baptist'
76 'United Church of Christ'
82 'Reorganized Latter Day Saints Church'
88 'Undenominational'
91 'Greek Orthodox'
92 'Russian Orthodox'
93 'Unitarian Universalist'
94 'Latter Day Saints'
99 'Other'
/fopna 1 'Yes'
2 'No'
/saccr 1 'Yes'
2 'No'
/calsys 1 'Semester'
2 'Quarter'
3 'Trimester'
4 'Four-One-Four Plan (4-1-4)'
5 'Differs by program'
6 'Continuous basis'
/mili 1 'Yes'
2 'No'
/uwwou 1 'Yes'
2 'No'
/ftstu 1 'Yes'
2 'No'
/libfac 1 'Yes, own library'
2 'Yes, shared library'
3 'Yes, own or shared not known'
4 'No'.

frequencies variables=
 stabbr fips obereg sector iclevel control affil hloffer fpoffer formrt resplast respstat peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr multype public1 public2 public3 public4 public5 public6 public7 public8 public9 private1 private2 private3 private4 private5 private6 private7 private8 protaffl othaffl level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 fopna fopna1 fopna2 accrd1 accrd2 accrd3 accrd4 saccr acc1 acc2 acc3 acc4 acc5 acc6 acc7 acc8 acc9 acc10 acc11 acc12 acc13 acc14 acc15 acc16 acc17 acc97 acc18 acc19 acc20 acc21 acc22 acc23 acc24 acc25 acc26 acc27 acc28 acc29 acc30 acc31 acc32 acc33 acc34 acc35 acc36 acc37 acc38 acc39 acc40 acc41 acc42 acc43 acc44 acc45 acc46 acc47 acc48 acc49 acc50 acc51 acc52 acc53 acc54 acc55 acc56 acc57 acc58 acc59 acc60 acc61 acc62 acc63 acc64 acc65 acc66 acc67 acc68 acc69 acc70 acc71 acc72 acc73 acc74 acc75 acc76 acc77 acc78 acc79 acc80 acc81 acc82 acc83 acc84 acc85 acc86 acc87 acc88 acc89 acc90 acc91 acc92 acc93 acc94 acc95 acc96 acc98 acc99 acc100 acc101 acc102 acc103 acc104 acc105 acc106 acc107 calsys crsloc1 crsloc2 crsloc3 crsloc4 crsloc5 crsloc6 facloc1 facloc2 facloc3 facloc4 facloc6 facloc7 facloc8 facloc9 facloc10 facloc12 mili mil1insl mil2insl admreq1 admreq2 admreq3 admreq4 admreq5 admreq6 admreq7 admreq8 admreq9 admreq10 admreq11 uwwou mode1 mode2 mode3 mode4 mode5 mode6 mode7 mode8 mode9 mode10 mode11 mode12 mode13 mode14 stusrv1 stusrv2 stusrv3 stusrv4 stusrv5 stusrv6 stusrv7 stusrv8 stusrv9 aslib1 aslib2 aslib3 ftstu libfac.

descriptives variables=
 fice unitidx congdist avgperc
/stats=def.

save outfile='ic1989_a.sav' /compressed.

