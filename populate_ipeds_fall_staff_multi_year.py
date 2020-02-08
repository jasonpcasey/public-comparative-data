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
from database.ipeds_fall_staff import IpedsFallStaff

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
           'occupcat', 'staffcat', 'ftpt',
           'hrnralm', 'hrnralw', 'hrunknm', 'hrunknw', 'hrhispm',
           'hrhispw', 'hraianm', 'hraianw', 'hrasiam', 'hrasiaw',
           'hrbkaam', 'hrbkaaw', 'hrnhpim', 'hrnhpiw', 'hrwhitm',
           'hrwhitw', 'hr2morm', 'hr2morw']

for year in np.arange(first_year, last_year + 1):
    try:
        print('Reading data for {}...'.format(year), end='', flush=True)
        df = read_pickle('data/ipeds_fall_staff_{}.pickle'.format(year))
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
    date_key = '{}-11-01'.format(year)

    # modify data frame to apply needed fixes
    df['date_key'] = date_key

    # filter out unused rows
    df = df[df.staffcat.isin([2210, 2220, 2230, 2261, 2262, 2263, 2264, 2270,
                            2300, 2310, 2320, 2330, 2340, 2350, 2360, 2370, 2380, 2390,
                            3210, 3220, 3230, 3261, 3262, 3263, 3264, 3270, 
                            3300, 3310, 3320, 3330, 3340, 3350, 3360, 3370, 3380, 3390,
                            4410, 4420, 4430, 4440, 4450, 4460, 4470, 4480, 4490])]

    # fix occupation code
    df['occupcat'] = np.where(df.occupcat == 210, 211, df.occupcat)

    # assign time status
    df['time_status_id'] = np.where(df.ftpt == 2, 'FT', 'PT')

    # assign career level
    df['employee_key'] = df.occupcat.astype(str) + df.time_status_id
                                    
    # reshape from wide to long format
    staff = pd.melt(df,
                    id_vars = ['unitid','date_key', 'employee_key'],
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
    staff = staff.fillna(sql.null())

    # insert data into db table
    session = Session()

    try:
        print('Attempting to insert {:,} rows for {} into {}.'.format(staff.shape[0], year, IpedsFallStaff.__tablename__))
        record_deletes = session.query(IpedsFallStaff).filter(IpedsFallStaff.date_key==date_key).delete(synchronize_session=False)
        session.bulk_insert_mappings(mapper = IpedsFallStaff,
                                    mappings = staff.to_dict(orient='records'),
                                    render_nulls = True)
    except Exception as e:
        session.rollback()
        print(str(e))
        print('No data were altered due to error.\n')
    else:
        session.commit()
        print('\t{:,} old records were deleted.'.format(record_deletes))
        print('\t{:,} new records were inserted.\n'.format(staff.shape[0]))
    finally:
        session.close()
        session = None

print('All Done.')