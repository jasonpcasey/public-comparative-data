#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_employees_by_assigned_position import IpedsEap
from database.date_dimension import DateRow
from database.ipeds_employee_dimension import IpedsEmployeeDimension
from database.ipeds_faculty_dimension import IpedsFacultyDimension

class EapFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.date_key = f'{year}-11-01'
        self.populate_rows()

    def populate_rows(self):
        # get appropriate url for year
        url = self.get_url(f'eap{self.year}.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'OCCUPCAT': np.int32,
            'EAPCAT': np.int32,
            'FACSTAT': np.int32,
            'EAPTOT': np.float32,
            'EAPTYP': np.float32,
            'EAPMED': np.float32,
            'EAPFT': np.float32,
            'EAPFTTYP': np.float32,
            'EAPFTMED': np.float32,
            'EAPPT': np.float32,
            'EAPPTTYP': np.float32,
            'EAPPTMED': np.float32,
        })

        # add date key
        df['date_key'] = self.date_key

        if self.year < 2017:
            fac_codes = [20, 30, 41, 42, 43, 50, 60]
        else:
            fac_codes = [20, 30, 44, 45, 42, 43, 50, 60]

        df = df[df.facstat.isin(fac_codes)]

        # filter out unused rows
        df = df[df.occupcat.isin(
            [
                220,
                230,
                215,
                212,
                213,
                214,
                270,
                261,
                262,
                263,
                264,
                300,
                310,
                320,
                330,
                340,
                350,
                360,
                370,
                380,
                390,
                410,
                420,
                430,
                440,
                450,
                460,
                470,
                480,
                490,
            ])]

        # fix occupation code
        # df['occupcat'] = np.where(df.occupcat == 210, 211, df.occupcat)
        df['occupcat'] = np.where(df.occupcat > 420, 490, df.occupcat)

        # assign faculty key
        df['faculty_key'] = self.item_recode(
            df.facstat,
            {
                20: 1011,
                30: 2021,
                41: 3031,
                42: 3032,
                43: 3033,
                44: 3034,
                45: 3035,
            },
            4039)
                                        
        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = ['unitid','date_key', 'occupcat', 'eapcat', 'faculty_key'],
            value_vars = [
                'eapfttyp',
                'eappttyp',
                'eapftmed',
                'eapptmed',
            ],
            value_name = 'headcount')

        # demographic dimension
        df['medical_school'] = np.where(
            df.variable.str[5:] == 'med',
            'M',
            'N'
        )

        # assign time status
        df['time_status_id'] = np.where(
            df.variable.str[:5] == 'eapft',
            'FT',
            'PT'
        )

        # assign career level
        df['employee_key'] = df.occupcat.astype(str) + df.time_status_id + df.medical_school

        # keep only rows with non-zero awards
        df = df.dropna()

        # collapse sums
        df = df.groupby(
            [
                'unitid',
                'date_key',
                'employee_key',
                'faculty_key']).sum().reset_index()

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsEap(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    employee_key = row.employee_key,
                    faculty_key = row.faculty_key,
                    headcount = row.headcount))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsEap.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    _file = EapFile(2018)
    print(_file.year)
    print(_file.url)
    print(_file.rows[0])
