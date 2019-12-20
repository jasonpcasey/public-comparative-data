*** Created: 6/12/2004 10:26:18 PM                           ***.
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
/file = 'c:\dct\ef2000a.csv'
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
xefrac01 a1
efrace01 f6
xefrac02 a1
efrace02 f6
xefrac03 a1
efrace03 f6
xefrac04 a1
efrace04 f6
xefrac05 a1
efrace05 f6
xefrac06 a1
efrace06 f6
xefrac07 a1
efrace07 f6
xefrac08 a1
efrace08 f6
xefrac09 a1
efrace09 f6
xefrac10 a1
efrace10 f6
xefrac11 a1
efrace11 f6
xefrac12 a1
efrace12 f6
xefrac13 a1
efrace13 f6
xefrac14 a1
efrace14 f6
xefrac15 a1
efrace15 f6
xefrac16 a1
efrace16 f6.

variable labels
unitid 'Unique identification number for an institution'
line 'Type of student counted'
section 'Attendance status'
lstudy 'Level of study'
xefrac01 'Imputation field for EFRACE01 - Nonresident alien men'
efrace01 'Nonresident alien men'
xefrac02 'Imputation field for EFRACE02 - Nonresident alien women'
efrace02 'Nonresident alien women'
xefrac03 'Imputation field for EFRACE03 - Black, non-Hispanic men'
efrace03 'Black, non-Hispanic men'
xefrac04 'Imputation field for EFRACE04 - Black, non-Hispanic women'
efrace04 'Black, non-Hispanic women'
xefrac05 'Imputation field for EFRACE05 - American Indian or Alaskan Native men'
efrace05 'American Indian or Alaskan Native men'
xefrac06 'Imputation field for EFRACE06 - American Indian or Alaskan Native women'
efrace06 'American Indian or Alaskan Native women'
xefrac07 'Imputation field for EFRACE07 - Asian or Pacific Islander men'
efrace07 'Asian or Pacific Islander men'
xefrac08 'Imputation field for EFRACE08 - Asian or Pacific Islander women'
efrace08 'Asian or Pacific Islander women'
xefrac09 'Imputation field for EFRACE09 - Hispanic men'
efrace09 'Hispanic men'
xefrac10 'Imputation field for EFRACE10 - Hispanic women'
efrace10 'Hispanic women'
xefrac11 'Imputation field for EFRACE11 - White, non-Hispanic men'
efrace11 'White, non-Hispanic men'
xefrac12 'Imputation field for EFRACE12 - White, non-Hispanic women'
efrace12 'White, non-Hispanic women'
xefrac13 'Imputation field for EFRACE13 - Race/ethnicity unknown men'
efrace13 'Race/ethnicity unknown men'
xefrac14 'Imputation field for EFRACE14 - Race/ethnicity unknown women'
efrace14 'Race/ethnicity unknown women'
xefrac15 'Imputation field for EFRACE15 - Grand total men'
efrace15 'Grand total men'
xefrac16 'Imputation field for EFRACE16 - Grand total women'
efrace16 'Grand total women'.

value labels
/line 1 'Full-time, first-time, first-year, degree-seeking undergraduates'
11 'Total, full-time graduates'
14 'Total, full-time'
15 'Part-time, first-time, first-year, degree-seeking undergraduates'
17 'Other part-time undergraduates'
22 'Total, part-time undergraduates'
23 'Total, part-time first-professional'
25 'Total, part-time graduates'
28 'Total, part-time'
29 'Total enrollment'
3 'Other, full-time undergraduates'
8 'Total, full-time undergraduates'
9 'Total, full-time first-professional'
/section 1 'Full-time'
2 'Part-time'
3 'All students'
/lstudy '1' 'Undergraduate'
'2' 'First-professional'
'3' 'Graduate'
'4' 'All students'
/xefrac01 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac02 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac03 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac04 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac05 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac06 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac07 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac08 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac09 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac10 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac11 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac12 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac13 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac14 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac15 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'
/xefrac16 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'I' 'Imputed using Group Median or Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'S' 'Legitimate skip'
'U' 'Imputed using other reported current year data'
'Z' 'Implied zero'.

frequencies variables=
 line section lstudy xefrac01 xefrac02 xefrac03 xefrac04 xefrac05 xefrac06 xefrac07 xefrac08 xefrac09 xefrac10 xefrac11 xefrac12 xefrac13 xefrac14 xefrac15 xefrac16.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace13 efrace14 efrace15 efrace16
/stats=def.

save outfile='ef2000a.sav' /compressed.

