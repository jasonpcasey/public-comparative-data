#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_degree_completions import IpedsDegreeCompletion
from database.date_dimension import DateRow
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_degree_types import IpedsDegreeType
from database.cip_hierarchy import Cip

class DegreeCompletionFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.date_key = f'{year}-06-30'
        self.populate_rows()
    
    def populate_rows(self):
        # get appropriate url for year
        if self.year == 1990:
            url = self.get_url(f'c{str(self.year - 1)[2:]}{str(self.year)[2:]}RE.zip')
        elif self.year > 1990 and self.year <= 1994:
            url = self.get_url(f'c{self.year}_re.zip')
        elif self.year > 1994 and self.year <=1999:
            url = self.get_url(f'c{str(self.year - 1)[2:]}{str(self.year)[2:]}_a.zip')
        else:
            url = self.get_url(f'c{self.year}_a.zip')

        print(f'Reading data from {url}')
        df = self.read(url,
        {
            'UNITID': np.int32,
            'CIPCODE': str,
            'AWLEVEL': np.int32,
            'MAJORNUM': np.float32,
            'CRACE01' : np.float32,
            'CRACE02' : np.float32,
            'CRACE03' : np.float32,
            'CRACE04' : np.float32,
            'CRACE05' : np.float32,
            'CRACE06' : np.float32,
            'CRACE07' : np.float32,
            'CRACE08' : np.float32,
            'CRACE09' : np.float32,
            'CRACE10' : np.float32,
            'CRACE11' : np.float32,
            'CRACE12' : np.float32,
            'CRACE13' : np.float32,
            'CRACE14' : np.float32,
            'DVCHSM' : np.float32,
            'DVCHSW' : np.float32,
            'DVCAIM' : np.float32,
            'DVCAIW' : np.float32,
            'DVCBKM' : np.float32,
            'DVCBKW' : np.float32,
            'DVCWHM' : np.float32,
            'DVCWHW' : np.float32,
            'CNRALM': np.float32,
            'CNRALW': np.float32,
            'CUNKNM': np.float32,
            'CUNKNW': np.float32,
            'CHISPM': np.float32,
            'CHISPW': np.float32,
            'CAIANM': np.float32,
            'CAIAMW': np.float32,
            'CASIAM': np.float32,
            'CASIAW': np.float32,
            'CBKAAM': np.float32,
            'CBKAAW': np.float32,
            'CNHPIM': np.float32,
            'CNHPIW': np.float32,
            'CWHITM': np.float32,
            'CWHITW': np.float32,
            'C2MORM': np.float32,
            'C2MORW': np.float32,
        })
        
        # add date key
        df['date_key'] = self.date_key

        df.awlevel = self.item_recode(
            df.awlevel, {
                1 : 1,
                2 : 2,
                3 : 3,
                4 : 4,
                5 : 5,
                6 : 6,
                7 : 7,
                8 : 8,
                9 : 17,
                10 : 18,
                11 : 6,
                12 : 12,
                13 : 13,
                14 : 14,
                15 : 15,
                17 : 16,
                18 : 18,
                19 : 19,
            },
            99
        )

        if self.year < 2010:
            df['majornum'] = 1

        # year-specific columns
        if (self.year < 2008):
            if (self.year < 1995):
                df['cnralm'] = 0
                df['cnralw'] = 0
                df['cunknm'] = df['crace15']
                df['cunknw'] = df['crace16']
                df['chispm'] = 0
                df['chispw'] = 0
                df['caianm'] = 0
                df['caianw'] = 0
                df['casiam'] = 0
                df['casiaw'] = 0
                df['cbkaam'] = 0
                df['cbkaaw'] = 0
                df['cnhpim'] = 0
                df['cnhpiw'] = 0
                df['cwhitm'] = 0
                df['cwhitw'] = 0
                df['c2morm'] = 0
                df['c2morw'] = 0
            else:
                df['cnralm'] = df['crace01']
                df['cnralw'] = df['crace02']
                df['cunknm'] = df['crace13']
                df['cunknw'] = df['crace14']
                df['chispm'] = df['crace09']
                df['chispw'] = df['crace10']
                df['caianm'] = df['crace05']
                df['caianw'] = df['crace06']
                df['casiam'] = df['crace07']
                df['casiaw'] = df['crace08']
                df['cbkaam'] = df['crace03']
                df['cbkaaw'] = df['crace04']
                df['cnhpim'] = 0
                df['cnhpiw'] = 0
                df['cwhitm'] = df['crace11']
                df['cwhitw'] = df['crace12']
                df['c2morm'] = 0
                df['c2morw'] = 0
        elif (self.year > 2007 and self.year <= 2010):
            df['chispm'] = df['dvchsm']
            df['chispw'] = df['dvchsw']
            df['caianm'] = df['dvcaim']
            df['caianw'] = df['dvcaiw']
            df['casiam'] = df['dvcapm']
            df['casiaw'] = df['dvcapw']
            df['cbkaam'] = df['dvcbkm']
            df['cbkaaw'] = df['dvcbkw']
            df['cnhpim'] = 0
            df['cnhpiw'] = 0
            df['cwhitm'] = df['dvcwhm']
            df['cwhitw'] = df['dvcwhw']
        
        # filter out unused rows
        df = df[df.awlevel.isin(
            [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                17,
                18,
                19,
            ])]
        
        # cast to string
        df.awlevel = df.awlevel.map('{:.0f}'.format)
        df.majornum = df.majornum.map('{:.0f}'.format)
        # df.cipcode = df.cipcode.map('{:07.4f}'.format)

        # create degree_key
        df['degree_key'] = df.awlevel.str.strip() + df.majornum.str.strip()

        keepers = [
            'unitid', 'date_key', 'degree_key', 'cipcode',
            'cnralm', 'cnralw', 'cunknm', 'cunknw', 'chispm', 'chispw',
            'caianm', 'caianw', 'casiam', 'casiaw', 'cbkaam', 'cbkaaw',
            'cnhpim', 'cnhpiw', 'cwhitm', 'cwhitw', 'c2morm', 'c2morw',
            ]

        # id columns
        id_columns = ['unitid', 'date_key', 'degree_key', 'cipcode']                                  
        
        # reshape from wide to long format
        df = pd.melt(
            df,
            id_vars = id_columns,
            value_vars = [
                'cnralm', 'cnralw', 'cunknm', 'cunknw', 'chispm', 'chispw',
                'caianm', 'caianw', 'casiam', 'casiaw', 'cbkaam', 'cbkaaw',
                'cnhpim', 'cnhpiw', 'cwhitm', 'cwhitw', 'c2morm', 'c2morw',
            ],
            value_name = 'awards')

        # demographic dimension
        df['demographic_key'] = df.variable.str.slice(1, 6).str.lower()
        id_columns.append('demographic_key')

        # remove institutions with no data
        df.awards = df.awards.fillna(0)

        # collapse sums
        df = df.groupby(id_columns).sum().reset_index()

        # keep only rows with non-zero awards
        df = df.query('awards > 0')

        for row in df.itertuples(index=False):
            self.rows.append(
                IpedsDegreeCompletion(
                    unitid = row.unitid,
                    date_key = row.date_key,
                    degree_key = row.degree_key,
                    cipcode = row.cipcode,
                    demographic_key = row.demographic_key,
                    awards = row.awards))

    def __repr__(self):
        return('{self.__class__.__name__}={})'.format(self.year))

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsDegreeCompletion.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    _file = DegreeCompletionFile(2018)
    print(_file.year)
    print(_file.url)
    print(_file.rows[0])
