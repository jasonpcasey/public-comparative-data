# coding=utf-8

from base import Session, engine, Base
from date_dimension import DateRow
from ipeds_custom_peer_lists import IpedsCustomPeerList

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading ipeds_custom_peer_lists data")
df = pd.read_csv('data/ipeds_custom_peer_lists.csv')

session = Session()

try:
    # bulk insert objects for federal agencies and academic fields (NSF)
    print('\nPopulating dimension tables.')
    # insert state data
    record_deletes = session.query(IpedsCustomPeerList).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = IpedsCustomPeerList,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating ipeds_custom_peer_lists table.')

except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")