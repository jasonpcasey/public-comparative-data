*** Created: 4/6/2005 1:03:54 PM                             ***.
*** Modify the path below to point to your data file         ***.

*** The specified subdirectory was not created on your       ***.
*** computer. You will need to do this.                      ***.

*** This read program must be run against the specified      ***.
*** data file. This file is specified in the program and     ***.
*** must be saved separately                                 ***.

*** This program does not provide frequencies or             ***.
*** descriptives for all variables                           ***.

*** This program does not include reserved values in its     ***.
*** calculations for missing values                          ***.

*** There may be missing data for some institutions due to   ***.
*** the merge used to create this file                       ***.

GET DATA  /TYPE = TXT
/FILE = 'C:\dct\c1986_a2dig_4-6-2005_7990.csv'
/DELCASE = LINE
/DELIMITERS = ","
/QUALIFIER = '"'
/ARRANGEMENT = DELIMITED
/FIRSTCASE = 2
/IMPORTCASE = ALL
/VARIABLES =
unitid F6
instnm A50
cipcode f6
awlevel f2
crace15 f6
crace16 f6.

VARIABLE LABELS
unitid 'Unique identification number for an institution'
instnm 'Institution (entity) name'
cipcode 'CIP code'
awlevel 'Award Level code'
crace15 'Men'
crace16 'Women'.

VALUE LABELS
/cipcode 10000 '10000 - Agricultural Business and Production'
100000 '100000 - Communications Technologies'
110000 '110000 - Computer and Information Sciences'
120000 '120000 - Consumer, Personal and Miscellaneous Services'
130000 '130000 - Education'
140000 '140000 - Engineering'
150000 '150000 - Engineering and Engineering Related Technologies'
160000 '160000 - Foreign Languages'
170000 '170000 - Allied Health'
180000 '180000 - Health Sciences'
180301 '180301 - Chiropractic'
180401 '180401 - Dentistry, General'
181001 '181001 - Medicine, General'
181201 '181201 - Optometry'
181301 '181301 - Osteopathic Medicine'
181401 '181401 - Pharmacy'
181501 '181501 - Podiatry'
182401 '182401 - Veterinary Medicine'
190000 '190000 - Home Economics'
20000 '20000 - Agricultural Sciences'
200000 '200000 - Vocational Home Economics'
220000 '220000 - Law (non-first professional)'
220101 '220101 - Law'
230000 '230000 - Letters'
240000 '240000 - Liberal/General Studies'
250000 '250000 - Library and Archival Sciences'
260000 '260000 - Life Sciences'
270000 '270000 - Mathematics'
280000 '280000 - Military Services'
290000 '290000 - Military Technologies'
30000 '30000 - Renewable Natural Resources'
300000 '300000 - Multi/Interdisciplinary Studies'
310000 '310000 - Parks and Recreation'
380000 '380000 - Philosophy and Religion'
390000 '390000 - Theology'
390601 '390601 - Theological Studies'
40000 '40000 - Architecture and Environmental Design'
400000 '400000 - Physical Sciences'
410000 '410000 - Science Technologies'
420000 '420000 - Psychology'
430000 '430000 - Protective Services'
440000 '440000 - Public Affairs'
450000 '450000 - Social Sciences'
460000 '460000 - Construction Trades'
470000 '470000 - Mechanics and Repairers'
480000 '480000 - Precision Production'
490000 '490000 - Transportation and Material Moving'
50000 '50000 - Area and Ethnic Studies'
500000 '500000 - Visual and Performing Arts'
60000 '60000 - Business and Management'
70000 '70000 - Business (Administrative Support)'
80000 '80000 - Marketing and Distribution'
809999 '809999 - Other first-professional category'
90000 '90000 - Communications'
990000 '990000 - Grand total'
/awlevel 1 'Awards of less than 1 academic year'
10 'First-professional degrees'
2 'Awards of at least 2 but less than 4 academic years'
3 'Associates degrees'
5 'Bachelors degrees'
7 'Masters degrees'
9 'Doctors degrees'.


FREQUENCIES VARIABLES=
    CIPCODE AWLEVEL.

DESCRIPTIVES VARIABLES=
    CRACE15 CRACE16
/STATS=DEF.

SAVE OUTFILE='c1986_a2dig_4-6-2005_7990.sav' /Compressed.
