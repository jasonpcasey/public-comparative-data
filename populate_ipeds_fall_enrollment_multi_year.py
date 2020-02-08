#!/usr/bin/env python3

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle

from sqlalchemy import sql

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_fall_enrollment import IpedsFallEnrollment

pd.set_option('display.max_rows', 10)

# set constants
first_year = 2010
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
           'efalevel',
           'efnralm', 'efnralw', 'efunknm', 'efunknw', 'efhispm',
           'efhispw', 'efaianm', 'efaianw', 'efasiam', 'efasiaw',
           'efbkaam', 'efbkaaw', 'efnhpim', 'efnhpiw', 'efwhitm',
           'efwhitw', 'ef2morm', 'ef2morw']

for year in np.arange(first_year, last_year + 1):
    try:
        print('Reading data for {}...'.format(year), end='', flush=True)
        df = read_pickle('data/ipeds_ef_{}.pickle'.format(year))
        df = df.fillna(0)
    except Exception as e:
        print('ERROR.\n\n{}\n'.format(str(e)))
    else:
        print('DONE.\n')

    # add back missing variables
    for col in keepers:
        if col not in list(df.columns):
            df[col] = None

    # narrow dataframe
    df = df[keepers]

    # set date key
    date_key = '{}-10-15'.format(year)

    # modify data frame to apply needed fixes
    df['date_key'] = date_key

    # filter out unused rows
    df = df[df.efalevel.isin([24, 31, 32, 39, 40, 44, 51, 52, 59, 60])]

    # assign time status
    df['time_status'] = item_recode(df.efalevel,
                                    {24: 'Full-time',
                                    25: 'Full-time',
                                    31: 'Full-time',
                                    32: 'Full-time',
                                    36: 'Full-time',
                                    39: 'Full-time',
                                    40: 'Full-time'},
                                    'Part-time')

    # assign career level
    df['career_level'] = item_recode(df.efalevel,
                                    {32: 'Graduate',
                                    36: 'Graduate',
                                    52: 'Graduate',
                                    56: 'Graduate'},
                                    'Undergraduate')

    # assign degree seeking status
    df['degree_seeking'] = item_recode(df.efalevel,
                                    {24: 'Degree-seeking',
                                        25: 'Degree-seeking',
                                        31: 'Non-degree-seeking',
                                        39: 'Degree-seeking',
                                        40: 'Degree-seeking',
                                        44: 'Degree-seeking',
                                        45: 'Degree-seeking',
                                        51: 'Non-degree-seeking',
                                        59: 'Degree-seeking',
                                        60: 'Degree-seeking'},
                                    'Unknown')
                                    
    # assign continuation type
    df['continuation_type'] = item_recode(df.efalevel,
                                        {24: 'First-time',
                                        39: 'Transfer',
                                        40: 'Continuing',
                                        44: 'First-time',
                                        59: 'Transfer',
                                        60: 'Continuing'},
                                        'Unknown')
                                    
    # reshape from wide to long format
    enroll = pd.melt(df,
                    id_vars = ['unitid','date_key', 'time_status', 'career_level', 'degree_seeking', 'continuation_type'],
                    value_vars = ['efnralm', 'efnralw', 'efunknm', 'efunknw', 'efhispm',
                                'efhispw', 'efaianm', 'efaianw', 'efasiam', 'efasiaw',
                                'efbkaam', 'efbkaaw', 'efnhpim', 'efnhpiw', 'efwhitm',
                                'efwhitw', 'ef2morm', 'ef2morw'],
                    value_name = 'headcount')

    # demographic dimension
    enroll['demographic_key'] = enroll.variable.str.slice(2, 7).str.lower()

    # drop variable field
    enroll = enroll.drop(columns = ['variable'])

    # remove rows with no valid data
    enroll = enroll.query('headcount > 0')

    # remove institutions with no data
    enroll = enroll.fillna(sql.null())

    # insert data into db table
    session = Session()

    try:
        print('Attempting to insert {:,} rows for {} into {}.'.format(enroll.shape[0], year, IpedsFallEnrollment.__tablename__))
        record_deletes = session.query(IpedsFallEnrollment).filter(IpedsFallEnrollment.date_key==date_key).delete(synchronize_session=False)
        session.bulk_insert_mappings(mapper = IpedsFallEnrollment,
                                    mappings = enroll.to_dict(orient='records'),
                                    render_nulls = True)
    except Exception as e:
        session.rollback()
        print(str(e))
        print('No data were altered due to error.\n')
    else:
        session.commit()
        print('\t{:,} old records were deleted.'.format(record_deletes))
        print('\t{:,} new records were inserted.\n'.format(enroll.shape[0]))
    finally:
        session.close()
        session = None

print('All Done.')