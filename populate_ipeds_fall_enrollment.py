#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_fall_enrollment import IpedsFallEnrollment

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--first", default=1990, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()


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

# main function
def main():
    for year in np.arange(args.first, args.last + 1):
        try:
            print(f'Reading data for {year}...', end='', flush=True)
            df = read_pickle(f'data/ipeds_ef_{year}.pickle')
            df = df.fillna(0)
        except Exception as e:
            print(f'ERROR.\n\n{str(e)}')
        else:
            print('DONE.')
        
        # year-specific columns
        if (year < 2008):
            if (year > 1999 and year <= 2001):
                df['efalevel'] = item_recode(
                    df.line, {
                        1 : 24,
                        3 : 25,
                        7 : 31,
                        11 : 32,
                        9 : 36,
                        15 : 44,
                        17 : 45,
                        21: 45,
                        25 : 52,
                        23 : 56,
                        },
                        99
                        )
            elif (year < 2000):
                df['efalevel'] = item_recode(
                    df.line, {
                        1 : 24,
                        3 : 40,
                        4 : 40,
                        5 : 40,
                        6 : 40,
                        2 : 39,
                        7 : 31,
                        11 : 32,
                        12 : 32,
                        13 : 32,
                        9 : 36,
                        10 : 36,
                        15 : 44,
                        16 : 59,
                        17 : 60,
                        18 : 60,
                        19 : 60,
                        20 : 60,
                        21 : 51,
                        25 : 52,
                        26 : 52,
                        23 : 56,
                        24 : 56,
                        },
                        99
                        )


            levels = (24, 25, 31, 32, 36, 44, 45, 51, 52, 56)
            df['efnralm'] = df['efrace01']
            df['efnralw'] = df['efrace02']
            df['efunknm'] = df['efrace13']
            df['efunknw'] = df['efrace14']
            df['efhispm'] = df['efrace09']
            df['efhispw'] = df['efrace10']
            df['efaianm'] = df['efrace05']
            df['efaianw'] = df['efrace06']
            df['efasiam'] = df['efrace07']
            df['efasiaw'] = df['efrace08']
            df['efbkaam'] = df['efrace03']
            df['efbkaaw'] = df['efrace04']
            df['efnhpim'] = 0
            df['efnhpiw'] = 0
            df['efwhitm'] = df['efrace11']
            df['efwhitw'] = df['efrace12']
            df['ef2morm'] = 0
            df['ef2morw'] = 0
        elif (year == 2008):
            levels = (24, 25, 31, 32, 36, 44, 45, 51, 52, 56)
            df['efhispm'] = df['dvefhsm']
            df['efhispw'] = df['dvefhsw']
            df['efaianm'] = df['dvefaim']
            df['efaianw'] = df['dvefaiw']
            df['efasiam'] = df['dvefapm']
            df['efasiaw'] = df['dvefapw']
            df['efbkaam'] = df['dvefbkm']
            df['efbkaaw'] = df['dvefbkw']
            df['efnhpim'] = 0
            df['efnhpiw'] = 0
            df['efwhitm'] = df['dvefwhm']
            df['efwhitw'] = df['dvefwhw']
        elif (year == 2009):
            levels = (24, 31, 32, 39, 40, 44, 51, 52, 59, 60)
            df['efhispm'] = df['dvefhsm']
            df['efhispw'] = df['dvefhsw']
            df['efaianm'] = df['dvefaim']
            df['efaianw'] = df['dvefaiw']
            df['efasiam'] = df['dvefapm']
            df['efasiaw'] = df['dvefapw']
            df['efbkaam'] = df['dvefbkm']
            df['efbkaaw'] = df['dvefbkw']
            df['efnhpim'] = 0
            df['efnhpiw'] = 0
            df['efwhitm'] = df['dvefwhm']
            df['efwhitw'] = df['dvefwhw']
        else:
            levels = (24, 31, 32, 39, 40, 44, 51, 52, 59, 60)
        
        keepers = [
            'unitid', 'efalevel',
            'efnralm', 'efnralw', 'efunknm', 'efunknw', 'efhispm', 'efhispw',
            'efaianm', 'efaianw', 'efasiam', 'efasiaw', 'efbkaam', 'efbkaaw',
            'efnhpim', 'efnhpiw', 'efwhitm', 'efwhitw', 'ef2morm', 'ef2morw',
            ]

        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None

        # narrow dataframe
        df = df[keepers]

        # set date key
        date_key = f'{year}-10-15'

        # modify data frame to apply needed fixes
        df['date_key'] = date_key

        # filter out unused rows
        df = df[df.efalevel.isin(levels)]

        # assign time status
        df['time_status'] = item_recode(
            df.efalevel, {
                24: 'Full-time',
                25: 'Full-time',
                31: 'Full-time',
                32: 'Full-time',
                36: 'Full-time',
                39: 'Full-time',
                40: 'Full-time',
            },
            'Part-time'
            )


        # assign career level
        df['career_level'] = item_recode(
            df.efalevel, {
                32: 'Graduate',
                36: 'Graduate',
                52: 'Graduate',
                56: 'Graduate',
            },
            'Undergraduate')


        # assign degree seeking status
        df['degree_seeking'] = item_recode(
            df.efalevel, {
                24: 'Degree-seeking',
                25: 'Degree-seeking',
                31: 'Non-degree-seeking',
                39: 'Degree-seeking',
                40: 'Degree-seeking',
                44: 'Degree-seeking',
                45: 'Degree-seeking',
                51: 'Non-degree-seeking',
                59: 'Degree-seeking',
                60: 'Degree-seeking',
            },
            'Unknown')
    
                                        
        # assign continuation type
        df['continuation_type'] = item_recode(df.efalevel, {
            24: 'First-time',
            39: 'Transfer',
            40: 'Continuing',
            44: 'First-time',
            59: 'Transfer',
            60: 'Continuing',
            },
            'Unknown')

        # id columns
        id_columns = ['unitid','date_key','time_status','career_level','degree_seeking','continuation_type']                                  
        # reshape from wide to long format
        enroll = pd.melt(df,
                        id_vars = id_columns,
                        value_vars = [
                            'efnralm', 'efnralw', 'efunknm', 'efunknw', 'efhispm',
                            'efhispw', 'efaianm', 'efaianw', 'efasiam', 'efasiaw',
                            'efbkaam', 'efbkaaw', 'efnhpim', 'efnhpiw', 'efwhitm',
                            'efwhitw', 'ef2morm', 'ef2morw'],
                        value_name = 'headcount')

        # demographic dimension
        enroll['demographic_key'] = enroll.variable.str.slice(2, 7).str.lower()
        id_columns.append('demographic_key')

        # drop variable field
        enroll = enroll.drop(columns = ['variable'])

        # remove institutions with no data
        enroll.headcount = enroll.headcount.fillna(0)

        # collapse sums
        enroll = enroll.groupby(id_columns).sum().reset_index()

        # keep only rows with non-zero headcount
        enroll = enroll.query('headcount > 0')

        # insert data into db table
        session = Session()

        try:
            print(f'Attempting to insert {enroll.shape[0]:,} rows for {year} into {IpedsFallEnrollment.__tablename__}.')
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
            print(f'\t{record_deletes:,} old records were deleted.')
            print(f'\t{enroll.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All Done.')

if __name__ == '__main__':
    main()