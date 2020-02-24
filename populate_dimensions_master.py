import os
from subprocess import Popen, PIPE

scripts = [
    'populate_date_dimension.py',
    'populate_states.py',
    'populate_counties.py',
    'populate_cbsa.py',
    'populate_csa.py',
    'populate_nsf_herd_academic_fields.py',
    'populate_nsf_herd_federal_agencies.py',
    'populate_aau_membership.py',
    'populate_athletic_conferences.py',
    'populate_cip_hierarchy.py',
    'populate_carnegie_classes.py',
    'populate_ipeds_degree_types.py',
    'populate_ipeds_demographic_dimension.py',
    'populate_ipeds_employee_dimension.py',
    'populate_ipeds_survey_dimension.py',
    'populate_peer_groups.py',
    'populate_ipeds_custom_peer_lists.py'
    ]

errors = 0

print('Running scripts...')
p = Popen(["python", 'create_database_tables.py'], stdout=PIPE, shell=True)
output, err = p.communicate()
p_status = p.wait()

if p_status != 0:
    print('\n\tERROR:')
    print("\tScript create_datebase_tables.py completed with status code: {}".format(p_status))
    print("\tProcessing stopped because of error.\n")
else:
    print('\tDatabase tables created successfully.')
    for script in scripts:
        p = Popen(["python", script], stdout=PIPE, shell=True)
        output, err = p.communicate()
        p_status = p.wait()
        if p_status != 0:
            print('\n\tERROR:')
            errors += 1
        print("\tScript {} completed with status code: {}".format(script, p_status))

if errors == 0:
    print('\nAll scripts ran successfully.\n')
else:
    print('\n{} scripts completed with error(s).\n'.format(errors))

print('All Done.')