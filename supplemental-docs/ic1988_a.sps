*** Created: 6/13/2004 7:28:02 AM                            ***.
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
/file = 'c:\dct\ic1988_a.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
zip a10
tuition4 f3
tuition7 f3
acc1 f3
acc2 f3
acc3 f3
acc4 f3
acc5 f3
acc6 f3
acc7 f3
acc8 f3
acc9 f3
acc10 f3
acc11 f3
acc12 f3
acc13 f3
acc14 f3
acc15 f3
acc16 f3
acc17 f3
acc18 f3
acc19 f3
acc20 f3
acc21 f3
acc22 f3
acc23 f3
acc24 f3
acc25 f3
acc26 f3
acc27 f3
acc28 f3
acc29 f3
acc30 f3
acc31 f3
acc32 f3
acc33 f3
acc34 f3
acc35 f3
acc36 f3
acc37 f3
acc38 f3
acc39 f3
acc40 f3
acc41 f3
acc42 f3
acc43 f3
acc44 f3
acc45 f3
acc46 f3
acc47 f3
acc48 f3
acc49 f3
acc50 f3
acc51 f3
acc52 f3
acc53 f3
acc54 f3
acc55 f3
acc56 f3
acc57 f3
acc58 f3
acc59 f3
acc60 f3
acc61 f3
acc62 f3
acc63 f3
acc64 f3
acc65 f3
acc66 f3
acc67 f3
acc68 f3
acc69 f3
acc70 f3
acc71 f3
acc72 f3
acc73 f3
acc74 f3
acc75 f3
acc76 f3
acc77 f3
acc78 f3
acc79 f3
acc80 f3
acc81 f3
acc82 f3
acc83 f3
acc84 f3
acc85 f3
acc86 f3
acc87 f3
acc88 f3
acc89 f3
acc90 f3
acc91 f3
acc92 f3
acc93 f3
acc94 f3
acc95 f3
acc96 f3
acc97 f3
acc98 f3
acc99 f3
acc100 f3
acc101 f3
calsys f3
chgper f3
facmd f3
facml f3
facpt f3
ffamt f3
ffper f3
fopna f3
ftstu f3
jtpa f3
mili f3
multype f3
room f3
saccr f3
uwwou f3
hloffer f3
fpoffer f3
obereg f3
fips f3
iclevel f3
control f3
gentele a10
affil f3
tuition1 f8
tuition2 f8
tuition3 f8
tuition5 f8
tuition6 f8
apfee f8
tfdu f8
tfdi f8
phper f8
board f8
rotc f8
ftslt15 f3
pg600 f8
city a20
fice f8
instnm a50
addr a60
countynm a30
congdist f3
stabbr a2
sector f3
peo1istr f3
peo2istr f3
peo3istr f3
peo4istr f3
peo5istr f3
peo6istr f3
public1 f3
public2 f3
public3 f3
public4 f3
public5 f3
public6 f3
public7 f3
public8 f3
public9 f3
private1 f3
private2 f3
private3 f3
private4 f3
private5 f3
private6 f3
private7 f3
private8 f3
protaffl f3
othaffl f3
level1 f3
level2 f3
level3 f3
level4 f3
level5 f3
level6 f3
level7 f3
level8 f3
level9 f3
level10 f3
level11 f3
level12 f3
leveloth a20
fopna1 f3
fopna2 f3
accrd1 f3
accrd2 f3
accrd3 f3
accrd4 f3
crsloc1 f3
crsloc2 f3
crsloc3 f3
crsloc4 f3
crsloc5 f3
crsloc6 f3
facloc1 f3
facloc2 f3
facloc3 f3
facloc4 f3
facloc6 f3
facloc7 f3
facloc8 f3
facloc9 f3
facloc10 f3
facloc12 f3
mil1insl f3
mil2insl f3
admreq1 f3
admreq2 f3
admreq3 f3
admreq4 f3
admreq5 f3
admreq6 f3
admreq7 f3
admreq8 f3
admreq9 f3
admreq10 f3
admreq11 f3
avgperc f8.

