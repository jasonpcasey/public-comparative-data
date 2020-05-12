#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile

from database.date_dimension import DateRow
from database.ipeds_submission_status import IpedsSubmissionStatus

class IpedsSubmissionsFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        if (self.year < 2004):
            url = self.get_url(f'hd{self.year}.zip')
        else:
            url = self.get_url(f'flags{self.year}.zip')
        
        print(f'Reading data from {url}')
        df = self.read(url)
        
        # rename allocation columns for consistency
        df = df.rename(
            columns = {
                'pcc_f': 'alloc_c', 'pce12_f': 'alloc_e12', 'pcsfa_f': 'alloc_sfa',
                'pcgr_f': 'alloc_gr', 'pcgr2_f': 'alloc_gr2', 'pcom_f': 'alloc_om',
                'pchr_f': 'alloc_hr', 'pcef_f': 'alloc_ef', 'pcf_f': 'alloc_f', 'pcal_f': 'alloc_al'
                }
            )
                                
        prch = [col for col in df if col.startswith('prch_')]
        idx = [col for col in df if col.startswith('idx_')]
        alloc = [col for col in df if col.startswith('alloc_')]
        keepers = ['unitid'] + prch + idx + alloc

        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                ic[col] = None

        # convert to numeric values
        df = df[keepers].astype(np.float32)

        # create submits data frame
        submits = pd.melt(
            df,
            id_vars = 'unitid',
            value_vars = keepers[1:],
            value_name = 'value')

        # set date key
        self.date_key = f'{self.year}-09-01'
        submits['date_key'] = self.date_key

        # split variable field
        submits = pd.concat([submits,
                            submits.variable.str.split(pat = "_", expand = True)], axis = 1).rename(columns = {0: 'field',
                                                                                                                1: 'survey_key'})

        # recode field names
        submits['field'] = self.item_recode(
            submits.field,
            {
                'prch': 'parent_child',
                'idx': 'parent_unitid',
                'alloc': 'allocation_factor'
            },
            'Unknown'
            )

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
        
        submits['allocation_factor'] = submits.allocation_factor / 100

        # create rows for insertion
        for row in submits.itertuples(index=False):
            self.rows.append(IpedsSubmissionStatus(
                unitid = row.unitid,
                date_key = row.date_key,
                survey_key = row.survey_key,
                parent_child = row.parent_child,
                parent_unitid = row.parent_unitid,
                allocation_factor = row.allocation_factor,
                )
            )

    def __repr__(self):
        return(f'{__class__.__name__}(year={self.year})')

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsSubmissionStatus.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    inst = IpedsSubmissionsFile(2018)
    print(inst.year)
    print(inst.url)
    print(inst.rows[0])
