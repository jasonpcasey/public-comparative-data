*** Created: 6/13/2004 7:38:13 AM                            ***.
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
/file = 'c:\dct\ic1987_a.csv'
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
obereg a2
fice f8
rstatus f
unitidx f6
sector f8
iclevel f8
control f8
affil f8
hloffer f8
fpoffer f8
formrt f8
resplast f8
respstat f8
addr a60
zip a10
countynm a30
congdist f2
gentele a10
peo1istr f8
peo2istr f8
peo3istr f8
peo4istr f8
peo5istr f8
peo6istr f8
multype f8
public1 f8
public2 f8
public3 f8
public4 f8
public5 f8
public6 f8
public7 f8
public8 f8
public9 f8
private1 f8
private2 f8
private3 f8
private4 f8
private5 f8
private6 f8
private7 f8
private8 f8
protaffl f8
othaffl f8
level1 f8
level2 f8
level3 f8
level4 f8
level5 f8
level6 f8
level7 f8
level8 f8
level9 f8
level10 f8
level11 f8
level12 f8
leveloth a20
fopna f8
fopna1 f8
fopna2 f8
accrd1 f8
accrd2 f8
accrd3 f8
accrd4 f8
saccr f8
acc1 f8
acc2 f8
acc3 f8
acc4 f8
acc5 f8
acc6 f8
acc7 f8
acc8 f8
acc9 f8
acc10 f8
acc11 f8
acc12 f8
acc13 f8
acc14 f8
acc15 f8
acc16 f8
acc17 f8
acc18 f8
acc19 f8
acc20 f8
acc21 f8
acc22 f8
acc23 f8
acc24 f8
acc25 f8
acc26 f8
acc27 f8
acc28 f8
acc29 f8
acc30 f8
acc31 f8
acc32 f8
acc33 f8
acc34 f8
acc35 f8
acc36 f8
acc37 f8
acc38 f8
acc39 f8
acc40 f8
acc41 f8
acc42 f8
acc43 f8
acc44 f8
acc45 f8
acc46 f8
acc47 f8
acc48 f8
acc49 f8
acc50 f8
acc51 f8
acc52 f8
acc53 f8
acc54 f8
acc55 f8
acc56 f8
acc57 f8
acc58 f8
acc59 f8
acc60 f8
acc61 f8
acc62 f8
acc63 f8
acc64 f8
acc65 f8
acc66 f8
acc67 f8
acc68 f8
acc69 f8
acc70 f8
acc71 f8
acc72 f8
acc73 f8
acc74 f8
acc75 f8
acc76 f8
acc77 f8
acc78 f8
acc79 f8
acc80 f8
acc81 f8
acc82 f8
acc83 f8
acc84 f8
acc85 f8
acc86 f8
acc87 f8
acc88 f8
acc89 f8
acc90 f8
acc91 f8
acc92 f8
acc93 f8
acc94 f8
acc95 f8
acc96 f8.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
city 'City location of institution'
stabbr 'Post office state abbreviation code'
fips 'FIPS state code'
obereg 'OBE region code'
fice 'FICE code'
rstatus 'rstatus'
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
public9 'Public - other'
private1 'Profit-making'
private2 'Not-for-profit'
private3 'Independent (no religious affiliation)'
private4 'Religious affiliation (general)'
private5 'Catholic'
private6 'Jewish'
private7 'Protestant'
private8 'Private institution type- other'
protaffl 'Protestant affiliation, specified'
othaffl 'Other affiliation, specified'
level1 'Less than one year'
level2 'More than one but less than two years'
level3 'Associate^s Degree'
level4 'Two but less than four years'
level5 'Bachelor^s Degree'
level6 'Postbaccalaureate Certificate'
level7 'Master^s Degree'
level8 'Post-Masters Certificate'
level9 'Doctor^s Degree'
level10 'First-Professional Degree'
level11 'First-Professional Certificate (post-degree)'
level12 'Other award level'
leveloth 'Other award level specified'
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
acc96 'Opticianry 1-year programs'.

