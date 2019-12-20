*** Created: 6/13/2004 2:12:20 AM                            ***.
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
/file = 'c:\dct\ef98_anr.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
line f2
section f2
lstudy a1
xef01 a1
efrace01 f6
xef02 a1
efrace02 f6
xef03 a1
efrace03 f6
xef04 a1
efrace04 f6
xef05 a1
efrace05 f6
xef06 a1
efrace06 f6
xef07 a1
efrace07 f6
xef08 a1
efrace08 f6
xef09 a1
efrace09 f6
xef10 a1
efrace10 f6
xef11 a1
efrace11 f6
xef12 a1
efrace12 f6
xef13 a1
efrace13 f6
xef14 a1
efrace14 f6
xef15 a1
efrace15 f6
xef16 a1
efrace16 f6.

variable labels
unitid 'Unique identification number for an institution'
line 'Type of student counted'
section 'Attendance status'
lstudy 'Level of study'
xef01 'Imputation field for EFRACE01 - Nonresident alien men'
efrace01 'Nonresident alien men'
xef02 'Imputation field for EFRACE02 - Nonresident alien women'
efrace02 'Nonresident alien women'
xef03 'Imputation field for EFRACE03 - Black, non-Hispanic men'
efrace03 'Black, non-Hispanic men'
xef04 'Imputation field for EFRACE04 - Black, non-Hispanic women'
efrace04 'Black, non-Hispanic women'
xef05 'Imputation field for EFRACE05 - American Indian or Alaskan Native men'
efrace05 'American Indian or Alaskan Native men'
xef06 'Imputation field for EFRACE06 - American Indian or Alaskan Native women'
efrace06 'American Indian or Alaskan Native women'
xef07 'Imputation field for EFRACE07 - Asian or Pacific Islander men'
efrace07 'Asian or Pacific Islander men'
xef08 'Imputation field for EFRACE08 - Asian or Pacific Islander women'
efrace08 'Asian or Pacific Islander women'
xef09 'Imputation field for EFRACE09 - Hispanic men'
efrace09 'Hispanic men'
xef10 'Imputation field for EFRACE10 - Hispanic women'
efrace10 'Hispanic women'
xef11 'Imputation field for EFRACE11 - White, non-Hispanic men'
efrace11 'White, non-Hispanic men'
xef12 'Imputation field for EFRACE12 - White, non-Hispanic women'
efrace12 'White, non-Hispanic women'
xef13 'Imputation field for EFRACE13 - Race/ethnicity unknown men'
efrace13 'Race/ethnicity unknown men'
xef14 'Imputation field for EFRACE14 - Race/ethnicity unknown women'
efrace14 'Race/ethnicity unknown women'
xef15 'Imputation field for EFRACE15 - Grand total men'
efrace15 'Grand total men'
xef16 'Imputation field for EFRACE16 - Grand total women'
efrace16 'Grand total women'.

value labels
/line 1 'Full-time, degree seeking, first year, first time'
10 'Full-time, first professional, other'
11 'Full-time, graduate, degree seeking, first time'
12 'Full-time, graduate, degree seeking, other'
13 'Full-time, all other graduates'
14 'Total full-time, post-baccalaureate'
15 'Part-time, degree seeking, first year, first time'
16 'Part-time, degree seeking, first year, other'
17 'Part-time, degree seeking, second year'
18 'Part-time, degree seeking, third year'
19 'Part-time, degree seeking, fourth year and beyond'
2 'Full-time, degree seeking, first year, other'
20 'Part-time, degree seeking, no level'
21 'Part-time, all other undergraduates'
22 'Total part-time undergraduates'
23 'Part-time, first professional, first time'
24 'Part-time, first professional, other'
25 'Part-time, graduate, degree seeking, first time'
26 'Part-time, graduate, degree seeking, other'
27 'Part-time, all other graduates'
28 'Total part-time, post-baccalaureate'
29 'Grand total'
3 'Full-time, degree seeking, second year'
4 'Full-time, degree seeking, third year'
5 'Full-time, degree seeking, fourth year and beyond'
6 'Full-time, degree seeking, no level'
7 'Full-time, all other undergraduates'
8 'Total full-time undergraduates'
9 'Full-time, first professional, first time'
/section 1 'Full-time students (lines 1-14)'
2 'Part-time students (lines 15-28)'
/lstudy 'A' 'Undergraduates - all forms'
'B' 'First-professional students, forms EF1 and CN'
'C' 'Graduate students, forms EF1 and CN'
'D' 'Total postbaccalaureate, form EF1'
/xef01 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef02 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef03 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef04 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef05 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef06 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef07 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef08 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef09 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef10 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef11 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef12 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef13 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef14 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef15 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'
/xef16 'A' 'Analyst corrected reported value'
'B' 'Not applicable'
'C' 'Analyst corrected a cell that was previously not reported'
'D' 'Suppressed to protect confidentiality'
'G' 'Data generated from other data values'
'I' 'Imputed using method other than prior year data'
'J' 'Data adjusted in scan edits'
'M' 'Data copied from another field'
'N' 'Original data field was not reported'
'P' 'Imputed using data from prior year '
'R' 'Reported'
'S' 'Details are adjusted to sum to total'
'T' 'Total generated to equal the sum of detail'
'U' 'Separate Room and Board amounts unavailable'
'Z' 'Implied zero'.

frequencies variables=
 line section lstudy xef01 xef02 xef03 xef04 xef05 xef06 xef07 xef08 xef09 xef10 xef11 xef12 xef13 xef14 xef15 xef16.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace13 efrace14 efrace15 efrace16
/stats=def.

save outfile='ef98_anr.sav' /compressed.

