# coding=utf-8

from base import Session, engine, Base
from ipeds_demographic_dimension import IpedsDemographicDimension

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading ipeds_demographic_dimension data")
df = pd.read_csv('data/ipeds_demographic_dimension.csv')

session = Session()

try:
    print('\nPopulating dimension tables.')
    # insert state data
    record_deletes = session.query(IpedsDemographicDimension).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = IpedsDemographicDimension,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating ipeds_demographic_dimension table.')

except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")