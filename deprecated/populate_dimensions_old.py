# coding=utf-8

from base import Session, engine, Base
from date_dimension import DateRow
from states import State
from peer_groups import PeerGroup
from ipeds_demographic_dimension import IpedsDemographicDimension
from ipeds_employee_dimension import IpedsEmployeeDimension
from ipeds_degree_types import IpedsDegreeType
from counties import County
from nsf_herd_academic_fields import NsfHerdAcademicField
from nsf_herd_federal_agencies import NsfHerdFederalAgency
from nsf_herd_institution_data import NsfHerdInstitution
from nsf_herd_detail_data import NsfHerdDetail
from ipeds_fall_enrollment import IpedsFallEnrollment
from ipeds_institutions import IpedsInstitution
from ipeds_custom_peer_lists import IpedsCustomPeerList

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

big_10 = DataFrame({'unitid': [145637, 147767, 151351, 153658, 163286, 170976, 171100,
                               174066, 181464, 186380, 204796, 214777, 240444, 243780],
                    'group_name': 'Big Ten Peers'})
regents = DataFrame({'unitid': [181464, 153658, 153603, 126614,
                                126818, 145637, 155317, 174066,
                                178396, 204796, 243780],
                     'group_name': 'Regents Peers'})

peers = pd.concat([big_10, regents], sort = False)

big_10 = None
regents = None

print("Adding U.S. Federal agencies to nsf_herd_federal_agencies table.")
objects = [
    NsfHerdFederalAgency('BUS', 'Business', 'Business', 'Non-federal'),
    NsfHerdFederalAgency('DOD', 'Department of Defense', 'DOD', 'Federal'),
    NsfHerdFederalAgency('DOE', 'Department of Energy', 'DOE', 'Federal'),
    NsfHerdFederalAgency('HHS', 'Department of Health and Human Services', 'HHS', 'Federal'),
    NsfHerdFederalAgency('INS', 'Institution funds', 'Institution funds', 'Non-federal'),
    NsfHerdFederalAgency('NAS', 'National Aeronautics and Space Administration', 'NASA', 'Federal'),
    NsfHerdFederalAgency('NPO', 'Nonprofit organziations', 'Nonprofit organziations', 'Non-federal'),
    NsfHerdFederalAgency('AOS', 'Other sources', 'Other sources', 'Non-federal'),
    NsfHerdFederalAgency('NSF', 'National Science Foundation', 'NSF', 'Federal'),
    NsfHerdFederalAgency('OTH', 'Other agencies', 'Other agencies', 'Non-federal'),
    NsfHerdFederalAgency('SLG', 'State and local government', 'State and local government', 'Non-federal'),
    NsfHerdFederalAgency('USD', 'Department of Agriculture', 'USDA', 'Federal')
    ]

print("Adding academic fields to nsf_herd_academic_fields table.")
objects.extend([
    NsfHerdAcademicField('A', 'A', 'Computer and Information Sciences', 'Computer and Information Sciences', 'Engineering'),
    NsfHerdAcademicField('B01', 'B', 'Aerospace, Aeronautical,and Astronautical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B02', 'B', 'Bioengineering and Biomedical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B03', 'B', 'Chemical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B04', 'B', 'Civil Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B05', 'B', 'Electrical, Electronic, and Communications Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B06', 'B', 'Industrial and Manufacturing Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B07', 'B', 'Mechanical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B08', 'B', 'Metallurgical and Materials Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B09', 'B', 'Other Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('C01', 'C', 'Atmospheric Science and Meteorology', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('C02', 'C', 'Geological and Earth Sciences', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('C03', 'C', 'Ocean Sciences and Marine Sciences', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('C04', 'C', 'Other Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('D01', 'D', 'Agricultural Sciences', 'Life Sciences', 'IANR'),
    NsfHerdAcademicField('D02', 'D', 'Biological and Biomedical Sciences', 'Life Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('D03', 'D', 'Health Sciences', 'Life Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('D04', 'D', 'Natural Resources and Conservation', 'Life Sciences', 'IANR'),
    NsfHerdAcademicField('D05', 'D', 'Other Life Sciences', 'Life Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('E', 'E', 'Mathematics and Statistics', 'Mathematics and Statistics', 'Arts and Sciences'),
    NsfHerdAcademicField('F01', 'F', 'Astronomy and Astrophysics', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F02', 'F', 'Chemistry', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F03', 'F', 'Materials Science', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F04', 'F', 'Physics', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F05', 'F', 'Other Physical Sciences', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('G', 'G', 'Psychology', 'Psychology', 'Arts and Sciences'),
    NsfHerdAcademicField('H01', 'H', 'Anthropology', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('H02', 'H', 'Economics', 'Social Sciences', 'Business'),
    NsfHerdAcademicField('H03', 'H', 'Political Science and Government', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('H04', 'H', 'Sociology, Demography, and Population Studies', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('H05', 'H', 'Other Social Sciences', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('I', 'I', 'Other Sciences', 'Other Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('J01', 'J', 'Business Management and Business Administration', 'Non-STEM Fields', 'Business'),
    NsfHerdAcademicField('J02', 'J', 'Communication and Communications Technologies', 'Non-STEM Fields', 'Journalism and Mass Communications'),
    NsfHerdAcademicField('J03', 'J', 'Education', 'Non-STEM Fields', 'Education and Human Science'),
    NsfHerdAcademicField('J04', 'J', 'Humanities', 'Non-STEM Fields', 'Arts and Sciences'),
    NsfHerdAcademicField('J05', 'J', 'Law', 'Non-STEM Fields', 'Law'),
    NsfHerdAcademicField('J06', 'J', 'Social Work', 'Non-STEM Fields', 'Arts and Sciences'),
    NsfHerdAcademicField('J07', 'J', 'Visual and Performing Arts', 'Non-STEM Fields', 'Fine and Performing Arts'),
    NsfHerdAcademicField('J08', 'J', 'Other Non-STEM Fields', 'Non-STEM Fields', 'Architecture')
    ])

print("Reading date dimension data.")
dates = pd.read_csv('data/date_dimension.csv')
dates = dates.fillna(sql.null())

print("Reading state data")
states = pd.read_csv('data/states.csv',
                     encoding='utf-16')

print("Reading custom peer list data")
lists = pd.read_csv('data/ipeds_custom_peer_lists.csv',
                     encoding='utf-8')

session = Session()

try:
    # bulk insert objects for federal agencies and academic fields (NSF)
    print('\nPopulating dimension tables.')
    session.bulk_save_objects(objects)
    print('\tFinished populating nsf_herd_federal_agencies.')
    print('\tFinished populating nsf_herd_academic_fields.')
    
    # insert dates into dimension tables
    date_inserts = session.bulk_insert_mappings(mapper = DateRow,
                                                mappings = dates.to_dict(orient='records')),
    print('\tFinished populating date_dimension.')

    # insert state data
    state_inserts = session.bulk_insert_mappings(mapper = State,
                                                 mappings = states.to_dict(orient='records')),
    print('\tFinished populating state table.')

    # insert peer data
    peer_inserts = session.bulk_insert_mappings(mapper = PeerGroup,
                                                mappings = peers.to_dict(orient='records')),
    print('\tFinished populating peer_groups table.')

    # insert custom peer list data
    peer_inserts = session.bulk_insert_mappings(mapper = IpedsCustomPeerList,
                                                mappings = lists.to_dict(orient='records')),
    print('\tFinished populating ipeds_custom_peer_lists table.')

except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")