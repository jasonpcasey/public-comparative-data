#!/usr/bin/env python3

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle

from sqlalchemy import sql

from base import engine, Session, Base
from date_dimension import DateRow
from ipeds_demographic_dimension import IpedsDemographicDimension
from ipeds_admissions import IpedsAdmissions

pd.set_option('display.max_rows', 10)

# set constants
first_year = 2007
last_year = 2018


def item_recode(col, codings, default_value = None):
    if default_value == None:
        answer = col.map(codings, na_action = 'ignore')
    else:
        answer = col.map(codings, na_action = 'ignore').fillna(default_value)
    return(answer)

def read_pickle(filespec):
    try:
        with open(filespec, 'rb') as f:
            answer = pickle.load(f)
    except Exception as e:
        print('File not loaded properly.\n\n{}'.format(str(e)))
        raise

    return answer

keepers = ['unitid',
           'applcn',
           'applcnm',
           'applcnw',
           'admssn',
           'admssnm',
           'admssnw',
           'enrlt',
           'enrlm',
           'enrlw']

for year in np.arange(first_year, last_year + 1):
    try:
        print('Reading files for {}...'.format(year), end='', flush=True)
        df = read_pickle('data/ipeds_adm_{}.pickle'.format(year))[keepers]
        df = df.fillna(0)
    except Exception as e:
        print('ERROR.\n\n{}\n'.format(str(e)))
    else:
        print('DONE.')

    # check for problems
    # zero apps, non-zero admits
    print(df.loc[(df['applcn'] == 0) & (df['admssn'] > 0), :])

    # set date key
    date_key = '{}-10-15'.format(year)

    # modify data frame to apply needed fixes
    df['date_key'] = date_key

    # calculate unknowns
    df['applcnu'] = df.applcn - (df.applcnm + df.applcnw)
    df['admssnu'] = df.admssn - (df.admssnm + df.admssnw)
    df['enrlu'] = df.enrlt - (df.enrlm + df.enrlw)

    # reshape from wide to long format
    adm = pd.melt(df,
                id_vars = ['unitid','date_key'],
                value_vars = ['applcnm', 'applcnw', 'applcnu',
                                'admssnm', 'admssnw', 'admssnu',
                                'enrlm', 'enrlw', 'enrlu'],
                value_name = 'count')

    # field indicator
    adm['field'] = np.where(adm.variable.str.slice(0, 3) == 'app', 'applications', 'unknown')
    adm['field'] = np.where(adm.variable.str.slice(0, 3) == 'adm', 'admissions', adm['field'])
    adm['field'] = np.where(adm.variable.str.slice(0, 3) == 'enr', 'enrolled', adm['field'])

    # sex indicator
    adm['sex'] = np.where(adm.variable.str.slice(-1) == 'w', 'women', 'unknown')
    adm['sex'] = np.where(adm.variable.str.slice(-1) == 'm', 'men', adm['sex'])

    # add demographic key
    adm['demographic_key'] = 'unknu'
    adm['demographic_key'] = np.where(adm.sex == 'men', 'unknm', adm.demographic_key)
    adm['demographic_key'] = np.where(adm.sex == 'women', 'unknw', adm.demographic_key)

    adm = adm.pivot_table(index=['unitid', 'date_key', 'demographic_key'],
                        columns='field',
                        values='count',
                        aggfunc = np.sum,
                        fill_value = 0).reset_index()

    # remove institutions with no applications
    adm = adm.fillna(0)
    adm = adm.loc[adm.applications > 0]

    # insert data into dbo.survey_records
    session = Session()

    try:
        print('\nAttempting to insert {:,} rows for {} into {}.'.format(adm.shape[0], year, IpedsAdmissions.__tablename__))
        record_deletes = session.query(IpedsAdmissions).filter(IpedsAdmissions.date_key==date_key).delete(synchronize_session=False)
        session.bulk_insert_mappings(mapper = IpedsAdmissions,
                                    mappings = adm.to_dict(orient='records'),
                                    render_nulls = True)
    except Exception as e:
        session.rollback()
        print(str(e))
        print('No data were altered due to error.')
    else:
        session.commit()
        print('{:,} old records were deleted.'.format(record_deletes))
        print('{:,} new records were inserted.'.format(adm.shape[0]))
    finally:
        session.close()
        session = None

print('All Done.')