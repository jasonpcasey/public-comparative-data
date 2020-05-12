#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_fall_enrollment_by_age import IpedsFallEnrollmentByAge
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension

class FallEnrollmentByAgeFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        if self.year > 1990 and self.year <= 1993:
            url = self.get_url(f'ef{self.year}_b.zip')
        elif self.year > 1993 and self.year <=1999:
            url = self.get_url(f'ef{str(self.year)[2:]}_b.zip')
        else:
            url = self.get_url(f'ef{self.year}b.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'LINE' : np.float32,
            'EFBAGE': np.float32,
            'LSTUDY': np.float32,
            'EFAGE01': np.float32,
            'EFAGE02': np.float32,
            'EFAGE03': np.float32,
            'EFAGE04': np.float32
        })
        
        # year-specific columns
        if (self.year < 1999):
            df['efbage'] = self.item_recode(
                df.line, {
                    1: 3,
                    2: 4,
                    3: 5,
                    4: 6,
                    5: 8,
                    6: 9,
                    7: 10,
                    8: 11,
                    9: 12,
                    10: 13,
                    11: 14,
                    13: 3,
                    14: 4,
                    15: 5,
                    16: 6,
                    17: 8,
                    18: 9,
                    19: 10,
                    20: 11,
                    21: 12,
                    22: 13,
                    23: 14,
                },
                99
            )

            df['time_status'] = np.where(df.line < 13, 'Full-time', 'Part-time')

            # reshape from wide to long format
            df = pd.melt(
                df,
                id_vars = ['unitid','efbage', 'time_status'],
                value_vars = [
                    'efage01',
                    'efage02',
                    'efage03',
                    'efage04',
                    'efage05',
                    'efage06',
                    'efage07',
                    'efage08'
                ],
                value_name = 'headcount')

            # add career levels
            df['career_level'] = self.item_recode(
                df.variable,
                {
                    'efage01': 'Undergraduate',
                    'efage02': 'Undergraduate',
                    'efage03': 'Undergraduate',
                    'efage04': 'Undergraduate',
                    'efage05': 'Graduate',
                    'efage06': 'Graduate',
                    'efage07': 'Graduate',
                    'efage08': 'Graduate',
                },
                'Unknown')

            # assign time status
            df['demographic_key'] = self.item_recode(
                df.variable,
                {
                    'efage01': 'unknm',
                    'efage02': 'unknw',
                    'efage03': 'unknm',
                    'efage04': 'unknw',
                    'efage05': 'unknm',
                    'efage06': 'unknw',
                    'efage07': 'unknm',
                    'efage08': 'unknw',
                },
                'Unknown')
        elif self.year > 1999 and self.year < 2002:
            df['efbage'] = self.item_recode(
                df.line, {
                    1: 3,
                    2: 4,
                    3: 5,
                    4: 6,
                    5: 8,
                    6: 9,
                    7: 10,
                    8: 11,
                    9: 12,
                    10: 13,
                    11: 14,
                    13: 3,
                    14: 4,
                    15: 5,
                    16: 6,
                    17: 8,
                    18: 9,
                    19: 10,
                    20: 11,
                    21: 12,
                    22: 13,
                    23: 14,
                },
                99
            )
            df['time_status'] = np.where(df.line < 13, 'Full-time', 'Part-time')

            # filter out unused rows
            df = df[df.lstudy.isin([1, 2, 3])]

            # add career levels
            df['career_level'] = self.item_recode(
                df.lstudy,
                {
                    1: 'Undergraduate',
                    2: 'Graduate',
                    3: 'Graduate'
                },
                'Unknown')

            # reshape from wide to long format
            df = pd.melt(
                df,
                id_vars = ['unitid','efbage', 'time_status', 'career_level'],
                value_vars = [
                    'efage01',
                    'efage02',
                ],
                value_name = 'headcount')

            # assign time status
            df['demographic_key'] = self.item_recode(
                df.variable,
                {
                    'efage01': 'unknm',
                    'efage02': 'unknw',
                },
                'Unknown')
        else:
            # filter out unused rows
            df = df[df.lstudy.isin([2, 5, 6])]

            # add career levels
            df['career_level'] = self.item_recode(
                df.lstudy,
                {
                    2: 'Undergraduate',
                    5: 'Graduate',
                    6: 'Graduate'
                },
                'Unknown')

            # reshape from wide to long format
            df = pd.melt(
                df,
                id_vars = ['unitid','efbage', 'career_level'],
                value_vars = ['efage01', 'efage02', 'efage03', 'efage04'],
                value_name = 'headcount')

            # assign time status
            df['time_status'] = self.item_recode(
                df.variable,
                {
                    'efage01': 'Full-time',
                    'efage02': 'Full-time',
                    'efage03': 'Part-time',
                    'efage04': 'Part-time'
                },
                'Unknown')

            # demographic dimension
            df['demographic_key'] = self.item_recode(
                df.variable,
                {
                    'efage01': 'unknm',
                    'efage02': 'unknw',
                    'efage03': 'unknm',
                    'efage04': 'unknw'
                },
                'unknu')

        
        
        # filter out unused rows
        df = df[df.efbage.isin([3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14])]
        
        # add age range
        df['age_range'] = self.item_recode(
            df.efbage, {
                3: 'Less than 18',
                4: '18 - 19',
                5: '20 - 21',
                6: '22 - 24',
                8: '25 - 29',
                9: '30 - 34',
                10: '35 - 39',
                11: '40 - 49',
                12: '50 - 64',
                13: '65 or older',
                14: 'Age Unknown'
            },
            'Unknown')

        # drop variable field
        # df = df.drop(columns = ['variable', 'efbage'])

        # remove institutions with no data
        df.headcount = df.headcount.fillna(0)

        # add date key
        df['date_key'] = self.date_key

        # collapse sums
        df = df.groupby(
            [
                'unitid',
                'date_key',
                'age_range',
                'career_level',
                'time_status',
                'demographic_key',
            ]
        ).sum().reset_index()

        # keep only rows with non-zero headcount
        df = df.query('headcount > 0')

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsFallEnrollmentByAge(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    age_range = row.age_range,
                    career_level = row.career_level,
                    time_status = row.time_status,
                    demographic_key = row.demographic_key,
                    headcount = row.headcount))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsFallEnrollmentByAge.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    adm = FallEnrollmentByAgeFile(2018)
    print(adm.year)
    print(adm.url)
    print(adm.rows[0])
