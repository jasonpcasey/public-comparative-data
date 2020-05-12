#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.base import Session, Base, engine
from database.date_dimension import DateRow
from database.ipeds_charges import IpedsCharge

class IpedsChargeFile(IpedsFile):
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
            'CHG1AT0': np.float32,
            'CHG1AT1': np.float32,
            'CHG1AT2': np.float32,
            'CHG1AT3': np.float32,
            'CHG2AT0': np.float32,
            'CHG2AT1': np.float32,
            'CHG2AT2': np.float32,
            'CHG2AT3': np.float32,
            'CHG3AT0': np.float32,
            'CHG3AT1': np.float32,
            'CHG3AT2': np.float32,
            'CHG3AT3': np.float32,
            'CHG1AF0': np.float32,
            'CHG1AF1': np.float32,
            'CHG1AF2': np.float32,
            'CHG1AF3': np.float32,
            'CHG2AF0': np.float32,
            'CHG2AF1': np.float32,
            'CHG2AF2': np.float32,
            'CHG2AF3': np.float32,
            'CHG3AF0': np.float32,
            'CHG3AF1': np.float32,
            'CHG3AF2': np.float32,
            'CHG3AF3': np.float32,
            'CHG4AY0': np.float32,
            'CHG4AY1': np.float32,
            'CHG4AY2': np.float32,
            'CHG4AY3': np.float32,
            'CHG5AY0': np.float32,
            'CHG5AY1': np.float32,
            'CHG5AY2': np.float32,
            'CHG5AY3': np.float32,
            'CHG6AY0': np.float32,
            'CHG6AY1': np.float32,
            'CHG6AY2': np.float32,
            'CHG6AY3': np.float32,
            })
        
        keepers = [
            'unitid',
            'chg1at0', 'chg1at1', 'chg1at2', 'chg1at3',
            'chg2at0', 'chg2at1', 'chg2at2', 'chg2at3',
            'chg3at0', 'chg3at1', 'chg3at2', 'chg3at3',
            'chg1af0', 'chg1af1', 'chg1af2', 'chg1af3',
            'chg2af0', 'chg2af1', 'chg2af2', 'chg2af3',
            'chg3af0', 'chg3af1', 'chg3af2', 'chg3af3',
            'chg4ay0', 'chg4ay1', 'chg4ay2', 'chg4ay3',
            'chg5ay0', 'chg5ay1', 'chg5ay2', 'chg5ay3',
            'chg6ay0', 'chg6ay1', 'chg6ay2', 'chg6ay3'
            ]

        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None
        
        # reshape from wide to long format
        charges = pd.melt(
            df,
            id_vars = ['unitid'],
            var_name = 'variable',
            value_vars = [
                'chg1at0', 'chg1at1', 'chg1at2', 'chg1at3',
                'chg2at0', 'chg2at1', 'chg2at2', 'chg2at3',
                'chg3at0', 'chg3at1', 'chg3at2', 'chg3at3',
                'chg1af0', 'chg1af1', 'chg1af2', 'chg1af3',
                'chg2af0', 'chg2af1', 'chg2af2', 'chg2af3',
                'chg3af0', 'chg3af1', 'chg3af2', 'chg3af3',
                'chg4ay0', 'chg4ay1', 'chg4ay2', 'chg4ay3',
                'chg5ay0', 'chg5ay1', 'chg5ay2', 'chg5ay3',
                'chg6ay0', 'chg6ay1', 'chg6ay2', 'chg6ay3'
            ],
            value_name = 'charge')

        # add date key
        charges['year_id'] = self.year - (3 - charges['variable'].str[6].astype('int32'))
        charges['date_key'] = charges['year_id'].apply(str) + '-09-01'

        # create charge type
        charges['charge_type_id'] = self.item_recode(
            charges['variable'].str[3:6],
            {
                '1at': 1, '2at': 1, '3at': 1,
                '1af': 2, '2af': 2, '3af': 2,
                '4ay': 3,
                '5ay': 4,
                '6ay': 5
            },
            'Unknown')

        charges['charge_type'] = self.item_recode(
            charges['variable'].str[3:6],
            {
                '1at': 'Tuition',
                '2at': 'Tuition',
                '3at': 'Tuition',
                '1af': 'Fees',
                '2af': 'Fees',
                '3af': 'Fees',
                '4ay': 'Books and supplies',
                '5ay': 'On-campus room and board',
                '6ay': 'On-campus other expenses'
            },
            'Unknown')

        # create student residency
        charges['student_residency'] = self.item_recode(
            charges['variable'].str[3],
            {
                '1': 'In-district',
                '2': 'In-state',
                '3': 'Out-of-state',
                '4': 'In-district',
                '5': 'In-district',
                '6': 'In-district'
            },
            'Unknown')

        # drop missing rows
        charges = charges.dropna()

        # reproduce additional expenses for in-state and out-of-state totals
        expenses_in_state = charges.query('charge_type_id > 2').copy()
        expenses_in_state['student_residency'] = "In-state"

        expenses_out_state = charges.query('charge_type_id > 2').copy()
        expenses_out_state['student_residency'] = 'Out-of-state'

        charges = pd.concat([charges, expenses_in_state, expenses_out_state],
                            sort = False)

        charges = charges[['unitid', 'date_key', 'student_residency', 'charge_type', 'charge']]

        # eliminate duplicates
        charges = charges.groupby(['unitid', 'date_key', 'student_residency', 'charge_type']).max()

        charges = charges.reset_index()

        # create rows for insertion
        for row in charges.itertuples(index=False):
            self.rows.append(IpedsCharge(
                unitid = row.unitid,
                date_key = row.date_key,
                student_residency = row.student_residency,
                charge_type = row.charge_type,
                charge = row.charge,
                )
            )

    def __repr__(self):
        return(f'{__class__.__name__}(year={self.year})')

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsCharge.__tablename__} table in database.')
        session = Session()

        if len(self.rows) > 0:
            try:
                for row in self.rows:
                    _ = session.query(IpedsCharge).filter(IpedsCharge.unitid == row.unitid, IpedsCharge.date_key == row.date_key).delete(synchronize_session=False)
                session.bulk_save_objects(self.rows)
                session.commit()
            except Exception as e:
                print(f'An error occurred:\n{str(e)}.')
                session.rollback()
                print('No changes were made to the database due to error.')
            else:
                print('Rows successfully written to database.')
        else:
            print('No rows were available to insert.')
            
        session.close()

if __name__ == '__main__':
    inst = IpedsChargeFile(2018)
    print(inst.year)
    print(inst.url)
    print(inst.rows[0])
