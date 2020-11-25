#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_grad_rates import IpedsGraduationRate
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension

class GraduationRateFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        url = self.get_url(f'gr{self.year}.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'GRTYPE': np.int32,
            'CHRTSTAT': np.int32,
            'SECTION': np.int32,
            'COHORT': np.int32,
            'LINE' : np.str,
            'GRRACE01' : np.float32,
            'GRRACE02' : np.float32,
            'GRRACE03' : np.float32,
            'GRRACE04' : np.float32,
            'GRRACE05' : np.float32,
            'GRRACE06' : np.float32,
            'GRRACE07' : np.float32,
            'GRRACE08' : np.float32,
            'GRRACE09' : np.float32,
            'GRRACE10' : np.float32,
            'GRRACE11' : np.float32,
            'GRRACE12' : np.float32,
            'GRRACE13' : np.float32,
            'GRRACE14' : np.float32,
            'DVGRHSM' : np.float32,
            'DVGRHSW' : np.float32,
            'DVGRAIM' : np.float32,
            'DVGRAIW' : np.float32,
            'DVGRBKM' : np.float32,
            'DVGRBKW' : np.float32,
            'DVGRWHM' : np.float32,
            'DVGRWHW' : np.float32,
            'GRNRALM': np.float32,
            'GRNRALW': np.float32,
            'GRUNKNM': np.float32,
            'GRUNKNW': np.float32,
            'GRHISPM': np.float32,
            'GRHISPW': np.float32,
            'GRAIANM': np.float32,
            'GRAIAMW': np.float32,
            'GRASIAM': np.float32,
            'GRASIAW': np.float32,
            'GRBKAAM': np.float32,
            'GRBKAAW': np.float32,
            'GRNHPIM': np.float32,
            'GRNHPIW': np.float32,
            'GRWHITM': np.float32,
            'GRWHITW': np.float32,
            'GR2MORM': np.float32,
            'GR2MORW': np.float32,
        })
        
        # add date key
        df['date_key'] = self.date_key

        # year-specific columns
        if (self.year < 2008):
            if (self.year > 1999 and self.year <= 2001):
                df['efalevel'] = self.item_recode(
                    df.line, {
                        1 : 24,
                        3 : 25,
                        7 : 31,
                        11 : 32,
                        9 : 36,
                        15 : 44,
                        17 : 45,
                        21: 45,
                        25 : 52,
                        23 : 56,
                        },
                        99
                        )
            elif (self.year < 2000):
                df['efalevel'] = self.item_recode(
                    df.line, {
                        1 : 24,
                        3 : 40,
                        4 : 40,
                        5 : 40,
                        6 : 40,
                        2 : 39,
                        7 : 31,
                        11 : 32,
                        12 : 32,
                        13 : 32,
                        9 : 36,
                        10 : 36,
                        15 : 44,
                        16 : 59,
                        17 : 60,
                        18 : 60,
                        19 : 60,
                        20 : 60,
                        21 : 51,
                        25 : 52,
                        26 : 52,
                        23 : 56,
                        24 : 56,
                        },
                        99
                        )

            levels = (24, 25, 31, 32, 36, 44, 45, 51, 52, 56)
            df['efnralm'] = df['efrace01']
            df['efnralw'] = df['efrace02']
            df['efunknm'] = df['efrace13']
            df['efunknw'] = df['efrace14']
            df['efhispm'] = df['efrace09']
            df['efhispw'] = df['efrace10']
            df['efaianm'] = df['efrace05']
            df['efaianw'] = df['efrace06']
            df['efasiam'] = df['efrace07']
            df['efasiaw'] = df['efrace08']
            df['efbkaam'] = df['efrace03']
            df['efbkaaw'] = df['efrace04']
            df['efnhpim'] = 0
            df['efnhpiw'] = 0
            df['efwhitm'] = df['efrace11']
            df['efwhitw'] = df['efrace12']
            df['ef2morm'] = 0
            df['ef2morw'] = 0
        elif (self.year == 2008):
            levels = (24, 25, 31, 32, 36, 44, 45, 51, 52, 56)
            df['efhispm'] = df['dvefhsm']
            df['efhispw'] = df['dvefhsw']
            df['efaianm'] = df['dvefaim']
            df['efaianw'] = df['dvefaiw']
            df['efasiam'] = df['dvefapm']
            df['efasiaw'] = df['dvefapw']
            df['efbkaam'] = df['dvefbkm']
            df['efbkaaw'] = df['dvefbkw']
            df['efnhpim'] = 0
            df['efnhpiw'] = 0
            df['efwhitm'] = df['dvefwhm']
            df['efwhitw'] = df['dvefwhw']
        elif (self.year == 2009):
            levels = (24, 31, 32, 39, 40, 44, 51, 52, 59, 60)
            df['efhispm'] = df['dvefhsm']
            df['efhispw'] = df['dvefhsw']
            df['efaianm'] = df['dvefaim']
            df['efaianw'] = df['dvefaiw']
            df['efasiam'] = df['dvefapm']
            df['efasiaw'] = df['dvefapw']
            df['efbkaam'] = df['dvefbkm']
            df['efbkaaw'] = df['dvefbkw']
            df['efnhpim'] = 0
            df['efnhpiw'] = 0
            df['efwhitm'] = df['dvefwhm']
            df['efwhitw'] = df['dvefwhw']
        else:
            levels = (24, 31, 32, 39, 40, 44, 51, 52, 59, 60)
        
        keepers = [
            'unitid', 'date_key', 'efalevel',
            'efnralm', 'efnralw', 'efunknm', 'efunknw', 'efhispm', 'efhispw',
            'efaianm', 'efaianw', 'efasiam', 'efasiaw', 'efbkaam', 'efbkaaw',
            'efnhpim', 'efnhpiw', 'efwhitm', 'efwhitw', 'ef2morm', 'ef2morw',
            ]

        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None

        # reduce file
        df = df[keepers].fillna(0)
        
        

       # filter out unused rows
        df = df[df.efalevel.isin(levels)]

        # assign time status
        df['time_status'] = self.item_recode(
            df.efalevel, {
                24: 'Full-time',
                25: 'Full-time',
                31: 'Full-time',
                32: 'Full-time',
                36: 'Full-time',
                39: 'Full-time',
                40: 'Full-time',
            },
            'Part-time'
            )


        # assign career level
        df['career_level'] = self.item_recode(
            df.efalevel, {
                32: 'Graduate',
                36: 'Graduate',
                52: 'Graduate',
                56: 'Graduate',
            },
            'Undergraduate')


        # assign degree seeking status
        df['degree_seeking'] = self.item_recode(
            df.efalevel, {
                24: 'Degree-seeking',
                25: 'Degree-seeking',
                31: 'Non-degree-seeking',
                39: 'Degree-seeking',
                40: 'Degree-seeking',
                44: 'Degree-seeking',
                45: 'Degree-seeking',
                51: 'Non-degree-seeking',
                59: 'Degree-seeking',
                60: 'Degree-seeking',
            },
            'Unknown')
    
                                        
        # assign continuation type
        df['continuation_type'] = self.item_recode(df.efalevel, {
            24: 'First-time',
            39: 'Transfer',
            40: 'Continuing',
            44: 'First-time',
            59: 'Transfer',
            60: 'Continuing',
            },
            'Unknown')

        # id columns
        id_columns = ['unitid','date_key','time_status','career_level','degree_seeking','continuation_type']                                  
        
        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = id_columns,
            value_vars = [
                'efnralm', 'efnralw', 'efunknm', 'efunknw', 'efhispm',
                'efhispw', 'efaianm', 'efaianw', 'efasiam', 'efasiaw',
                'efbkaam', 'efbkaaw', 'efnhpim', 'efnhpiw', 'efwhitm',
                'efwhitw', 'ef2morm', 'ef2morw'
            ],
            value_name = 'headcount')

        # demographic dimension
        df['demographic_key'] = df.variable.str.slice(2, 7).str.lower()
        id_columns.append('demographic_key')

        # drop variable field
        df = df.drop(columns = ['variable'])

        # remove institutions with no data
        df.headcount = df.headcount.fillna(0)

        # collapse sums
        df = df.groupby(id_columns).sum().reset_index()

        # keep only rows with non-zero headcount
        df = df.query('headcount > 0')

    # unitid = Column(Integer, nullable = False)
    # date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    # cohort_date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    # demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    # entering_cohort = Column(Integer, nullable = False, default = 0)
    # exclusions = Column(Integer, nullable = False, default = 0)
    # adjusted_cohort = Column(Integer, nullable = False, default = 0)
    # completers_4_years = Column(Integer, nullable = False, default = 0)
    # completers_5_years = Column(Integer, nullable = False, default = 0)
    # completers_6_years = Column(Integer, nullable = False, default = 0)
    # enrolled= Column(Integer, nullable = False, default = 0)
    # transfers = Column(Integer, nullable = False, default = 0)
    # no_longer_enrolled = Column(Integer, nullable = False, default = 0)



        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsGraduationRate(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    time_status = row.time_status,
                    career_level = row.career_level,
                    degree_seeking = row.degree_seeking,
                    continuation_type = row.continuation_type,
                    demographic_key = row.demographic_key,
                    headcount = row.headcount))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsGraduationRate.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    adm = GraduationRateFile(2018)
    print(adm.year)
    print(adm.url)
    print(adm.rows[0])
