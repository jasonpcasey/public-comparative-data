# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle

from sqlalchemy import sql

from base import engine, Session, Base
from date_dimension import DateRow
from ipeds_average_tuition import IpedsAverageTuition

pd.set_option('display.max_rows', 10)

# set constants
first_year = 2002
last_year = 2018

# local functions
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

keepers = ['tuition1', 'tuition2', 'tuition3', 'tuition5', 'tuition6', 'tuition7',
                              'fee1', 'fee2', 'fee3', 'fee5', 'fee6', 'fee7',
                              'hrchg1', 'hrchg2', 'hrchg3', 'hrchg5', 'hrchg6', 'hrchg7']

for year in np.arange(first_year, last_year + 1):
    try:
        print('\nReading files for {}...'.format(year), end='', flush=True)
        ic = read_pickle('data/ipeds_ic_{}_ay.pickle'.format(year))

    except Exception as e:
        print('ERROR.\n\n{}\n'.format(str(e)))
    else:
        print('DONE.')

    # add back missing variables
    for col in keepers:
        if col not in list(ic.columns):
            ic[col] = None

    # create tuition data frame
    tuition = pd.melt(ic,
                    id_vars = 'unitid',
                    value_vars = ['tuition1', 'tuition2', 'tuition3', 'tuition5', 'tuition6', 'tuition7',
                                'fee1', 'fee2', 'fee3', 'fee5', 'fee6', 'fee7',
                                'hrchg1', 'hrchg2', 'hrchg3', 'hrchg5', 'hrchg6', 'hrchg7'],
                    value_name = 'charge')

    # fix data type
    tuition['charge'] = pd.to_numeric(tuition.charge, errors = 'coerce')

    # drop missing
    tuition = tuition.dropna()

    # set date key
    date_key = '{}-09-01'.format(year)
    tuition['date_key'] = date_key

    # create charge type
    tuition['charge_type'] = item_recode(tuition.variable.str[:-1],
                                        {'tuition': 'average_tuition',
                                        'fee': 'required_fees',
                                        'hrchg': 'per_credit_hour_charge'},
                                        'Unknown')

    # create student residency
    tuition['student_residency'] = item_recode(tuition['variable'].str[-1],
                                            {'1': 'In-district', '2': 'In-state',
                                            '3': 'Out-of-state', '5': 'In-district',
                                            '6': 'In-state', '7': 'Out-of-state'},
                                            'Unknown')

    # create student career
    tuition['student_career'] = np.where(tuition.variable.str[-1].astype('int32') < 5,
                                            'Undergraduate',
                                            'Graduate')

    # long to wide
    tuition = pd.pivot_table(tuition,
                                index=['unitid', 'date_key', 'student_career', 'student_residency'],
                                values='charge',
                                columns='charge_type',
                                aggfunc=np.max)
    tuition = tuition.reset_index()

    tuition = tuition[['unitid', 'date_key', 'student_career', 'student_residency',
                        'average_tuition', 'per_credit_hour_charge', 'required_fees']] 

    tuition = tuition.fillna(sql.null())

    # insert data into dbo.survey_records
    session = Session()

    delete_list = tuition[['unitid', 'date_key']].drop_duplicates().to_dict(orient = 'records')

    try:
        print('Attempting to insert {:,} rows for {} into {}.'.format(tuition.shape[0], year, IpedsAverageTuition.__tablename__))
        record_deletes = session.query(IpedsAverageTuition).filter(IpedsAverageTuition.date_key==date_key).delete(synchronize_session=False)
        session.bulk_insert_mappings(mapper = IpedsAverageTuition,
                                    mappings = tuition.to_dict(orient='records'),
                                    render_nulls = True)
    except Exception as e:
        session.rollback()
        print(str(e))
        print('No data were altered due to error.')
    else:
        session.commit()
        print('{:,} old records were deleted.'.format(record_deletes))
        print('{:,} new records were inserted.'.format(tuition.shape[0]))
    finally:
        session.close()
        session = None

print('\nAll done!')
