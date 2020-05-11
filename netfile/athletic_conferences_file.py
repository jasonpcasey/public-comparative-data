#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.date_dimension import DateRow
from database.athletic_conferences import AthleticConference
from database.ipeds_athletic_conference_memberships import IpedsAthleticConferenceMembership

class AthleticConferenceFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        if (self.year == 1990):
            url = self.get_url('IC90ABCE.zip')
        elif (self.year == 1991):
            url = self.get_url('ic1991_ab.zip')
        elif (self.year > 1991 and self.year <= 1994):
            url = self.get_url(f'ic{self.year}_B.zip')
        elif (self.year > 1994 and self.year <= 1996):
            url = self.get_url(f'ic{str(self.year)[2:]}{str(self.year + 1)[2:]}_B.zip')
        elif (self.year == 1997):
            url = self.get_url('ic9798_AB.zip')
        elif (self.year == 1998):
            url = self.get_url('IC98_AB.zip')
        elif (self.year == 1999):
            url = self.get_url('ic99abcf.zip')
        else:
            url = self.get_url(f'ic{self.year}.zip')
        
        print(f'Reading data from {url}')
        df = self.read(url, {
            'UNITID': np.int32,
            'CONFNO1': np.float32,
            'CONFNO2': np.float32,
            'CONFNO3': np.float32,
            'CONFNO4': np.float32
            })

        # add date key
        df['date_key'] = self.date_key
        
        keepers = [
            'unitid',
            'confno1',
            'confno2',
            'confno3',
            'confno4'
            ]

        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None
        
        # reshape from wide to long format
        conf = pd.melt(
            df,
            id_vars = ['unitid','date_key'],
            var_name = 'sport_name',
            value_vars = ['confno1', 'confno2', 'confno3', 'confno4'],
            value_name = 'conference_id')

        # remove not applicables
        conf = conf.loc[conf.conference_id > 0]

        conf['sport_name'] = self.item_recode(
            conf.sport_name,
            {
                'confno1': 'Football',
                'confno2': 'Basketball',
                'confno3': 'Baseball',
                'confno4': 'Cross country/track'
            },
            'Not applicable')

        # create rows for insertion
        for row in conf.itertuples(index=False):
            self.rows.append(IpedsAthleticConferenceMembership(
                unitid = row.unitid,
                date_key = row.date_key,
                conference_id = row.conference_id,
                sport_name = row.sport_name,
                )
            )

    def __repr__(self):
        return(f'{__class__.__name__}(year={self.year})')

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsAthleticConferenceMembership.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    inst = AthleticConferenceFile(2018)
    print(inst.year)
    print(inst.url)
    print(inst.rows[0])
