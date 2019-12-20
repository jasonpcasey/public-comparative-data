*** Created: 6/13/2004 5:28:36 AM                            ***.
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
/file = 'c:\dct\ic1994_a.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
fice f6
fips f2
instnm a2
city a2
stabbr a2
obereg f6
rstatus f2
unitidx f6
sector f2
iclevel f2
control f2
affil f2
hloffer f2
fpoffer f4
pctmin1 f2
pctmin2 f2
pctmin3 f2
pctmin4 f2
hbcu f1
hospital f1
medical f1
tribal f1
carnegie f4
source f1
ncesedit f1
formrt f2
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
insttoyr f1
accrd1 f1
accrd2 f1
accrd3 f1
accrd4 f1
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
acc8 f1
acc9 f1
acc10 f1
acc12 f1
acc13 f1
acc11 f1
acc14 f1
acc15 f1
acc16 f1
acc17 f1
acc97 f1
acc18 f1
acc108 f1
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
acc96 f1
acc95 f1
acc103 f1
acc72 f1
acc73 f1
acc74 f1
acc75 f1
acc100 f1
acc76 f1
acc77 f1
acc104 f1
acc79 f1
acc80 f1
acc81 f1
acc109 f1
acc82 f1
acc83 f1
acc84 f1
acc105 f1
acc106 f1
acc85 f1
acc86 f1
acc87 f1
acc88 f1
acc89 f1
acc93 f1
acc90 f1
acc91 f1
acc92 f1
acc94 f2
acc114 f1
acc101 f1
acc110 f1
acc111 f1
acc112 f1
acc113 f1
chfnm a30
chftitle a30
parchild f1.

variable labels
unitid 'Unique identification number for an institution'
fice 'FICE code'
fips 'FIPS state code'
instnm 'Institution (entity) name'
city 'City location of institution'
stabbr 'Post Office state abbreviation code'
obereg 'OBE region code'
rstatus 'Respondent status code'
unitidx 'UNITID of parent institution reporting full year enrollment'
sector 'Sector of institution'
iclevel 'Level of institution'
control 'Control of institution'
affil 'Affiliation of institution'
hloffer 'Highest level of offering'
fpoffer 'First-professional offering'
pctmin1 'Percent Black, non-Hispanic'
pctmin2 'Percent American Indian/Alaskan Native'
pctmin3 'Percent Asian/Pacific Islander'
pctmin4 'Percent Hispanic'
hbcu 'Historically Black College or University'
hospital 'Institution has hospital'
medical 'Institution grants a medical degree'
tribal 'Tribal college'
carnegie 'Carnegie classification code'
source 'Source of data'
ncesedit 'Status of data edit process'
formrt 'Survey form IC1, IC2, IC3, IC4 or IC-Add'
resplast 'Respondent status last year'
respstat 'Respondent status this year'
addr 'Street address or post office box'
zip 'ZIP + four'
countynm 'County name'
congdist 'Congressional district'
gentele 'General information telephone number'
peo1istr 'Occupational'
peo2istr 'Academic'
peo3istr 'Continuing professional'
peo4istr 'Recreational or avocational'
peo5istr 'Adult basic, remedial, or high school equivalency'
peo6istr 'Secondary (high school)'
multype 'Administrative unit only (entity is a central, system, or coporate office)'
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
level3 'Associate^s Degree'
level4 'Two but less than 4 years'
level5 'Bachelor^s Degree'
level6 'Postbaccalaureate Certificate'
level7 'Masters Degree'
level8 'Post-Master^s Certificate'
level9 'Doctor^s Degree'
level10 'First-Professional Degree'
level11 'First-Professional Certificate (post-degree)'
level12 'Other award level'
leveloth 'Other award level specified'
fopna 'Programs not leading to a formal award'
fopna1 'FOPNA are undergraduate programs'
fopna2 'FOPNA are graduate programs'
insttoyr 'In business two years'
accrd1 'National or specialized accrediting agency'
accrd2 'Regional accrediting agency'
accrd3 'State accrediting or approval agency'
accrd4 'Accredit not applicable'
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
acc8 'Microbiology'
acc9 'Business (BUS)'
acc10 'Business (BUSA)'
acc12 'Marriage and Family Therapy Clinical'
acc13 'Marriage and Family Therapy Graduate'
acc11 'Bible College Education'
acc14 'Nurse Anesthesia'
acc15 'Law'
acc16 'Funeral Service Education'
acc17 'Nurse Midwifery'
acc97 'Construction Education'
acc18 'Pharmacy'
acc108 'Culinary Education'
acc19 'Dental Assisting'
acc20 'Dental Hygiene'
acc21 'Dental Technology'
acc22 'Dentistry'
acc23 'Dietetics'
acc24 'Dietetics'
acc25 'Librarianship'
acc78 'Medicine'
acc28 'Cytotechnologist'
acc29 'Diagnostic Medical Sonographer'
acc30 'Electroneurodiagnostic Technician'
acc31 'Emergency Medical Technician'
acc32 'Histologic Technician/Technologist'
acc33 'Medical Assistant'
acc35 'Medical Laboratory Technician'
acc34 'Medical Laboratory Technician'
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
acc61 'Landscape Architecture'
acc62 'Audiology'
acc63 'Speech-Language Pathology'
acc64 'Veterinary Medicine'
acc65 'Veterinary Medicine'
acc66 'Clinical Pastoral Education'
acc67 'Rabbinical and Talmudic Education'
acc68 'Business junior colleges'
acc69 'Business senior colleges'
acc70 'Business postsecondary schools'
acc71 'Theology'
acc96 'Opticianry 1-year programs'
acc95 'Opticianry 2-year programs'
acc103 'Computer Science'
acc72 'Chiropractic'
acc73 'Community Health Education'
acc74 'Community Health/Preventive Medicine'
acc75 'Public Health'
acc100 'Naturopathy'
acc76 'Social Work'
acc77 'Interior Design'
acc104 'Acupuncture'
acc79 'Blind and Visually Handicapped Education'
acc80 'Cosmetology'
acc81 'Architecture'
acc109 'Industrial Technology'
acc82 'Art'
acc83 'Dance'
acc84 'Music Baccalaureate and graduate degree programs'
acc105 'Music junior college programs'
acc106 'Music Nondegree programs'
acc85 'Theatre'
acc86 'Occupational, Trade and Technical Education degree'
acc87 'Occupational, Trade and Technical Education nondegree'
acc88 'Teacher Education'
acc89 'Home Study Education'
acc93 'Nursing Practical nursing programs'
acc90 'Nursing Associate degree programs'
acc91 'Nursing Diploma programs'
acc92 'Nursing Baccalaureate and higher degree programs'
acc94 'Forestry'
acc114 'Christian Education'
acc101 'Clinical Pastoral Education'
acc110 'New York State Board of Regents'
acc111 'Business - Associate degree programs'
acc112 'Business - Baccalaureate degree programs'
acc113 'Business - Master^s degree programs'
chfnm 'Name of Chief Administrator'
chftitle 'Title of Chief Administrator'
parchild 'Parent/Child Indicator'.

