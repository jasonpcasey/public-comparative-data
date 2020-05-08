# coding=utf-8

from database.base import Session, engine, Base
from database.cip_hierarchy import Cip
from database.cip_history import CipCode

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading cip_hierarchy data")

session = Session()

df = pd.read_sql(
    session.query(CipCode.__table__).statement,
    session.bind
    )

unique = df[['cipcode', 'version']].groupby(['cipcode']).max()

cip = df.merge(
    right = unique,
    how = 'inner',
    on = ['cipcode', 'version']
    )

cip2 = cip[cip.cipcode.str.len() == 2][['cipcode', 'title']]
cip2 = cip2.rename(
    columns={
        'cipcode': 'cip2',
        'title': 'cip2_description'
    }
)

cip4 = cip[cip.cipcode.str.len() == 5][['cipcode', 'title']]
cip4 = cip4.rename(
    columns={
        'cipcode': 'cip4',
        'title': 'cip4_description'
    }
)

cip6 = cip[cip.cipcode.str.len() == 7][['cipcode', 'title', 'family']]
cip6['cip6'] = pd.to_numeric(
    cip6.cipcode,
    errors = 'coerce'
    )
cip6['cip4'] = cip.cipcode.str[:5]
cip6 = cip6.rename(
    columns={
        'family': 'cip2',
        'title': 'cip6_description'
        }
    )

hierarchy = cip6.merge(
    right = cip2,
    how = 'inner',
    on = 'cip2'
    )

hierarchy = hierarchy.merge(
    right = cip4,
    how = 'inner',
    on = 'cip4'
    )

try:
    print('\nPopulating dimension tables.')
    # insert state data
    record_deletes = session.query(Cip).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = Cip,
                                              mappings = hierarchy.to_dict(orient='records')),
    print('\tFinished populating cip_hierarchy table.')

except Exception as e:
    session.rollback()
    print("\tAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
    print('\tNo changes were made to the database due to error(s).')
else:
    session.commit()
    print('\tChanges committed to database.\n')

session.close()

print("All Done.")