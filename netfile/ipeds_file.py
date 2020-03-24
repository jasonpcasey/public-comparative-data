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
        self.date_key = '{}-10-15'.format(self.year)
        self.url = ''
        self.rows = list()
    
    def get_url(self, prefix):
        """get_url() returns the appropriate URI for a given year's IPEDS survey archive"""
        return '{}{}{}.zip'.format(type(self).__url_base, prefix, self.year)

    def row_count(self):
        return(len(self.rows))

    def read(self, dtypes = 'object'):
        with urlopen(self.url) as resp:
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
        answer.columns = answer.columns.str.lower()
        return answer
    
    def write(self):
        session = Session()

        if len(self.rows) > 0:
            try:
                _ = session.query(__class__).filter(__class__.date_key==date_key).delete(synchronize_session=False)
                session.bulk_save_objects(self.rows)
                session.commit()
            except:
                session.rollback()
        else:
            print('No rows were available to insert.')
            
        session.close()


    def populate_rows(self):
        pass

    def __repr__(self):
        return f'{__class__.__name__}(year={self.year!r})'