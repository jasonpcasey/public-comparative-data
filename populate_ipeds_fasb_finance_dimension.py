# coding=utf-8

from database.base import Session, engine, Base
from database.ipeds_finance_field_dimension import IpedsFinanceFieldDimension

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading faculty dimension data")
# df = pd.read_csv('data/ipeds_f2_fields.csv')
df = pd.read_csv('data/reduced_fields.csv')
df = df.rename(columns = {
    'field_code': 'finance_field_key',
    'field_label': 'finance_field',
    }
    )

session = Session()

try:
    print('Populating dimension tables.')
    # insert state data
    record_deletes = session.query(IpedsFinanceFieldDimension).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = IpedsFinanceFieldDimension,
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