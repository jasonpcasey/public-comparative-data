*** Created: 6/13/2004 8:24:42 AM                            ***.
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
/file = 'c:\dct\ic1984.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
fice f6
pubst f2
pbalph f4
system a1
sequen a2
status a1
instnm a50
addr a60
city a20
stabbr a2
zip a9
gentele a10
cnty f3
congdist f2
countynm a30
affil f2
calsys f1
hloffer f2
procc f1
pr2yr f1
prlib f1
prtea f1
prprof f1
geost f2
oereg f1
obereg f2
race a1
control f2
type f1
iclevel f2
sex f1
lgrnt f1
cncesc a3
sum2yr f1
sum4yr f1
sumpos f1
eve2yr f1
eve4yr f1
evepos f1
excntl f1
citysi f1
admreq f2
estmo f6
estyr f6
fwrkmoyr a6
fdgrmoyr a6
prtfu f5
pbtfui f5
pbtfuo f5
prtfg f5
pbtfgi f5
pbtfgo f5
roomamt f5
boardamt f5
period f3
stcnty f4
acc1 f1
acc10 f1
acc11 f1
acc12 f1
acc13 f1
acc14 f1
acc15 f1
acc16 f1
acc17 f1
acc18 f1
acc19 f1
acc2 f1
acc20 f1
acc21 f1
acc22 f1
acc23 f1
acc24 f1
acc25 f1
acc27 f1
acc28 f1
acc29 f1
acc3 f1
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
acc4 f1
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
acc5 f1
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
acc6 f1
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
acc7 f1
acc71 f1
acc72 f1
acc73 f1
acc74 f1
acc75 f1
acc76 f1
acc77 f1
acc78 f1
acc8 f1
acc81 f1
acc82 f1
acc83 f1
acc84 f1
acc85 f1
acc86 f1
acc88 f1
acc89 f1
acc9 f1
acc90 f1
acc91 f1
acc92 f1
acc93 f1
acc94 f1
acc_apcp f1
acc_chem f1
acc_nurs f1
acc_ort f1
regaccrd f2.

variable labels
unitid 'Unique identification number for an institution'
fice 'Fice code'
pubst 'Oe state code'
pbalph 'Number to sort file into directory seq'
system 'Code common to all schools in a system or multi-campus institution'
sequen 'Sequence code within a system or multi-campus institution'
status 'Type of entry'
instnm 'Institution name'
addr 'Street address'
city 'City name'
stabbr 'State abbreviation per post office specs'
zip 'Zip code'
gentele 'Ten digit telephone number'
cnty 'Fips county code'
congdist 'Congressional district'
countynm 'County name'
affil 'Affiliation of institution'
calsys 'Calendar system'
hloffer 'Highest level of offering'
procc 'Term occupational prog below bachelor^s'
pr2yr '2-year prog creditable toward bachelor^s'
prlib 'Liberal arts and general programs'
prtea 'Teacher preparatory program'
prprof 'Professional program'
geost 'Oe st code of actual location'
oereg 'Academic regions'
obereg 'Dept of com obe regions'
race 'Race of student body'
control 'Type of control'
type 'Type of institution'
iclevel 'Level of institution'
sex 'Sex of student body'
lgrnt 'Land grant code'
cncesc 'Current nces code'
sum2yr 'Summer session - two year program'
sum4yr 'Summer session - four year program'
sumpos 'Summer session - post-baccalaureate'
eve2yr 'Evening session - two year program'
eve4yr 'Evening session - four year program'
evepos 'Evening session - post-baccalaureate'
excntl 'Control - more detail than cntl84 var'
citysi 'City size'
admreq 'Admission requirements'
estmo 'Month established'
estyr 'Year established'
fwrkmoyr 'Month and year first work offered'
fdgrmoyr 'Month and year first degree offered'
prtfu 'Undergrad tuition for private'
pbtfui 'Undergrad tuition public - in state'
pbtfuo 'Undergrad tuit for public - out of state'
prtfg 'Grad tuition for private'
pbtfgi 'Grad tuition for public - in state'
pbtfgo 'Grad tuition for public - out of state'
roomamt 'Whole dollar room charges'
boardamt 'Whole dollar board charges'
period 'Number of days coverd by room & board'
stcnty 'State and county code combination'
acc1 'Engineering'
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
acc2 'Engineering Technology'
acc20 'Dental Hygiene'
acc21 'Dental Technology'
acc22 'Dentistry'
acc23 'Dietetics - Coordinated undergraduate programs'
acc24 'Dietetics - Postbaccalaureate internship programs'
acc25 'Librarianship'
acc27 'Specialist in Blood Bank Technology'
acc28 'Cytotechnologist'
acc29 'Diagnostic Medical Sonographer'
acc3 'Medical Assistant Education'
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
acc4 'Medical Laboratory Technician Education'
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
acc5 'Applied Health Education'
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
acc6 'Health Services Administration'
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
acc7 'Journalism and Mass Communications'
acc71 'Theology'
acc72 'Chiropractic'
acc73 'Community Health Education'
acc74 'Community Health/Preventive Medicine'
acc75 'Public Health'
acc76 'Social Work'
acc77 'Interior Design'
acc78 'Medicine'
acc8 'Microbiology'
acc81 'Architecture'
acc82 'Art'
acc83 'Dance'
acc84 'Music Baccalaureate and graduate degree programs'
acc85 'Theatre'
acc86 'Occupational, Trade and Technical Education - Private degree-granting institutions'
acc88 'Teacher Education'
acc89 'Home Study Education'
acc9 'Business (BUS)'
acc90 'Nursing - Associate degree programs'
acc91 'Nursing - Diploma programs'
acc92 'Nursing - Baccalaureate and higher degree programs'
acc93 'Nursing - Practical nursing programs'
acc94 'Forestry'
acc_apcp 'Assistant to the Primary Care Physician Education'
acc_chem 'American Chemical Society'
acc_nurs 'Nursing - System-wide - University of Texas system only)'
acc_ort 'Operating Room Technician'
regaccrd 'Regional accreditations'.

