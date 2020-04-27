#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.athletic_conferences import AthleticConference
from database.ipeds_athletic_conference_memberships import IpedsAthleticConferenceMembership

pd.set_option('display.max_rows', 10)

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
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
        print('File not loaded properly.\n\n{}'.format(str(e)))
        raise

    return answer

# main function
def main():
    for year in np.arange(args.first, args.last + 1):
        try:
            print('\nReading files for {}...'.format(year), end='', flush=True)
            ic = read_pickle('data/ipeds_ic_{}.pickle'.format(year))

        except Exception as e:
            print('ERROR.\n\n{}\n'.format(str(e)))
        else:
            print('DONE.')

        keepers = ['unitid',
                'confno1',
                'confno2',
                'confno3',
                'confno4']

        # add back missing variables
        for col in keepers:
            if col not in list(ic.columns):
                ic[col] = None

        ic = ic[keepers]   

        # set date key
        date_key = '{}-10-15'.format(year)

        # modify data frame to apply needed fixes
        ic['date_key'] = date_key

        # reshape from wide to long format
        conf = pd.melt(ic,
                    id_vars = ['unitid','date_key'],
                    var_name = 'sport_name',
                    value_vars = ['confno1', 'confno2', 'confno3', 'confno4'],
                    value_name = 'conference_id')

        # remove not applicables
        conf = conf.loc[conf.conference_id > 0]

        conf['sport_name'] = item_recode(conf.sport_name,
                                        {'confno1': 'Football',
                                        'confno2': 'Basketball',
                                        'confno3': 'Baseball',
                                        'confno4': 'Cross country/track'},
                                        'Not applicable')

        # replace NaN with database-compliant nulls
        # conf = conf.fillna(sql.null())

        # insert data into dbo.survey_records
        session = Session()

        try:
            print(f'Attempting to insert {conf.shape[0]:,} rows for {year} into {IpedsAthleticConferenceMembership.__tablename__}.')
            record_deletes = session.query(IpedsAthleticConferenceMembership).filter(IpedsAthleticConferenceMembership.date_key==date_key).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = IpedsAthleticConferenceMembership,
                                        mappings = conf.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('No data were altered due to error.\n')
        else:
            session.commit()
            print('\t{:,} old records were deleted.'.format(record_deletes))
            print('\t{:,} new records were inserted.\n'.format(conf.shape[0]))
        finally:
            session.close()
            session = None

    print('All done!')

if __name__ == '__main__':
    main()
