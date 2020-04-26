# coding=utf-8

from database.base import Session, engine, Base
from database.ipeds_employee_dimension import IpedsEmployeeDimension
from database.ipeds_faculty_dimension import IpedsFacultyDimension
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.date_dimension import DateRow
from database.ipeds_new_hires import IpedsNewHire

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

table_names = [
    IpedsNewHire.__tablename__,
    ]

tables = [
    IpedsNewHire.__table__,
    ]

print("Dropping tables if they exist in the database:\n\t{}".format('\n\t'.join(table_names)))

Base.metadata.drop_all(bind = engine,
                       checkfirst = True,
                       tables = tables)

print("Creating tables in the database:\n\t{}".format('\n\t'.join(table_names)))

Base.metadata.create_all(engine)

print("All Done.")