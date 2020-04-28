#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_finance import IpedsFinance

class GasbFinanceFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.date_key = f'{year}-06-30'
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        url = self.get_url(f'f{str(self.year - 1)[2:]}{str(self.year)[2:]}_f1a.zip')

        print(f'Reading data from {url}')
        df = self.read(url)
        
        # add date key
        df['date_key'] = self.date_key

        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = ['unitid','date_key'],
            var_name = 'finance_field_key',
            value_name = 'amount')

        # convert to numeric and fill missing
        df.amount = pd.to_numeric(df.amount, errors = 'coerce')
        # df.amount = df.amount.fillna(0)
        
        # keep only rows with non-zero awards
        df = df.dropna()

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsFinance(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    finance_field_key = row.finance_field_key,
                    amount = row.amount))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsFinance.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    _file = GasbFinanceFile(2018)
    print(_file.year)
    print(_file.url)
    print(_file.rows[0])