value labels
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
/fips '01' 'Alabama'
'02' 'Alaska'
'04' 'Arizona'
'05' 'Arkansas'
'06' 'Ca ofprmoa'
'08' 'Colorado'
'09' 'Connecticut'
'10' 'Delaware'
'11' 'District of Columbia'
'12' 'Florida'
'13' 'Georgia'
'15' 'Hawaii'
'16' 'Idaho'
'17' 'Illinois'
'18' 'Indiana'
'19' 'Iowa'
'20' 'Kansas'
'21' 'Kentucky'
'22' 'Louisiana'
'23' 'Maine'
'24' 'Maryland'
'25' 'Massachusetts'
'26' 'Michigan'
'27' 'Minnesota'
'28' 'Mississippi'
'29' 'Missouri'
'30' 'Montana'
'31' 'Nebraska'
'32' 'Nevada'
'33' 'New Hampshire'
'34' 'New Jersey'
'35' 'New Mexico'
'36' 'New York'
'37' 'North Carolina'
'38' 'North Dakota'
'39' 'Ohio'
'40' 'Oklahoma'
'41' 'Oregon'
'42' 'Pennsylvania'
'44' 'Rhode Island'
'45' 'South Carolina'
'46' 'South Dakota'
'47' 'Tennessee'
'48' 'Texas'
'49' 'Utah'
'50' 'Vermont'
'51' 'Virginia'
'53' 'Washington'
'54' 'West Virginia'
'55' 'Wisconsin'
'56' 'Wyoming'
'60' 'American Samoa'
'63' 'Northern Marianas'
'66' 'Guam'
'72' 'Puerto Rico'
'75' 'Trust Territories'
'78' 'Virgin Islands'
/obereg '0' 'U.S. service schools'
'1' 'New England-CT ME MA NH RI VT'
'2' 'Mid East-DE DC MD NJ NY PA'
'3' 'Great Lakes-IL IN MI OH WI'
'4' 'Plains-IA KS MN MO NE ND SD'
'5' 'New Mexico'
'6' 'Southwest-AZ NM OK TX'
'7' 'Rocky Mountains-CO ID MT UT WY'
'8' 'Far West-AK CA HI NV OR WA'
'9' 'Outlying Areas-AS GU CM PR TT VI'
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
/formrt 1 'Form IC1'
2 'Form IC2'
3 'Form IC3'
/resplast 1 'Respondent'
3 'Nonrespondent, not imputed'
/respstat 1 'Respondent'
3 'Nonrespondent, not imputed'
/multype 1 'Yes'
2 'No'
/protaffl 0 'No response'
21 'Entry unknown'
27 'Assemblies of God Church'
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
92 'Russian Orthodox'
93 'Unitarian Universalist'
94 'Latter Day Saints'
95 'Seventh Day Adventists'
96 'Church of God of Prophecy'
97 'The Presbyterian Church in America'
99 'Other'
/othaffl 0 'No response'
42 'Interdenominational'
48 'Christian Churches and Churches of Christ'
50 'Reformed Episcopal Church'
52 'American Baptist'
53 'American Lutheran'
54 'Baptist'
56 'Church of Christ (Scientist)'
57 'Church of God'
59 'Church of the Nazarene'
61 'Christian Church (Disciples of Christ)'
65 'Friends'
67 'Letheran Church in American'
68 'Lutheran Church - Missouri Synod'
69 'Mennonite Church'
70 'Genreal Conference Mennonite Church'
71 'United Methodist'
74 'Churches of Christ'
75 'Southern Baptist'
76 'United Church of Christ'
79 'Other Protestant'
8 'Entry unknown'
82 'Reorganized Latter Day Saints Church'
88 'Undenominational'
9 'Entry unknown'
91 'Greek Orthodox'
93 'Unitarian Universalist'
94 'Latter Day Saints'
99 'Other'
/fopna 1 'Yes'
2 'No'
/saccr 1 'Yes'
2 'No'.

frequencies variables=
 stabbr fips obereg sector iclevel control affil hloffer fpoffer formrt resplast respstat peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr multype public1 public2 public3 public4 public5 public6 public7 public8 public9 private1 private2 private3 private4 private5 private6 private7 private8 protaffl othaffl level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 fopna fopna1 fopna2 accrd1 accrd2 accrd3 accrd4 saccr acc1 acc2 acc3 acc4 acc5 acc6 acc7 acc8 acc9 acc10 acc11 acc12 acc13 acc14 acc15 acc16 acc17 acc18 acc19 acc20 acc21 acc22 acc23 acc24 acc25 acc26 acc27 acc28 acc29 acc30 acc31 acc32 acc33 acc34 acc35 acc36 acc37 acc38 acc39 acc40 acc41 acc42 acc43 acc44 acc45 acc46 acc47 acc48 acc49 acc50 acc51 acc52 acc53 acc54 acc55 acc56 acc57 acc58 acc59 acc60 acc61 acc62 acc63 acc64 acc65 acc66 acc67 acc68 acc69 acc70 acc71 acc72 acc73 acc74 acc75 acc76 acc77 acc78 acc79 acc80 acc81 acc82 acc83 acc84 acc85 acc86 acc87 acc88 acc89 acc90 acc91 acc92 acc93 acc94 acc95 acc96.

descriptives variables=
 fice unitidx congdist
/stats=def.

save outfile='ic1987_a.sav' /compressed.