value labels
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
/obereg 0 'U.S. service schools'
1 'New England-CT ME MA NH RI VT'
2 'Mid East-DE DC MD NJ NY PA'
3 'Great Lakes-IL IN MI OH WI'
4 'Plains-IA KS MN MO NE ND SD'
5 'Southeast-AL AR FL GA KY LA MS NC SC TN VA WV'
6 'Southwest-AZ NM OK TX'
7 'Rocky Mountains-CO ID MT UT WY'
8 'Far West-AK CA HI NV OR WA'
9 'Outlying Areas-AS GU CM PR TT VI'
/rstatus 1 'Respondent to Part E'
2 'Data reported with another institutions record'
3 'Nonrespondent to Part E, not imputed'
4 'Nonrespondent to Part E, imputed'
5 'Combined data respondent'
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
/iclevel 1 '4 or more years (Baccalaureate or higher degree)'
2 'At least 2 but less than 4 years (below the Baccalaureate)'
3 'Less than 2 years (below Associates Degree)'
/control 1 'Public'
2 'Private nonprofit'
3 'Private for-profit'
/affil 1 'Public'
2 'Private, for-profit'
3 'Private, nonprofit, independent'
4 'Private, nonprofit, Catholic'
5 'Private, nonprofit, Jewish'
6 'Private, nonprofit, Protestant'
7 'Private, nonprofit, other religious affiliation'
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
/carnegie 11 'Research universities I'
12 'Research universities II'
13 'Doctoral universities I'
14 'Doctoral universities II'
21 'Masters (comprehensive) universities and colleges I'
22 'Masters (comprehensive) universities and colleges II'
31 'Baccalaureate (liberal arts) colleges I'
32 'Baccalaureate colleges II'
40 'Associate of arts colleges'
51 'Theological seminaries, Bible colleges and other institutions offering degrees in religion'
52 'Medical schools and medical centers'
53 'Other separate health profession schools'
54 'Schools of engineering and technology'
55 'Schools of business and management'
56 'Schools of art, music, and design'
57 'School of law'
58 'Teachers colleges'
59 'Other specialized institutions'
60 'Tribal colleges'
/source 3 'Survey form'
4 'Form facsimile'
5 'PETS'
/ncesedit 1 'Data edited, no critical errors remain'
2 'Data edited, anlyst corrected/accepted errors'
3 'Data edited, critical errors remain uncorrected'
/formrt 1 'Form IC1'
2 'Form IC2'
3 'Form IC3'
4 'Form IC4'
5 'Form IC-Add'
/resplast 1 'Respondent'
3 'Nonrespondent, not imputed'
/respstat 1 'Respondent'
3 'Nonrespondent, not imputed'
/protaffl 22 'American Evangelical Lutheran Church'
27 'Assemblies of God Church'
28 'Brethren Church'
29 'Brethren in Christ Church'
30 'Roman Catholic'
33 'Wisconsin Evangelical Lutheran Synod'
34 'Christ and Missionary Alliance Church'
35 'Christian Reformed Church'
36 'Evangelical Congregational Church'
37 'Evangelical Covenant Church of America'
38 'Evangelical Free Church of America'
39 'Evangelical Lutheran Church'
40 'United Pentecostal Church International'
41 'Free Will Baptist Church'
42 'Interdenominational'
43 'Mennonite Brethren Church'
44 'Moravian Church'
45 'North American Baptist'
46 'American Lutheran and Lutheran Church in America'
47 'Pentecostal Holiness Church'
48 'Christian Churches and Churches of Christ'
49 'Reformed Church in America'
50 'Reformed Episcopal Church'
51 'African Methodist Episcopal'
52 'American Baptist'
53 'American Lutheran'
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
82 'Reorganized Latter Day Saints Church'
84 'United Brethren Church'
87 'Missionary Church Inc'
88 'Undenominational'
89 'Wesleyan'
95 'Seventh Day Adventists'
97 'The Presbyterian Church in America'
98 'Salvation Army'
99 'Other'
/othaffl 24 'American Methodist Episcopal Zion Church'
39 'Evangelical Lutheran Church'
42 'Interdenominational'
47 'Pentecostal Holiness Church'
48 'Christian Churches and Churches of Christ'
50 'Reformed Episcopal Church'
52 'American Baptist'
54 'Baptist'
56 'Church of Christ (Scientist)'
61 'Christian Church (Disciples of Christ)'
65 'Friends'
69 'Mennonite Church'
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
95 'Seventh Day Adventists'
99 'Other'
/fopna 1 'Yes'
2 'No'
/insttoyr 1 'Yes'
2 'No'
3 'Dont know'
/saccr 1 'Yes'
2 'No'
/parchild 1 'Parent record'
2 'Child record only'.

