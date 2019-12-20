*** Created  October 29, 2015                                ***;
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
/file = 'c:\dct\effy2008.csv' 
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
xeynralm a1
efynralm  f6 
xeynralw a1
efynralw  f6 
xfyrac03 a1
fyrace03  f6 
xfyrac04 a1
fyrace04  f6 
xfyrac05 a1
fyrace05  f6 
xfyrac06 a1
fyrace06  f6 
xfyrac07 a1
fyrace07  f6 
xfyrac08 a1
fyrace08  f6 
xfyrac09 a1
fyrace09  f6 
xfyrac10 a1
fyrace10  f6 
xfyrac11 a1
fyrace11  f6 
xfyrac12 a1
fyrace12  f6 
xeyunknm a1
efyunknm  f6 
xeyunknw a1
efyunknw  f6 
xeytotlm a1
efytotlm  f6 
xeytotlw a1
efytotlw  f6 
xeynralt a1
efynralt  f6 
xfyrac18 a1
fyrace18  f6 
xfyrac19 a1
fyrace19  f6 
xfyrac20 a1
fyrace20  f6 
xfyrac21 a1
fyrace21  f6 
xfyrac22 a1
fyrace22  f6 
xeyunknt a1
efyunknt  f6 
xeytotlt a1
efytotlt  f6 
xefyhism a1
efyhispm  f6 
xefyhisw a1
efyhispw  f6 
xefyaiam a1
efyaianm  f6 
xefyaiaw a1
efyaianw  f6 
xefyasim a1
efyasiam  f6 
xefyasiw a1
efyasiaw  f6 
xefybkam a1
efybkaam  f6 
xefybkaw a1
efybkaaw  f6 
xefynhpm a1
efynhpim  f6 
xefynhpw a1
efynhpiw  f6 
xefywhim a1
efywhitm  f6 
xefywhiw a1
efywhitw  f6 
xefy2mom a1
efy2morm  f6 
xefy2mow a1
efy2morw  f6 
xefyhist a1
efyhispt  f6 
xefyaiat a1
efyaiant  f6 
xefyasit a1
efyasiat  f6 
xfyabkat a1
efybkaat  f6 
xefynhpt a1
efynhpit  f6 
xefywhit a1
efywhitt  f6 
xefy2mot a1
efy2mort  f6 
xdveyait a1
dveyait   f6 
xdveyaim a1
dveyaim   f6 
xdveyaiw a1
dveyaiw   f6 
xdveyapt a1
dveyapt   f6 
xdveyapm a1
dveyapm   f6 
xdveyapw a1
dveyapw   f6 
xdveybkt a1
dveybkt   f6 
xdveybkm a1
dveybkm   f6 
xdveybkw a1
dveybkw   f6 
xdveyhst a1
dveyhst   f6 
xdveyhsm a1
dveyhsm   f6 
xdveyhsw a1
dveyhsw   f6 
xdveywht a1
dveywht   f6 
xdveywhm a1
dveywhm   f6 
xdveywhw a1
dveywhw   f6.

