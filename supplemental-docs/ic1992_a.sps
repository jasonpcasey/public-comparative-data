*** Created: 6/13/2004 6:29:01 AM                            ***.
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
/file = 'c:\dct\ic1992_a.csv'
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
hbcu a1
formrt a1
resplast a1
respstat a1
addr a60
zip a9
countynm a30
congdist f2
gentele a10
peo1istr a1
peo2istr a1
peo3istr a1
peo4istr a1
peo5istr a1
peo6istr a1
multype a1
postsec a1
public1 a1
public2 a1
public3 a1
public4 a1
public5 a1
public6 a1
public7 a1
public8 a1
public9 a1
private1 a1
private2 a1
private3 a1
private4 a1
private5 a1
private6 a1
private7 a1
private8 a1
protaffl a2
othaffl a2
level1 a1
level2 a1
level3 a1
level4 a1
level5 a1
level6 a1
level7 a1
level8 a1
level9 a1
level10 a1
level11 a1
level12 a1
leveloth a20
fopna a1
fopna1 a1
fopna2 a1
insttoyr a1
licensed a1
agenname a50
agenstrt a60
agenplce a20
agenst a2
agenzip a9
accrd1 a1
accrd2 a1
accrd3 a1
accrd4 a1
saccr a1
acc1 a1
acc102 a1
acc2 a1
acc5 a1
acc3 a1
acc4 a1
acc6 a1
acc99 a1
acc7 a1
acc8 a1
acc9 a1
acc10 a1
acc12 a1
acc13 a1
acc11 a1
acc14 a1
acc15 a1
acc16 a1
acc17 a1
acc97 a1
acc18 a1
acc108 a1
acc19 a1
acc20 a1
acc21 a1
acc22 a1
acc23 a1
acc24 a1
acc25 a1
acc78 a1
acc28 a1
acc29 a1
acc30 a1
acc31 a1
acc32 a1
acc33 a1
acc35 a1
acc26 a1
acc46 a1
acc43 a1
acc44 a1
acc45 a1
acc27 a1
acc47 a1
acc48 a1
acc51 a1
acc49 a1
acc50 a1
acc52 a1
acc54 a1
acc53 a1
acc55 a1
acc56 a1
acc57 a1
acc58 a1
acc59 a1
acc60 a1
acc61 a1
acc62 a1
acc63 a1
acc64 a1
acc65 a1
acc66 a1
acc96 a1
acc95 a1
acc103 a1
acc72 a1
acc73 a1
acc74 a1
acc75 a1
acc100 a1
acc76 a1
acc77 a1
acc104 a1
acc79 a1
acc80 a1
acc81 a1
acc109 a1
acc82 a1
acc83 a1
acc84 a1
acc105 a1
acc106 a1
acc85 a1
acc88 a1
acc89 a1
acc93 a1
acc90 a1
acc91 a1
acc92 a1
acc94 a1
acc107 a1
acc101 a1
acc110 a1
chfnm a20
chftitl a15
acc34 a1
acc36 a1
acc37 a1
acc38 a1
acc39 a1
acc41 a1
acc40 a1
acc42 a1
acc67 a1
acc71 a1
acc86 a1
acc87 a1
acc68 a1
acc69 a1
acc70 a1.

