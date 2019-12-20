*** Created: 8/3/2010 11:07:56 AM                            ***.
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
/file = 'c:\dct\effy2009_rv.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
effylev f1
lstudy f3
xeynralm a1
efynralm f6
xeynralw a1
efynralw f6
xfyrac03 a1
fyrace03 f6
xfyrac04 a1
fyrace04 f6
xfyrac05 a1
fyrace05 f6
xfyrac06 a1
fyrace06 f6
xfyrac07 a1
fyrace07 f6
xfyrac08 a1
fyrace08 f6
xfyrac09 a1
fyrace09 f6
xfyrac10 a1
fyrace10 f6
xfyrac11 a1
fyrace11 f6
xfyrac12 a1
fyrace12 f6
xeyunknm a1
efyunknm f6
xeyunknw a1
efyunknw f6
xeytotlm a1
efytotlm f6
xeytotlw a1
efytotlw f6
xeynralt a1
efynralt f6
xfyrac18 a1
fyrace18 f6
xfyrac19 a1
fyrace19 f6
xfyrac20 a1
fyrace20 f6
xfyrac21 a1
fyrace21 f6
xfyrac22 a1
fyrace22 f6
xeyunknt a1
efyunknt f6
xeytotlt a1
efytotlt f6
xefyhism a1
efyhispm f6
xefyhisw a1
efyhispw f6
xefyaiam a1
efyaianm f6
xefyaiaw a1
efyaianw f6
xefyasim a1
efyasiam f6
xefyasiw a1
efyasiaw f6
xefybkam a1
efybkaam f6
xefybkaw a1
efybkaaw f6
xefynhpm a1
efynhpim f6
xefynhpw a1
efynhpiw f6
xefywhim a1
efywhitm f6
xefywhiw a1
efywhitw f6
xefy2mom a1
efy2morm f6
xefy2mow a1
efy2morw f6
xefyhist a1
efyhispt f6
xefyaiat a1
efyaiant f6
xefyasit a1
efyasiat f6
xefybkat a1
efybkaat f6
xefynhpt a1
efynhpit f6
xefywhit a1
efywhitt f6
xefy2mot a1
efy2mort f6
xdveyait a1
dveyait f6
xdveyaim a1
dveyaim f6
xdveyaiw a1
dveyaiw f6
xdveyapt a1
dveyapt f6
xdveyapm a1
dveyapm f6
xdveyapw a1
dveyapw f6
xdveybkt a1
dveybkt f6
xdveybkm a1
dveybkm f6
xdveybkw a1
dveybkw f6
xdveyhst a1
dveyhst f6
xdveyhsm a1
dveyhsm f6
xdveyhsw a1
dveyhsw f6
xdveywht a1
dveywht f6
xdveywhm a1
dveywhm f6
xdveywhw a1
dveywhw f6.

