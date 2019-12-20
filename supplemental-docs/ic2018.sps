*** Created      June 4, 2019                                ***;
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

get data /type = txt
/file = 'E:\Fall\\ic2018.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
peo1istr  f2 
peo2istr  f2 
peo3istr  f2 
peo4istr  f2 
peo5istr  f2 
peo6istr  f2 
cntlaffi  f2 
pubprime  f2 
pubsecon  f2 
relaffil  f2 
level1    f2 
level2    f2 
level3    f2 
level4    f2 
level5    f2 
level6    f2 
level7    f2 
level8    f2 
level12   f2 
level17   f2 
level18   f2 
level19   f2 
calsys    f2 
ft_ug     f2 
ft_ftug   f2 
ftgdnidp  f2 
pt_ug     f2 
pt_ftug   f2 
ptgdnidp  f2 
docpp     f2 
docppsp   f2 
openadmp  f2 
vet1      f2 
vet2      f2 
vet3      f2 
vet4      f2 
vet5      f2 
vet9      f2 
credits1  f2 
credits2  f2 
credits3  f2 
credits4  f2 
slo5      f2 
slo51     f2 
slo52     f2 
slo53     f2 
slo6      f2 
slo7      f2 
slo8      f2 
slo81     f2 
slo82     f2 
slo83     f2 
slo9      f2 
yrscoll   f2 
stusrv1   f2 
stusrv2   f2 
stusrv3   f2 
stusrv4   f2 
stusrv8   f2 
stusrv9   f2 
libres1   f2 
libres2   f2 
libres3   f2 
libres4   f2 
libres5   f2 
libres6   f2 
libres9   f2 
tuitpl    f2 
tuitpl1   f2 
tuitpl2   f2 
tuitpl3   f2 
tuitpl4   f2 
dstnugc   f2 
dstnugp   f2 
dstnugn   f2 
dstngc    f2 
dstngp    f2 
dstngn    f2 
distcrs   f2 
distpgs   f2 
dstnced1  f2 
dstnced2  f2 
dstnced3  f2 
distnced  f2 
disab     f2 
xdisabpc a1
disabpct  f6 
alloncam  f2 
tuitvary  f2 
room      f2 
xroomcap a1
roomcap   f5 
board     f2 
xmealswk a1
mealswk   f2 
xroomamt a1
roomamt   f5 
xbordamt a1
boardamt  f5 
xrmbdamt a1
rmbrdamt  f5 
xappfeeu a1
applfeeu  f3 
xappfeeg a1
applfeeg  f3 
athassoc  f2 
assoc1    f2 
assoc2    f2 
assoc3    f2 
assoc4    f2 
assoc5    f2 
assoc6    f2 
sport1    f2 
confno1   f3 
sport2    f2 
confno2   f3 
sport3    f2 
confno3   f3 
sport4    f2 
confno4   f3.

