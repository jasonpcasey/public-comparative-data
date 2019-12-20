*** Created    April 10, 2018                                ***;
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
/file = 'c:\dct\effy2017.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
effylev   f1 
lstudy    f3 
xeytotlt a1
efytotlt  f6 
xeytotlm a1
efytotlm  f6 
xeytotlw a1
efytotlw  f6 
xefyaiat a1
efyaiant  f6 
xefyaiam a1
efyaianm  f6 
xefyaiaw a1
efyaianw  f6 
xefyasit a1
efyasiat  f6 
xefyasim a1
efyasiam  f6 
xefyasiw a1
efyasiaw  f6 
xefybkat a1
efybkaat  f6 
xefybkam a1
efybkaam  f6 
xefybkaw a1
efybkaaw  f6 
xefyhist a1
efyhispt  f6 
xefyhism a1
efyhispm  f6 
xefyhisw a1
efyhispw  f6 
xefynhpt a1
efynhpit  f6 
xefynhpm a1
efynhpim  f6 
xefynhpw a1
efynhpiw  f6 
xefywhit a1
efywhitt  f6 
xefywhim a1
efywhitm  f6 
xefywhiw a1
efywhitw  f6 
xefy2mot a1
efy2mort  f6 
xefy2mom a1
efy2morm  f6 
xefy2mow a1
efy2morw  f6 
xeyunknt a1
efyunknt  f6 
xeyunknm a1
efyunknm  f6 
xeyunknw a1
efyunknw  f6 
xeynralt a1
efynralt  f6 
xeynralm a1
efynralm  f6 
xeynralw a1
efynralw  f6.

variable labels
unitid   'Unique identification number of the institution' 
effylev  'Level of student' 
lstudy   'Original level of study on survey form' 
xeytotlt 'Imputation field for efytotlt - Grand total'
efytotlt 'Grand total' 
xeytotlm 'Imputation field for efytotlm - Grand total men'
efytotlm 'Grand total men' 
xeytotlw 'Imputation field for efytotlw - Grand total women'
efytotlw 'Grand total women' 
xefyaiat 'Imputation field for efyaiant - American Indian or Alaska Native total'
efyaiant 'American Indian or Alaska Native total' 
xefyaiam 'Imputation field for efyaianm - American Indian or Alaska Native men'
efyaianm 'American Indian or Alaska Native men' 
xefyaiaw 'Imputation field for efyaianw - American Indian or Alaska Native women'
efyaianw 'American Indian or Alaska Native women' 
xefyasit 'Imputation field for efyasiat - Asian total'
efyasiat 'Asian total' 
xefyasim 'Imputation field for efyasiam - Asian men'
efyasiam 'Asian men' 
xefyasiw 'Imputation field for efyasiaw - Asian women'
efyasiaw 'Asian women' 
xefybkat 'Imputation field for efybkaat - Black or African American total'
efybkaat 'Black or African American total' 
xefybkam 'Imputation field for efybkaam - Black or African American men'
efybkaam 'Black or African American men' 
xefybkaw 'Imputation field for efybkaaw - Black or African American women'
efybkaaw 'Black or African American women' 
xefyhist 'Imputation field for efyhispt - Hispanic or Latino total'
efyhispt 'Hispanic or Latino total' 
xefyhism 'Imputation field for efyhispm - Hispanic or Latino men'
efyhispm 'Hispanic or Latino men' 
xefyhisw 'Imputation field for efyhispw - Hispanic or Latino women'
efyhispw 'Hispanic or Latino women' 
xefynhpt 'Imputation field for efynhpit - Native Hawaiian or Other Pacific Islander total'
efynhpit 'Native Hawaiian or Other Pacific Islander total' 
xefynhpm 'Imputation field for efynhpim - Native Hawaiian or Other Pacific Islander men'
efynhpim 'Native Hawaiian or Other Pacific Islander men' 
xefynhpw 'Imputation field for efynhpiw - Native Hawaiian or Other Pacific Islander women'
efynhpiw 'Native Hawaiian or Other Pacific Islander women' 
xefywhit 'Imputation field for efywhitt - White total'
efywhitt 'White total' 
xefywhim 'Imputation field for efywhitm - White men'
efywhitm 'White men' 
xefywhiw 'Imputation field for efywhitw - White women'
efywhitw 'White women' 
xefy2mot 'Imputation field for efy2mort - Two or more races total'
efy2mort 'Two or more races total' 
xefy2mom 'Imputation field for efy2morm - Two or more races men'
efy2morm 'Two or more races men' 
xefy2mow 'Imputation field for efy2morw - Two or more races women'
efy2morw 'Two or more races women' 
xeyunknt 'Imputation field for efyunknt - Race/ethnicity unknown total'
efyunknt 'Race/ethnicity unknown total' 
xeyunknm 'Imputation field for efyunknm - Race/ethnicity unknown men'
efyunknm 'Race/ethnicity unknown men' 
xeyunknw 'Imputation field for efyunknw - Race/ethnicity unknown women'
efyunknw 'Race/ethnicity unknown women' 
xeynralt 'Imputation field for efynralt - Nonresident alien total'
efynralt 'Nonresident alien total' 
xeynralm 'Imputation field for efynralm - Nonresident alien men'
efynralm 'Nonresident alien men' 
xeynralw 'Imputation field for efynralw - Nonresident alien women'
efynralw 'Nonresident alien women'.

value labels
/effylev   
1 'All students total' 
2 'Undergraduate' 
4 'Graduate' 
/lstudy    
1 'Undergraduate' 
3 'Graduate' 
999 'Generated total'.
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
effylev  lstudy   xeytotlt xeytotlm xeytotlw xefyaiat xefyaiam xefyaiaw xefyasit
xefyasim xefyasiw xefybkat xefybkam xefybkaw xefyhist xefyhism xefyhisw xefynhpt xefynhpm
xefynhpw xefywhit xefywhim xefywhiw xefy2mot xefy2mom xefy2mow xeyunknt xeyunknm xeyunknw
xeynralt xeynralm xeynralw .

descriptives variables=
efytotlt efytotlm efytotlw efyaiant efyaianm efyaianw efyasiat
efyasiam efyasiaw efybkaat efybkaam efybkaaw efyhispt efyhispm efyhispw efynhpit efynhpim
efynhpiw efywhitt efywhitm efywhitw efy2mort efy2morm efy2morw efyunknt efyunknm efyunknw
efynralt efynralm efynralw
/stats=def.

save outfile='effy2017_dist.sav' /compressed.