variable labels
unitid 'Unique identification number for an institution'
effylev 'Level of student'
lstudy 'Original level of study on survey form'
xeynralm 'Imputation field for EFYNRALM - Nonresident alien men'
efynralm 'Nonresident alien men'
xeynralw 'Imputation field for EFYNRALW - Nonresident alien women'
efynralw 'Nonresident alien women'
xfyrac03 'Imputation field for FYRACE03 - Black non-Hispanic men - old'
fyrace03 'Black non-Hispanic men - old'
xfyrac04 'Imputation field for FYRACE04 - Black non-Hispanic women - old'
fyrace04 'Black non-Hispanic women - old'
xfyrac05 'Imputation field for FYRACE05 - American Indian or Alaska Native men - old'
fyrace05 'American Indian or Alaska Native men - old'
xfyrac06 'Imputation field for FYRACE06 - American Indian or Alaska Native women - old'
fyrace06 'American Indian or Alaska Native women - old'
xfyrac07 'Imputation field for FYRACE07 - Asian or Pacific Islander men - old'
fyrace07 'Asian or Pacific Islander men - old'
xfyrac08 'Imputation field for FYRACE08 - Asian or Pacific Islander women - old'
fyrace08 'Asian or Pacific Islander women - old'
xfyrac09 'Imputation field for FYRACE09 - Hispanic men - old'
fyrace09 'Hispanic men - old'
xfyrac10 'Imputation field for FYRACE10 - Hispanic women - old'
fyrace10 'Hispanic women - old'
xfyrac11 'Imputation field for FYRACE11 - White non-Hispanic men - old'
fyrace11 'White non-Hispanic men - old'
xfyrac12 'Imputation field for FYRACE12 - White non-Hispanic women - old'
fyrace12 'White non-Hispanic women - old'
xeyunknm 'Imputation field for EFYUNKNM - Race/ethnicity unknown men'
efyunknm 'Race/ethnicity unknown men'
xeyunknw 'Imputation field for EFYUNKNW - Race/ethnicity unknown women'
efyunknw 'Race/ethnicity unknown women'
xeytotlm 'Imputation field for EFYTOTLM - Grand total men'
efytotlm 'Grand total men'
xeytotlw 'Imputation field for EFYTOTLW - Grand total women'
efytotlw 'Grand total women'
xeynralt 'Imputation field for EFYNRALT - Nonresident alien total'
efynralt 'Nonresident alien total'
xfyrac18 'Imputation field for FYRACE18 - Black non-Hispanic  total - old'
fyrace18 'Black non-Hispanic  total - old'
xfyrac19 'Imputation field for FYRACE19 - American Indian or Alaska Native total - old'
fyrace19 'American Indian or Alaska Native total - old'
xfyrac20 'Imputation field for FYRACE20 - Asian or Pacific Islander total - old'
fyrace20 'Asian or Pacific Islander total - old'
xfyrac21 'Imputation field for FYRACE21 - Hispanic total - old'
fyrace21 'Hispanic total - old'
xfyrac22 'Imputation field for FYRACE22 - White non-Hispanic total - old'
fyrace22 'White non-Hispanic total - old'
xeyunknt 'Imputation field for EFYUNKNT - Race/ethnicity unknown total'
efyunknt 'Race/ethnicity unknown total'
xeytotlt 'Imputation field for EFYTOTLT - Grand total'
efytotlt 'Grand total'
xefyhism 'Imputation field for EFYHISPM - Hispanic men - new'
efyhispm 'Hispanic men - new'
xefyhisw 'Imputation field for EFYHISPW - Hispanic women - new'
efyhispw 'Hispanic women - new'
xefyaiam 'Imputation field for EFYAIANM - American Indian or Alaska Native men - new'
efyaianm 'American Indian or Alaska Native men - new'
xefyaiaw 'Imputation field for EFYAIANW - American Indian or Alaska Native women - new'
efyaianw 'American Indian or Alaska Native women - new'
xefyasim 'Imputation field for EFYASIAM - Asian men - new'
efyasiam 'Asian men - new'
xefyasiw 'Imputation field for EFYASIAW - Asian women - new'
efyasiaw 'Asian women - new'
xefybkam 'Imputation field for EFYBKAAM - Black or African American men - new'
efybkaam 'Black or African American men - new'
xefybkaw 'Imputation field for EFYBKAAW - Black or African American women - new'
efybkaaw 'Black or African American women - new'
xefynhpm 'Imputation field for EFYNHPIM - Native Hawaiian or Other Pacific Islander men - new'
efynhpim 'Native Hawaiian or Other Pacific Islander men - new'
xefynhpw 'Imputation field for EFYNHPIW - Native Hawaiian or Other Pacific Islander women - new'
efynhpiw 'Native Hawaiian or Other Pacific Islander women - new'
xefywhim 'Imputation field for EFYWHITM - White men - new'
efywhitm 'White men - new'
xefywhiw 'Imputation field for EFYWHITW - White women - new'
efywhitw 'White women - new'
xefy2mom 'Imputation field for EFY2MORM - Two or more races men - new'
efy2morm 'Two or more races men - new'
xefy2mow 'Imputation field for EFY2MORW - Two or more races women - new'
efy2morw 'Two or more races women - new'
xefyhist 'Imputation field for EFYHISPT - Hispanic total - new'
efyhispt 'Hispanic total - new'
xefyaiat 'Imputation field for EFYAIANT - American Indian or Alaska Native total - new'
efyaiant 'American Indian or Alaska Native total - new'
xefyasit 'Imputation field for EFYASIAT - Asian total - new'
efyasiat 'Asian total - new'
xefybkat 'Imputation field for  -'
efybkaat 'Black or African American total - new'
xefynhpt 'Imputation field for EFYNHPIT - Native Hawaiian or Other Pacific Islander total - new'
efynhpit 'Native Hawaiian or Other Pacific Islander total - new'
xefywhit 'Imputation field for EFYWHITT - White total - new'
efywhitt 'White total - new'
xefy2mot 'Imputation field for EFY2MORT - Two or more races total - new'
efy2mort 'Two or more races total - new'
xdveyait 'Imputation field for DVEYAIT - American Indian or Alaska Native total - derived'
dveyait 'American Indian or Alaska Native total - derived'
xdveyaim 'Imputation field for DVEYAIM - American Indian or Alaska Native men - derived'
dveyaim 'American Indian or Alaska Native men - derived'
xdveyaiw 'Imputation field for DVEYAIW - American Indian or Alaska Native women - derived'
dveyaiw 'American Indian or Alaska Native women - derived'
xdveyapt 'Imputation field for DVEYAPT - Asian/Native Hawaiian/Other Pacific Islander total - derived'
dveyapt 'Asian/Native Hawaiian/Other Pacific Islander total - derived'
xdveyapm 'Imputation field for DVEYAPM - Asian/Native Hawaiian/Other Pacific Islander men - derived'
dveyapm 'Asian/Native Hawaiian/Other Pacific Islander men - derived'
xdveyapw 'Imputation field for DVEYAPW - Asian/Native Hawaiian/Other Pacific Islander women - derived'
dveyapw 'Asian/Native Hawaiian/Other Pacific Islander women - derived'
xdveybkt 'Imputation field for DVEYBKT - Black or African American/Black non-Hispanic total - derived'
dveybkt 'Black or African American/Black non-Hispanic total - derived'
xdveybkm 'Imputation field for DVEYBKM - Black or African American/Black non-Hispanic men - derived'
dveybkm 'Black or African American/Black non-Hispanic men - derived'
xdveybkw 'Imputation field for DVEYBKW - Black or African American/Black non-Hispanic women - derived'
dveybkw 'Black or African American/Black non-Hispanic women - derived'
xdveyhst 'Imputation field for DVEYHST - Hispanic or Latino/Hispanic  total - derived'
dveyhst 'Hispanic or Latino/Hispanic  total - derived'
xdveyhsm 'Imputation field for DVEYHSM - Hispanic or Latino/Hispanic  men - derived'
dveyhsm 'Hispanic or Latino/Hispanic  men - derived'
xdveyhsw 'Imputation field for DVEYHSW - Hispanic or Latino/Hispanic  women - derived'
dveyhsw 'Hispanic or Latino/Hispanic  women - derived'
xdveywht 'Imputation field for DVEYWHT - White/White non-Hispanic total - derived'
dveywht 'White/White non-Hispanic total - derived'
xdveywhm 'Imputation field for DVEYWHM - White/White non-Hispanic men - derived'
dveywhm 'White/White non-Hispanic men - derived'
xdveywhw 'Imputation field for DVEYWHW - White/White non-Hispanic women - derived'
dveywhw 'White/White non-Hispanic women - derived'.

