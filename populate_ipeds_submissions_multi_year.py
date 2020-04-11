# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle

from sqlalchemy import sql

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_survey_dimension import IpedsSurveyDimension
from database.ipeds_submission_status import IpedsSubmissionStatus

pd.set_option('display.max_rows', 10)

# constants
first_year = 2004
last_year = 2018

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

for year in np.arange(first_year, last_year + 1):
    try:
        print('Reading files for {}...'.format(year), end='', flush=True)
        ic = read_pickle('data/ipeds_flags_{}.pickle'.format(year))

    except Exception as e:
        print('ERROR.\n\n{}\n'.format(str(e)))
    else:
        print('DONE.')

    # rename allocation columns for consistency
    ic = ic.rename(columns = {'pcc_f': 'alloc_c', 'pce12_f': 'alloc_e12', 'pcsfa_f': 'alloc_sfa',
                              'pcgr_f': 'alloc_gr', 'pcgr2_f': 'alloc_gr2', 'pcom_f': 'alloc_om',
                              'pchr_f': 'alloc_hr', 'pcef_f': 'alloc_ef', 'pcf_f': 'alloc_f', 'pcal_f': 'alloc_al'})

    prch = [col for col in ic if col.startswith('prch_')]
    idx = [col for col in ic if col.startswith('idx_')]
    alloc = [col for col in ic if col.startswith('alloc_')]
    keepers = ['unitid'] + prch + idx + alloc

    # add back missing variables
    for col in keepers:
        if col not in list(ic.columns):
            ic[col] = None

    # convert to numeric values
    ic = ic[keepers].astype(np.float32)

    # create submits data frame
    submits = pd.melt(ic,
                    id_vars = 'unitid',
                    value_vars = keepers[1:],
                    value_name = 'value')

    # set date key
    date_key = '{}-09-01'.format(year)
    submits['date_key'] = date_key

    # split variable field
    submits = pd.concat([submits,
                        submits.variable.str.split(pat = "_", expand = True)], axis = 1).rename(columns = {0: 'field',
                                                                                                            1: 'survey_key'})

    # recode field names
    submits['field'] = item_recode(submits.field,
                                {'prch': 'parent_child',
                                 'idx': 'parent_unitid',
                                 'alloc': 'allocation_factor'},
                                 'Unknown')

    # pivot fields to columns
    submits = submits.pivot_table(index=['unitid', 'date_key', 'survey_key'],
                                columns = 'field',
                                values = 'value',
                                fill_value = None).reset_index()

    # assign labels to parent_child
    submits['parent_child'] = np.where(submits.parent_child > 1, 'Child', 'Parent')

    # assign home unitid to missing parent_unitid
    submits['parent_unitid'] = np.where(submits.parent_unitid.isnull(), submits.unitid, submits.parent_unitid)
    submits['parent_unitid'] = np.where(submits.parent_unitid < 100000, submits.unitid, submits.parent_unitid)

    # fill missing parent allocation with 100, divide by 100
    if 'allocation_factor' not in list(submits.columns):
        submits['allocation_factor'] = None
    # submits['allocation_factor'] = np.where(submits.parent_child == 'Parent', 1.00, submits.allocation_factor / 100)
    submits['allocation_factor'] = submits.allocation_factor / 100

    # drop missing rows
    # submits = submits.dropna()

    # replace NaN with database-compliant nulls
    # submits = submits.fillna(sql.null())

    # insert data into dbo.survey_records
    session = Session()

    delete_list = submits[['unitid', 'date_key']].drop_duplicates().to_dict(orient = 'records')

    try:
        print('Attempting to insert {:,} rows for {} into {}.'.format(submits.shape[0], year, IpedsSubmissionStatus.__tablename__))
        record_deletes = session.query(IpedsSubmissionStatus).filter(IpedsSubmissionStatus.date_key==date_key).delete(synchronize_session=False)
        session.bulk_insert_mappings(mapper = IpedsSubmissionStatus,
                                    mappings = submits.to_dict(orient='records'),
                                    render_nulls = True)
    except Exception as e:
        session.rollback()
        print(str(e))
        print('\tNo data were altered due to error.\n')
    else:
        session.commit()
        print('\t{:,} old records were deleted.'.format(record_deletes))
        print('\t{:,} new records were inserted.\n'.format(submits.shape[0]))
    finally:
        session.close()
        session = None

print('All done!')