variable labels
unitid   'Unique identification number of the institution' 
peo1istr 'Occupational' 
peo2istr 'Academic' 
peo3istr 'Continuing professional' 
peo4istr 'Recreational or avocational' 
peo5istr 'Adult basic remedial or high school equivalent' 
peo6istr 'Secondary (high school)' 
cntlaffi 'Institutional control or affiliation' 
pubprime 'Primary public control' 
pubsecon 'Secondary public control' 
relaffil 'Religious affiliation' 
level1   'Less than one year certificate' 
level2   'One but less than two years certificate' 
level3   'Associate^s degree' 
level4   'Two but less than 4 years certificate' 
level5   'Bachelor^s degree' 
level6   'Postbaccalaureate certificate' 
level7   'Master^s degree' 
level8   'Post-master^s certificate' 
level12  'Other degree' 
level17  'Doctor^s degree - research/scholarship' 
level18  'Doctor^s degree - professional practice' 
level19  'Doctor^s degree - other' 
calsys   'Calendar system' 
ft_ug    'Full-time undergraduate students are enrolled' 
ft_ftug  'Full time first-time degree/certificate-seeking undergraduate students enrolled' 
ftgdnidp 'Full-time graduate (not including doctor^s professional practice) students are enrolled' 
pt_ug    'Part-time undergraduate students are enrolled' 
pt_ftug  'Part time first-time degree/certificate-seeking undergraduate students enrolled' 
ptgdnidp 'Part-time graduate (not including doctor^s professional practice) students are enrolled' 
docpp    'Doctor^s professional practice students are enrolled' 
docppsp  'Doctor^s professional practice students are enrolled in programs formerly designated as first-professional' 
openadmp 'Open admission policy' 
vet1     'Yellow Ribbon Program (officially known as Post-9/11 GI Bill, Yellow Ribbon Program)' 
vet2     'Credit for military training' 
vet3     'Dedicated point of contact for support services for veterans, military servicemembers, and their families' 
vet4     'Recognized student veteran organization' 
vet5     'Member of Servicemembers Opportunity Colleges' 
vet9     'Services  and programs are not available to veterans, military servicemembers, or their families?' 
credits1 'Dual credit' 
credits2 'Credit for life experiences' 
credits3 'Advanced placement (AP) credits' 
credits4 'Institution does not accept dual, credit for life, or AP credits' 
slo5     'ROTC' 
slo51    'ROTC - Army' 
slo52    'ROTC - Navy' 
slo53    'ROTC - Air Force' 
slo6     'Study abroad' 
slo7     'Weekend/evening  college' 
slo8     'Teacher certification (below the postsecondary level)' 
slo81    'Teacher certification: Students can complete their preparation in certain areas of specialization' 
slo82    'Teacher certification: Students must complete their preparation at another institution for certain areas of specialization' 
slo83    'Teacher certification: Approved by the state for initial certifcation or licensure of teachers.' 
slo9     'None of the above special learning opportunities are offered' 
yrscoll  'Years of college-level work required' 
stusrv1  'Remedial services' 
stusrv2  'Academic/career counseling service' 
stusrv3  'Employment services for students' 
stusrv4  'Placement services for completers' 
stusrv8  'On-campus day care for students^ children' 
stusrv9  'None of the above selected services are offered' 
libres1  'Library resources/services: Physical facilities' 
libres2  'Library resources/services: Organized collection of printed materials' 
libres3  'Library resources/services: Access to digital/electronic resources' 
libres4  'Library resources/services: Staff trained to provide and interpret library materials' 
libres5  'Library resources/services: Established library hours' 
libres6  'Library resources/services: Access to library collections that are shared with other institutions' 
libres9  'Library resources/services not provided' 
tuitpl   'Any alternative tuition plans offered by institution' 
tuitpl1  'Tuition guaranteed plan' 
tuitpl2  'Prepaid tuition plan' 
tuitpl3  'Tuition payment plan' 
tuitpl4  'Other alternative tuition plan' 
dstnugc  'Undergraduate level distance education courses offered' 
dstnugp  'Undergraduate level distance education programs offered' 
dstnugn  'Undergraduate level distance education not offered' 
dstngc   'Graduate level distance education courses offered' 
dstngp   'Graduate level distance education programs offered' 
dstngn   'Graduate level distance education not offered' 
distcrs  'Distance education courses offered' 
distpgs  'Distance education programs offered' 
dstnced1 'Undergraduate level programs or courses are offered via distance education' 
dstnced2 'Graduate level programs or courses are offered via distance education' 
dstnced3 'Does not offer distance education opportunities' 
distnced 'All programs offered completely via distance education' 
disab    'Percent indicator of undergraduates formally registered as students with disabilities' 
xdisabpc 'Imputation field for disabpct - Percent of undergraduates, who are formally registered as students with disabilities, when percentage is more than 3 percent'
disabpct 'Percent of undergraduates, who are formally registered as students with disabilities, when percentage is more than 3 percent' 
alloncam 'Full-time, first-time degree/certificate-seeking students required to live on campus' 
tuitvary 'Tuition charge varies for in-district, in-state, out-of-state students' 
room     'Institution provide on-campus housing' 
xroomcap 'Imputation field for roomcap - Total dormitory capacity'
roomcap  'Total dormitory capacity' 
board    'Institution provides board or meal plan' 
xmealswk 'Imputation field for mealswk - Number of meals per week in board charge'
mealswk  'Number of meals per week in board charge' 
xroomamt 'Imputation field for roomamt - Typical room charge for academic year'
roomamt  'Typical room charge for academic year' 
xbordamt 'Imputation field for boardamt - Typical board charge for academic year'
boardamt 'Typical board charge for academic year' 
xrmbdamt 'Imputation field for rmbrdamt - Combined charge for room and board'
rmbrdamt 'Combined charge for room and board' 
xappfeeu 'Imputation field for applfeeu - Undergraduate application fee'
applfeeu 'Undergraduate application fee' 
xappfeeg 'Imputation field for applfeeg - Graduate application fee'
applfeeg 'Graduate application fee' 
athassoc 'Member of National Athletic Association' 
assoc1   'Member of National Collegiate Athletic Association (NCAA)' 
assoc2   'Member of National Association of Intercollegiate Athletics (NAIA)' 
assoc3   'Member of National Junior College Athletic  Association (NJCAA)' 
assoc4   'Member of National Small College Athletic Association (NSCAA)' 
assoc5   'Member of National Christian College Athletic Association (NCCAA)' 
assoc6   'Member of other national athletic association not listed above' 
sport1   'NCAA/NAIA member for football' 
confno1  'NCAA/NAIA conference number football' 
sport2   'NCAA/NAIA member for basketball' 
confno2  'NCAA/NAIA conference number basketball' 
sport3   'NCAA/NAIA member for baseball' 
confno3  'NCAA/NAIA conference number baseball' 
sport4   'NCAA/NAIA member for cross country/track' 
confno4  'NCAA/NAIA conference number cross country/track'.