variable labels
unitid   'Unique identification number of the institution' 
effylev  'Level of student' 
lstudy   'Original level of study on survey form' 
xeynralm 'Imputation field for efynralm - Nonresident alien men'
efynralm 'Nonresident alien men' 
xeynralw 'Imputation field for efynralw - Nonresident alien women'
efynralw 'Nonresident alien women' 
xfyrac03 'Imputation field for fyrace03 - Black non-Hispanic men - old'
fyrace03 'Black non-Hispanic men - old' 
xfyrac04 'Imputation field for fyrace04 - Black non-Hispanic women - old'
fyrace04 'Black non-Hispanic women - old' 
xfyrac05 'Imputation field for fyrace05 - American Indian or Alaska Native men - old'
fyrace05 'American Indian or Alaska Native men - old' 
xfyrac06 'Imputation field for fyrace06 - American Indian or Alaska Native women - old'
fyrace06 'American Indian or Alaska Native women - old' 
xfyrac07 'Imputation field for fyrace07 - Asian or Pacific Islander men - old'
fyrace07 'Asian or Pacific Islander men - old' 
xfyrac08 'Imputation field for fyrace08 - Asian or Pacific Islander women - old'
fyrace08 'Asian or Pacific Islander women - old' 
xfyrac09 'Imputation field for fyrace09 - Hispanic men - old'
fyrace09 'Hispanic men - old' 
xfyrac10 'Imputation field for fyrace10 - Hispanic women - old'
fyrace10 'Hispanic women - old' 
xfyrac11 'Imputation field for fyrace11 - White non-Hispanic men - old'
fyrace11 'White non-Hispanic men - old' 
xfyrac12 'Imputation field for fyrace12 - White non-Hispanic women - old'
fyrace12 'White non-Hispanic women - old' 
xeyunknm 'Imputation field for efyunknm - Race/ethnicity unknown men'
efyunknm 'Race/ethnicity unknown men' 
xeyunknw 'Imputation field for efyunknw - Race/ethnicity unknown women'
efyunknw 'Race/ethnicity unknown women' 
xeytotlm 'Imputation field for efytotlm - Grand total men'
efytotlm 'Grand total men' 
xeytotlw 'Imputation field for efytotlw - Grand total women'
efytotlw 'Grand total women' 
xeynralt 'Imputation field for efynralt - Nonresident alien total'
efynralt 'Nonresident alien total' 
xfyrac18 'Imputation field for fyrace18 - Black non-Hispanic  total - old'
fyrace18 'Black non-Hispanic  total - old' 
xfyrac19 'Imputation field for fyrace19 - American Indian or Alaska Native total - old'
fyrace19 'American Indian or Alaska Native total - old' 
xfyrac20 'Imputation field for fyrace20 - Asian or Pacific Islander total - old'
fyrace20 'Asian or Pacific Islander total - old' 
xfyrac21 'Imputation field for fyrace21 - Hispanic total - old'
fyrace21 'Hispanic total - old' 
xfyrac22 'Imputation field for fyrace22 - White non-Hispanic total - old'
fyrace22 'White non-Hispanic total - old' 
xeyunknt 'Imputation field for efyunknt - Race/ethnicity unknown total'
efyunknt 'Race/ethnicity unknown total' 
xeytotlt 'Imputation field for efytotlt - Grand total'
efytotlt 'Grand total' 
xefyhism 'Imputation field for efyhispm - Hispanic men - new'
efyhispm 'Hispanic men - new' 
xefyhisw 'Imputation field for efyhispw - Hispanic women - new'
efyhispw 'Hispanic women - new' 
xefyaiam 'Imputation field for efyaianm - American Indian or Alaska Native men - new'
efyaianm 'American Indian or Alaska Native men - new' 
xefyaiaw 'Imputation field for efyaianw - American Indian or Alaska Native women - new'
efyaianw 'American Indian or Alaska Native women - new' 
xefyasim 'Imputation field for efyasiam - Asian men - new'
efyasiam 'Asian men - new' 
xefyasiw 'Imputation field for efyasiaw - Asian women - new'
efyasiaw 'Asian women - new' 
xefybkam 'Imputation field for efybkaam - Black or African American men - new'
efybkaam 'Black or African American men - new' 
xefybkaw 'Imputation field for efybkaaw - Black or African American women - new'
efybkaaw 'Black or African American women - new' 
xefynhpm 'Imputation field for efynhpim - Native Hawaiian or Other Pacific Islander men - new'
efynhpim 'Native Hawaiian or Other Pacific Islander men - new' 
xefynhpw 'Imputation field for efynhpiw - Native Hawaiian or Other Pacific Islander women - new'
efynhpiw 'Native Hawaiian or Other Pacific Islander women - new' 
xefywhim 'Imputation field for efywhitm - White men - new'
efywhitm 'White men - new' 
xefywhiw 'Imputation field for efywhitw - White women - new'
efywhitw 'White women - new' 
xefy2mom 'Imputation field for efy2morm - Two or more races men - new'
efy2morm 'Two or more races men - new' 
xefy2mow 'Imputation field for efy2morw - Two or more races women - new'
efy2morw 'Two or more races women - new' 
xefyhist 'Imputation field for efyhispt - Hispanic total - new'
efyhispt 'Hispanic total - new' 
xefyaiat 'Imputation field for efyaiant - American Indian or Alaska Native total - new'
efyaiant 'American Indian or Alaska Native total - new' 
xefyasit 'Imputation field for efyasiat - Asian total - new'
efyasiat 'Asian total - new' 
xfyabkat 'Imputation field for efybkaat - Black or African American total - new'
efybkaat 'Black or African American total - new' 
xefynhpt 'Imputation field for efynhpit - Native Hawaiian or Other Pacific Islander total - new'
efynhpit 'Native Hawaiian or Other Pacific Islander total - new' 
xefywhit 'Imputation field for efywhitt - White total - new'
efywhitt 'White total - new' 
xefy2mot 'Imputation field for efy2mort - Two or more races total - new'
efy2mort 'Two or more races total - new' 
xdveyait 'Imputation field for dveyait - American Indian or Alaska Native total - derived'
dveyait  'American Indian or Alaska Native total - derived' 
xdveyaim 'Imputation field for dveyaim - American Indian or Alaska Native men - derived'
dveyaim  'American Indian or Alaska Native men - derived' 
xdveyaiw 'Imputation field for dveyaiw - American Indian or Alaska Native women - derived'
dveyaiw  'American Indian or Alaska Native women - derived' 
xdveyapt 'Imputation field for dveyapt - Asian/Native Hawaiian/Other Pacific Islander total - derived'
dveyapt  'Asian/Native Hawaiian/Other Pacific Islander total - derived' 
xdveyapm 'Imputation field for dveyapm - Asian/Native Hawaiian/Other Pacific Islander men - derived'
dveyapm  'Asian/Native Hawaiian/Other Pacific Islander men - derived' 
xdveyapw 'Imputation field for dveyapw - Asian/Native Hawaiian/Other Pacific Islander women - derived'
dveyapw  'Asian/Native Hawaiian/Other Pacific Islander women - derived' 
xdveybkt 'Imputation field for dveybkt - Black or African American/Black non-Hispanic total - derived'
dveybkt  'Black or African American/Black non-Hispanic total - derived' 
xdveybkm 'Imputation field for dveybkm - Black or African American/Black non-Hispanic men - derived'
dveybkm  'Black or African American/Black non-Hispanic men - derived' 
xdveybkw 'Imputation field for dveybkw - Black or African American/Black non-Hispanic women - derived'
dveybkw  'Black or African American/Black non-Hispanic women - derived' 
xdveyhst 'Imputation field for dveyhst - Hispanic or Latino/Hispanic  total - derived'
dveyhst  'Hispanic or Latino/Hispanic  total - derived' 
xdveyhsm 'Imputation field for dveyhsm - Hispanic or Latino/Hispanic  men - derived'
dveyhsm  'Hispanic or Latino/Hispanic  men - derived' 
xdveyhsw 'Imputation field for dveyhsw - Hispanic or Latino/Hispanic  women - derived'
dveyhsw  'Hispanic or Latino/Hispanic  women - derived' 
xdveywht 'Imputation field for dveywht - White/White non-Hispanic total - derived'
dveywht  'White/White non-Hispanic total - derived' 
xdveywhm 'Imputation field for dveywhm - White/White non-Hispanic men - derived'
dveywhm  'White/White non-Hispanic men - derived' 
xdveywhw 'Imputation field for dveywhw - White/White non-Hispanic women - derived'
dveywhw  'White/White non-Hispanic women - derived'.

