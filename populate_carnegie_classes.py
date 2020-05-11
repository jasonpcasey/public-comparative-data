# coding=utf-8

from database.base import Session, engine, Base
from database.carnegie_classes import CarnegieClass

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading carnegie_classes data")
df = pd.read_csv('data/carnegie_classes.csv',
                 dtype =  {"unitid":  np.int32,
                           "basic_code":  np.int16,
                           "carnegie_class":  object})

session = Session()

try:
    print('Populating dimension tables.')
    # insert state data
    record_deletes = session.query(CarnegieClass).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = CarnegieClass,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating carnegie_classes table.')

except Exception as e:
    session.rollback()
    print("\tAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
    print("\tNo changed made to database.\n")
else:
    session.commit()
    print('\tChanges committed to database.\n')

session.close()

print("All Done.")