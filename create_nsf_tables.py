# coding=utf-8

from base import Session, engine, Base
from date_dimension import DateRow
from states import State
from nsf_herd_academic_fields import NsfHerdAcademicField
from nsf_herd_federal_agencies import NsfHerdFederalAgency
from nsf_herd_institution_data import NsfHerdInstitution
from nsf_herd_detail_data import NsfHerdDetail
import numpy as np
import pandas as pd
from sqlalchemy import sql

print("Dropping tables if they exist in the database:\n\t{}\n\t{}\n\t{}\n\t{}\n\t{}\n\t{}\n".format(NsfHerdDetail.__tablename__,
                                                                                                    NsfHerdInstitution.__tablename__,
                                                                                                    NsfHerdAcademicField.__tablename__,
                                                                                                    NsfHerdFederalAgency.__tablename__,
                                                                                                    DateRow.__tablename__,
                                                                                                    State.__tablename__))

Base.metadata.drop_all(bind=engine, checkfirst=True, tables=[NsfHerdDetail.__table__,
                                                             NsfHerdInstitution.__table__,
                                                             NsfHerdAcademicField.__table__,
                                                             NsfHerdFederalAgency.__table__,
                                                             DateRow.__table__,
                                                             State.__table__])

print("Creating tables in the database:\n\t{}\n\t{}\n\t{}\n\t{}\n\t{}\n\t{}\n".format(NsfHerdDetail.__tablename__,
                                                                                      NsfHerdInstitution.__tablename__,
                                                                                      NsfHerdAcademicField.__tablename__,
                                                                                      NsfHerdFederalAgency.__tablename__,
                                                                                      DateRow.__tablename__,
                                                                                      State.__tablename__))

Base.metadata.create_all(engine)

print("\nAll Done.")