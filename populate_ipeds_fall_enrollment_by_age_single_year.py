#!/usr/bin/env python3

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle

from sqlalchemy import sql

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_fall_enrollment_by_age import IpedsFallEnrollmentByAge

pd.set_option('display.max_rows', 10)

# constants
first_year = 2002
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
           'efbage', 'lstudy',
           'efage01', 'efage02', 'efage03', 'efage04']

for year in np.arange(first_year, last_year + 1):
    try:
        print('Reading data for {}...'.format(year), end='', flush=True)
        df = read_pickle('data/ipeds_ef_age_{}.pickle'.format(year))
        df = df.fillna(0)
    except Exception as e:
        print('ERROR.\n\n{}\n'.format(str(e)))
    else:
        print('DONE.')

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
    df = df[df.efbage.isin([3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14])]
    df = df[df.lstudy.isin([2, 5, 6])]

    # add age range
    df['age_range'] = item_recode(df.efbage, {3: 'Less than 18',
                                            4: '18 - 19',
                                            5: '20 - 21',
                                            6: '22 - 24',
                                            8: '25 - 29',
                                            9: '30 - 34',
                                            10: '35 - 39',
                                            11: '40 - 49',
                                            12: '50 - 64',
                                            13: '65 or older',
                                            14: 'Age Unknown'},
                                            'Unknown')

    # add career levels
    df['career_level'] = item_recode(df.lstudy,
                                    {2: 'Undergraduate',
                                    5: 'Graduate',
                                    6: 'Graduate'},
                                    'Unknown')

    # reshape from wide to long format
    studt = pd.melt(df,
                    id_vars = ['unitid','date_key', 'age_range', 'career_level'],
                    value_vars = ['efage01', 'efage02', 'efage03', 'efage04'],
                    value_name = 'headcount')

    # assign time status
    studt['time_status'] = item_recode(studt.variable,
                                    {'efage01': 'Full-time',
                                    'efage02': 'Full-time',
                                    'efage03': 'Part-time',
                                    'efage04': 'Part-time'},
                                    'Unknown')

    # demographic dimension
    studt['demographic_key'] = item_recode(studt.variable,
                                    {'efage01': 'unknm',
                                    'efage02': 'unknw',
                                    'efage03': 'unknm',
                                    'efage04': 'unknw'},
                                    'unknu')

    # roll up sums at proper granularity
    studt = studt.groupby(["unitid", "date_key", "age_range",
                        "career_level", "time_status", "demographic_key"]).agg({"headcount": np.sum}).reset_index()


    # remove rows with no valid data
    studt = studt.query('headcount > 0')

    # remove institutions with no data
    # studt = studt.fillna(sql.null())

    # insert data into db table
    session = Session()

    try:
        print('Attempting to insert {:,} rows for {} into {}.'.format(studt.shape[0], year, IpedsFallEnrollmentByAge.__tablename__))
        record_deletes = session.query(IpedsFallEnrollmentByAge).filter(IpedsFallEnrollmentByAge.date_key==date_key).delete(synchronize_session=False)
        session.bulk_insert_mappings(mapper = IpedsFallEnrollmentByAge,
                                    mappings = studt.to_dict(orient='records'),
                                    render_nulls = True)
    except Exception as e:
        session.rollback()
        print(str(e))
        print('No data were altered due to error.\n')
    else:
        session.commit()
        print('\t{:,} old records were deleted.'.format(record_deletes))
        print('\t{:,} new records were inserted.\n'.format(studt.shape[0]))
    finally:
        session.close()
        session = None

print('All Done.')