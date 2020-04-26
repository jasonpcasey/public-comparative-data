##!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.states import State
from database.nsf_herd_institution_data import NsfHerdInstitution
from database.nsf_herd_detail_data import NsfHerdDetail

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--first", default=2010, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()


#constants
state_fips = {'AK': 2, 'AL': 1, 'AR': 5, 'AS': 60, 'AZ': 4, 'CA': 6, 'CO': 8, 'CT': 9, 'DC': 11,
              'DE': 10, 'FL': 12, 'GA': 13, 'GU': 66, 'HI': 15, 'IA': 19, 'ID': 16, 'IL': 17,
              'IN': 18, 'KS': 20, 'KY': 21, 'LA': 22, 'MA': 25, 'MD': 24, 'ME': 23, 'MI': 26,
              'MN': 27, 'MO': 29, 'MS': 28, 'MT': 30, 'NC': 37, 'ND': 38, 'NE': 31, 'NH': 33,
              'NJ': 34, 'NM': 35, 'NV': 32, 'NY': 36, 'OH': 39, 'OK': 40, 'OR': 41, 'PA': 42,
              'PR': 72, 'RI': 44, 'SC': 45, 'SD': 46, 'TN': 47, 'TX': 48, 'UT': 49, 'VA': 51,
              'VI': 78, 'VT': 50, 'WA': 53, 'WI': 55, 'WV': 54, 'WY': 56, 'all': 0}

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

        herd['med_sch_flag'] = herd.med_sch_flag.isin(['T','TRUE', 'True', 'true', 't', 'Y', 'Yes', '1'])

        herd['toi_code'] = herd.toi_code == 1

        toc = {1: 'Public',
            2: 'Private'}

        herd['toc_code'] = item_recode(herd['toc_code'], toc, 'Unknown')
        herd['inst_state_code'] = item_recode(herd['inst_state_code'], state_fips, 0)

        # convert id's and add missing values
        herd.ncses_inst_id = herd.ncses_inst_id.fillna('XXXXXXXX')

        # get unitid fixes
        with open('data/inst_id_fixes.pickle', 'rb') as f:
            fixes = pickle.load(f)

        # apply fixes to unitid column, fill missing, and convert to integer
        herd['unitid'] = herd.inst_id.map(fixes)
        herd.unitid = np.where(herd.unitid.isna(), herd.ipeds_unitid, herd.unitid)
        herd.unitid = herd.unitid.fillna(-1).astype(int)

        # select questionnaire_no's for institutional aggregate values
        herd = herd[herd.questionnaire_no.isin(['01.a', '01.b', '01.c', '01.d', '01.e', '01.f', '01.g', '04', 'NA_01', '15'])]

        # data are reported in thousands of dollars - make explicit
        herd['data'] = np.where(herd.questionnaire_no == '15', herd.data, herd.data.fillna(0) * 1000)

        # add labels for personnel variables
        herd.loc[(herd['questionnaire_no'] == '15') & (herd['row'] == 'Principal investigators'), 'questionnaire_no'] = 'principal_investigators'  
        herd.loc[(herd['questionnaire_no'] == '15') & (herd['row'] == 'Other personnel'), 'questionnaire_no'] = 'other_personnel'  
        herd.loc[(herd['questionnaire_no'] == '15') & (herd['row'] == 'Total'), 'questionnaire_no'] = 'research_personnel'  

        keepers = ['inst_id',
                'date_key',
                'unitid',
                'ncses_inst_id',
                'inst_name_long',
                'inst_state_code',
                'toc_code',
                'toi_code',
                'med_sch_flag',
                'questionnaire_no',
                'data']

        # long to wide
        institutions = herd.pivot_table(index = ['inst_id',
                                                'date_key',
                                                'unitid',
                                                'ncses_inst_id',
                                                'inst_name_long',
                                                'inst_state_code',
                                                'toc_code',
                                                'toi_code',
                                                'med_sch_flag'],
                                        columns = 'questionnaire_no',
                                        values = 'data',
                                        aggfunc = np.sum,
                                        fill_value = 0).reset_index()

        # rename columns
        institutions = institutions.rename(columns = {'inst_name_long': 'institution_name',
                                                    'inst_state_code': 'state_fips',
                                                    'toc_code': 'control',
                                                    'toi_code': 'academic_institution',
                                                    'med_sch_flag': 'medical_school_flag',
                                                    '01.a': 'federal_government',
                                                    '01.b': 'state_and_local_government',
                                                    '01.c': 'business',
                                                    '01.d': 'nonprofit_organizations',
                                                    '01.e': 'institutional_funds',
                                                    '01.f': 'other_sources',
                                                    '01.g': 'total_rd_expenses',
                                                    '04': 'medical_school_expenses',
                                                    'NA_01': 'arra_funds'})

        # replace NaN with database-compliant nulls
        institutions['research_personnel'] = np.where(institutions.research_personnel == 0, None, institutions.research_personnel)

        # insert data into dbo.survey_records
        session = Session()

        try:
            print(f'Attempting to insert {institutions.shape[0]:,} rows for {year} into {NsfHerdInstitution.__tablename__}.')
            record_deletes = session.query(NsfHerdInstitution).filter(NsfHerdInstitution.date_key==date_key).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = NsfHerdInstitution,
                                        mappings = institutions.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('No data were altered due to error.\n')
        else:
            session.commit()
            print(f'\t{record_deletes:,} old records were deleted.')
            print(f'\t{institutions.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All done!')

if __name__ == '__main__':
    main()