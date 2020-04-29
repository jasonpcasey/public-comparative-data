#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.nsf_herd_academic_fields import NsfHerdAcademicField
from database.nsf_herd_federal_agencies import NsfHerdFederalAgency
from database.nsf_herd_detail_data import NsfHerdDetail

# get command line arguments
parser = argparse.ArgumentParser(description='Transfers NSF HERD by Field and Agency for specified years to database.')
parser.add_argument("--first", default=2010, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()


# local functions
def item_recode(col, codings, default_value = None):
    if default_value == None:
        answer = col.map(codings, na_action = 'ignore')
    else:
        answer = col.map(codings, na_action = 'ignore').fillna(default_value) 
    return(answer)

# main function
def main():
    for year in np.arange(args.first, args.last + 1):
        try:
            spec = f'data/nsf_{year}.pickle'
            print(f'Reading data for fiscal year ending {year}...', end='', flush=True)
            with open(spec, 'rb') as f:
                herd = pickle.load(f)
        except Exception as e:
            print(f'ERROR.\nFile not downloaded properly.\n\n{str(e)}\n')
        else:
            print('DONE.')
            # herd.info()

        # set date key
        date_key = f'{year}-06-30'

        # modify data frame to apply needed fixes
        herd['date_key'] = date_key

        # convert id's and add missing values
        herd.ncses_inst_id = herd.ncses_inst_id.fillna('XXXXXXXX')

        # get unitid fixes
        with open('data/inst_id_fixes.pickle', 'rb') as f:
            fixes = pickle.load(f)

        # apply fixes to unitid column, fill missing, and convert to integer
        herd['unitid'] = herd.inst_id.map(fixes)
        herd.unitid = np.where(herd.unitid.isna(), herd.ipeds_unitid, herd.unitid)
        herd.unitid = herd.unitid.fillna(-1).astype(int)

        herd = herd[herd.column.isin(['DOD',
                                    'DOE',
                                    'HHS',
                                    'NASA',
                                    'NSF',
                                    'USDA',
                                    'Other agencies',
                                    'State and local government',
                                    'Business',
                                    'Institution funds',
                                    'Nonprofit organziations'])]


        herd['agency_key'] = item_recode(herd.column,
                                        {'DOD': 'DOD',
                                        'DOE': 'DOE',
                                        'HHS': 'HHS',
                                        'NASA': 'NAS',
                                        'NSF': 'NSF',
                                        'USDA': 'USD',
                                        'Other agencies': 'OTH',
                                        'State and local government': 'SLG',
                                        'Business': 'BUS',
                                        'Institution funds': 'INS',
                                        'All other sources': 'OTH',
                                        'Nonprofit organziations': 'NPO'},
                                        'Unknown')

        herd['funding_type'] = herd.questionnaire_no.str[:2]

        herd = herd[herd.funding_type.isin(['09', '11'])]

        herd['funding_type'] = item_recode(herd.funding_type, {'09': 'Federal', '11': 'Non-federal'}, 'Unknown')

        herd['academic_field_key'] = herd.questionnaire_no.str[2:].str.strip()
        herd = herd[herd.academic_field_key.isin(['A','B01','B02','B03','B04','B05','B06','B07','B08',
                                                'B09','C01','C02','C03','C04','D01','D02','D03','D04',
                                                'D05','E','F01','F02','F03','F04','F05','G','H01',
                                                'H02','H03','H04','H05','I','J01','J02','J03','J04',
                                                'J05','J06','J07','J08'])]

        herd['data'] = herd.data.fillna(0) * 1000

        # rename columns
        herd = herd.rename(columns = {'data': 'expenditure'})

        # de-duplicate items
        keepers = ['inst_id',
                'date_key',
                'funding_type',
                'agency_key',
                'academic_field_key',
                'ncses_inst_id',
                'unitid',
                'expenditure']

        herd = herd[keepers].groupby(['inst_id',
                                    'date_key',
                                    'funding_type',
                                    'agency_key',
                                    'academic_field_key',
                                    'ncses_inst_id',
                                    'unitid']).sum().reset_index()

        herd['expenditure'] = herd.expenditure.fillna(0)
        # herd = herd.fillna(sql.null())

        # insert data into dbo.survey_records
        session = Session()

        try:
            print(f'Attempting to insert {herd.shape[0]:,} rows for {year} into {NsfHerdDetail.__tablename__}.')
            record_deletes = session.query(NsfHerdDetail).filter(NsfHerdDetail.date_key==date_key).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = NsfHerdDetail,
                                        mappings = herd.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('No data were altered due to error.\n')
        else:
            session.commit()
            print(f'\t{record_deletes:,} old records were deleted.')
            print(f'\t{herd.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All done!')

if __name__ == '__main__':
    main()