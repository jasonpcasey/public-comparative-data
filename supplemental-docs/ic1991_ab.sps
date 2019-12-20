*** Created: 6/13/2004 6:46:43 AM                            ***.
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
/file = 'c:\dct\ic1991_ab.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
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
fopna f1
fopna1 f1
fopna2 f1
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
acc94 f1
acc107 f1
acc101 f1
acc110 f1.

variable labels
unitid 'Unique identification number for an institution'
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
level3 'Associates Degree'
level4 'Two but less than 4 years'
level5 'Bachelors Degree'
level6 'Postbaccalaureate Certificate'
level7 'Masters Degree'
level8 'Post-Masters Certificate'
level9 'Doctors Degree'
level10 'First-Professional Degree'
level11 'First-Professional Certificate (post-degree)'
level12 'Other award level'
fopna 'Programs not leading to a formal award'
fopna1 'FOPNA are undergraduate programs'
fopna2 'FOPNA are graduate programs'
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
acc9 'Business'
acc10 'Business'
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
acc107 'Chiropractic'
acc101 'Clinical Pastoral Education'
acc110 'New York State Board of Regents'.

value labels
/multype 1 'Yes'
2 'No'
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
40 'No listed affiliation for this code'
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
95 'Seventh Day Adventists'
96 'Church of God of Prophecy'
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
59 'Church of the Nazarene'
61 'Christian Church (Disciples of Christ)'
65 'Friends'
67 'Lutheran Church in America'
69 'Mennonite Church'
70 'General Conference Mennonite Church'
73 'Protestant Episcopal'
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
2 'No'.

frequencies variables=
 peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr multype public1 public2 public3 public4 public5 public6 public7 public8 public9 private1 private2 private3 private4 private5 private6 private7 private8 protaffl othaffl level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 fopna fopna1 fopna2 accrd1 accrd2 accrd3 accrd4 saccr acc1 acc102 acc2 acc5 acc3 acc4 acc6 acc99 acc7 acc8 acc9 acc10 acc12 acc13 acc11 acc14 acc15 acc16 acc17 acc97 acc18 acc108 acc19 acc20 acc21 acc22 acc23 acc24 acc25 acc78 acc28 acc29 acc30 acc31 acc32 acc33 acc35 acc34 acc36 acc37 acc38 acc39 acc41 acc40 acc42 acc26 acc46 acc43 acc44 acc45 acc27 acc47 acc48 acc51 acc49 acc50 acc52 acc54 acc53 acc55 acc56 acc57 acc58 acc59 acc60 acc61 acc62 acc63 acc64 acc65 acc66 acc67 acc68 acc69 acc70 acc71 acc96 acc95 acc103 acc72 acc73 acc74 acc75 acc100 acc76 acc77 acc104 acc79 acc80 acc81 acc109 acc82 acc83 acc84 acc105 acc106 acc85 acc86 acc87 acc88 acc89 acc93 acc90 acc91 acc92 acc94 acc107 acc101 acc110.

save outfile='ic1991_ab.sav' /compressed.