value labels
/peo1istr  
1 'Yes' 
0 'Implied no' 
/peo2istr  
1 'Yes' 
0 'Implied no' 
/peo3istr  
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/peo4istr  
1 'Yes' 
0 'Implied no' 
/peo5istr  
1 'Yes' 
0 'Implied no' 
/peo6istr  
1 'Yes' 
0 'Implied no' 
/cntlaffi  
1 'Public' 
2 'Private for-profit' 
3 'Private not-for-profit (no religious affiliation)' 
4 'Private not-for-profit (religious affiliation)' 
/pubprime  
1 'Federal' 
2 'State' 
3 'Territorial' 
4 'School district' 
5 'County' 
7 'City' 
8 'Special district' 
9 'Other' 
-2 'Not applicable' 
/pubsecon  
1 'Federal' 
2 'State' 
3 'Territorial' 
4 'School district' 
5 'County' 
6 'Township' 
7 'City' 
8 'Special district' 
9 'Other' 
0 'Implied no' 
-2 'Not applicable' 
/relaffil  
51 'African Methodist Episcopal' 
24 'African Methodist Episcopal Zion Church' 
52 'American Baptist' 
22 'American Evangelical Lutheran Church' 
27 'Assemblies of God Church' 
54 'Baptist' 
28 'Brethren Church' 
34 'Christ and Missionary Alliance Church' 
61 'Christian Church (Disciples of Christ)' 
48 'Christian Churches and Churches of Christ' 
55 'Christian Methodist Episcopal' 
35 'Christian Reformed Church' 
58 'Church of Brethren' 
57 'Church of God' 
59 'Church of the Nazarene' 
74 'Churches of Christ' 
60 'Cumberland Presbyterian' 
50 'Episcopal Church, Reformed' 
102 'Evangelical Christian' 
36 'Evangelical Congregational Church' 
37 'Evangelical Covenant Church of America' 
38 'Evangelical Free Church of America' 
39 'Evangelical Lutheran Church' 
64 'Free Methodist' 
41 'Free Will Baptist Church' 
65 'Friends' 
105 'General Baptist' 
91 'Greek Orthodox' 
42 'Interdenominational' 
80 'Jewish' 
94 'Latter Day Saints (Mormon Church)' 
68 'Lutheran Church - Missouri Synod' 
67 'Lutheran Church in America' 
43 'Mennonite Brethren Church' 
69 'Mennonite Church' 
87 'Missionary Church Inc' 
44 'Moravian Church' 
78 'Multiple Protestant Denomination' 
106 'Muslim' 
108 'Non-Denominational' 
45 'North American Baptist' 
100 'Original Free Will Baptist' 
79 'Other Protestant' 
47 'Pentecostal Holiness Church' 
107 'Plymouth Brethren' 
103 'Presbyterian' 
66 'Presbyterian Church (USA)' 
73 'Protestant Episcopal' 
49 'Reformed Church in America' 
81 'Reformed Presbyterian Church' 
30 'Roman Catholic' 
92 'Russian Orthodox' 
95 'Seventh Day Adventist' 
75 'Southern Baptist' 
97 'The Presbyterian Church in America' 
88 'Undenominational' 
93 'Unitarian Universalist' 
84 'United Brethren Church' 
76 'United Church of Christ' 
71 'United Methodist' 
89 'Wesleyan' 
33 'Wisconsin Evangelical Lutheran Synod' 
99 'Other (none of the above)' 
-2 'Not applicable' 
/level1    
1 'Yes' 
0 'Implied no' 
/level2    
1 'Yes' 
0 'Implied no' 
/level3    
1 'Yes' 
0 'Implied no' 
/level4    
1 'Yes' 
0 'Implied no' 
/level5    
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/level6    
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/level7    
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/level8    
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/level12   
0 'Implied no' 
/level17   
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/level18   
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/level19   
1 'Yes' 
0 'Implied no' 
-2 'Not applicable' 
/calsys    
1 'Semester' 
2 'Quarter' 
3 'Trimester' 
4 'Four-one-four plan' 
5 'Other academic year' 
6 'Differs by program' 
7 'Continuous' 
-2 'Not applicable' 
/ft_ug     
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/ft_ftug   
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/ftgdnidp  
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/pt_ug     
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/pt_ftug   
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/ptgdnidp  
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/docpp     
1 'Yes' 
-2 'Not applicable' 
/docppsp   
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/openadmp  
1 'Yes' 
2 'No' 
-2 'Not applicable' 
/vet1      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/vet2      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/vet3      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/vet4      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/vet5      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/vet9      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/credits1  
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/credits2  
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/credits3  
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/credits4  
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo5      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo51     
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo52     
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo53     
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo6      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo7      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo8      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo81     
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo82     
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo83     
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/slo9      
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/yrscoll   
1 'One' 
2 'Two' 
3 'Three' 
4 'Four' 
5 'Five' 
6 'Six' 
8 'Eight' 
-2 'Not applicable' 
/stusrv1   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/stusrv2   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/stusrv3   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/stusrv4   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/stusrv8   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/stusrv9   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/libres1   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/libres2   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/libres3   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/libres4   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/libres5   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/libres6   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/libres9   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/tuitpl    
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/tuitpl1   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/tuitpl2   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/tuitpl3   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/tuitpl4   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstnugc   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstnugp   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstnugn   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstngc    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstngp    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstngn    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/distcrs   
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/distpgs   
1 'Yes' 
0 'Implied no' 
-1 'Not applicable' 
-2 'Not reported' 
/dstnced1  
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstnced2  
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/dstnced3  
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/distnced  
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/disab     
1 '3 percent or less' 
2 'More than 3 percent' 
-1 'Not reported' 
-2 'Not applicable' 
/alloncam  
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/tuitvary  
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/room      
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/board     
1 'Yes, number of meals in the maximum meal plan offered' 
2 'Yes, number of meals per week can vary' 
3 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/athassoc  
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/assoc1    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/assoc2    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/assoc3    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/assoc4    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/assoc5    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/assoc6    
1 'Yes' 
0 'Implied no' 
-1 'Not reported' 
-2 'Not applicable' 
/sport1    
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/confno1   
372 'American Athletic Conference' 
176 'American Rivers Conference' 
204 'American Southwest Conference' 
369 'Association of Independent Institutions' 
103 'Atlantic 10 Conference' 
102 'Atlantic Coast Conference' 
104 'Big East Conference' 
105 'Big Sky Conference' 
106 'Big South Conference' 
107 'Big Ten Conference' 
108 'Big Twelve Conference' 
138 'California Collegiate Athletic Assoc' 
164 'Capital Athletic Conference' 
165 'Centennial Conference' 
140 'Central Intercollegiate Athletic Assoc' 
355 'Central States Football League' 
167 'College Conference of Illinois and Wisc' 
110 'Colonial Athletic Association' 
168 'Commonwealth Coast Conference' 
111 'Conference USA' 
113 'Division I-A Independents' 
114 'Division I-AA Independents' 
141 'Division II Independents' 
170 'Division III Independents' 
151 'East Coast Conference' 
366 'Eastern Collegiate Football Conference' 
172 'Empire Eight' 
333 'Florida Sun Conference' 
173 'Freedom Football Conference' 
352 'Frontier Conference' 
116 'Gateway Football Conference' 
302 'Golden State Athletic Conference' 
367 'Great American Conference' 
144 'Great Lakes Intercollegiate Ath Conf' 
371 'Great Midwest Athletic Conference' 
145 'Great Lakes Valley Conference' 
174 'Great Northeast Athletic Conference' 
213 'Great Northwest Athletic Conference' 
311 'Great Plains Athletic Conference' 
146 'Gulf South Conference' 
320 'Heart of America Athletic Conference' 
175 'Heartland Collegiate Athletic Conference' 
308 'Independent Great Lakes Region' 
322 'Independent Midwest Region' 
327 'Independent Northeast Region' 
335 'Independent Southeast Region' 
117 'Ivy Group' 
309 'Kansas Collegiate Athletic Conf' 
147 'Lone Star Conference' 
179 'Massachusetts State College Ath Assoc' 
180 'Michigan Intercollegiate Athletic Assoc' 
148 'Mid-America Intercollegiate Ath Assoc' 
119 'Mid-American Conference' 
121 'Mid-Eastern Athletic Conference' 
315 'Mid-South Conference' 
356 'Mid-States Football Association' 
181 'Middle Atlantic States Athletic Corporation' 
182 'Midwest Conference' 
183 'Minnesota Intercollegiate Ath Conf' 
123 'Missouri Valley Conference' 
370 'Mountain East Conference' 
203 'Mountain West Conference' 
184 'New England Football Conference' 
185 'New England Small College Ath Conf' 
186 'New England Women^s & Men^s Athletic Conference' 
187 'New Jersey Athletic Conference' 
189 'North Coast Athletic Conference' 
373 'North Star Athletic Association' 
153 'Northeast 10 Conference' 
125 'Northeast Conference' 
359 'Northern Athletics Collegiate Conference' 
155 'Northern Sun Intercollegiate Conference' 
205 'Northwest Conference' 
191 'Ohio Athletic Conference' 
126 'Ohio Valley Conference' 
192 'Old Dominion Athletic Conference' 
127 'Pacific-12 Conference' 
128 'Patriot League' 
193 'Pennsylvania Athletic Conference' 
158 'Pennsylvania State Athletic Conference' 
129 'Pioneer Football League' 
194 'Presidents^ Athletic Conference' 
159 'Rocky Mountain Athletic Conference' 
340 'Sooner Athletic Conference' 
160 'South Atlantic Conference' 
130 'Southeastern Conference' 
368 'Southern Athletic Association' 
197 'Southern California Intercoll Ath Conf' 
198 'Southern Collegiate Athletic Conference' 
131 'Southern Conference' 
161 'Southern Intercollegiate Athletic Conf' 
132 'Southland Conference' 
133 'Southwestern Athletic Conference' 
134 'Sun Belt Conference' 
171 'USA South Athletic Conference' 
200 'University Athletic Association' 
354 'Upper Midwest Athletic Conference' 
201 'Upstate Collegiate Athletic Association' 
163 'West Virginia Intercollegiate Athletic Conf' 
202 'Wisconsin Intercollegiate Ath Conf' 
342 'Other' 
-1 'Not reported' 
-2 'Not applicable' 
/sport2    
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/confno2   
214 'Allegheny Mountain Collegiate Conference' 
101 'America East' 
372 'American Athletic Conference' 
376 'American Collegiate Athletic Association' 
319 'American Midwest Conference' 
176 'American Rivers Conference' 
204 'American Southwest Conference' 
316 'Appalachian Athletic Conference' 
369 'Association of Independent Institutions' 
103 'Atlantic 10 Conference' 
102 'Atlantic Coast Conference' 
375 'Atlantic East Conference' 
135 'Atlantic Sun Conference' 
104 'Big East Conference' 
105 'Big Sky Conference' 
106 'Big South Conference' 
107 'Big Ten Conference' 
108 'Big Twelve Conference' 
109 'Big West Conference' 
138 'California Collegiate Athletic Assoc' 
301 'California Pacific Conference' 
164 'Capital Athletic Conference' 
328 'Cascade Collegiate Conference' 
165 'Centennial Conference' 
323 'Central Atlantic Collegiate Conf' 
140 'Central Intercollegiate Athletic Assoc' 
304 'Chicagoland Collegiate Athletic Conf' 
166 'City University of New York Ath Conf' 
167 'College Conference of Illinois and Wisc' 
110 'Colonial Athletic Association' 
364 'Colonial States Athletic Conference' 
168 'Commonwealth Coast Conference' 
207 'Commonwealth Conference' 
139 'Conference Carolinas' 
111 'Conference USA' 
305 'Crossroads League' 
141 'Division II Independents' 
170 'Division III Independents' 
151 'East Coast Conference' 
115 'Eastern College Athletic Conference' 
172 'Empire Eight' 
333 'Florida Sun Conference' 
208 'Freedom Conference' 
352 'Frontier Conference' 
302 'Golden State Athletic Conference' 
367 'Great American Conference' 
144 'Great Lakes Intercollegiate Ath Conf' 
371 'Great Midwest Athletic Conference' 
145 'Great Lakes Valley Conference' 
174 'Great Northeast Athletic Conference' 
213 'Great Northwest Athletic Conference' 
311 'Great Plains Athletic Conference' 
337 'Gulf Coast Athletic Conference' 
146 'Gulf South Conference' 
320 'Heart of America Athletic Conference' 
175 'Heartland Collegiate Athletic Conference' 
209 'Heartland Conference' 
122 'Horizon League' 
318 'Independent Mid-South Region' 
322 'Independent Midwest Region' 
327 'Independent Northeast Region' 
335 'Independent Southeast Region' 
117 'Ivy Group' 
309 'Kansas Collegiate Athletic Conf' 
361 'Landmark Conference' 
178 'Little East Conference' 
147 'Lone Star Conference' 
179 'Massachusetts State College Ath Assoc' 
118 'Metro Atlantic Athletic Conference' 
180 'Michigan Intercollegiate Athletic Assoc' 
148 'Mid-America Intercollegiate Ath Assoc' 
119 'Mid-American Conference' 
121 'Mid-Eastern Athletic Conference' 
315 'Mid-South Conference' 
181 'Middle Atlantic States Athletic Corporation' 
182 'Midwest Conference' 
183 'Minnesota Intercollegiate Ath Conf' 
123 'Missouri Valley Conference' 
370 'Mountain East Conference' 
203 'Mountain West Conference' 
363 'New England Collegiate Conference' 
185 'New England Small College Ath Conf' 
186 'New England Women^s & Men^s Athletic Conference' 
187 'New Jersey Athletic Conference' 
215 'North Atlantic Conference' 
189 'North Coast Athletic Conference' 
365 'North Eastern Athletic Conference' 
373 'North Star Athletic Association' 
153 'Northeast 10 Conference' 
125 'Northeast Conference' 
359 'Northern Athletics Collegiate Conference' 
155 'Northern Sun Intercollegiate Conference' 
205 'Northwest Conference' 
191 'Ohio Athletic Conference' 
126 'Ohio Valley Conference' 
192 'Old Dominion Athletic Conference' 
156 'Pacific West Conference' 
127 'Pacific-12 Conference' 
128 'Patriot League' 
157 'Peach Belt Conference' 
193 'Pennsylvania Athletic Conference' 
158 'Pennsylvania State Athletic Conference' 
194 'Presidents^ Athletic Conference' 
353 'Red River Athletic Conference' 
374 'River States' 
159 'Rocky Mountain Athletic Conference' 
196 'Skyline Conference' 
340 'Sooner Athletic Conference' 
160 'South Atlantic Conference' 
130 'Southeastern Conference' 
368 'Southern Athletic Association' 
197 'Southern California Intercoll Ath Conf' 
198 'Southern Collegiate Athletic Conference' 
131 'Southern Conference' 
161 'Southern Intercollegiate Athletic Conf' 
334 'Southern States Athletic Conference' 
132 'Southland Conference' 
133 'Southwestern Athletic Conference' 
195 'St. Louis Intercollegiate Ath Conf' 
199 'State University of New York Ath Conf' 
134 'Sun Belt Conference' 
162 'Sunshine State Conference' 
120 'The Summit League' 
317 'TranSouth Athletic Conference' 
171 'USA South Athletic Conference' 
200 'University Athletic Association' 
354 'Upper Midwest Athletic Conference' 
201 'Upstate Collegiate Athletic Association' 
136 'West Coast Conference' 
163 'West Virginia Intercollegiate Athletic Conference' 
137 'Western Athletic Conference' 
202 'Wisconsin Intercollegiate Ath Conference' 
307 'Wolverine-Hoosier Athletic Conference' 
342 'Other' 
-1 'Not reported' 
-2 'Not applicable' 
/sport3    
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/confno3   
214 'Allegheny Mountain Collegiate Conference' 
101 'America East' 
372 'American Athletic Conference' 
319 'American Midwest Conference' 
176 'American Rivers Conference' 
204 'American Southwest Conference' 
316 'Appalachian Athletic Conference' 
369 'Association of Independent Institutions' 
103 'Atlantic 10 Conference' 
102 'Atlantic Coast Conference' 
375 'Atlantic East Conference' 
135 'Atlantic Sun Conference' 
104 'Big East Conference' 
105 'Big Sky Conference' 
106 'Big South Conference' 
107 'Big Ten Conference' 
108 'Big Twelve Conference' 
109 'Big West Conference' 
138 'California Collegiate Athletic Assoc' 
301 'California Pacific Conference' 
164 'Capital Athletic Conference' 
328 'Cascade Collegiate Conference' 
165 'Centennial Conference' 
323 'Central Atlantic Collegiate Conf' 
140 'Central Intercollegiate Athletic Assoc' 
304 'Chicagoland Collegiate Athletic Conf' 
166 'City University of New York Ath Conf' 
167 'College Conference of Illinois and Wisc' 
110 'Colonial Athletic Association' 
364 'Colonial States Athletic Conference' 
168 'Commonwealth Coast Conference' 
207 'Commonwealth Conference' 
139 'Conference Carolinas' 
111 'Conference USA' 
305 'Crossroads League' 
141 'Division II Independents' 
170 'Division III Independents' 
151 'East Coast Conference' 
115 'Eastern College Athletic Conference' 
172 'Empire Eight' 
333 'Florida Sun Conference' 
208 'Freedom Conference' 
352 'Frontier Conference' 
302 'Golden State Athletic Conference' 
367 'Great American Conference' 
144 'Great Lakes Intercollegiate Ath Conf' 
371 'Great Midwest Athletic Conference' 
145 'Great Lakes Valley Conference' 
174 'Great Northeast Athletic Conference' 
213 'Great Northwest Athletic Conference' 
311 'Great Plains Athletic Conference' 
337 'Gulf Coast Athletic Conference' 
146 'Gulf South Conference' 
320 'Heart of America Athletic Conference' 
175 'Heartland Collegiate Athletic Conference' 
209 'Heartland Conference' 
122 'Horizon League' 
308 'Independent Great Lakes Region' 
318 'Independent Mid-South Region' 
322 'Independent Midwest Region' 
335 'Independent Southeast Region' 
117 'Ivy Group' 
309 'Kansas Collegiate Athletic Conf' 
361 'Landmark Conference' 
178 'Little East Conference' 
147 'Lone Star Conference' 
179 'Massachusetts State College Ath Assoc' 
118 'Metro Atlantic Athletic Conference' 
180 'Michigan Intercollegiate Athletic Assoc' 
148 'Mid-America Intercollegiate Ath Assoc' 
119 'Mid-American Conference' 
121 'Mid-Eastern Athletic Conference' 
315 'Mid-South Conference' 
181 'Middle Atlantic States Athletic Corporation' 
182 'Midwest Conference' 
183 'Minnesota Intercollegiate Ath Conf' 
123 'Missouri Valley Conference' 
370 'Mountain East Conference' 
203 'Mountain West Conference' 
363 'New England Collegiate Conference' 
185 'New England Small College Ath Conf' 
186 'New England Women^s & Men^s Athletic Conference' 
187 'New Jersey Athletic Conference' 
215 'North Atlantic Conference' 
189 'North Coast Athletic Conference' 
365 'North Eastern Athletic Conference' 
373 'North Star Athletic Association' 
153 'Northeast 10 Conference' 
125 'Northeast Conference' 
359 'Northern Athletics Collegiate Conference' 
155 'Northern Sun Intercollegiate Conference' 
205 'Northwest Conference' 
191 'Ohio Athletic Conference' 
126 'Ohio Valley Conference' 
192 'Old Dominion Athletic Conference' 
156 'Pacific West Conference' 
127 'Pacific-12 Conference' 
128 'Patriot League' 
157 'Peach Belt Conference' 
193 'Pennsylvania Athletic Conference' 
158 'Pennsylvania State Athletic Conference' 
194 'Presidents^ Athletic Conference' 
353 'Red River Athletic Conference' 
374 'River States' 
159 'Rocky Mountain Athletic Conference' 
196 'Skyline Conference' 
340 'Sooner Athletic Conference' 
160 'South Atlantic Conference' 
130 'Southeastern Conference' 
368 'Southern Athletic Association' 
197 'Southern California Intercoll Ath Conf' 
198 'Southern Collegiate Athletic Conference' 
131 'Southern Conference' 
161 'Southern Intercollegiate Athletic Conf' 
334 'Southern States Athletic Conference' 
132 'Southland Conference' 
133 'Southwestern Athletic Conference' 
195 'St. Louis Intercollegiate Ath Conf' 
199 'State University of New York Ath Conf' 
134 'Sun Belt Conference' 
162 'Sunshine State Conference' 
120 'The Summit League' 
317 'TranSouth Athletic Conference' 
171 'USA South Athletic Conference' 
200 'University Athletic Association' 
354 'Upper Midwest Athletic Conference' 
201 'Upstate Collegiate Athletic Association' 
136 'West Coast Conference' 
163 'West Virginia Intercollegiate Athletic Conf' 
137 'Western Athletic Conference' 
202 'Wisconsin Intercollegiate Ath Conf' 
307 'Wolverine-Hoosier Athletic Conf' 
342 'Other' 
-1 'Not reported' 
-2 'Not applicable' 
/sport4    
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/confno4   
214 'Allegheny Mountain Collegiate Conference' 
101 'America East' 
372 'American Athletic Conference' 
376 'American Collegiate Athletic Association' 
319 'American Midwest Conference' 
176 'American Rivers Conference' 
204 'American Southwest Conference' 
316 'Appalachian Athletic Conference' 
369 'Association of Independent Institutions' 
103 'Atlantic 10 Conference' 
102 'Atlantic Coast Conference' 
375 'Atlantic East Conference' 
135 'Atlantic Sun Conference' 
104 'Big East Conference' 
105 'Big Sky Conference' 
106 'Big South Conference' 
107 'Big Ten Conference' 
108 'Big Twelve Conference' 
109 'Big West Conference' 
138 'California Collegiate Athletic Assoc' 
301 'California Pacific Conference' 
164 'Capital Athletic Conference' 
328 'Cascade Collegiate Conference' 
165 'Centennial Conference' 
323 'Central Atlantic Collegiate Conf' 
140 'Central Intercollegiate Athletic Assoc' 
304 'Chicagoland Collegiate Athletic Conf' 
166 'City University of New York Ath Conf' 
167 'College Conference of Illinois and Wisc' 
110 'Colonial Athletic Association' 
364 'Colonial States Athletic Conference' 
168 'Commonwealth Coast Conference' 
207 'Commonwealth Conference' 
139 'Conference Carolinas' 
111 'Conference USA' 
305 'Crossroads League' 
112 'Division I Independents' 
141 'Division II Independents' 
170 'Division III Independents' 
151 'East Coast Conference' 
115 'Eastern College Athletic Conference' 
172 'Empire Eight' 
333 'Florida Sun Conference' 
208 'Freedom Conference' 
352 'Frontier Conference' 
302 'Golden State Athletic Conference' 
367 'Great American Conference' 
144 'Great Lakes Intercollegiate Ath Conf' 
145 'Great Lakes Valley Conference' 
371 'Great Midwest Athletic Conference' 
174 'Great Northeast Athletic Conference' 
213 'Great Northwest Athletic Conference' 
311 'Great Plains Athletic Conference' 
337 'Gulf Coast Athletic Conference' 
146 'Gulf South Conference' 
320 'Heart of America Athletic Conference' 
175 'Heartland Collegiate Athletic Conference' 
209 'Heartland Conference' 
122 'Horizon League' 
318 'Independent Mid-South Region' 
322 'Independent Midwest Region' 
335 'Independent Southeast Region' 
117 'Ivy Group' 
309 'Kansas Collegiate Athletic Conf' 
361 'Landmark Conference' 
178 'Little East Conference' 
147 'Lone Star Conference' 
179 'Massachusetts State College Ath Assoc' 
118 'Metro Atlantic Athletic Conference' 
180 'Michigan Intercollegiate Athletic Assoc' 
148 'Mid-America Intercollegiate Ath Assoc' 
119 'Mid-American Conference' 
121 'Mid-Eastern Athletic Conference' 
315 'Mid-South Conference' 
181 'Middle Atlantic States Athletic Corporation' 
182 'Midwest Conference' 
183 'Minnesota Intercollegiate Ath Conf' 
123 'Missouri Valley Conference' 
370 'Mountain East Conference' 
203 'Mountain West Conference' 
363 'New England Collegiate Conference' 
185 'New England Small College Ath Conf' 
186 'New England Women^s & Men^s Athletic Conference' 
187 'New Jersey Athletic Conference' 
215 'North Atlantic Conference' 
189 'North Coast Athletic Conference' 
365 'North Eastern Athletic Conference' 
373 'North Star Athletic Association' 
153 'Northeast 10 Conference' 
125 'Northeast Conference' 
359 'Northern Athletics Conference' 
155 'Northern Sun Intercollegiate Conference' 
205 'Northwest Conference' 
191 'Ohio Athletic Conference' 
126 'Ohio Valley Conference' 
192 'Old Dominion Athletic Conference' 
156 'Pacific West Conference' 
127 'Pacific-12 Conference' 
128 'Patriot League' 
157 'Peach Belt Conference' 
193 'Pennsylvania Athletic Conference' 
158 'Pennsylvania State Athletic Conference' 
194 'Presidents^ Athletic Conference' 
353 'Red River Athletic Conference' 
374 'River States' 
159 'Rocky Mountain Athletic Conference' 
196 'Skyline Conference' 
340 'Sooner Athletic Conference' 
160 'South Atlantic Conference' 
130 'Southeastern Conference' 
368 'Southern Athletic Association' 
197 'Southern California Intercoll Ath Conf' 
198 'Southern Collegiate Athletic Conference' 
131 'Southern Conference' 
161 'Southern Intercollegiate Athletic Conf' 
334 'Southern States Athletic Conference' 
132 'Southland Conference' 
133 'Southwestern Athletic Conference' 
195 'St. Louis Intercollegiate Ath Conf' 
199 'State University of New York Ath Conf' 
134 'Sun Belt Conference' 
162 'Sunshine State Conference' 
120 'The Summit League' 
317 'TranSouth Athletic Conference' 
171 'USA South Athletic Conference' 
200 'University Athletic Association' 
354 'Upper Midwest Athletic Conference' 
201 'Upstate Collegiate Athletic Association' 
136 'West Coast Conference' 
163 'West Virginia Intercollegiate Athletic Conf' 
137 'Western Athletic Conference' 
202 'Wisconsin Intercollegiate Ath Conf' 
307 'Wolverine-Hoosier Athletic Conf' 
342 'Other' 
-1 'Not reported' 
-2 'Not applicable'.
*The following are the possible values for the item imputation field variables
*A  'Not applicable'
*B  'Institution left item blank'
*C  'Analyst corrected reported value'
*D  'Do not know'
*G  'Data generated from other data values'
*H  'Value not derived - data not usable'
*J  'Logical imputation'
*K  'Ratio adjustment'
*L  'Imputed using the Group Median procedure'
*N  'Imputed using Nearest Neighbor procedure'
*P  'Imputed using Carry Forward procedure'
*R  'Reported'
*Y  'Specific professional practice program n'
*Z  'Implied zero'

