#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_test_scores import IpedsTestScore

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--first", default=2007, type=int, help="First year of sequence.")
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
        print(f'File not loaded properly.\n\n{str(e)}')
        raise

    return answer

keepers = ['unitid',
           'satnum', 'satpct',
           'actnum', 'actpct', 'satvr25', 'satvr75',
           'satmt25', 'satmt75', 'satwr25', 'satwr75',
           'actcm25', 'actcm75', 'acten25', 'acten75',
           'actmt25', 'actmt75', 'actwr25', 'actwr75']

# main function
def main():
    for year in np.arange(args.first, args.last + 1):
        try:
            print(f'Reading files for {year}...', end='', flush=True)
            df = read_pickle(f'data/ipeds_adm_{year}.pickle')
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
        date_key = f'{year}-10-15'

        # modify data frame to apply needed fixes
        df['date_key'] = date_key

        # reshape from wide to long format
        scores = pd.melt(df,
                        id_vars = ['unitid','date_key'],
                        value_vars = ['satnum', 'satpct',
                                    'actnum', 'actpct', 'satvr25', 'satvr75',
                                    'satmt25', 'satmt75', 'satwr25', 'satwr75',
                                    'actcm25', 'actcm75', 'acten25', 'acten75',
                                    'actmt25', 'actmt75', 'actwr25', 'actwr75'],
                        value_name = 'value')

        # test type
        scores['test_type'] = scores.variable.str.slice(0, 3).str.upper()

        # subject
        scores['subject'] = item_recode(scores.variable,
                                        {'satnum': 'Composite',
                                        'satpct': 'Composite',
                                        'actnum': 'Composite',
                                        'actpct': 'Composite',
                                        'actcm25': 'Composite',
                                        'actcm75': 'Composite',
                                        'satmt25': 'Math',
                                        'satmt75': 'Math',
                                        'actmt25': 'Math',
                                        'actmt75': 'Math',
                                        'satvr25': 'Verbal',
                                        'satvr75': 'Verbal',
                                        'satwr25': 'Writing',
                                        'satwr75': 'Writing',
                                        'actwr25': 'Writing',
                                        'actwr75': 'Writing',
                                        'acten25': 'English',
                                        'acten75': 'English'},
                                        'Unknown')

        # assign field
        scores['field'] = item_recode(scores.variable,
                                        {'satnum': 'count',
                                        'satpct': 'percentage',
                                        'actnum': 'count',
                                        'actpct': 'percentage',
                                        'actcm25': 'percentile_25',
                                        'actcm75': 'percentile_75',
                                        'satmt25': 'percentile_25',
                                        'satmt75': 'percentile_75',
                                        'actmt25': 'percentile_25',
                                        'actmt75': 'percentile_75',
                                        'satvr25': 'percentile_25',
                                        'satvr75': 'percentile_75',
                                        'satwr25': 'percentile_25',
                                        'satwr75': 'percentile_75',
                                        'actwr25': 'percentile_25',
                                        'actwr75': 'percentile_75',
                                        'acten25': 'percentile_25',
                                        'acten75': 'percentile_75'},
                                        'Unknown')

        # pivot to wider format for new fields
        scores = scores.pivot_table(index=['unitid', 'date_key', 'test_type', 'subject'],
                                    columns='field',
                                    values='value',
                                    aggfunc = np.sum,
                                    fill_value = None).reset_index()
        
        # remove rows with all missing values
        scores = scores.loc[(scores['count'] > 0) | (scores['percentage'] > 0) | (scores['percentile_25'] > 0) | (scores['percentile_75'] > 0)]

        # convert percentage taking test to proportion
        scores['percentage'] = scores.percentage / 100

        # remove institutions with no applications
        scores = scores.fillna(0)

        # insert data into db table
        session = Session()

        try:
            print(f'Attempting to insert {scores.shape[0]:,} rows for {year} into {IpedsTestScore.__tablename__}.')
            record_deletes = session.query(IpedsTestScore).filter(IpedsTestScore.date_key==date_key).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = IpedsTestScore,
                                        mappings = scores.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('No data were altered due to error.\n')
        else:
            session.commit()
            print(f'\t{record_deletes:,} old records were deleted.')
            print(f'\t{scores.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All Done.')

if __name__ == '__main__':
    main()