variable labels
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
city 'City location of institution'
stabbr 'Post office state abbreviation code'
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
hbcu 'Historically Black college or university'
formrt 'Survey form IC1, IC2, IC3, or IC-Add'
resplast 'Respondent status last year'
respstat 'Respondent status this year'
addr 'Street address or post office box'
zip 'ZIP + four'
countynm 'County name'
congdist 'Congressional district'
gentele 'General information telephone number'
peo1istr 'Types of educational offerings- occupational'
peo2istr 'Types of educational offerings- academic'
peo3istr 'Types of educational offerings- continuing professional'
peo4istr 'Types of educational offerings- recreational or avocational'
peo5istr 'Types of educational offerings- adult basic, remedial, or high school equivalency'
peo6istr 'Types of educational offerings- secondary (high school)'
multype 'Administrative unit only (entity is a central, system, or coporate office)'
postsec 'Entity surveyed is a postsecondary institution'
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
level1 'Level of offering- Less than one year'
level2 'Level of offering- More than one but less than two years'
level3 'Level of offering- Associate^s Degree'
level4 'Level of offering- Two but less than four years'
level5 'Level of offering- Bachelor^s Degree'
level6 'Level of offering- Postbaccalaureate Certificate'
level7 'Level of offering- Master^s Degree'
level8 'Level of offering- Post-Masters Certificate'
level9 'Level of offering- Doctor^s Degree'
level10 'Level of offering- First-Professional Degree'
level11 'Level of offering- First-Professional Certificate (post-degree)'
level12 'Level of offering- Other award level'
leveloth 'Level of offering- Other award level specified'
fopna 'Programs not leading to a formal award'
fopna1 'FOPNA are undergraduate programs'
fopna2 'FOPNA are graduate programs'
insttoyr 'In business two years'
licensed 'Institution is licensed'
agenname 'Licensing agency^s name'
agenstrt 'Licensing agency^s address'
agenplce 'Licensing agency^s city'
agenst 'Licensing agency^s state'
agenzip 'Licensing agency^s zip code'
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
acc9 'Business  (BUS)'
acc10 'Business  (BUSA)'
acc12 'Marriage and Family Therapy, Clinical'
acc13 'Marriage and Family Therapy, Graduate'
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
acc35 'Medical Laboratory Technician, Certificate'
acc26 'Physician Assistant'
acc46 'Radiation Therapy Technologist'
acc43 'Radiographer'
acc44 'Respiratory Therapist'
acc45 'Respiratory Therapist Technician'
acc27 'Specialist in Blood Bank Technology'
acc47 'Surgeon Assistant'
acc48 'Surgical Technologist'
acc51 'Optometry, Technician programs'
acc49 'Optometry, Professional degree programs'
acc50 'Optometry, Residency programs'
acc52 'Osteopathic Medicine'
acc54 'Physical Therapy, Programs assistant'
acc53 'Physical Therapy, Professional programs'
acc55 'Podiatry'
acc56 'Clinical Psychology'
acc57 'Counseling Psychology'
acc58 'Professional Psychology, Predoctoral internship'
acc59 'Professional/Scientific Psychology, Doctoral programs'
acc60 'School Psychology'
acc61 'Landscape Architecture'
acc62 'Audiology'
acc63 'Speech-Language Pathology'
acc64 'Veterinary Medicine'
acc65 'Veterinary Medicine'
acc66 'Clinical Pastoral Education'
acc96 'Opticianry, 1-year programs'
acc95 'Opticianry, 2-year programs'
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
acc84 'Music, Baccalaureate and graduate degree programs'
acc105 'Music, Junior college programs'
acc106 'Music, Nondegree programs'
acc85 'Theatre'
acc88 'Teacher Education'
acc89 'Home Study Education'
acc93 'Nursing, Practical nursing programs'
acc90 'Nursing, Associate degree programs'
acc91 'Nursing, Diploma programs'
acc92 'Nursing, Baccalaureate and higher degree programs'
acc94 'Forestry'
acc107 'Chiropractic'
acc101 'Clinical Pastoral Education'
acc110 'New York State Board of Regents'
chfnm 'Name of chief administrator'
chftitl 'Title of chief administrator'
acc34 'Medical Laboratory Technician, Associate'
acc36 'Medical Record Administrator'
acc37 'Medical Record Technician'
acc38 'Medical Technologist'
acc39 'Nuclear Medicine Technologist'
acc41 'Occupational Therapist'
acc40 'Ophthalmic Medical Assistant'
acc42 'Perfusionist'
acc67 'Rabbinical and Talmudic Education'
acc71 'Theology'
acc86 'Occupational, Trade and technical education degree programs'
acc87 'Occupational, Trade and technical education nondegree programs'
acc68 'Business - Private junior colleges'
acc69 'Business - Private senior colleges'
acc70 'Business - Postsecondary schools'.

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
/rstatus 1 'Respondent'
3 'Nonrespondent, not imputed'
4 'Nonrespondent, imputed'
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
/control 0 'Not a valid response'
1 'Public'
2 'Private nonprofit'
3 'Private for-profit'
/affil 1 'Public'
2 'Private for profit'
3 'Private nonprofit, no religious affiliation'
4 'Private nonprofit, Catholic'
5 'Private nonprofit, Jewish'
6 'Private nonprofit, Protestant'
7 'Private nonprofit, Other religious affiliation'
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
'4' 'Form IC4'
/resplast '1' 'Respondent'
'3' 'Nonrespondent, not imputed'
/respstat '1' 'Respondent'
'3' 'Nonrespondent, not imputed'
/multype '1' 'Yes'
'2' 'No'
/postsec '1' 'Yes'
'2' 'No'
/protaffl '22' 'American Evangelical Lutheran Church'
'27' 'Assemblies of God Church'
'28' 'Brethren Church'
'29' 'Brethren in Christ Church'
'30' 'Roman Catholic'
'33' 'Wisconsin Evangelical Lutheran Synod'
'34' 'Christ and Missionary Alliance Church'
'35' 'Christian Reformed Church'
'36' 'Evangelical Congregational Church'
'37' 'Evangelical Covenant Church of America'
'38' 'Evangelical Free Church of America'
'39' 'Evangelical Lutheran Church'
'40' 'United Pentecostal Church International'
'41' 'Free Will Baptist Church'
'42' 'Interdenominational'
'43' 'Mennonite Brethren Church'
'44' 'Moravian Church'
'45' 'North American Baptist'
'46' 'American Lutheran and Lutheran Church in America'
'47' 'Pentecostal Holiness Church'
'48' 'Christian Churches and Churches of Christ'
'49' 'Reformed Church in America'
'50' 'Reformed Episcopal Church'
'51' 'African Methodist Episcopal'
'52' 'American Baptist'
'53' 'American Lutheran'
'54' 'Baptist'
'55' 'Christian Methodist Episcopal'
'56' 'Church of Christ (Scientist)'
'57' 'Church of God'
'58' 'Church of the Brethren'
'59' 'Church of the Nazarene'
'60' 'Cumberland Presbyterian'
'61' 'Christian Church (Disciples of Christ)'
'64' 'Free Methodist'
'65' 'Friends'
'66' 'Presbyterian Church (USA)'
'67' 'Lutheran Church in America'
'68' 'Lutheran Church - Missouri Synod'
'69' 'Mennonite Church'
'70' 'General Conference Mennonite Church'
'71' 'United Methodist'
'73' 'Protestant Episcopal'
'74' 'Churches of Christ'
'75' 'Southern Baptist'
'76' 'United Church of Christ'
'78' 'Multiple Protestant Denominations'
'79' 'Other Protestant'
'80' 'Jewish'
'81' 'Reformed Presbyterian Church'
'82' 'Reorganized Latter Day Saints Church'
'84' 'United Brethren Church'
'87' 'Missionary Church Inc'
'88' 'Undenominational'
'89' 'Wesleyan'
'92' 'Russian Orthodox'
'95' 'Seventh Day Adventists'
'96' 'Church of God of Prophecy'
'97' 'The Presbyterian Church in America'
'98' 'Salvation Army'
'99' 'Other'
/othaffl '24' 'American Methodist Episcopal Zion Church'
'39' 'Evangelical Lutheran Church'
'42' 'Interdenominational'
'47' 'Pentecostal Holiness Church'
'48' 'Christian Churches and Churches of Christ'
'50' 'Reformed Episcopal Church'
'52' 'American Baptist'
'54' 'Baptist'
'56' 'Church of Christ (Scientist)'
'61' 'Christian Church (Disciples of Christ)'
'65' 'Friends'
'69' 'Mennonite Church'
'71' 'United Methodist'
'73' 'Protestant Episcopal'
'74' 'Churches of Christ'
'75' 'Southern Baptist'
'76' 'United Church of Christ'
'82' 'Reorganized Latter Day Saints Church'
'88' 'Undenominational'
'91' 'Greek Orthodox'
'92' 'Russian Orthodox'
'93' 'Unitarian Universalist'
'94' 'Latter Day Saints'
'95' 'Seventh Day Adventists'
'99' 'Other'
/fopna '1' 'Yes'
'2' 'No'
/insttoyr '1' 'Yes'
'2' 'No'
'3' 'Dont know'
/saccr '1' 'Yes'
'2' 'No'.

