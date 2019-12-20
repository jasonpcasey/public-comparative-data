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
/file = 'c:\dct\flags2018.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
stat_ic   f2 
lock_ic   f2 
imp_ic    f2 
stat_c    f2 
lock_c    f2 
prch_c    f2 
idx_c     f6 
pcc_f     f2 
imp_c     f2 
stat_e12  f2 
lock_e12  f2 
prch_e12  f2 
idx_e12   f6 
pce12_f   f2 
imp_e12   f2.

variable labels
unitid   'Unique identification number of the institution' 
stat_ic  'Response status -  Institutional characteristics component' 
lock_ic  'Status of IC component when institution was migrated' 
imp_ic   'Type of imputation method Institutional Characteristics' 
stat_c   'Response status -  Completions component' 
lock_c   'Status of completions component when institution was migrated' 
prch_c   'Parent/child indicator for completions' 
idx_c    'UnitID of Parent institution' 
pcc_f    'Parent/child allocation factor - Completions' 
imp_c    'Type of imputation method Completions' 
stat_e12 'Response status of institution - 12-month enrollment' 
lock_e12 'Status of 12-month enrollment component whe data collection closed' 
prch_e12 'Parent/child indicator for 12-month enrollment' 
idx_e12  'ID number of parent institution - 12-month enrollment' 
pce12_f  'Parent/child allocation factor - 12-month enrollment' 
imp_e12  'Type of imputation method - 12 month enrollment'.

value labels
/stat_ic   
1 'Respondent' 
2 'Partial respondent, imputed' 
3 'Partial respondent, not imputed' 
5 'Nonrespondent, not imputed' 
-9 'Not active' 
/lock_ic   
0 'No data' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/imp_ic    
1 'Carry forward (CF)' 
-2 'Not applicable' 
/stat_c    
1 'Response' 
5 'Nonrespondent, not imputed' 
4 'Non respondent, imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_c    
0 'No data submitted' 
3 'Edited, some errors/warnings remain' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/prch_c    
1 'Parent record includes data from child campuses' 
2 'Child record - all data reported with parent campus' 
-2 'Not applicable' 
/imp_c     
1 'Carry forward (CF)' 
-2 'Not applicable' 
/stat_e12  
1 'Respondent' 
4 'Non respondent, imputed' 
5 'Nonrespondent not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_e12  
0 'No data submitted' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/prch_e12  
-2 'Not applicable' 
/imp_e12   
1 'Carry foreward (CF)' 
2 'Nearest neighbor (NN)' 
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
stat_ic  lock_ic  imp_ic   stat_c   lock_c   prch_c   imp_c   
stat_e12 lock_e12 prch_e12 imp_e12  .

descriptives variables=
idx_c    pcc_f   
idx_e12  pce12_f 
/stats=def.

save outfile='flags2018_dist.sav' /compressed.
