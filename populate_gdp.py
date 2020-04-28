# coding=utf-8

from database.base import Session, engine, Base
from database.gdp import Gdp

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading gdp data")
df = pd.read_csv(
        'https://fred.stlouisfed.org/graph/fredgraph.csv?id=GDPDEF',
        skiprows = 1,
        names = ['date_key', 'gdp']
    )

session = Session()

try:
    # bulk insert objects for gdp
    print('\nPopulating dimension tables.')
    # insert state data
    record_deletes = session.query(Gdp).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(
        mapper = Gdp,
        mappings = df.to_dict(orient='records')),
    print('\tFinished populating gdp table.')

except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")