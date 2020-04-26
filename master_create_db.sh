echo 'CREATE DB TABLES'
python create_database_tables.py

echo
echo 'POPULATE DATE DIMENSION TABLE'
python populate_date_dimension.py

echo
echo 'POPULATE STATES DIMENSION TABLE'
python populate_states.py

echo
echo 'POPULATE COUNTIES DIMENSION TABLE'
python populate_counties.py

echo
echo 'POPULATE CBSA DIMENSION TABLE'
python populate_cbsa.py

echo
echo 'POPULATE CSA DIMENSION TABLE'
python populate_csa.py

echo
echo 'POPULATE AAU MEMBERSHIP DIMENSION TABLE'
python populate_aau_membership.py

echo
echo 'POPULATE ATHLETIC CONFERENCES DIMENSION TABLE'
python populate_athletic_conferences.py

echo
echo 'POPULATE CIP HIERARCHY DIMENSION TABLE'
python populate_cip_hierarchy.py

echo
echo 'POPULATE CARNEGIE CLASSES DIMENSION TABLE'
python populate_carnegie_classes.py

echo
echo 'POPULATE IPEDS DEGREE TYPES DIMENSION TABLE'
python populate_ipeds_degree_types.py

echo
echo 'POPULATE IPEDS DEMOGRAPHIC DIMENSION TABLE'
python populate_ipeds_demographic_dimension.py

echo
echo 'POPULATE IPEDS EMPLOYEE DIMENSION TABLE'
python populate_ipeds_employee_dimension.py

echo
echo 'POPULATE IPEDS FACULTY DIMENSION'
python populate_ipeds_faculty_dimension.py

echo
echo 'POPULATE IPEDS FINANCE (FASB) DIMENSION TABLE'
python populate_ipeds_fasb_finance_dimension.py

echo
echo 'POPULATE SURVEY DIMENSION TABLE'
python populate_ipeds_survey_dimension.py

echo
echo 'POPULATE HERD ACADEMIC FIELDS DIMENSION'
python populate_nsf_herd_academic_fields.py

echo
echo 'POPULATE HERD FEDERAL AGENCIES DIMENSION'
python populate_nsf_herd_federal_agencies.py

echo
echo 'POPULATE IPEDS ATHLETIC CONFERENCES'
python populate_ipeds_athletic_conferences_multi_year.py

echo
echo 'POPULATE IPEDS INSTITUTIONS'
python populate_ipeds_institutions_multi_year.py

echo
echo 'POPULATE LOCAL PEER GROUPS DIMENSION TABLE'
python populate_peer_groups.py

echo
echo 'POPULATE IPEDS CUSTOM PEER LISTS TABLE'
python populate_ipeds_custom_peer_lists.py

echo
echo 'POPULATE NSF HERD INSTITUTIONAL DATA'
python populate_nsf_herd_institutional_data_multi_year.py

echo
echo 'POPULATE NSF HERD DETAIL DATA'
python populate_nsf_herd_detail_data_multi_year.py

echo
echo 'POPULATE IPEDS ADMISSIONS'
python populate_ipeds_admissions_multi_year.py

echo
echo 'POPULATE IPEDS ADMISSIONS TEST SCORES'
python populate_ipeds_admissions_test_scores_multi_year.py

echo
echo 'POPULATE IPEDS AVERAGE TUITION'
python populate_ipeds_average_tuition_multi_year.py

echo
echo 'POPULATE IPEDS CHARGES'
python populate_ipeds_charges_multi_year.py

echo
echo 'POPULATE IPEDS FALL ENROLLMENT'
python populate_ipeds_fall_enrollment_multi_year.py

echo
echo 'POPULATE IPEDS FALL ENROLLMENT BY AGE'
python populate_ipeds_fall_enrollment_by_age_multi_year.py

echo
echo 'POPULATE IPEDS FALL STAFF'
python populate_ipeds_fall_staff_multi_year.py

echo
echo 'POPULATE IPEDS FASB FINANCE'
python populate_ipeds_fasb_finance_multi_year.py

echo
echo 'POPULATE IPEDS SUBMISSIONS'
python populate_ipeds_submissions_multi_year.py
