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
from database.ipeds_admissions import IpedsAdmissions

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
           'applcn',
           'applcnm',
           'applcnw',
           'admssn',
           'admssnm',
           'admssnw',
           'enrlt',
           'enrlm',
           'enrlw']

# main function
def main():
    for year in np.arange(args.first, args.last + 1):
        try:
            print(f'Reading files for {year}...', end='', flush=True)
            df = read_pickle(f'data/ipeds_adm_{year}.pickle')[keepers]
            df = df.fillna(0)
        except Exception as e:
            print(f'ERROR.\n\n{str(e)}\n')
        else:
            print('DONE.')

        # set date key
        date_key = f'{year}-10-15'

        # modify data frame to apply needed fixes
        df['date_key'] = date_key

        # calculate unknowns
        df['applcnu'] = df.applcn - (df.applcnm + df.applcnw)
        df['admssnu'] = df.admssn - (df.admssnm + df.admssnw)
        df['enrlu'] = df.enrlt - (df.enrlm + df.enrlw)

        # reshape from wide to long format
        adm = pd.melt(df,
                    id_vars = ['unitid','date_key'],
                    value_vars = ['applcnm', 'applcnw', 'applcnu',
                                    'admssnm', 'admssnw', 'admssnu',
                                    'enrlm', 'enrlw', 'enrlu'],
                    value_name = 'count')

        # field indicator
        adm['field'] = np.where(adm.variable.str.slice(0, 3) == 'app', 'applications', 'unknown')
        adm['field'] = np.where(adm.variable.str.slice(0, 3) == 'adm', 'admissions', adm['field'])
        adm['field'] = np.where(adm.variable.str.slice(0, 3) == 'enr', 'enrolled', adm['field'])

        # sex indicator
        adm['sex'] = np.where(adm.variable.str.slice(-1) == 'w', 'women', 'unknown')
        adm['sex'] = np.where(adm.variable.str.slice(-1) == 'm', 'men', adm['sex'])

        # add demographic key
        adm['demographic_key'] = 'unknu'
        adm['demographic_key'] = np.where(adm.sex == 'men', 'unknm', adm.demographic_key)
        adm['demographic_key'] = np.where(adm.sex == 'women', 'unknw', adm.demographic_key)

        adm = adm.pivot_table(index=['unitid', 'date_key', 'demographic_key'],
                            columns='field',
                            values='count',
                            aggfunc = np.sum,
                            fill_value = 0).reset_index()

        # remove institutions with no applications
        adm = adm.fillna(0)
        adm = adm.loc[adm.applications > 0]

        # insert data into dbo.survey_records
        session = Session()

        try:
            print(f'Attempting to insert {adm.shape[0]:,} rows for {year} into {IpedsAdmissions.__tablename__}.')
            record_deletes = session.query(IpedsAdmissions).filter(IpedsAdmissions.date_key==date_key).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = IpedsAdmissions,
                                        mappings = adm.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('No data were altered due to error.\n')
        else:
            session.commit()
            print(f'\t{record_deletes:,} old records were deleted.')
            print(f'\t{adm.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All Done.')

if __name__ == '__main__':
    main()
