# coding=utf-8

from database.base import Session, engine, Base
from database.ipeds_employee_dimension import IpedsEmployeeDimension

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

print("Reading ipeds_employee_dimension data")
df = pd.read_csv('data/ipeds_employee_dimension.csv')

session = Session()

try:
    print('Populating dimension tables.')
    # insert state data
    record_deletes = session.query(IpedsEmployeeDimension).delete(synchronize_session=False)
    df_inserts = session.bulk_insert_mappings(mapper = IpedsEmployeeDimension,
                                              mappings = df.to_dict(orient='records')),
    print('\tFinished populating ipeds_employee_dimension table.')

except Exception as e:
    session.rollback()
    print("\tAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
    print('\tNo changes made to database due to error.\n')
else:
    session.commit()
    print('\tChanges committed to database.\n')

session.close()

print("All Done.")