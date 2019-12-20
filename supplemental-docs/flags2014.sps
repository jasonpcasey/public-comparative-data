*** Created December 16, 2016                                ***;
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
/file = 'c:\dct\flags2014.csv' 
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
imp_e12   f2 
stat_sfa  f2 
lock_sfa  f2 
prch_sfa  f2 
idx_sfa   f6 
pcsfa_f   f2 
imp_sfa   f2 
sfaform   f2 
stat_gr   f2 
lock_gr   f2 
prch_gr   f2 
idx_gr    f6 
pcgr_f    f2 
imp_gr    f2 
cohrtstu  f2 
stat_gr2  f2 
lock_gr2  f2 
prch_gr2  f2 
idx_gr2   f6 
imp_gr2   f2 
stat_adm  f2 
lock_adm  f2 
imp_adm   f2 
stat_hr   f2 
lock_hr   f2 
prch_hr   f2 
idx_hr    f6 
pchr_f    f2 
imp_hr    f2 
ftemp15   f2 
tenursys  f2 
sa_excl   f2 
stat_eap  f2 
stat_sa   f2 
stat_s    f2 
stat_ef   f2 
lock_ef   f2 
prch_ef   f2 
idx_ef    f6 
pcef_f    f2 
imp_ef    f2 
pta99_ef  f2 
ptacipef  f2 
ptb_ef    f2 
ptc_ef    f2 
ptd_ef    f2 
stat_f    f2 
lock_f    f2 
prch_f    f2 
idx_f     f6 
pcf_f     f2 
imp_f     f2 
form_f    f2 
fybeg    a6 
fyend    a6 
gpfs      f2 
f1gasbal  f2 
f2pell    f2 
f3pell    f2 
f_athltc  f2 
f3bist    f2 
stat_al   f2 
lock_al   f2 
prch_al   f2 
idx_al    f2 
pcal_f    f2 
imp_al    f2 
hasal     f2 
ntrldstr  f2 
rev_ic    f2 
rev_c     f2 
rev_e12   f2 
rev_sfa   f2 
rev_gr    f2 
rev_gr2   f2 
rev_adm   f2 
rev_hr    f2 
rev_ef    f2 
rev_f     f2 
pcf_f_rv  f6 
rev_al    f2.

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
imp_e12  'Type of imputation method - 12 month enrollment' 
stat_sfa 'Response status for Student Financial Aid survey' 
lock_sfa 'Status of Student Financial Aid Survey when data collection closed' 
prch_sfa 'Parent/child indicator Student Financial Aid survey' 
idx_sfa  'ID number of parent institution Student Financial Aid' 
pcsfa_f  'Parent/child allocation factor - Student Financial Aid' 
imp_sfa  'Type of imputation method Student Financial Aid' 
sfaform  'SFA collection form type' 
stat_gr  'Response status - Graduation Rates' 
lock_gr  'Status of Graduation rate survey when data collection closed' 
prch_gr  'Parent/child indicator - Graduation Rates' 
idx_gr   'UNITID of parent institution reporting Graduation Rates' 
pcgr_f   'Parent/child allocation factor - Graduation Rates' 
imp_gr   'Imputation method - Graduation Rates' 
cohrtstu 'Enrolled any full-time first-time students' 
stat_gr2 'Response status - Graduation Rates 200' 
lock_gr2 'Status of Graduation rate 200 survey when data collection closed' 
prch_gr2 'Parent/child indicator - Graduation Rates 200' 
idx_gr2  'UNITID of parent institution reporting Graduation Rates 200' 
imp_gr2  'Imputation method - Graduation Rates 200' 
stat_adm 'Response status - Admissions component' 
lock_adm 'Status of admissions component when institution was migrated' 
imp_adm  'Type of imputation method - Admissions component' 
stat_hr  'Response status of institution for Human Resources (HR) component' 
lock_hr  'Status of Human Resources (HR) component when data collection closed' 
prch_hr  'Parent/child  indicator - Human Resources (HR) component' 
idx_hr   'ID of institution where data are reported for the Human Resources (HR) component' 
pchr_f   'Parent/child allocation factor - HR' 
imp_hr   'Type of Imputation method - Human Resources (HR) component' 
ftemp15  'Does institution have 15 or more full-time employees' 
tenursys 'Does institution have a tenure system' 
sa_excl  'Salary exclusion' 
stat_eap 'Response status for EAP' 
stat_sa  'Response status to SA survey' 
stat_s   'Response status for Fall Staff' 
stat_ef  'Response status of institution -  Fall enrollment' 
lock_ef  'Status of Fall Enrollment survey when data collection closed' 
prch_ef  'Parent/child indicator f- Fall enrollment' 
idx_ef   'ID number of parent institution - Fall enrollment' 
pcef_f   'Parent/child allocation factor - Fall enrollment' 
imp_ef   'Type of imputation method - Fall enrollment' 
pta99_ef 'Status enrollment by race/ethnicity (99.0000 CIP)' 
ptacipef 'Status enrollment by major' 
ptb_ef   'Status enrollment summary by age' 
ptc_ef   'Status residence of first-time first-year students' 
ptd_ef   'Status total entering class and retention rates' 
stat_f   'Response status for Finance survey' 
lock_f   'Status of Finance survey when data collection closed' 
prch_f   'Parent/child indicator for Finance survey' 
idx_f    'ID number of parent institution for Finance survey' 
pcf_f    'Parent/child allocation factor - Finance' 
imp_f    'Type of imputation method  Finance' 
form_f   'Identifies reporting standards GASB, FASB, or modified FASB(for-profit institutions) used to report finance data' 
fybeg    'Beginning date of fiscal year covered (all finance)' 
fyend    'End date of fiscal year covered  (all finance)' 
gpfs     'Clean Opinion GPFS from auditor (all finance)' 
f1gasbal 'GASB alternative accounting model' 
f2pell   'Account for Pell grants as pass through transactions or as federal grant revenues to the institution (FASB  institutions)?' 
f3pell   'Account for Pell grants as pass through transactions or as federal grant revenues to the institution (private-for-profit institutions)?' 
f_athltc 'Are intercollegiate athletic expenses accounted for as auxiliary enterprises or treated as student services?' 
f3bist   'Type of business structure for tax purposes (private-for-profit, degree-granting institutions)' 
stat_al  'Response status -  Academic Libraries component' 
lock_al  'Status of Academic Library component when institution was migrated' 
prch_al  'Parent/child indicator for Academic Libraries' 
idx_al   'UnitID of Parent institution - Academic Libraries' 
pcal_f   'Parent/child allocation factor - Academic Libraries' 
imp_al   'Type of imputation method - Academic Libraries' 
hasal    'Has an academic library' 
ntrldstr 'Natural Disaster identification' 
rev_ic   'Revision status - Institutional Characteristics' 
rev_c    'Revision status - Completions' 
rev_e12  'Revision status - 12 month Enrollment' 
rev_sfa  'Revision status - Student Financial Aid' 
rev_gr   'Revision status 
 - Graduation Rates' 
