#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_new_hires import IpedsNewHire
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_employee_dimension import IpedsEmployeeDimension
from database.ipeds_faculty_dimension import IpedsFacultyDimension

class NewHireFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.date_key = f'{year}-11-01'
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        url = self.get_url(f's{self.year}_nh.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'OCCUPCAT': np.int32,
            'FACSTAT': np.int32,
            'SNHCAT': np.int32,
            'SGTYPE': np.int32,
            'HRNRALM': np.float32,
            'HRNRALW': np.float32,
            'HRUNKNM': np.float32,
            'HRUNKNW': np.float32,
            'HRHISPM': np.float32,
            'HRHISPW': np.float32,
            'HRAIANM': np.float32,
            'HRAIAMW': np.float32,
            'HRASIAM': np.float32,
            'HRASIAW': np.float32,
            'HRBKAAM': np.float32,
            'HRBKAAW': np.float32,
            'HRNHPIM': np.float32,
            'HRNHPIW': np.float32,
            'HRWHITM': np.float32,
            'HRWHITW': np.float32,
            'HR2MORM': np.float32,
            'HR2MORW': np.float32
        })
        
        # add date key
        df['date_key'] = self.date_key

        # filter out unused rows
        df = df[
            df.snhcat.isin([
                21020,
                21030,
                21041,
                21042,
                21043,
                21050,
                22000,
                23000,
                25000,
                30000,
                31000,
                32000,
                33000,
                34000,
                35000,
                36000,
                37000,
                38000,
                39000,
                ])]

        if self.year < 2016:
            fac_codes = [20, 30, 41, 42, 43, 50, 60]
        else:
            fac_codes = [20, 30, 44, 45, 42, 43, 50, 60]

        df = df[df.facstat.isin(fac_codes)]

        # fix occupation code
        df['occupcat'] = np.where(df.occupcat == 210, 211, df.occupcat)

        # assign time status
        df['time_status_id'] = 'FT'

        # assign career level
        df['employee_key'] = df.occupcat.astype(str) + df.time_status_id + 'U'

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
            id_vars = [
                'unitid',
                'date_key',
                'employee_key',
                'faculty_key'
            ],
            value_vars = [
                'hrnralm', 'hrnralw', 'hrunknm', 'hrunknw',
                'hrhispm', 'hrhispw', 'hraianm', 'hraianw',
                'hrasiam', 'hrasiaw', 'hrbkaam', 'hrbkaaw',
                'hrnhpim', 'hrnhpiw', 'hrwhitm', 'hrwhitw',
                'hr2morm', 'hr2morw'
            ],
            value_name = 'headcount')

        # demographic dimension
        df['demographic_key'] = df.variable.str.slice(2, 7).str.lower()

       # keep only rows with non-zero awards
        df = df.dropna()

        # collapse sums
        df = df.groupby(
            [
                'unitid',
                'date_key',
                'employee_key',
                'faculty_key',
                'demographic_key']).sum().reset_index()

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsNewHire(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    employee_key = row.employee_key,
                    faculty_key = row.faculty_key,
                    demographic_key = row.demographic_key,
                    headcount = row.headcount))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsNewHire.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    _file = NewHireFile(2018)
    print(_file.year)
    print(_file.url)
    print(_file.rows[0])
