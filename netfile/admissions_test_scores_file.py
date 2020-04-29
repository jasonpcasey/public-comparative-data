#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_test_scores import IpedsTestScore
from database.date_dimension import DateRow

class TestScoreFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        if self.year < 2014:
            url = self.get_url(f'ic{self.year}.zip')
        else:
            url = self.get_url(f'adm{self.year}.zip')

        print(f'Reading data from {url}')
        df = self.read(
            url,
            {
                'UNITID': np.int32,
                'SATNUM': np.float32,
                'SATPCT': np.float32,
                'ACTNUM': np.float32,
                'ACTPCT': np.float32,
                'SATVR25': np.float32,
                'SATVR75': np.float32,
                'SATMT25': np.float32,
                'SATMT75': np.float32,
                'SATWR25': np.float32,
                'SATWR75': np.float32,
                'ACTCM25': np.float32,
                'ACTCM75': np.float32,
                'ACTEN25': np.float32,
                'ACTEN75': np.float32,
                'ACTMT25': np.float32,
                'ACTMT75': np.float32,
                'ACTWR25': np.float32,
                'ACTWR75': np.float32,
            })
        


        # add date key
        df['date_key'] = self.date_key

        # columns to keep
        keepers = [
            'unitid', 'date_key',
            'satnum', 'satpct',
            'actnum', 'actpct',
            'satvr25', 'satvr75',
            'satmt25', 'satmt75',
            'satwr25', 'satwr75',
            'actcm25', 'actcm75',
            'acten25', 'acten75',
            'actmt25', 'actmt75',
            'actwr25', 'actwr75',
        ]
        
        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None
        
        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = ['unitid', 'date_key'],
            # var_name = 'variable',
            value_vars = [
                'satnum', 'satpct',
                'actnum', 'actpct',
                'satvr25', 'satvr75',
                'satmt25', 'satmt75',
                'satwr25', 'satwr75',
                'actcm25', 'actcm75',
                'acten25', 'acten75',
                'actmt25', 'actmt75',
                'actwr25', 'actwr75',
            ],
            value_name = 'value')

        # keep only rows with non-zero awards
        df = df.dropna()

        # convert to numeric and fill missing
        df.value = pd.to_numeric(df.value, errors = 'coerce')

        # assign test type     
        df['test_type'] = np.where(df.variable.str.slice(0,3) == 'sat', 'SAT', 'ACT')   

        # assign subject
        df['subject'] = self.item_recode(
            df.variable,
            {
                'satmt25' : 'Math',
                'satmt75' : 'Math',
                'actmt25' : 'Math',
                'actmt75' : 'Math',
                'satvr25' : 'Verbal',
                'satvr75' : 'Verbal',
                'satwr25' : 'Writing',
                'satwr75' : 'Writing',
                'actwr25' : 'Writing',
                'actwr75' : 'Writing',
                'acten25' : 'English',
                'acten75' : 'English',
            },
            'Composite'
        )

        # assign variable names
        df['variable_name'] = np.where(df.variable.str.slice(-3) == 'num', 'count', 'percentile_75') 
        df['variable_name'] = np.where(df.variable.str.slice(-3) == 'pct', 'percentage', df.variable_name)
        df['variable_name'] = np.where(df.variable.str.slice(-2) == '25', 'percentile_25', df.variable_name)

        # pivot fields to columns
        df = df.pivot_table(
            index=[
                'unitid',
                'date_key',
                'test_type',
                'subject',
            ],
            columns = 'variable_name',
            values = 'value',
            fill_value = None).reset_index()

        # set percentage to proper scale
        df.percentage = df.percentage / 100
        
        lhs = df[[
            'unitid',
            'date_key',
            'test_type',
            'count',
            'percentage',
        ]].dropna()

        rhs = df[[
            'unitid',
            'date_key',
            'test_type',
            'subject',
            'percentile_25',
            'percentile_75',
        ]].dropna()

        df = pd.merge(lhs, rhs, on = ['unitid', 'date_key', 'test_type'])
        
        # add rows                            
        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsTestScore(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    test_type = row.test_type,
                    subject = row.subject,
                    count = row.count,
                    percentage = row.percentage,
                    percentile_25 = row.percentile_25,
                    percentile_75 = row.percentile_75))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsTestScore.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    _file = TestScoreFile(2018)
    print(_file.year)
    print(_file.url)
    print(_file.rows[0])
