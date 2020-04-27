#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_finance_field_dimension import IpedsFinanceFieldDimension
from database.ipeds_finance import IpedsFinance

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--first", default=2008, type=int, help="First year of sequence.")
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
            df = read_pickle(f'data/ipeds_f2_{year}.pickle')
            df = df.fillna(0)
        except Exception as e:
            print(f'ERROR.\n\n{str(e)}')
        else:
            print('DONE.')

        # set date key
        date_key = f'{year}-06-30'

        # add key info to data frame
        df['date_key'] = date_key

        # reshape from wide to long format
        fasb = pd.melt(
            df,
            id_vars = ['unitid','date_key'],
            var_name = 'finance_field_key',
            value_name = 'amount')

        # convert to numeric and fill missing
        fasb.amount = pd.to_numeric(fasb.amount, errors = 'coerce')
        fasb.amount = fasb.amount.fillna(0)

        # insert data into db table
        session = Session()

        try:
            print(f'Attempting to insert {fasb.shape[0]:,} rows for {year} into {IpedsFinance.__tablename__}.')
            record_deletes = session.query(IpedsFinance).filter(IpedsFinance.date_key==date_key).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = IpedsFinance,
                                        mappings = fasb.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('No data were altered due to error.\n')
        else:
            session.commit()
            print(f'\t{record_deletes:,} old records were deleted.')
            print(f'\t{fasb.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All Done.')

if __name__ == '__main__':
    main()