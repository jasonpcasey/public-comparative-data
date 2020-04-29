# coding=utf-8

from database.base import Session, engine, Base
from database.date_dimension import DateRow
from database.ipeds_test_scores import IpedsTestScore

table_names = [
    IpedsTestScore.__tablename__,
    ]

tables = [
    IpedsTestScore.__table__,
    ]

names = '\n\t'.join(table_names)

print(f'Dropping tables if they exist in the database:\n\t{names}')

Base.metadata.drop_all(bind = engine,
                       checkfirst = True,
                       tables = tables)

print(f"Creating tables in the database:\n\t{names}")

Base.metadata.create_all(engine)

print("All Done.")