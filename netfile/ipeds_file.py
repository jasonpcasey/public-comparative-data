import pandas as pd
import numpy as np
from io import BytesIO #, StringIO
from zipfile import ZipFile
from urllib.request import urlopen
from database.base import Session, engine, Base
#
class IpedsFile:
    __url_base = 'https://nces.ed.gov/ipeds/datacenter/data/'

    def __init__(self, year):
        self.year = year
        self.date_key = f'{year}-10-15'
        self.rows = list()
    
    def get_url(self, predicate):
        """get_url() returns the appropriate URI for a given year's IPEDS survey archive"""
        return f'{type(self).__url_base}{predicate}'

    def row_count(self):
        return(len(self.rows))
    
    def write(self):
        session = Session()

        if len(self.rows) > 0:
            try:
                _ = session.query(self.rows[0].__class__).filter(self.rows[0].__class__.date_key==self.date_key).delete(synchronize_session=False)
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


    def populate_rows(self):
        pass

    @staticmethod
    def read(url, dtypes = 'object'):
        with urlopen(url) as resp:
            zipfile = ZipFile(BytesIO(resp.read()))
            file_name = zipfile.namelist()[0]
            revised_data = [s for s in zipfile.namelist() if "_rv" in s]
            if len(revised_data) > 0:
                file_name = revised_data[0]

            with zipfile.open(file_name) as data_file:
                answer = pd.read_csv(data_file,
                                    dtype = dtypes,
                                    na_values = '.',
                                    index_col = False,
                                    low_memory = False,
                                    encoding = "iso-8859-1")
        answer.columns = answer.columns.str.strip().str.lower()
        return answer
    
    @staticmethod
    def item_recode(col, codings, default_value = None):
        if default_value == None:
            answer = col.map(codings, na_action = 'ignore')
        else:
            answer = col.map(codings, na_action = 'ignore').fillna(default_value)
        return(answer)

    def __repr__(self):
        return f'{__class__.__name__}(year={self.year!r})'