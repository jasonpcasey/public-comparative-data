# coding=utf-8

from base import Session, engine, Base
from date_dimension import DateRow

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading date dimension data.")
dates = pd.read_csv('data/date_dimension.csv')
dates = dates.fillna(sql.null())

session = Session()

try:
    # bulk insert objects for federal agencies and academic fields (NSF)
    print('\nPopulating dimension tables.')

    # insert dates into dimension tables
    date_inserts = session.bulk_insert_mappings(mapper = DateRow,
                                                mappings = dates.to_dict(orient='records')),
    print('\tFinished populating date_dimension.')
except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")