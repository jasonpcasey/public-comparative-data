#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_admissions import IpedsAdmissions
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension

class AdmissionsFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        if self.year < 2014:
            url = self.get_url(f'ic{self.year}.zip')
        else:
            url = self.get_url(f'adm{self.year}.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'APPLCN': np.float32,
            'APPLCNM': np.float32,
            'APPLCNW': np.float32,
            'ADMSSN': np.float32,
            'ADMSSNM': np.float32,
            'ADMSSNW': np.float32,
            'ENRLT': np.float32,
            'ENRLM': np.float32,
            'ENRLW': np.float32
        })
        
        # add date key
        df['date_key'] = self.date_key

        # columns to keep
        keepers = [
            'unitid',
            'date_key',
            'applcn',
            'applcnm',
            'applcnw',
            'admssn',
            'admssnm',
            'admssnw',
            'enrlt',
            'enrlm',
            'enrlw'
        ]
        
        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None
        
        # reduce file
        df = df[keepers].fillna(0)
        
        # calculate unknowns
        df['applcnu'] = df.applcn - (df.applcnm + df.applcnw)
        df['admssnu'] = df.admssn - (df.admssnm + df.admssnw)
        df['enrlu'] = df.enrlt - (df.enrlm + df.enrlw)
        
        # reshape from wide to long format
        df = pd.melt(df,
                    id_vars = ['unitid','date_key'],
                    value_vars = ['applcnm', 'applcnw', 'applcnu',
                                    'admssnm', 'admssnw', 'admssnu',
                                    'enrlm', 'enrlw', 'enrlu'],
                    value_name = 'count')

        # field indicator
        df['field'] = np.where(df.variable.str.slice(0, 3) == 'app', 'applications', 'unknown')
        df['field'] = np.where(df.variable.str.slice(0, 3) == 'adm', 'admissions', df['field'])
        df['field'] = np.where(df.variable.str.slice(0, 3) == 'enr', 'enrolled', df['field'])

        # add demographic key
        df['demographic_key'] = 'unknu'
        df['demographic_key'] = np.where(df.variable.str.slice(-1) == 'm', 'unknm', df.demographic_key)
        df['demographic_key'] = np.where(df.variable.str.slice(-1) == 'w', 'unknw', df.demographic_key)

        df = df.pivot_table(index=['unitid', 'date_key', 'demographic_key'],
                            columns='field',
                            values='count',
                            aggfunc = np.sum,
                            fill_value = 0).reset_index()

        # remove institutions with no applications
        df = df.loc[df.applications > 0]

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsAdmissions(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    demographic_key = row.demographic_key,
                    applications = row.applications,
                    admissions = row.admissions,
                    enrolled = row.enrolled,
                    ))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsAdmissions.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    adm = AdmissionsFile(2018)
    print(adm.year)
    print(adm.url)
    print(adm.rows[0])
