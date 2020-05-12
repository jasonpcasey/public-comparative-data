#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from io import BytesIO
from zipfile import ZipFile
from urllib.request import urlopen

from database.base import Session, engine, Base
from database.cip_history import CipCode

class CipFile:
    """ Class for a particular year's CIP assignments """
    def __init__(self, year: int):
        """ class constructor """
        self.year = year
        self.rows = list()
        
        if self.year < 2020:
            df = pd.read_excel(
                        io = 'data/Legacy_CIP.xlsx',
                        sheet_name = f'CIP{self.year}',
                        index_col = None,
                        dtype = object)
        else:
            df = pd.read_csv(
                f'https://nces.ed.gov/ipeds/cipcode/Files/CIPCode{year}.csv',
                dtype = object,
                index_col = None,
                low_memory = False,
                encoding = "iso-8859-1")
            
        df.columns = df.columns.str.strip().str.lower()

        df = df.rename(columns = {
            'cip85': 'cipcode',
            'cip90': 'cipcode',
            'ciptitle': 'title',
            'cipcode2k': 'cipcode',
            'ciptext2k': 'title',
            'cipfamily': 'family',
        })
        
        if self.year == 1985:
            df['description'] = 'None'

        cols = ['cipcode', 'family', 'title']
        df = df[cols]
        df = df.applymap(self.clean_string)
        
        for row in df.itertuples(index=False):
            self.rows.append(
                CipCode(
                    cipcode = row.cipcode,
                    version = self.year,
                    title = row.title,
                    family = row.family,
                    ))


    def row_count(self):
        return(len(self.rows))


    @property
    def year(self):
        """ return year value """
        return self.__year
    
    @year.setter
    def year(self, year: int):
        """ set year value """
        self.__year = year

    @staticmethod    
    def clean_string(text: str):
        """ strips Excel formula text and trailing periods """
        text = str(text).strip()
        if text[:1] == '=':
            text = text[2:-1]
        if str(text).endswith('.'):
            text = text[:-1]
        return(text)

    def write(self):
        session = Session()

        if len(self.rows) > 0:
            try:
                _ = session.query(self.rows[0].__class__).filter(self.rows[0].__class__.version==self.year).delete(synchronize_session=False)
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

    def __repr__(self):
        """ class repr method """
        return f'{self.__class__.__name__}(year={self.__year!r})'

if __name__ == '__main__':
    adm = CipFile(2020)
    print(adm.year)
    print(adm.url)
    print(adm.rows[0])