frequencies variables=
peo1istr peo2istr peo3istr peo4istr peo5istr peo6istr cntlaffi pubprime pubsecon
relaffil level1   level2   level3   level4   level5   level6   level7   level8   level12 
level17  level18  level19  calsys   ft_ug    ft_ftug  ftgdnidp pt_ug    pt_ftug  ptgdnidp
docpp    docppsp  openadmp vet1     vet2     vet3     vet4     vet5     vet9     credits1
credits2 credits3 credits4 slo5     slo51    slo52    slo53    slo6     slo7     slo8    
slo81    slo82    slo83    slo9     yrscoll  stusrv1  stusrv2  stusrv3  stusrv4  stusrv8 
stusrv9  libres1  libres2  libres3  libres4  libres5  libres6  libres9  tuitpl   tuitpl1 
tuitpl2  tuitpl3  tuitpl4  dstnugc  dstnugp  dstnugn  dstngc   dstngp   dstngn   distcrs 
distpgs  dstnced1 dstnced2 dstnced3 distnced disab    xdisabpc alloncam tuitvary room    
xroomcap board    xmealswk xroomamt xbordamt xrmbdamt xappfeeu xappfeeg athassoc assoc1  
assoc2   assoc3   assoc4   assoc5   assoc6   sport1   confno1  sport2   confno2  sport3  
confno3  sport4   confno4  .

descriptives variables=
disabpct
roomcap  mealswk  roomamt  boardamt rmbrdamt applfeeu applfeeg
/stats=def.

save outfile='ic2018_dist.sav' /compressed.