variable labels
unitid 'Unique identification number for an institution'
zip 'ZIP + four'
tuition4 'No full-time undergraduate students'
tuition7 'Tuition and fees full-time graduate, out-of-state'
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
acc97 'Construction Education'
acc98 'Rehabilitation Training'
acc99 'Continuing Education'
acc100 'Naturopathy'
acc101 'Clinical Pastoral Education'
calsys 'Calendar system'
chgper 'Type of charge for full-time students'
facmd 'All instructional faculty teach medicine'
facml 'All instructional faculty are military'
facpt 'All instructional faculty are part-time'
ffamt 'Flat fee amount in whole dollars'
ffper 'Basis for flat fee charge'
fopna 'Programs not leading to a formal award'
ftstu 'Full-time students are enrolled'
jtpa 'Job Training Partnership Act (JTPA)'
mili 'Courses are offered at military installations'
multype 'Administrative unit only (entity is a central, system, or coporate office)'
room 'Institution provides dormitory facilities'
saccr 'Accredited by agency recognized by USED'
uwwou 'University without walls/open university'
hloffer 'Highest level of offering'
fpoffer 'First-professional offering'
obereg 'OBE region code'
fips 'FIPS state code'
iclevel 'Level of institution'
control 'Control of institution'
gentele 'General information telephone number'
affil 'Affiliation of institution'
tuition1 'Tuition and fees full-time undergraduate, in-district'
tuition2 'Tuition and fees full-time undergraduate, in-state'
tuition3 'Tuition and fees full-time undergraduate, out-of-state'
tuition5 'Tuition and fees full-time graduate, in-district'
tuition6 'Tuition and fees full-time graduate, in-state'
apfee 'Application fee is required'
tfdu 'Different tuition and required fee charges for different undergraduate levels'
tfdi 'Different tuition and required fee charges for different undergraduate instructional programs'
phper 'Basis for per hour charge'
board 'Institution provides board or meal plans'
rotc 'Reserve Officers Training Corps (ROTC)'
ftslt15 'Size of full-time staff'
pg600 'Have programs greater then 600 contact hours'
city 'City location of institution'
fice 'FICE code'
instnm 'Institution (entity) name'
addr 'Street address or post office box'
countynm 'County name'
congdist 'Congressional district'
stabbr 'Post office state abbreviation code'
sector 'Sector of institution'
peo1istr 'Types of educational offerings - occupational'
peo2istr 'Types of educational offerings - academic'
peo3istr 'Types of educational offerings - continuing professional'
peo4istr 'Types of educational offerings - recreational or avocational'
peo5istr 'Types of educational offerings - adult basic, remedial, or high school equivalency'
peo6istr 'Types of educational offerings - secondary (high school)'
public1 'Public institution type- federal'
public2 'Public institution type- state'
public3 'Public institution type- territorial'
public4 'Public institution type- school district'
public5 'Public institution type- county'
public6 'Public institution type- township'
public7 'Public institution type- city'
public8 'Public institution type- special district'
public9 'Public institution type- other'
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
fopna1 'FOPNA are undergraduate programs'
fopna2 'FOPNA are graduate programs'
accrd1 'National or specialized accrediting agency'
accrd2 'Regional accrediting agency'
accrd3 'State accrediting or approval agency'
accrd4 'Accredit not applicable'
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
mil1insl 'If MILI = 1, in states and/or territories'
mil2insl 'If MILI = 1, at military installations abroad'
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
avgperc 'Average high school percentile rank'.

