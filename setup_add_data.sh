#!/bin/bash

# add_data.sh - This sript adds/replaces data for a given set of years

# if [ "$1" != "" ]; then
#     ###
# else
#     echo "Positional parameter 1 is empty"
# fi

echo
echo 'POPULATE GDP TABLE'
python populate_gdp.py

echo
echo 'POPULATE IPEDS ATHLETIC CONFERENCES'
python populate_ipeds_athletic_conferences.py --last=$1

echo
echo 'POPULATE IPEDS INSTITUTIONS'
python populate_ipeds_institutions.py --last=$1

echo
echo 'POPULATE IPEDS ADMISSIONS'
python populate_ipeds_admissions.py --last=$1

echo
echo 'POPULATE IPEDS ADMISSIONS TEST SCORES'
python populate_ipeds_admissions_test_scores.py --last=$1

echo
echo 'POPULATE IPEDS AVERAGE TUITION'
python populate_ipeds_average_tuition.py --last=$1

echo
echo 'POPULATE IPEDS CHARGES'
python populate_ipeds_charges.py --last=$1

echo
echo 'POPULATE IPEDS FALL ENROLLMENT'
python populate_ipeds_fall_enrollment.py --last=$1

echo
echo 'POPULATE IPEDS FALL ENROLLMENT BY AGE'
python populate_ipeds_fall_enrollment_by_age.py --last=$1

echo
echo 'POPULATE IPEDS FALL ENROLLMENT BY RESIDENCY'
python populate_ipeds_fall_enrollment_by_residency.py --last=$1

echo
echo 'POPULATE IPEDS FALL STAFF'
python populate_ipeds_fall_staff.py --last=$1

echo
echo 'POPULATE IPEDS NEW HIRES'
python populate_ipeds_new_hires.py --last=$1

echo
echo 'POPULATE IPEDS FASB FINANCE'
python populate_ipeds_fasb_finance.py --last=$1

echo
echo 'POPULATE IPEDS SUBMISSIONS'
python populate_ipeds_submissions.py --last=$1

echo
echo 'POPULATE NSF HERD INSTITUTIONAL DATA'
python populate_nsf_herd_institutional_data.py --last=$1

echo
echo 'POPULATE NSF HERD DETAIL DATA'
python populate_nsf_herd_detail_data.py --last=$1