value labels
/pubst 10 'Alabama'
11 'Alaska'
12 'Arizona'
13 'Arkansas'
14 'California'
15 'Colorado'
16 'Connecticut'
17 'Delaware'
18 'District of Columbia'
19 'Florida'
20 'Georgia'
21 'Hawaii'
22 'Idaho'
23 'Illinois'
24 'Indiana'
25 'Iowa'
26 'Kansas'
27 'Kentucky'
28 'Louisiana'
29 'Maine'
30 'Maryland'
31 'Massachusetts'
32 'Michigan'
33 'Minnesota'
34 'Mississippi'
35 'Missouri'
36 'Montana'
37 'Nebraska'
38 'Nevada'
39 'New Hampshire'
40 'New Jersey'
41 'New Mexico'
42 'New York'
43 'North Carolina'
44 'North Dakota'
45 'Ohio'
46 'Oklahoma'
47 'Oregon'
48 'Pennsylvania'
49 'Rhode Island'
50 'South Carolina'
51 'South Dakota'
52 'Tennessee'
53 'Texas'
54 'Utah'
55 'Vermont'
56 'Virginia'
57 'Washington'
58 'West Virginia'
59 'Wisconsin'
60 'Wyoming'
61 'US Service Schools'
62 'American Samoa'
64 'Guam'
65 'Northern Marianas'
66 'Puerto Rico'
67 'Trust Terr Pac Is'
68 'Virgin Islands'
/system '5' 'Entry unknown'
'A' 'First'
'B' 'Second'
'C' 'Third'
'D' 'Fourth'
'E' 'Fifth'
'F' 'Sixth'
'G' 'Seventh'
'H' 'Eighth'
'I' 'Ninth'
'J' 'Tenth'
'K' 'Eleventh'
'L' 'Twelfth'
'M' 'Thirteenth'
'N' 'Fourteenth'
'P' 'Sixteenth'
'Q' 'Seventeenth'
'R' 'Eighteenth'
'S' 'Nineteenth'
'T' 'Twentieth'
'W' 'Twenty-third'
'X' 'Twenty-fourth'
/sequen '#' 'Entry unknown'
'00' '00'
'01' '01'
'02' '02'
'03' '03'
'04' '04'
'05' '05'
'06' '06'
'07' '07'
'08' '08'
'09' '09'
'10' '10'
'11' '11'
'12' '12'
'13' '13'
'14' '14'
'15' '15'
'16' '16'
'17' '17'
'18' '18'
'19' '19'
'20' '20'
'21' '21'
'22' '22'
'23' '23'
'24' '24'
'25' '25'
'26' '26'
'27' '27'
'28' '28'
'29' '29'
'30' '30'
'31' '31'
'32' '32'
'33' '33'
'36' '36'
'37' '37'
'38' '38'
'39' '39'
'41' '41'
'42' '42'
'43' '43'
'44' '44'
'45' '45'
'46' '46'
'47' '47'
'48' '48'
'49' '49'
'50' '50'
'52' '52'
'53' '53'
'54' '54'
'56' '56'
'57' '57'
'58' '58'
'59' '59'
'61' '61'
'62' '62'
'64' '64'
'65' '65'
'66' '66'
'67' '67'
'68' '68'
'69' '69'
'70' '70'
'71' '71'
'72' '72'
'73' '73'
'90' '90'
'91' '91'
'92' '92'
'93' '93'
'98' '98'
'99' '99'
/status '0' 'Joint library'
'2' 'Multicampus institution All campus'
'4' 'Multicampus institution Central office'
'5' 'Individual institution'
'6' 'Multicampus institution Having a main campus Main campus'
'7' 'Multicampus institution Having a main campus Branch campus'
'8' 'Multicampus institution Not having a main campus Designated main campus'
'9' 'Multicampus institution Not having a main campus Other campus'
'A' 'System All insitution'
'B' 'System All campus'
'C' 'System System office'
'E' 'System Institution'
'F' 'System Main campus'
'G' 'System Branch campus'
'X' 'Non-current Declared ineligible this year'
'Y' 'Non-current Previously ineligible'
/stabbr 'AK' 'Alaska'
'AL' 'Alabama'
'AQ' 'Not a valid code'
'AR' 'Arkansas'
'AZ' 'Arizona'
'CA' 'California'
'CM' 'Not a valid code'
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
'M' 'Not a valid code'
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
'TQ' 'Not a valid code'
'TX' 'Texas'
'UT' 'Utah'
'VA' 'Virginia'
'VI' 'Virgin Islands'
'VT' 'Vermont'
'WA' 'Washington'
'WI' 'Wisconsin'
'WV' 'West Virginia'
'WY' 'Wyoming'
/affil 0 'Not a valid code'
11 'Federal'
12 'State'
13 'Local'
14 'State/Local'
15 'State related'
21 'Independent non-profit'
24 'African Methodist Episcopal Zion Church'
25 'Organized as profit making'
26 'Advent Christian Church'
27 'Assembles of God Church'
28 'Brethren Church'
29 'Brethren in Christ Church'
30 'Roman Catholic'
32 'Church of New Jerusalem'
33 'Wisconsin Evangelical Lutheran Synod'
34 'Christian and Missionary Alliance Church'
35 'Christian Reformed Church'
36 'Evangelical Congregational Church'
37 'Evangelical Convenant Church of America'
38 'Evangelical Free Church of America'
39 'Evangelical Lutheran Church'
41 'Free Will Baptist Church'
42 'Interdenominational'
43 'Mennonite Brethren Church'
44 'Moravian Church'
45 'North American Baptist'
46 'American Lutheran and Lutheran Church in America'
47 'Pentecostal Holiness Church'
48 'Christian Churches and Churches of Christ'
49 'Reformed Church in America'
51 'African Methodist Episcopal'
52 'American Baptist'
53 'American Lutheran'
54 'Baptist'
55 'Christian Methodist Episcopal'
57 'Church of God'
58 'Church of the Brethren'
59 'Church of Nazarene'
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
80 'Jewish'
81 'Reformed Presbyterian Church'
82 'Reorganized Latter-Day Saints Church'
84 'United Brethren Church'
87 'Missionary Church Inc (Formerly United Miss Church)'
89 'Wesleyan Church'
91 'Greek Orthodox'
92 'Russian Orthodox'
93 'Unitarian Unversalist'
94 'Later-Day Saints'
95 'Seventh-Day Adventists'
96 'Church of God of Prophecy'
97 'The Presbyterian Church in America'
99 'Other'
/calsys 1 'Semester'
2 'Quarter'
3 'Trimester'
4 '4/1/4'
5 'Other'
/hloffer 10 'Graduate non-degree granting'
2 'Less than 1 year'
3 '1 but less than 4 years'
4 '4 or 5 year Baccalaureate'
5 'First-professional degree'
6 'Masters'
7 'Beyond Masters but less than Doctorate'
8 'Doctorate'
9 'Undergraduate non-degree granting'
/procc 0 'Program not offered'
1 'Program offered'
/pr2yr 0 'Program not offered'
1 'Program offered'
7 'Entry unknown'
/prlib 0 'Program not offered'
1 'Program offered'
2 'Entry unknown'
/prtea 0 'Program not offered'
1 'Program offered'
2 'Entry unknown'
/prprof 0 'Program not offered'
1 'Program offered'
5 'Entry unknown'
/geost 10 'Alabama'
11 'Alaska'
12 'Arizona'
13 'Arkansas'
14 'California'
15 'Colorado'
16 'Connecticut'
17 'Delaware'
18 'District of Columbia'
19 'Florida'
20 'Georgia'
21 'Hawaii'
22 'Idaho'
23 'Illinois'
24 'Indiana'
25 'Iowa'
26 'Kansas'
27 'Kentucky'
28 'Louisiana'
29 'Maine'
30 'Maryland'
31 'Massachusetts'
32 'Michigan'
33 'Minnesota'
34 'Mississippi'
35 'Missouri'
36 'Montana'
37 'Nebraska'
38 'Nevada'
39 'New Hampshire'
40 'New Jersey'
41 'New Mexico'
42 'New York'
43 'North Carolina'
44 'North Dakota'
45 'Ohio'
46 'Oklahoma'
47 'Oregon'
48 'Pennsylvania'
49 'Rhode Island'
50 'South Carolina'
51 'South Dakota'
52 'Tennessee'
53 'Texas'
54 'Utah'
55 'Vermont'
56 'Virginia'
57 'Washington'
58 'West Virginia'
59 'Wisconsin'
60 'Wyoming'
62 'American Samoa'
64 'Guam'
65 'Northern Marianas'
66 'Puerto Rico'
67 'Trust Terr Pac Is'
68 'Virginia Islands'
/oereg 0 'U.S. service schools'
1 'New England-CT ME MA NH RI VT'
2 'Mid East-DE DC MD NJ NY PA'
3 'Great Lakes-IL IN MI OH WI'
4 'Plains-IA KS MN MO NE ND SD'
5 'Southeast-AL AR FL GA KY LA MS NC SC TN VA WV'
7 'Rocky Mountains-CO ID MT UT WY'
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
/race '1' 'Predominent group is 50% or greater of total enrollement Black non-Hispanic'
'2' 'Predominent group is 50% or greater of total enrollement American Indian or Alaskan Native'
'3' 'Predominent group is 50% or greater of total enrollement Asian or Pacific Islander'
'4' 'Predominent group is 50% or greater of total enrollement Hispanic'
'5' 'Predominent group is 50% or greater of total enrollement White non-Hispanic (other)'
'6' 'Predominent group is 50% or greater of total enrollement Non-resident alien'
'7' 'Predominent group is 50% or greater of total enrollement System and central offices'
'9' 'Predominent group is 50% or greater of total enrollement Not classified - New insititution for which data is not yet available'
'A' 'Predominent group is largest single group but < 50% of total enrollment Black non-Hispanic'
'B' 'Predominent group is largest single group but < 50% of total enrollment American Indian or Alaskan Native'
'C' 'Predominent group is largest single group but < 50% of total enrollment Asian or Pacific Islander'
'D' 'Predominent group is largest single group but < 50% of total enrollment Hispanic'
'E' 'Predominent group is largest single group but < 50% of total enrollment White non-Hispanic (other)'
'F' 'Predominent group is largest single group but < 50% of total enrollment Non-resident alien'
'Z' 'Predominent group is largest single group but < 50% of total enrollment Not classified - Insititution did not furnish data'
/control 0 'Combination public and private'
1 'Public only'
2 'Private only'
/type 1 'University (must offer at least two first professional programs)'
2 'Other four year'
3 'Two year'
4 'Other 4-year branch campus of a multi-campus university'
5 '2-year branch campus of a multi-campus university'
6 '2-year branch campus of other 4-year multi-campus inst'
7 'None of the above'
/iclevel 1 '4 or more years (Baccalaureate or higher degree)'
2 'At least 2 but less than 4 years (below the Baccalaureate)'
7 'None of the above'
/sex 1 'Male'
2 'Female'
3 'Coed'
4 'Coordinate'
/lgrnt 0 'Non-land grant institution'
1 'Land grant institution'
2 'Member of NASULGC (National Association of State Universities and Land Grant Colleges)'
/cncesc 'A01' 'Doctoral-level institution without medical school'
'A02' 'Doctoral-level institution with medical school'
'B01' 'Comprehensive institutions without medical school'
'B02' 'Comprehensive institutions with medical school'
'C01' 'General Baccalaureate institutions'
'D01' 'Specialized/school of philosophy, religion and theology'
'D02' 'Specialized/medical schools'
'D03' 'Specialized/other health institutions'
'D04' 'Specialized/engineering schools'
'D05' 'Specialized/business schools'
'D06' 'Specialized/visual and performing arts schools'
'D07' 'Specialized/law schools'
'D08' 'Specialized/education schools'
'D09' 'U.S. service schools'
'D10' 'Other specialized schools'
'D11' 'Bachelors or higher institutions newly admitted to HEGIS'
'D12' 'Specialized/non-degree granting institutions'
'E01' 'Multiprogram two-year institutions'
'E04' 'Single program two-year institutions'
'E05' 'Two-year institutions newly admitted to HEGIS'
/sum2yr 0 'Course not offered'
1 'Course offered'
/sum4yr 0 'Course not offered'
1 'Course offered'
2 'Entry unknown'
/sumpos 0 'Course not offered'
1 'Course offered'
/eve2yr 0 'Course not offered'
1 'Course offered'
6 'Entry unknown'
8 'Entry unknown'
/eve4yr 0 'Course not offered'
1 'Course offered'
/evepos 0 'Course not offered'
1 'Course offered'
6 'Entry unknown'
/excntl 1 'Publicly controlled'
2 'Privately controlled'
3 'Religious affiliation'
4 'Not a valid code'
/citysi 1 'Outside any SMA'
2 'Anywhere within an SMA of < 250,000'
3 'Anywhere within an SMA of 250,000 - 499,999'
4 'Anywhere within an SMA of 500,000 - 999,999'
5 'In SMA of 1,000,000 - 1,999,999 outside center city'
6 'In SMA of 1,000,000 - 1,999,999 within center city'
7 'In SMA or SCSA of 2,000,000 or more outside center'
8 'In SMA or SCSA of 2,000,000 or more within center city'
/admreq 1 'Only the ability to profit from attendance'
2 'High school graduation or recognized equivalent'
3 'High school graduation plus an indication of superior academic aptitude'
4 'Two year college completion'
5 'Four year college completion'
6 'Other any admission < 2 year college completion'
7 'Other requires 2 years college completion but < 4 years'
8 'Other requires 4 years or more'
/estmo 0 'Entry unknown'
1 'January'
10 'October'
11 'November'
12 'December'
2 'February'
3 'March'
36 'Entry unknown'
4 'April'
5 'May'
6 'June'
7 'July'
8 'August'
9 'September'
/regaccrd 1 'M - (MSACHE) Middle States Association of Colleges and Schools, Commission on Higher Education'
11 'WC - (WASCSR) Western Association of Schools and Colleges, Accrediting Commission for Senior Colleges and Universities'
20 'SV - Southern Association of Colleges and Schools, Commission on Occupational Education Institutions'
21 'NY -  New York State Board of Regents'
3 'EH - (NEASCHE) New England Association of Schools and Colleges Commission on Institutions of Higher Education'
4 'EV - (NEASCTC) New England Association of Schools and Colleges Commission on Technical and Career Institutions'
5 'NH - (NCACHE) North Central Association of Colleges and Schools, Commission on Institutions of Higher Education'
7 'NW - (NWASC) Northwest Association of Schools and Colleges Commission on Colleges'
8 'SC - (SACSCC) Southern Association of Colleges and Schools, Commission on Colleges'
9 'WJ - (WASCJC) Western Association of Schools and Colleges, Accrediting Commission for Community and Junior Colleges'
99 '31C - Multiple regional accreditations'.

