#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_fall_staff import IpedsFallStaff
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_employee_dimension import IpedsEmployeeDimension

class FallStaffFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.date_key = f'{year}-11-01'
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        url = self.get_url(f's{self.year}_oc.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'OCCUPCAT': np.int32,
            'STAFFCAT': np.int32,
            'FTPT': np.int32,
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
        df = df[df.staffcat.isin(
            [
                2210, 2220, 2230, 2261, 2262, 2263, 2264, 2270,
                2300, 2310, 2320, 2330, 2340, 2350, 2360, 2370, 2380, 2390,
                3210, 3220, 3230, 3261, 3262, 3263, 3264, 3270, 
                3300, 3310, 3320, 3330, 3340, 3350, 3360, 3370, 3380, 3390,
                4410, 4420, 4430, 4440, 4450, 4460, 4470, 4480, 4490
            ])]

        # fix occupation code
        df['occupcat'] = np.where(df.occupcat == 210, 211, df.occupcat)

        # assign time status
        df['time_status_id'] = np.where(df.ftpt == 2, 'FT', 'PT')

        # assign career level
        df['employee_key'] = df.occupcat.astype(str) + df.time_status_id
                                        
        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = ['unitid','date_key', 'employee_key'],
            value_vars = [
                'hrnralm', 'hrnralw', 'hrunknm', 'hrunknw', 'hrhispm',
                'hrhispw', 'hraianm', 'hraianw', 'hrasiam', 'hrasiaw',
                'hrbkaam', 'hrbkaaw', 'hrnhpim', 'hrnhpiw', 'hrwhitm',
                'hrwhitw', 'hr2morm', 'hr2morw'
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
                'demographic_key']).sum().reset_index()

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsFallStaff(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    employee_key = row.employee_key,
                    demographic_key = row.demographic_key,
                    headcount = row.headcount))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsFallStaff.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    _file = FallStaffFile(2018)
    print(_file.year)
    print(_file.url)
    print(_file.rows[0])