value labels
/effylev 1 'All students total'
2 'Undergraduate'
3 'First professional'
4 'Graduate'
/lstudy 1 'Undergraduate'
2 'First professional'
3 'Graduate'
999 'Generated total'.

*  the following are the possible values and labels for the imputation field variables 
*'A' 'Not applicable'
*'B' 'Institution left item blank'
*'C' 'Analyst corrected reported value'
*'D' 'Do not know'
*'G' 'Data generated from other data values'
*'H' 'Value not derived - data not usable'
*'J' 'Logical imputation'
*'K' 'Ratio adjustment '
*'L' 'Imputed using the Group Median procedure'
*'N' 'Imputed using Nearest Neighbor procedure'
*'P' 'Imputed using Carry Forward procedure'
*'R' 'Reported'
*'Z' 'Implied zero'


frequencies variables=
 effylev lstudy xeynralm xeynralw xfyrac03 xfyrac04 xfyrac05 xfyrac06 xfyrac07 xfyrac08 xfyrac09 xfyrac10 xfyrac11 xfyrac12 xeyunknm xeyunknw xeytotlm xeytotlw xeynralt xfyrac18 xfyrac19 xfyrac20 xfyrac21 xfyrac22 xeyunknt xeytotlt xefyhism xefyhisw xefyaiam xefyaiaw xefyasim xefyasiw xefybkam xefybkaw xefynhpm xefynhpw xefywhim xefywhiw xefy2mom xefy2mow xefyhist xefyaiat xefyasit xefybkat xefynhpt xefywhit xefy2mot xdveyait xdveyaim xdveyaiw xdveyapt xdveyapm xdveyapw xdveybkt xdveybkm xdveybkw xdveyhst xdveyhsm xdveyhsw xdveywht xdveywhm xdveywhw.

descriptives variables=
 efynralm efynralw fyrace03 fyrace04 fyrace05 fyrace06 fyrace07 fyrace08 fyrace09 fyrace10 fyrace11 fyrace12 efyunknm efyunknw efytotlm efytotlw efynralt fyrace18 fyrace19 fyrace20 fyrace21 fyrace22 efyunknt efytotlt efyhispm efyhispw efyaianm efyaianw efyasiam efyasiaw efybkaam efybkaaw efynhpim efynhpiw efywhitm efywhitw efy2morm efy2morw efyhispt efyaiant efyasiat efybkaat efynhpit efywhitt efy2mort dveyait dveyaim dveyaiw dveyapt dveyapm dveyapw dveybkt dveybkm dveybkw dveyhst dveyhsm dveyhsw dveywht dveywhm dveywhw
/stats=def.

save outfile='effy2009.sav' /compressed.