value labels
/calsys 1 'Semester'
2 'Quarter'
3 'Trimester'
4 'Four-One-Four Plan (4-1-4)'
5 'Differs by program'
6 'Continuous basis'
/chgper 1 'By credit/contact hour'
2 'By program'
3 'By term'
4 'By year'
5 'Other'
/facmd 1 'Yes'
2 'No'
/facml 1 'Yes'
2 'No'
/facpt 1 'Yes'
2 'No'
/ffper 1 'Per semester'
2 'Per quarter'
3 'Per program'
4 'Per year'
5 'Per trimester'
6 'Other'
/fopna 1 'Yes'
2 'No'
/ftstu 1 'Yes'
2 'No'
/jtpa 1 'Yes'
2 'No'
3 'Dont know'
/mili 1 'Yes'
2 'No'
/multype 1 'Yes'
2 'No'
/room 1 'Yes'
2 'No'
/saccr 1 'Yes'
2 'No'
/uwwou 1 'Yes'
2 'No'
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
63 'Northern Marianas'
66 'Guam'
72 'Puerto Rico'
75 'Trust Territories'
78 'Virgin Islands'
8 'Colorado'
9 'Connecticut'
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
/apfee 1 'Yes'
2 'No'
/tfdu 1 'Yes'
2 'No'
/tfdi 1 'Yes'
2 'No'
/phper 1 'Per semester'
2 'Per quarter credit hour'
3 'Per contact hour'
4 'Per trimester hour'
5 'Other'
/board 1 'Yes'
2 'No'
/rotc 1 'Yes'
2 'No'
/ftslt15 1 'Less than 15'
2 '15 or more'
/pg600 1 'Yes'
2 'No'
/stabbr 'AK' 'Alaska'
'AL' 'Alabama'
'AR' 'Arkansas'
'AS' 'American Samoa'
'AZ' 'Arizona'
'CA' 'California'
'CM' 'Entry Unknown'
'CO' 'Colorado'
'CT' 'Connecticut'
'DC' 'District of Columbia'
'DE' 'Delaware'
'FL' 'Florida'
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
'RI' 'Rhode Island'
'SC' 'South Carolina'
'SD' 'South Dakota'
'TN' 'Tennessee'
'TT' 'Trust Territories'
'TX' 'Texas'
'UT' 'Utah'
'VA' 'Virginia'
'VI' 'Virgin Islands'
'VT' 'Vermont'
'WA' 'Washington'
'WI' 'Wisconsin'
'WV' 'West Virginia'
'WY' 'Wyoming'
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
/protaffl 27 'Assemblies of God Church'
28 'Brethren Church'
29 'Brethren in Christ Church'
31 'Church of God in Christ'
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
90 'Young Mens Christian Association'
92 'Russian Orthodox'
93 'Unitarian Universalist'
94 'Latter Day Saints'
95 'Seventh Day Adventists'
96 'Church of God of Prophecy'
97 'The Presbyterian Church in America'
99 'Other'
/othaffl 39 'Evangelical Lutheran Church'
42 'Interdenominational'
47 'Pentecostal Holiness Church'
48 'Christian Churches and Churches of Christ'
50 'Reformed Episcopal Church'
52 'American Baptist'
54 'Baptist'
56 'Church of Christ (Scientist)'
57 'Church of God'
59 'Church of the Nazarene'
61 'Christian Church (Disciples of Christ)'
65 'Friends'
66 'Presbyterian Church (SUA)'
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
93 'Unitarian Universalist'
94 'Latter Day Saints'
99 'Other'.

frequencies variables=
 tuition4 acc1 acc2 acc3 acc4 acc5 acc6 acc7 acc8 acc9 acc10 acc11 acc12 acc13 acc14 acc15 acc16 acc17 acc18 acc19 acc20 acc21 acc22 acc23 acc24 acc25 acc26 acc27 acc28 acc29 acc30 acc31 acc32 acc33 acc34 acc35 acc36 acc37 acc38 acc39 acc40 acc41 acc42 acc43 acc44 acc45 acc46 acc47 acc48 acc49 acc50 acc51 acc52 acc53 acc54 acc55 acc56 acc57 acc58 acc59 acc60 acc61 acc62 acc63 acc64 acc65 acc66 acc67 acc68 acc69 acc70 acc71 acc72 acc73 acc74 acc75 acc76 acc77 acc78 acc79 acc80 acc81 acc82 acc83 acc84 acc85 acc86 acc87 acc88 acc89 acc90 acc91 acc92 acc93 acc94 acc95 acc96 acc97 acc98 acc99 acc100 acc101 calsys chgper facmd facml facpt ffper fopna ftstu jtpa mili multype room saccr uwwou hloffer fpoffer obereg fips iclevel control affil apfee tfdu tfdi phper board rotc ftslt15 pg600 stabbr sector peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr public1 public2 public3 public4 public5 public6 public7 public8 public9 private1 private2 private3 private4 private5 private6 private7 private8 protaffl othaffl level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 fopna1 fopna2 accrd1 accrd2 accrd3 accrd4 crsloc1 crsloc2 crsloc3 crsloc4 crsloc5 crsloc6 facloc1 facloc2 facloc3 facloc4 facloc6 facloc7 facloc8 facloc9 facloc10 facloc12 mil1insl mil2insl admreq1 admreq2 admreq3 admreq4 admreq5 admreq6 admreq7 admreq8 admreq9 admreq10 admreq11.

descriptives variables=
 tuition7 ffamt tuition1 tuition2 tuition3 tuition5 tuition6 fice congdist avgperc
/stats=def.

save outfile='ic1988_a.sav' /compressed.

