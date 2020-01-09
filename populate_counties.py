# coding=utf-8

from database.base import Session, engine, Base
from database.counties import County
from database.states import State

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading counties data")
df = pd.read_csv('data/counties.csv')

session = Session()

try:
    print('\nPopulating dimension tables.')
    # insert state data
    record_deletes = session.query(County).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = County,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating counties table.')

except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")