value labels
/effylev   
1 'All students total' 
2 'Undergraduate' 
3 'First professional' 
4 'Graduate' 
/lstudy    
1 'Undergraduate' 
2 'First professional' 
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
effylev  lstudy   xeynralm xeynralw xfyrac03 xfyrac04 xfyrac05 xfyrac06 xfyrac07
xfyrac08 xfyrac09 xfyrac10 xfyrac11 xfyrac12 xeyunknm xeyunknw xeytotlm xeytotlw xeynralt
xfyrac18 xfyrac19 xfyrac20 xfyrac21 xfyrac22 xeyunknt xeytotlt xefyhism xefyhisw xefyaiam
xefyaiaw xefyasim xefyasiw xefybkam xefybkaw xefynhpm xefynhpw xefywhim xefywhiw xefy2mom
xefy2mow xefyhist xefyaiat xefyasit xfyabkat xefynhpt xefywhit xefy2mot xdveyait xdveyaim
xdveyaiw xdveyapt xdveyapm xdveyapw xdveybkt xdveybkm xdveybkw xdveyhst xdveyhsm xdveyhsw
xdveywht xdveywhm xdveywhw .

descriptives variables=
efynralm efynralw fyrace03 fyrace04 fyrace05 fyrace06 fyrace07
fyrace08 fyrace09 fyrace10 fyrace11 fyrace12 efyunknm efyunknw efytotlm efytotlw efynralt
fyrace18 fyrace19 fyrace20 fyrace21 fyrace22 efyunknt efytotlt efyhispm efyhispw efyaianm
efyaianw efyasiam efyasiaw efybkaam efybkaaw efynhpim efynhpiw efywhitm efywhitw efy2morm
efy2morw efyhispt efyaiant efyasiat efybkaat efynhpit efywhitt efy2mort dveyait  dveyaim 
dveyaiw  dveyapt  dveyapm  dveyapw  dveybkt  dveybkm  dveybkw  dveyhst  dveyhsm  dveyhsw 
dveywht  dveywhm  dveywhw 
/stats=def.

save outfile='effy2008_dist.sav' /compressed.