rev_gr2  'Revision status 
 - Graduation Rates 200' 
rev_adm  'Revision status - Admissions component' 
rev_hr   'Revision status - Human Resources' 
rev_ef   'Revision status - Fall Enrollment' 
rev_f    'Revision status - Finance' 
pcf_f_rv 'Parent/child allocation factor, for institutions submitting revised finance' 
rev_al   'Revison status - Acacemic Libraries component'.

value labels
/stat_ic   
1 'Respondent' 
3 'Partial respondent, not imputed' 
5 'Nonrespondent, not imputed' 
-9 'Not active' 
/lock_ic   
0 'No data' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/imp_ic    
-2 'Not applicable' 
/stat_c    
1 'Response' 
5 'Nonrespondent, not imputed' 
4 'Non respondent, imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_c    
0 'No data submitted' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/prch_c    
1 'Parent record includes data from child campuses' 
2 'Child record - all data reported with parent campus' 
-2 'Not applicable' 
/imp_c     
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/stat_e12  
1 'Respondent' 
4 'Non respondent, imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_e12  
0 'No data submitted' 
3 'Edited, some errors/warnings remain' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/prch_e12  
-2 'Not applicable' 
/imp_e12   
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/stat_sfa  
1 'Respondent' 
2 'Partial respondent, imputed' 
4 'Nonrespondent, imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_sfa  
8 'Complete, final lock applied' 
0 'No data submitted' 
3 'Edited, some errors/warnings remain' 
-2 'Not applicable' 
/prch_sfa  
1 'Parent record - includes data from branch campuses' 
2 'Child record - data reported with parent campus' 
-2 'Not applicable' 
/imp_sfa   
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/sfaform   
1 'Undergraduate student financial and undergraduate military servicemembers/veteran^s benefits are applicable' 
2 'Undergraduate student financial and undergraduate and graduate military servicemembers/veteran^s benefits are applicable' 
3 'Graduate military servicemembers/veteran^s benefits screens are applicable' 
-2 'Not applicable' 
/stat_gr   
1 'Respondent' 
4 'Nonrespondent, imputed' 
5 'Nonrespondent, not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_gr   
0 'No data submitted' 
8 'Complete' 
-2 'Not applicable' 
/prch_gr   
1 'Parent record -  includes data from child campuses' 
2 'Child record - data reported at parent campus' 
-2 'Not applicable' 
/imp_gr    
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/cohrtstu  
1 'Yes' 
2 'No, did not enroll full-time, first-time (undergraduate) students' 
3 'No, did not offer programs at or below the baccalaureate level' 
4 'No, institution was not in operation in cohort year' 
-1 'Not reported' 
-2 'Not applicable' 
/stat_gr2  
1 'Respondent' 
4 'Nonrespondent, imputed' 
5 'Nonrespondent, not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_gr2  
0 'No data submitted' 
8 'Complete' 
-2 'Not applicable' 
/prch_gr2  
1 'Parent record -  includes data from child campuses' 
2 'Child record - data reported at parent campus' 
-2 'Not applicable' 
/imp_gr2   
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/stat_adm  
1 'Respondent' 
-2 'Not applicable' 
-9 'Not active' 
/lock_adm  
8 'Complete, final lock applied' 
-2 'Not applicable' 
/imp_adm   
-2 'Not applicable' 
/stat_hr   
1 'Respondent' 
4 'Nonrespondent, imputed' 
5 'Nonrespondent, not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_hr   
0 'No data submitted' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/prch_hr   
1 'Parent record includes data from child campuses' 
2 'Child record - all data reported with parent campus' 
-2 'Not applicable' 
/imp_hr    
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/ftemp15   
1 'Yes' 
2 'No' 
-1 'Not reported' 
-2 'Not applicable' 
/tenursys  
1 'Has tenure system' 
2 'No tenure system' 
-1 'Not reported' 
-2 'Not applicable' 
/sa_excl   
1 'Yes' 
2 'No' 
-2 'Not applicable' 
-1 'Not reported' 
/stat_eap  
1 'Respondent' 
4 'Nonrespondent, imputed' 
5 'Nonrespondent, not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/stat_sa   
1 'Respondent' 
4 'Nonrespondent, imputed' 
-2 'Not applicable' 
-9 'Not active' 
/stat_s    
1 'Respondent' 
5 'Nonrespondent, not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/stat_ef   
1 'Respondent' 
4 'Nonrespondent imputed' 
5 'Nonrespondent not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_ef   
0 'No data submitted' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/prch_ef   
1 'Parent record includes data from child campuses' 
2 'Child record - data reported with parent campus' 
-2 'Not applicable' 
/imp_ef    
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/pta99_ef  
1 'Respondent' 
4 'Nonrespondent imputed' 
5 'Nonrespondent not imputed' 
-2 'Not applicable' 
-9 '{Not active}' 
/ptacipef  
1 'Respondent' 
5 'Nonrespondent' 
-2 'Not applicable' 
-9 'Not active' 
/ptb_ef    
1 'Respondent' 
5 'Nonrespondent not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/ptc_ef    
1 'Respondent' 
4 'Nonrespondent imputed' 
5 'Nonrespondent not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/ptd_ef    
1 'Respondent' 
4 'Nonrespondent, imputed' 
5 'Nonrespondent, not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/stat_f    
1 'Respondent' 
4 'Nonrespondent imputed' 
5 'Nonrespondent not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_f    
8 'Complete, final lock applied' 
0 'No data submitted' 
-2 'Not applicable' 
/prch_f    
1 'Parent record - includes data from branch campuses' 
2 'Child record - data reported with parent campus' 
3 'Partial child record - reports partial data and other data reported with parent campus' 
5 'Child record - reports partial data but other data is included  with entity that is not a postsecondary institution' 
-2 'Not applicable' 
/imp_f     
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/form_f    
4 'GASB Reporting Standards 34/35' 
2 'FASB Reporting Standards' 
3 'Private for-profit institutions' 
-2 'Not applicable' 
/fybeg     
'102012'  'October 2012' 
'112012'  'November 2012' 
'122012'  'December 2012' 
'012013'  'January 2013' 
'022013'  'February 2013' 
'032013'  'March 2013' 
'042013'  'April 2013' 
'052013'  'May 2013' 
'062013'  'June 2013' 
'072013'  'July 2013' 
'082013'  'August 2013' 
'092013'  'September 2013' 
'102013'  'October 2013' 
'112013'  'November 2013' 
'122013'  'December 2013' 
'-1'  'Not reported' 
'-2'  'Not applicable' 
/fyend     
'062013'  'June 2013' 
'072013'  'July 2013' 
'092013'  'September 2013' 
'102013'  'October 2013' 
'112013'  'November 2013' 
'122013'  'December 2013' 
'012014'  'January 2014' 
'022014'  'February 2014' 
'032014'  'March 2014' 
'042014'  'April 2014' 
'052014'  'May 2014' 
'062014'  'June 2014' 
'072014'  'July 2014' 
'082014'  'August 2014' 
'092014'  'September 2014' 
'-1'  'Not reported' 
'-2'  'Not applicable' 
/gpfs      
1 'Yes' 
2 'No' 
3 'Don^t know' 
-1 'Not reported' 
-2 'Not applicable' 
/f1gasbal  
1 'Business Type Activities' 
2 'Governmental Activities' 
3 'Governmental Activities with Business-Type Activities' 
-1 'Not reported' 
-2 'Not applicable' 
/f2pell    
1 'Pass through (agency)' 
2 'Federal grants' 
3 'Does not award Pell grants' 
-1 'Not reported' 
-2 'Not applicable' 
/f3pell    
1 'Pass through (agency)' 
2 'Federal grants' 
3 'Does not award Pell grants' 
-1 'Not reported' 
-2 'Not applicable' 
/f_athltc  
1 'Auxiliary enterprises' 
2 'Student services' 
3 'Does not participate in intercollegiate athletics' 
4 'Other' 
-1 'Not reported' 
-2 'Not applicable' 
/f3bist    
1 'Sole Proprietorship' 
2 'Partnership (General, Limited, Limited Liability)' 
3 'C Corporation' 
4 'S Corporation' 
5 'Limited Liability Company (LLC)' 
-1 'Not reported' 
-2 'Not applicable' 
/stat_al   
1 'Response' 
4 'Nonrespondent, imputed' 
5 'Nonrespondent, not imputed' 
-2 'Not applicable' 
-9 'Not active' 
/lock_al   
0 'No data submitted' 
8 'Complete, final lock applied' 
-2 'Not applicable' 
/prch_al   
1 'Parent record includes data from child campuses' 
2 'Child record - all data reported with parent campus' 
-2 'Not applicable' 
/imp_al    
2 'Nearest neighbor (NN)' 
-2 'Not applicable' 
/hasal     
1 'Yes' 
2 'No' 
-2 'Not applicable' 
-1 'Not reported' 
/ntrldstr  
0 'No' 
/rev_ic    
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_c     
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_e12   
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_sfa   
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_gr    
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_gr2   
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_adm   
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_hr    
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_ef    
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_f     
1 'Submitted revised data' 
0 'Did not submit revised data' 
-2 'Not applicable' 
/rev_al    
1 'Submitted revised data' 
0 'Did not submit revised data' 
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
stat_e12 lock_e12 prch_e12 imp_e12  stat_sfa lock_sfa prch_sfa
imp_sfa  sfaform  stat_gr  lock_gr  prch_gr  imp_gr   cohrtstu
stat_gr2 lock_gr2 prch_gr2 imp_gr2  stat_adm lock_adm imp_adm  stat_hr  lock_hr 
prch_hr  imp_hr   ftemp15  tenursys sa_excl  stat_eap stat_sa  stat_s  
stat_ef  lock_ef  prch_ef  imp_ef   pta99_ef ptacipef ptb_ef   ptc_ef  
ptd_ef   stat_f   lock_f   prch_f   imp_f    form_f   fybeg    fyend   
gpfs     f1gasbal f2pell   f3pell   f_athltc f3bist   stat_al  lock_al  prch_al 
imp_al   hasal    ntrldstr rev_ic   rev_c    rev_e12  rev_sfa  rev_gr   rev_gr2 
rev_adm  rev_hr   rev_ef   rev_f    rev_al   .

descriptives variables=
idx_c    pcc_f   
idx_e12  pce12_f  idx_sfa 
pcsfa_f  idx_gr   pcgr_f  
idx_gr2 
idx_hr   pchr_f  
idx_ef   pcef_f  
idx_f    pcf_f   
idx_al  
pcal_f  
pcf_f_rv
/stats=def.

save outfile='s2015_is_dist.sav' /compressed.
