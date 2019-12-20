*** Created  October 22, 2013                                ***;
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
/file = 'U:\Data\EX\z_external_data\IPEDS_GRS\2012\Provisional\gr2012.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
grtype    f4 
chrtstat  f2 
section   f1 
cohort    f1 
line     a3 
xgrtotlt a1
grtotlt   f6 
xgrtotlm a1
grtotlm   f6 
xgrtotlw a1
grtotlw   f6 
xgraiant a1
graiant   f6 
xgraianm a1
graianm   f6 
xgraianw a1
graianw   f6 
xgrasiat a1
grasiat   f6 
xgrasiam a1
grasiam   f6 
xgrasiaw a1
grasiaw   f6 
xgrbkaat a1
grbkaat   f6 
xgrbkaam a1
grbkaam   f6 
xgrbkaaw a1
grbkaaw   f6 
xgrhispt a1
grhispt   f6 
xgrhispm a1
grhispm   f6 
xgrhispw a1
grhispw   f6 
xgrnhpit a1
grnhpit   f6 
xgrnhpim a1
grnhpim   f6 
xgrnhpiw a1
grnhpiw   f6 
xgrwhitt a1
grwhitt   f6 
xgrwhitm a1
grwhitm   f6 
xgrwhitw a1
grwhitw   f6 
xgr2mort a1
gr2mort   f6 
xgr2morm a1
gr2morm   f6 
xgr2morw a1
gr2morw   f6 
xgrunknt a1
grunknt   f6 
xgrunknm a1
grunknm   f6 
xgrunknw a1
grunknw   f6 
xgrnralt a1
grnralt   f6 
xgrnralm a1
grnralm   f6 
xgrnralw a1
grnralw   f6.

variable labels
unitid   'Unique identification number of the institution' 
grtype   'Cohort data' 
chrtstat 'Graduation rate status in cohort' 
section  'Section of survey form' 
cohort   'Cohort' 
line     'Original line number of survey form' 
xgrtotlt 'Imputation field for grtotlt - Grand total'
grtotlt  'Grand total' 
xgrtotlm 'Imputation field for grtotlm - Total men'
grtotlm  'Total men' 
xgrtotlw 'Imputation field for grtotlw - Total women'
grtotlw  'Total women' 
xgraiant 'Imputation field for graiant - American Indian or Alaska Native total'
graiant  'American Indian or Alaska Native total' 
xgraianm 'Imputation field for graianm - American Indian or Alaska Native men'
graianm  'American Indian or Alaska Native men' 
xgraianw 'Imputation field for graianw - American Indian or Alaska Native women'
graianw  'American Indian or Alaska Native women' 
xgrasiat 'Imputation field for grasiat - Asian total'
grasiat  'Asian total' 
xgrasiam 'Imputation field for grasiam - Asian men'
grasiam  'Asian men' 
xgrasiaw 'Imputation field for grasiaw - Asian women'
grasiaw  'Asian women' 
xgrbkaat 'Imputation field for grbkaat - Black or African American total'
grbkaat  'Black or African American total' 
xgrbkaam 'Imputation field for grbkaam - Black or African American men'
grbkaam  'Black or African American men' 
xgrbkaaw 'Imputation field for grbkaaw - Black or African American women'
grbkaaw  'Black or African American women' 
xgrhispt 'Imputation field for grhispt - Hispanic total'
grhispt  'Hispanic total' 
xgrhispm 'Imputation field for grhispm - Hispanic men'
grhispm  'Hispanic men' 
xgrhispw 'Imputation field for grhispw - Hispanic women'
grhispw  'Hispanic women' 
xgrnhpit 'Imputation field for grnhpit - Native Hawaiian or Other Pacific Islander total'
grnhpit  'Native Hawaiian or Other Pacific Islander total' 
xgrnhpim 'Imputation field for grnhpim - Native Hawaiian or Other Pacific Islander men'
grnhpim  'Native Hawaiian or Other Pacific Islander men' 
xgrnhpiw 'Imputation field for grnhpiw - Native Hawaiian or Other Pacific Islander women'
grnhpiw  'Native Hawaiian or Other Pacific Islander women' 
xgrwhitt 'Imputation field for grwhitt - White total'
grwhitt  'White total' 
xgrwhitm 'Imputation field for grwhitm - White men'
grwhitm  'White men' 
xgrwhitw 'Imputation field for grwhitw - White women'
grwhitw  'White women' 
xgr2mort 'Imputation field for gr2mort - Two or more races total'
gr2mort  'Two or more races total' 
xgr2morm 'Imputation field for gr2morm - Two or more races men'
gr2morm  'Two or more races men' 
xgr2morw 'Imputation field for gr2morw - Two or more races women'
gr2morw  'Two or more races women' 
xgrunknt 'Imputation field for grunknt - Race/ethnicity unknown total'
grunknt  'Race/ethnicity unknown total' 
xgrunknm 'Imputation field for grunknm - Race/ethnicity unknown men'
grunknm  'Race/ethnicity unknown men' 
xgrunknw 'Imputation field for grunknw - Race/ethnicity unknown women'
grunknw  'Race/ethnicity unknown women' 
xgrnralt 'Imputation field for grnralt - Nonresident alien total'
grnralt  'Nonresident alien total' 
xgrnralm 'Imputation field for grnralm - Nonresident alien men'
grnralm  'Nonresident alien men' 
xgrnralw 'Imputation field for grnralw - Nonresident alien women'
grnralw  'Nonresident alien women'.

