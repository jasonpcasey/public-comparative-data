# coding=utf-8

from database.base import Session, engine, Base
from database.ipeds_faculty_dimension import IpedsFacultyDimension

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading faculty dimension data")
df = pd.read_csv('data/ipeds_faculty_dimension.csv')

session = Session()

try:
    print('Populating dimension tables.')
    # insert state data
    record_deletes = session.query(IpedsFacultyDimension).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = IpedsFacultyDimension,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating counties table.')

except Exception as e:
    session.rollback()
    print("\tAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\tChanges committed to database.')

session.close()

print("All Done.")