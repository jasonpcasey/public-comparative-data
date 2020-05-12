#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile

from database.date_dimension import DateRow
from database.ipeds_average_tuition import IpedsAverageTuition

class IpedsTuitionFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        if (self.year == 1997):
            url = self.get_url('ic9798_D.zip')
        elif (self.year == 1998):
            url = self.get_url('IC98_D.zip')
        elif (self.year == 1999):
            url = self.get_url('ip1999AY.zip')
        else:
            url = self.get_url(f'ic{self.year}_AY.zip')
        
        print(f'Reading data from {url}')
        df = self.read(url, {
            'UNITID': np.int32,
            'TUITION1': np.float32,
            'TUITION2': np.float32,
            'TUITION3': np.float32,
            'TUITION4': np.float32,
            'TUITION5': np.float32,
            'TUITION6': np.float32,
            'TUITION7': np.float32,
            'FEE1': np.float32,
            'FEE2': np.float32,
            'FEE3': np.float32,
            'FEE4': np.float32,
            'FEE5': np.float32,
            'FEE6': np.float32,
            'FEE7': np.float32,
            'HRCHG1': np.float32,
            'HRCHG2': np.float32,
            'HRCHG3': np.float32,
            'HRCHG4': np.float32,
            'HRCHG5': np.float32,
            'HRCHG6': np.float32,
            'HRCHG7': np.float32,
            })
        
        keepers = [
            'unitid',
            'tuition1', 'tuition2', 'tuition3', 'tuition5', 'tuition6', 'tuition7',
            'fee1', 'fee2', 'fee3', 'fee5', 'fee6', 'fee7',
            'hrchg1', 'hrchg2', 'hrchg3', 'hrchg5', 'hrchg6', 'hrchg7'
            ]

        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None
        
        # create tuition data frame
        tuition = pd.melt(
            df,
            id_vars = 'unitid',
            value_vars = [
                'tuition1', 'tuition2', 'tuition3', 'tuition5', 'tuition6', 'tuition7',
                'fee1', 'fee2', 'fee3', 'fee5', 'fee6', 'fee7',
                'hrchg1', 'hrchg2', 'hrchg3', 'hrchg5', 'hrchg6', 'hrchg7'
                ],
            value_name = 'charge')

        # fix data type
        tuition['charge'] = pd.to_numeric(tuition.charge, errors = 'coerce')

        # drop missing
        tuition = tuition.dropna()

        # set date key
        self.date_key = f'{self.year}-09-01'
        tuition['date_key'] = self.date_key

        # create charge type
        tuition['charge_type'] = self.item_recode(
            tuition.variable.str[:-1],
            {
                'tuition': 'average_tuition',
                'fee': 'required_fees',
                'hrchg': 'per_credit_hour_charge'
            },
            'Unknown')

        # create student residency
        tuition['student_residency'] = self.item_recode(
            tuition['variable'].str[-1],
            {
                '1': 'In-district', '2': 'In-state',
                '3': 'Out-of-state', '5': 'In-district',
                '6': 'In-state', '7': 'Out-of-state'
            },
            'Unknown')

        # create student career
        tuition['student_career'] = np.where(
            tuition.variable.str[-1].astype('int32') < 5,
            'Undergraduate',
            'Graduate')

        # long to wide
        tuition = pd.pivot_table(tuition,
                                    index=['unitid', 'date_key', 'student_career', 'student_residency'],
                                    values='charge',
                                    columns='charge_type',
                                    aggfunc=np.max)
        tuition = tuition.reset_index()

        tuition = tuition[['unitid', 'date_key', 'student_career', 'student_residency',
                            'average_tuition', 'per_credit_hour_charge', 'required_fees']] 

        # create rows for insertion
        for row in tuition.itertuples(index=False):
            self.rows.append(IpedsAverageTuition(
                unitid = row.unitid,
                date_key = row.date_key,
                student_career = row.student_career,
                student_residency = row.student_residency,
                average_tuition = row.average_tuition,
                per_credit_hour_charge = row.per_credit_hour_charge,
                required_fees = row.required_fees,
                )
            )

    def __repr__(self):
        return(f'{__class__.__name__}(year={self.year})')

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsAverageTuition.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    inst = IpedsTuitionFile(2018)
    print(inst.year)
    print(inst.url)
    print(inst.rows[0])