frequencies variables=
 fips stabbr obereg rstatus sector iclevel control affil hloffer fpoffer hbcu hospital medical tribal carnegie source ncesedit formrt resplast respstat peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr multype public1 public2 public3 public4 public5 public6 public7 public8 public9 private1 private2 private3 private4 private5 private6 private7 private8 protaffl othaffl level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 fopna fopna1 fopna2 insttoyr accrd1 accrd2 accrd3 accrd4 saccr acc1 acc102 acc2 acc5 acc3 acc4 acc6 acc99 acc7 acc8 acc9 acc10 acc12 acc13 acc11 acc14 acc15 acc16 acc17 acc97 acc18 acc108 acc19 acc20 acc21 acc22 acc23 acc24 acc25 acc78 acc28 acc29 acc30 acc31 acc32 acc33 acc35 acc34 acc36 acc37 acc38 acc39 acc41 acc40 acc42 acc26 acc46 acc43 acc44 acc45 acc27 acc47 acc48 acc51 acc49 acc50 acc52 acc54 acc53 acc55 acc56 acc57 acc58 acc59 acc60 acc61 acc62 acc63 acc64 acc65 acc66 acc67 acc68 acc69 acc70 acc71 acc96 acc95 acc103 acc72 acc73 acc74 acc75 acc100 acc76 acc77 acc104 acc79 acc80 acc81 acc109 acc82 acc83 acc84 acc105 acc106 acc85 acc86 acc87 acc88 acc89 acc93 acc90 acc91 acc92 acc94 acc114 acc101 acc110 acc111 acc112 acc113 parchild.

descriptives variables=
 fice unitidx pctmin1 pctmin2 pctmin3 pctmin4 congdist
/stats=def.

save outfile='ic1994_a.sav' /compressed.

