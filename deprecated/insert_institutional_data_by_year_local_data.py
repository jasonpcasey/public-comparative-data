# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle

from sqlalchemy import sql

from base import engine, Session, Base
from date_dimension import DateRow
from states import State
from nsf_herd_institution_data import NsfHerdInstitution
from nsf_herd_detail_data import NsfHerdDetail

pd.set_option('display.max_rows', 10)

# constants
year = 2017

state_fips = {'AK': 2, 'AL': 1, 'AR': 5, 'AS': 60, 'AZ': 4, 'CA': 6, 'CO': 8, 'CT': 9, 'DC': 11,
              'DE': 10, 'FL': 12, 'GA': 13, 'GU': 66, 'HI': 15, 'IA': 19, 'ID': 16, 'IL': 17,
              'IN': 18, 'KS': 20, 'KY': 21, 'LA': 22, 'MA': 25, 'MD': 24, 'ME': 23, 'MI': 26,
              'MN': 27, 'MO': 29, 'MS': 28, 'MT': 30, 'NC': 37, 'ND': 38, 'NE': 31, 'NH': 33,
              'NJ': 34, 'NM': 35, 'NV': 32, 'NY': 36, 'OH': 39, 'OK': 40, 'OR': 41, 'PA': 42,
              'PR': 72, 'RI': 44, 'SC': 45, 'SD': 46, 'TN': 47, 'TX': 48, 'UT': 49, 'VA': 51,
              'VI': 78, 'VT': 50, 'WA': 53, 'WI': 55, 'WV': 54, 'WY': 56, 'all': -1}

# local functions
def item_recode(col, codings, default_value = None):
    if default_value == None:
        answer = col.map(codings, na_action = 'ignore')
    else:
        answer = col.map(codings, na_action = 'ignore').fillna(default_value)
        # df['col'] = df.col.map({'Mr': 0, 'Mrs': 1, 'Miss': 2}).fillna(3).astype(int)   
    return(answer)

try:
    spec = 'data/nsf_{}.pickle'.format(year)
    print('Reading data for fiscal year ending {}:\n\t{}... '.format(year, spec), end='', flush=True)
    with open(spec, 'rb') as f:
        herd = pickle.load(f)
except Exception as e:
    print('ERROR.\nFile not downloaded properly.\n\n{}\n'.format(str(e)))
else:
    print('DONE.')
    herd.info()

# set date key
date_key = '{}-06-30'.format(year)

# modify data frame to apply needed fixes
herd['date_key'] = date_key

herd['med_sch_flag'] = herd.med_sch_flag.isin(['T','TRUE', 'True', 'true', 't', 'Y', 'Yes', '1'])

herd['toi_code'] = herd.toi_code == 1

toc = {1: 'Public',
       2: 'Private'}

herd['toc_code'] = item_recode(herd['toc_code'], toc, 'Unknown')
herd['inst_state_code'] = item_recode(herd['inst_state_code'], state_fips, -1)

herd.ipeds_unitid = herd.ipeds_unitid.fillna(-1).astype(int)
herd.ncses_inst_id = herd.ncses_inst_id.fillna('XXXXXXXX')

herd = herd[herd.questionnaire_no.isin(['01.a', '01.b', '01.c', '01.d', '01.e', '01.f', '01.g', '04', 'NA_01'])]

# not version
# herd = herd[~herd.questionnaire_no.isin(['01.a', '01.b', '01.c', '01.d', '01.e', '01.f', '01.g', '04'])]

herd['data'] = herd.data.fillna(0) * 1000

keepers = ['inst_id',
           'date_key',
           'ipeds_unitid',
           'ncses_inst_id',
           'inst_name_long',
           'inst_state_code',
           'toc_code',
           'toi_code',
           'med_sch_flag',
           'questionnaire_no',
           'data']

# long to wide
institutions = herd.pivot_table(index = ['inst_id',
                                         'date_key',
                                         'ipeds_unitid',
                                         'ncses_inst_id',
                                         'inst_name_long',
                                         'inst_state_code',
                                         'toc_code',
                                         'toi_code',
                                         'med_sch_flag'],
                                columns = 'questionnaire_no',
                                values = 'data',
                                fill_value = 0).reset_index()

# rename columns
institutions = institutions.rename(columns = {'inst_name_long': 'institution_name',
                                              'ipeds_unitid': 'unitid',
                                              'inst_state_code': 'state_fips',
                                              'toc_code': 'control',
                                              'toi_code': 'academic_institution',
                                              'med_sch_flag': 'medical_school_flag',
                                              '01.a': 'federal_government',
                                              '01.b': 'state_and_local_government',
                                              '01.c': 'business',
                                              '01.d': 'nonprofit_organizations',
                                              '01.e': 'institutional_funds',
                                              '01.f': 'other_sources',
                                              '01.g': 'total_rd_expenses',
                                              '04': 'medical_school_expenses',
                                              'NA_01': 'arra_funds'})

# replace NaN with database-compliant nulls
institutions = institutions.fillna(sql.null())

# insert data into dbo.survey_records
session = Session()

try:
    print('Attempting to insert {:,} rows for {} into {}.'.format(institutions.shape[0], year, NsfHerdInstitution.__tablename__))
    record_deletes = session.query(NsfHerdInstitution).filter(NsfHerdInstitution.date_key==date_key).delete(synchronize_session=False)
    session.bulk_insert_mappings(mapper = NsfHerdInstitution,
                                 mappings = institutions.to_dict(orient='records'),
                                 render_nulls = True)
except Exception as e:
    session.rollback()
    print(str(e))
    print('No data were altered due to error.')
else:
    session.commit()
    print('\n{:,} old records were deleted.'.format(record_deletes))
    print('{:,} new records were inserted.'.format(institutions.shape[0]))
finally:
    session.close()
    session = None

print('\nAll done!')
