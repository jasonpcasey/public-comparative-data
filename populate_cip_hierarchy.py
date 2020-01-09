# coding=utf-8

from database.base import Session, engine, Base
from database.cip_hierarchy import Cip

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading cip_hierarchy data")
df = pd.read_csv('data/cip_hierarchy.csv')

session = Session()

try:
    print('\nPopulating dimension tables.')
    # insert state data
    record_deletes = session.query(Cip).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = Cip,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating cip_hierarchy table.')

except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")