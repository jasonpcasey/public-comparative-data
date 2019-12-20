# coding=utf-8

from base import Session, engine, Base
from peer_groups import PeerGroup

import numpy as np
import pandas as pd
from pandas import DataFrame

print("Reading peer_groups data")
df = pd.read_csv('data/peer_groups.csv')

session = Session()

try:
    # bulk insert objects for federal agencies and academic fields (NSF)
    print('\nPopulating dimension tables.')
    # insert state data
    record_deletes = session.query(PeerGroup).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = PeerGroup,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating peer_groups table.')

except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")