frequencies variables=
 pubst pbalph system sequen status stabbr cnty affil calsys hloffer procc pr2yr prlib prtea prprof geost oereg obereg race control type iclevel sex lgrnt cncesc sum2yr sum4yr sumpos eve2yr eve4yr evepos excntl citysi admreq estmo estyr fwrkmoyr fdgrmoyr acc1 acc10 acc11 acc12 acc13 acc14 acc15 acc16 acc17 acc18 acc19 acc2 acc20 acc21 acc22 acc23 acc24 acc25 acc27 acc28 acc29 acc3 acc30 acc31 acc32 acc33 acc34 acc35 acc36 acc37 acc38 acc39 acc4 acc40 acc41 acc42 acc43 acc44 acc45 acc46 acc47 acc48 acc49 acc5 acc50 acc51 acc52 acc53 acc54 acc55 acc56 acc57 acc58 acc59 acc6 acc60 acc61 acc62 acc63 acc64 acc65 acc66 acc67 acc68 acc69 acc7 acc71 acc72 acc73 acc74 acc75 acc76 acc77 acc78 acc8 acc81 acc82 acc83 acc84 acc85 acc86 acc88 acc89 acc9 acc90 acc91 acc92 acc93 acc94 acc_apcp acc_chem acc_nurs acc_ort regaccrd.

descriptives variables=
 fice congdist prtfu pbtfui pbtfuo prtfg pbtfgi pbtfgo roomamt boardamt period stcnty
/stats=def.

save outfile='ic1984.sav' /compressed.