frequencies variables=
 stabbr fips obereg rstatus sector iclevel control affil hloffer fpoffer hbcu formrt resplast respstat peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr multype postsec public1 public2 public3 public4 public5 public6 public7 public8 public9 private1 private2 private3 private4 private5 private6 private7 private8 protaffl othaffl level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 fopna fopna1 fopna2 insttoyr licensed agenst accrd1 accrd2 accrd3 accrd4 saccr acc1 acc102 acc2 acc5 acc3 acc4 acc6 acc99 acc7 acc8 acc9 acc10 acc12 acc13 acc11 acc14 acc15 acc16 acc17 acc97 acc18 acc108 acc19 acc20 acc21 acc22 acc23 acc24 acc25 acc78 acc28 acc29 acc30 acc31 acc32 acc33 acc35 acc26 acc46 acc43 acc44 acc45 acc27 acc47 acc48 acc51 acc49 acc50 acc52 acc54 acc53 acc55 acc56 acc57 acc58 acc59 acc60 acc61 acc62 acc63 acc64 acc65 acc66 acc96 acc95 acc103 acc72 acc73 acc74 acc75 acc100 acc76 acc77 acc104 acc79 acc80 acc81 acc109 acc82 acc83 acc84 acc105 acc106 acc85 acc88 acc89 acc93 acc90 acc91 acc92 acc94 acc107 acc101 acc110 acc34 acc36 acc37 acc38 acc39 acc41 acc40 acc42 acc67 acc71 acc86 acc87 acc68 acc69 acc70.

descriptives variables=
 fice unitidx congdist
/stats=def.

save outfile='ic1992_a.sav' /compressed.

