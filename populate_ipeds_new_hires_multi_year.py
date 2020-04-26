#!/usr/bin/env python3

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle

from sqlalchemy import sql

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_employee_dimension import IpedsEmployeeDimension
from database.ipeds_faculty_dimension import IpedsFacultyDimension
from database.ipeds_new_hires import IpedsNewHire

pd.set_option('display.max_rows', 10)

# set constants
first_year = 2012
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
           'occupcat', 'facstat', 'snhcat',
           'hrnralm', 'hrnralw', 'hrunknm', 'hrunknw', 'hrhispm',
           'hrhispw', 'hraianm', 'hraianw', 'hrasiam', 'hrasiaw',
           'hrbkaam', 'hrbkaaw', 'hrnhpim', 'hrnhpiw', 'hrwhitm',
           'hrwhitw', 'hr2morm', 'hr2morw']

for year in np.arange(first_year, last_year + 1):
    try:
        print(f'Reading data for {year}...', end='', flush=True)
        df = read_pickle('data/ipeds_new_hires_{}.pickle'.format(year))
        df = df.fillna(0)
    except Exception as e:
        print(f'ERROR.\n\n{str(e)}')
    else:
        print('DONE.')

    # add back missing variables
    for col in keepers:
        if col not in list(df.columns):
            df[col] = None

    # narrow dataframe
    df = df[keepers]

    # set date key
    date_key = f'{year}-11-01'

    # modify data frame to apply needed fixes
    df['date_key'] = date_key

    # filter out unused rows
    df = df[
        df.snhcat.isin([
            21020,
            21030,
            21041,
            21042,
            21043,
            21050,
            22000,
            23000,
            25000,
            30000,
            31000,
            32000,
            33000,
            34000,
            35000,
            36000,
            37000,
            38000,
            39000,
            ])]

    df = df[
        df.facstat.isin([
            20,
            30,
            41,
            42,
            43,
            50,
            ])]

    # fix occupation code
    df['occupcat'] = np.where(df.occupcat == 210, 211, df.occupcat)

    # assign time status
    df['time_status_id'] = 'FT'

    # assign career level
    df['employee_key'] = df.occupcat.astype(str) + df.time_status_id

    # assign faculty key
    df['faculty_key'] = item_recode(
        df.facstat,
        {
            20: 1011,
            30: 2021,
            41: 3031,
            42: 3032,
            43: 3033,
        },
        4039)

    # reshape from wide to long format
    staff = pd.melt(df,
                    id_vars = ['unitid','date_key', 'employee_key', 'faculty_key'],
                    value_vars = ['hrnralm', 'hrnralw', 'hrunknm', 'hrunknw', 'hrhispm',
                                'hrhispw', 'hraianm', 'hraianw', 'hrasiam', 'hrasiaw',
                                'hrbkaam', 'hrbkaaw', 'hrnhpim', 'hrnhpiw', 'hrwhitm',
                                'hrwhitw', 'hr2morm', 'hr2morw'],
                    value_name = 'headcount')

    # demographic dimension
    staff['demographic_key'] = staff.variable.str.slice(2, 7).str.lower()

    # drop variable field
    staff = staff.drop(columns = ['variable'])

    # remove rows with no valid data
    staff = staff.query('headcount > 0')

    # remove institutions with no data
    # staff = staff.fillna(sql.null())

    # insert data into db table
    session = Session()

    try:
        print(f'Attempting to insert {staff.shape[0]:,} rows for {year} into {IpedsNewHire.__tablename__}.')
        record_deletes = session.query(IpedsNewHire).filter(IpedsNewHire.date_key==date_key).delete(synchronize_session=False)
        session.bulk_insert_mappings(mapper = IpedsNewHire,
                                    mappings = staff.to_dict(orient='records'),
                                    render_nulls = True)
    except Exception as e:
        session.rollback()
        print(str(e))
        print('No data were altered due to error.\n')
    else:
        session.commit()
        print(f'\t{record_deletes:,} old records were deleted.')
        print(f'\t{staff.shape[0]:,} new records were inserted.\n')
    finally:
        session.close()
        session = None

print('All Done.')