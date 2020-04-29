#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_retention import IpedsRetention

class RetentionFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        url = self.get_url(f'ef{self.year}d.zip')

        print(f'Reading data from {url}')
        
        df = self.read(
            url,
            {
                'UNITID': np.int32,
                'RRFTCTA': np.float32,
                'RET_NMF': np.float32,
                'RRPTCTA': np.float32,
                'RET_NMP': np.float32,
            })
        
        # add date keys
        df['date_key'] = self.date_key
        df['cohort_date_key'] = f'{self.year - 1}-10-15'
        
        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = [
                'unitid',
                'date_key',
                'cohort_date_key',
            ],
            value_vars = [
                'rrftcta',
                'ret_nmf',
                'rrptcta',
                'ret_nmp',
            ],
            var_name = 'variable',
            value_name = 'headcount')
        
        # add time status
        df['time_status'] = self.item_recode(
            df.variable,
            {
                'rrftcta': 'Full-time',
                'ret_nmf': 'Full-time',
            },
            'Part-time'
        )
        
        # add cohort type
        df['cohort'] = self.item_recode(
            df.variable,
            {
                'rrftcta': 'adjusted_cohort',
                'rrptcta': 'adjusted_cohort',
            },
            'enrolled'
        )
        
        # pivot fields to columns
        df = df.pivot_table(
            index=[
                'unitid',
                'date_key',
                'cohort_date_key',
                'time_status',
            ],
            columns = 'cohort',
            values = 'headcount',
            fill_value = None).reset_index()

        # keep only rows with non-zero awards
        df = df.fillna(0)

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsRetention(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    cohort_date_key = row.cohort_date_key,
                    time_status = row.time_status,
                    adjusted_cohort = row.adjusted_cohort,
                    enrolled = row.enrolled,
                ))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsRetention.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    _file = RetentionFile(2018)
    print(_file.year)
    print(_file.url)
    print(_file.rows[0])
