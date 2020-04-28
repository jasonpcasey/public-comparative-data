#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_fall_enrollment_by_residency import IpedsFallEnrollmentByResidency

class FallEnrollmentByResidencyFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        if self.year > 1991 and self.year <= 1994:
            url = self.get_url(f'ef{self.year}_c.zip')
        elif self.year > 1994 and self.year <=1999:
            url = self.get_url(f'ef{str(self.year)[2:]}_c.zip')
        else:
            url = self.get_url(f'ef{self.year}c.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'LINE' : np.float32,
            'EFRES01': np.float32,
            'EFRES02': np.float32,
        }).fillna(0)
        
        # filter out unused rows
        df = df.query('line < 99')

        # create state fips
        df['state_fips'] = np.where(df.line == 98, 0, df.line)
        df['state_fips'] = np.where(df.state_fips == 90, -1, df.state_fips)

        # make all other the difference of recent HS and total
        df.efres01 = df.efres01 - df.efres02

        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = ['unitid','state_fips'],
            value_vars = [
                'efres01',
                'efres02',
            ],
            value_name = 'headcount')

        # add age range
        df['student_population'] = self.item_recode(
            df.variable, {
                'efres01': 'Other first-time',
                'efres02': 'Recent high school graduates',
            },
            'Unknown')

        # remove institutions with no data
        df.headcount = df.headcount.fillna(0)

        # add date key
        df['date_key'] = self.date_key

        # collapse sums
        df = df.groupby(
            [
                'unitid',
                'date_key',
                'state_fips',
                'student_population',
            ]
        ).sum().reset_index()

        # keep only rows with non-zero headcount
        df = df.query('headcount > 0')

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsFallEnrollmentByResidency(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    state_fips = row.state_fips,
                    student_population = row.student_population,
                    headcount = row.headcount))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsFallEnrollmentByResidency.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    adm = FallEnrollmentByResidencyFile(2018)
    print(adm.year)
    print(adm.url)
    print(adm.rows[0])