value labels
/grtype    
40 'Total exclusions 4-year schools' 
2 '4-year institutions, Adjusted cohort (revised cohort minus exclusions)' 
3 '4-year institutions, Completers within 150% of normal time' 
4 '4-year institutions, Transfer-out students' 
41 '4-year institutions, noncompleters still enrolled' 
42 '4-year institutions, No longer enrolled' 
6 'Bachelor^s or equiv subcohort (4-yr institution)' 
7 'Bachelor^s or equiv subcohort (4-yr institution) exclusions' 
8 'Bachelor^s or equiv subcohort (4-yr institution) adjusted cohort (revised cohort minus exclusions)' 
9 'Bachelor^s or equiv subcohort (4-yr institution) Completers within 150% of normal time total' 
10 'Bachelor^s or equiv subcohort (4-yr institution) Completers of programs of < 2 yrs (150% of normal time)' 
11 'Bachelor^s or equiv subcohort (4-yr institution) Completers of programs of 2 but <4 yrs (150% of normal time)' 
12 'Bachelor^s or equiv subcohort (4-yr institution) Completers of bachelor^s or equiv degrees total (150% of normal time)' 
13 'Bachelor^s or equiv subcohort (4-yr institution) Completers of bachelor^s or equiv degrees in 4 years or less' 
14 'Bachelor^s or equiv subcohort (4-yr institution) Completers of bachelor^s or equiv degrees in 5 years' 
15 'Bachelor^s or equiv subcohort (4-yr institution) Completers of bachelor^s or equiv degrees in 6 years' 
16 'Bachelor^s or equiv subcohort (4-yr institution) Transfer-out students' 
43 'Bachelor^s or equiv subcohort (4-yr institution) noncompleters still enrolled' 
44 'Bachelor^s or equiv subcohort (4-yr institution), No longer enrolled' 
18 'Other degree/certif-seeking subcohort (4-yr institution)' 
19 'Other degree/certificate-seeking subcohort(4-yr institution) exclusions' 
20 'Other degree/certif-seeking subcohort (4-yr institution) Adjusted cohort (revised cohort minus exclusions)' 
21 'Other degree/certif-seeking subcohort (4-yr institution) Completers within 150% of normal time total' 
22 'Other degree/certif-seeking subcohort (4-yr institution) Completers of programs < 2 yrs (150% of normal time)' 
23 'Other degree/certif-seeking subcohort (4-yr institution) Completers of programs of 2 but < 4 yrs (150% of normal time)' 
24 'Other degree/certif-seeking subcohort (4-yr institution) Completers of bachelor^s or equiv degrees (150% of normal time)' 
25 'Other degree/certif-seeking subcohort (4-yr institution) Transfer-out students' 
45 'Other degree/certif-seeking subcohort (4-yr institution) noncompleters still enrolled' 
46 'Other degree/certif-seeking subcohort (4-yr institution) No longer enrolled' 
27 'Degree/certif-seeking students ( 2-yr institution)' 
28 'Degree/certificate-seeking subcohort(2-yr institution) exclusions' 
29 'Degree/certif-seeking students ( 2-yr institution) Adjusted cohort (revised cohort minus exclusions)' 
30 'Degree/certif-seeking students ( 2-yr institution) Completers within 150% of normal time total' 
31 'Degree/certif-seeking students ( 2-yr institution) Completers of programs of < 2 yrs (150% of normal time)' 
32 'Degree/certificate-seeking students ( 2-yr institution) Completers of programs of 2 but < 4 yrs (150% of normal time)' 
35 'Degree/certif-seeking students ( 2-yr institution) Completers within 100% of normal time total' 
36 'Degree/certif-seeking students ( 2-yr institution) Completers of programs of < 2 yrs (100% of normal time)' 
37 'Degree/certificate-seeking students ( 2-yr institution) Completers of programs of 2 but < 4 yrs (100% of normal time)' 
33 'Degree/certif-seeking students ( 2-yr institution) Transfer-out students' 
47 'Degree/certif-seeking students ( 2-yr institution) noncompleters still enrolled' 
48 'Degree/certif-seeking students ( 2-yr institution) No longer enrolled' 
/chrtstat  
10 'Revised cohort' 
11 'Exclusions' 
12 'Adjusted cohort (revised cohort minus exclusions)' 
13 'Completers within 150% of normal time' 
14 'Completers of programs of less than 2 years (150% of normal time)' 
15 'Completers of programs of 2 but less than 4 years (150% of normal time)' 
16 'Completers of bachelor^s or equivalent degrees (150% of normal time)' 
17 'Completers of bachelor^s or equivalent degrees in 4 years or less' 
18 'Completers of bachelor^s or equivalent degrees in 5 years' 
19 'Completers of bachelor^s or equivalent degrees in 6 years' 
20 'Transfer-out students' 
22 'Completers of programs within 100% of normal time total' 
23 'Completers of programs of < 2 yrs within 100% of normal time (not available by race or gender)' 
24 'Completers of programs of 2 but < 4 yrs within 100% of normal time (not available by race or gender)' 
31 'Noncompleters, still enrolled' 
32 'Noncompleters, no longer enrolled' 
/section   
1 'Bachelor^s/ equiv +  other degree/certif-seeking 2006 subcohort (4-yr institution)' 
2 'Bachelor^s or equiv 2006 subcohort (4-yr institution)' 
3 'Other degree/certif-seeking 2006 subcohort (4-yr institution)' 
4 'Degree/certif-seeking students 2009 cohort ( 2-yr )' 
/cohort    
1 'Bachelor^s/ equiv +  other degree/certif-seeking 2006 subcohorts (4-yr institution)' 
2 'Bachelor^s or equiv 2006  subcohort (4-yr institution)' 
3 'Other degree/certif-seeking 2006 subcohort (4-yr institution)' 
4 'Degree/certif-seeking students 2009 cohort ( 2-yr institution)' 
/line      
10 'Revised cohort' 
45 'Exclusions' 
50 'Adjusted cohort (revised cohort minus exclusions)' 
29A 'Completers within 150% of normal time' 
11A 'Completers of programs of less than 2 years (150% of normal time)' 
12A 'Completers of programs of 2 but less than 4 years (150% of normal time)' 
18A 'Completers of bachelor^s or equivalent degrees (150% of normal time)' 
19 'Completers of bachelor^s or equivalent degrees in 4 years or less' 
20 'Completers of bachelor^s or equivalent degrees in 5 years' 
21 'Completers of bachelor^s or equivalent degrees in 6 years' 
30 'Transfer-out students' 
999 'Generated record not on original survey form' 
57 'Completers of programs within 100% of normal time total (not available by race or gender)' 
55 'Completers of programs of less than 2 years within 100% of normal time (not available by race or gender)' 
56 'Completers of programs of 2 but less than 4 years within 100% of normal time (not available by race or gender)' 
22 'Noncompleters, still enrolled' 
23 'Noncompleters, no longer enrolled'.
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
*Z  'Implied zero'

frequencies variables=
grtype   chrtstat section  cohort   line     xgrtotlt xgrtotlm xgrtotlw xgraiant
xgraianm xgraianw xgrasiat xgrasiam xgrasiaw xgrbkaat xgrbkaam xgrbkaaw xgrhispt xgrhispm
xgrhispw xgrnhpit xgrnhpim xgrnhpiw xgrwhitt xgrwhitm xgrwhitw xgr2mort xgr2morm xgr2morw
xgrunknt xgrunknm xgrunknw xgrnralt xgrnralm xgrnralw .

descriptives variables=
grtotlt  grtotlm  grtotlw  graiant 
graianm  graianw  grasiat  grasiam  grasiaw  grbkaat  grbkaam  grbkaaw  grhispt  grhispm 
grhispw  grnhpit  grnhpim  grnhpiw  grwhitt  grwhitm  grwhitw  gr2mort  gr2morm  gr2morw 
grunknt  grunknm  grunknw  grnralt  grnralm  grnralw 
/stats=def.

save outfile='U:\Data\EX\z_external_data\IPEDS_GRS\2012\Provisional\gr2012.sav' /compressed.
