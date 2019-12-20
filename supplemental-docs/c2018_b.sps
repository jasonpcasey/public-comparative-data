*** Created      May 30, 2019                                ***;
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
/file = 'c:\dct\c2018_b.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
xcstotlt a1
cstotlt   f6 
xcstotlm a1
cstotlm   f6 
xcstotlw a1
cstotlw   f6 
xcsaiant a1
csaiant   f6 
xcsaianm a1
csaianm   f6 
xcsaianw a1
csaianw   f6 
xcsasiat a1
csasiat   f6 
xcsasiam a1
csasiam   f6 
xcsasiaw a1
csasiaw   f6 
xcsbkaat a1
csbkaat   f6 
xcsbkaam a1
csbkaam   f6 
xcsbkaaw a1
csbkaaw   f6 
xcshispt a1
cshispt   f6 
xcshispm a1
cshispm   f6 
xcshispw a1
cshispw   f6 
xcsnhpit a1
csnhpit   f6 
xcsnhpim a1
csnhpim   f6 
xcsnhpiw a1
csnhpiw   f6 
xcswhitt a1
cswhitt   f6 
xcswhitm a1
cswhitm   f6 
xcswhitw a1
cswhitw   f6 
xcs2mort a1
cs2mort   f6 
xcs2morm a1
cs2morm   f6 
xcs2morw a1
cs2morw   f6 
xcsunknt a1
csunknt   f6 
xcsunknm a1
csunknm   f6 
xcsunknw a1
csunknw   f6 
xcsnralt a1
csnralt   f6 
xcsnralm a1
csnralm   f6 
xcsnralw a1
csnralw   f6.

variable labels
unitid   'Unique identification number of the institution' 
xcstotlt 'Imputation field for cstotlt - Grand total'
cstotlt  'Grand total' 
xcstotlm 'Imputation field for cstotlm - Grand total men'
cstotlm  'Grand total men' 
xcstotlw 'Imputation field for cstotlw - Grand total women'
cstotlw  'Grand total women' 
xcsaiant 'Imputation field for csaiant - American Indian or Alaska Native total'
csaiant  'American Indian or Alaska Native total' 
xcsaianm 'Imputation field for csaianm - American Indian or Alaska Native men'
csaianm  'American Indian or Alaska Native men' 
xcsaianw 'Imputation field for csaianw - American Indian or Alaska Native women'
csaianw  'American Indian or Alaska Native women' 
xcsasiat 'Imputation field for csasiat - Asian total'
csasiat  'Asian total' 
xcsasiam 'Imputation field for csasiam - Asian men'
csasiam  'Asian men' 
xcsasiaw 'Imputation field for csasiaw - Asian women'
csasiaw  'Asian women' 
xcsbkaat 'Imputation field for csbkaat - Black or African American total'
csbkaat  'Black or African American total' 
xcsbkaam 'Imputation field for csbkaam - Black or African American men'
csbkaam  'Black or African American men' 
xcsbkaaw 'Imputation field for csbkaaw - Black or African American women'
csbkaaw  'Black or African American women' 
xcshispt 'Imputation field for cshispt - Hispanic or Latino total'
cshispt  'Hispanic or Latino total' 
xcshispm 'Imputation field for cshispm - Hispanic or Latino men'
cshispm  'Hispanic or Latino men' 
xcshispw 'Imputation field for cshispw - Hispanic or Latino women'
cshispw  'Hispanic or Latino women' 
xcsnhpit 'Imputation field for csnhpit - Native Hawaiian or Other Pacific Islander total'
csnhpit  'Native Hawaiian or Other Pacific Islander total' 
xcsnhpim 'Imputation field for csnhpim - Native Hawaiian or Other Pacific Islander men'
csnhpim  'Native Hawaiian or Other Pacific Islander men' 
xcsnhpiw 'Imputation field for csnhpiw - Native Hawaiian or Other Pacific Islander women'
csnhpiw  'Native Hawaiian or Other Pacific Islander women' 
xcswhitt 'Imputation field for cswhitt - White total'
cswhitt  'White total' 
xcswhitm 'Imputation field for cswhitm - White men'
cswhitm  'White men' 
xcswhitw 'Imputation field for cswhitw - White women'
cswhitw  'White women' 
xcs2mort 'Imputation field for cs2mort - Two or more races total'
cs2mort  'Two or more races total' 
xcs2morm 'Imputation field for cs2morm - Two or more races men'
cs2morm  'Two or more races men' 
xcs2morw 'Imputation field for cs2morw - Two or more races women'
cs2morw  'Two or more races women' 
xcsunknt 'Imputation field for csunknt - Race/ethnicity unknown total'
csunknt  'Race/ethnicity unknown total' 
xcsunknm 'Imputation field for csunknm - Race/ethnicity unknown men'
csunknm  'Race/ethnicity unknown men' 
xcsunknw 'Imputation field for csunknw - Race/ethnicity unknown women'
csunknw  'Race/ethnicity unknown women' 
xcsnralt 'Imputation field for csnralt - Nonresident alien total'
csnralt  'Nonresident alien total' 
xcsnralm 'Imputation field for csnralm - Nonresident alien men'
csnralm  'Nonresident alien men' 
xcsnralw 'Imputation field for csnralw - Nonresident alien women'
csnralw  'Nonresident alien women'.
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
*Y  'Specific professional practice program not applicable'
*Z  'Implied zero'

frequencies variables=
xcstotlt xcstotlm xcstotlw xcsaiant xcsaianm xcsaianw xcsasiat xcsasiam xcsasiaw
xcsbkaat xcsbkaam xcsbkaaw xcshispt xcshispm xcshispw xcsnhpit xcsnhpim xcsnhpiw xcswhitt
xcswhitm xcswhitw xcs2mort xcs2morm xcs2morw xcsunknt xcsunknm xcsunknw xcsnralt xcsnralm
xcsnralw .

descriptives variables=
cstotlt  cstotlm  cstotlw  csaiant  csaianm  csaianw  csasiat  csasiam  csasiaw 
csbkaat  csbkaam  csbkaaw  cshispt  cshispm  cshispw  csnhpit  csnhpim  csnhpiw  cswhitt 
cswhitm  cswhitw  cs2mort  cs2morm  cs2morw  csunknt  csunknm  csunknw  csnralt  csnralm 
csnralw 
/stats=def.

save outfile='c2018_b.sav' /compressed.
