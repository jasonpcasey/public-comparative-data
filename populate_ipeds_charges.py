#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.states import State
from database.counties import County
from database.ipeds_charges import IpedsCharge

# get command line arguments
parser = argparse.ArgumentParser(description='Transfers IPEDS Charges for specified years to database.')
parser.add_argument("--first", default=2002, type=int, help="First year of sequence.")
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

# main function
def main():
    for year in np.arange(args.first, args.last + 1):
        try:
            print(f'Reading files for {year}...', end='', flush=True)
            ic = read_pickle(f'data/ipeds_ic_{year}_ay.pickle')

        except Exception as e:
            print('ERROR.\n\n{}\n'.format(str(e)))
        else:
            print('DONE.')

        keepers = ['chg1at0', 'chg1at1', 'chg1at2', 'chg1at3',
                'chg2at0', 'chg2at1', 'chg2at2', 'chg2at3',
                'chg3at0', 'chg3at1', 'chg3at2', 'chg3at3',
                'chg1af0', 'chg1af1', 'chg1af2', 'chg1af3',
                'chg2af0', 'chg2af1', 'chg2af2', 'chg2af3',
                'chg3af0', 'chg3af1', 'chg3af2', 'chg3af3',
                'chg4ay0', 'chg4ay1', 'chg4ay2', 'chg4ay3',
                'chg5ay0', 'chg5ay1', 'chg5ay2', 'chg5ay3',
                'chg6ay0', 'chg6ay1', 'chg6ay2', 'chg6ay3']

        # add back missing variables
        for col in keepers:
            if col not in list(ic.columns):
                ic[col] = None

        # create charges data frame
        charges = pd.melt(ic,
                        id_vars = 'unitid',
                        value_vars = ['chg1at0', 'chg1at1', 'chg1at2', 'chg1at3',
                                        'chg2at0', 'chg2at1', 'chg2at2', 'chg2at3',
                                        'chg3at0', 'chg3at1', 'chg3at2', 'chg3at3',
                                        'chg1af0', 'chg1af1', 'chg1af2', 'chg1af3',
                                        'chg2af0', 'chg2af1', 'chg2af2', 'chg2af3',
                                        'chg3af0', 'chg3af1', 'chg3af2', 'chg3af3',
                                        'chg4ay0', 'chg4ay1', 'chg4ay2', 'chg4ay3',
                                        'chg5ay0', 'chg5ay1', 'chg5ay2', 'chg5ay3',
                                        'chg6ay0', 'chg6ay1', 'chg6ay2', 'chg6ay3'],
                        value_name = 'charge')

        # set date key
        charges['year_id'] = year - (3 - charges['variable'].str[6].astype('int32'))
        charges['date_key'] = charges['year_id'].apply(str) + '-09-01'

        # create charge type
        charges['charge_type_id'] = item_recode(charges['variable'].str[3:6],
                                            {'1at': 1, '2at': 1, '3at': 1,
                                                '1af': 2, '2af': 2, '3af': 2,
                                                '4ay': 3,
                                                '5ay': 4,
                                                '6ay': 5},
                                            'Unknown')

        charges['charge_type'] = item_recode(charges['variable'].str[3:6],
                                            {'1at': 'Tuition', '2at': 'Tuition', '3at': 'Tuition',
                                            '1af': 'Fees', '2af': 'Fees', '3af': 'Fees',
                                            '4ay': 'Books and supplies',
                                            '5ay': 'On-campus room and board',
                                            '6ay': 'On-campus other expenses'},
                                            'Unknown')

        # create student residency
        charges['student_residency'] = item_recode(charges['variable'].str[3],
                                                {'1': 'In-district', '2': 'In-state',
                                                '3': 'Out-of-state', '4': 'In-district',
                                                '5': 'In-district', '6': 'In-district'},
                                                'Unknown')

        # drop missing rows
        charges = charges.dropna()

        # reproduce additional expenses for in-state and out-of-state totals
        expenses_in_state = charges.query('charge_type_id > 2').copy()
        expenses_in_state['student_residency'] = "In-state"

        expenses_out_state = charges.query('charge_type_id > 2').copy()
        expenses_out_state['student_residency'] = 'Out-of-state'

        charges = pd.concat([charges, expenses_in_state, expenses_out_state],
                            sort = False)

        # free up memory
        expenses_in_state = None
        expenses_out_state = None

        charges = charges[['unitid', 'date_key', 'student_residency', 'charge_type', 'charge']]

        # eliminate duplicates
        charges = charges.groupby(['unitid', 'date_key', 'student_residency', 'charge_type']).max()

        charges = charges.reset_index()

        # insert data into dbo.survey_records
        session = Session()

        delete_list = charges[['unitid', 'date_key']].drop_duplicates().to_dict(orient = 'records')

        try:
            print(f'Attempting to insert {charges.shape[0]:,} rows for {year} into {IpedsCharge.__tablename__}.')
            for row in delete_list:
                record_deletes = session.query(IpedsCharge).filter(IpedsCharge.unitid == row['unitid'], IpedsCharge.date_key == row['date_key']).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = IpedsCharge,
                                        mappings = charges.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('No data were altered due to error.\n')
        else:
            session.commit()
            print(f'{record_deletes:,} old records were deleted.')
            print(f'{charges.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All done!')

if __name__ == '__main__':
    main()