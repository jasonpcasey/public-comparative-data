# coding=utf-8

from database.base import Session, engine, Base
from database.date_dimension import DateRow

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading date dimension data.")
df = pd.read_csv('data/date_dimension.csv')
df = df.fillna(sql.null())

session = Session()

try:
    # bulk insert objects for federal agencies and academic fields (NSF)
    print('Populating dimension tables.')

    # insert dates into dimension tables
    record_deletes = session.query(DateRow).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = DateRow,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating date_dimension.')
except Exception as e:
    session.rollback()
    print("\tAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\tChanges committed to database.\n')

session.close()

print("All Done.")
