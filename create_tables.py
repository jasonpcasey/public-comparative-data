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

print("Adding U.S. Federal agencies to nsf_herd_federal_agencies table.")
objects = [
    NsfHerdFederalAgency('BUS', 'Business', 'Business', 'Non-federal'),
    NsfHerdFederalAgency('DOD', 'Department of Defense', 'DOD', 'Federal'),
    NsfHerdFederalAgency('DOE', 'Department of Energy', 'DOE', 'Federal'),
    NsfHerdFederalAgency('HHS', 'Department of Health and Human Services', 'HHS', 'Federal'),
    NsfHerdFederalAgency('INS', 'Institution funds', 'Institution funds', 'Non-federal'),
    NsfHerdFederalAgency('NAS', 'National Aeronautics and Space Administration', 'NASA', 'Federal'),
    NsfHerdFederalAgency('NPO', 'Nonprofit organziations', 'Nonprofit organziations', 'Non-federal'),
    NsfHerdFederalAgency('AOS', 'Other sources', 'Other sources', 'Non-federal'),
    NsfHerdFederalAgency('NSF', 'National Science Foundation', 'NSF', 'Federal'),
    NsfHerdFederalAgency('OTH', 'Other agencies', 'Other agencies', 'Non-federal'),
    NsfHerdFederalAgency('SLG', 'State and local government', 'State and local government', 'Non-federal'),
    NsfHerdFederalAgency('USD', 'Department of Agriculture', 'USDA', 'Federal')
    ]

print("Adding academic fields to nsf_herd_academic_fields table.")
objects.extend([
    NsfHerdAcademicField('A', 'A', 'Computer and Information Sciences', 'Computer and Information Sciences', 'Engineering'),
    NsfHerdAcademicField('B01', 'B', 'Aerospace, Aeronautical,and Astronautical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B02', 'B', 'Bioengineering and Biomedical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B03', 'B', 'Chemical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B04', 'B', 'Civil Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B05', 'B', 'Electrical, Electronic, and Communications Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B06', 'B', 'Industrial and Manufacturing Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B07', 'B', 'Mechanical Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B08', 'B', 'Metallurgical and Materials Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('B09', 'B', 'Other Engineering', 'Engineering', 'Engineering'),
    NsfHerdAcademicField('C01', 'C', 'Atmospheric Science and Meteorology', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('C02', 'C', 'Geological and Earth Sciences', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('C03', 'C', 'Ocean Sciences and Marine Sciences', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('C04', 'C', 'Other Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Geosciences, Atmospheric Sciences, and Ocean Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('D01', 'D', 'Agricultural Sciences', 'Life Sciences', 'IANR'),
    NsfHerdAcademicField('D02', 'D', 'Biological and Biomedical Sciences', 'Life Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('D03', 'D', 'Health Sciences', 'Life Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('D04', 'D', 'Natural Resources and Conservation', 'Life Sciences', 'IANR'),
    NsfHerdAcademicField('D05', 'D', 'Other Life Sciences', 'Life Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('E', 'E', 'Mathematics and Statistics', 'Mathematics and Statistics', 'Arts and Sciences'),
    NsfHerdAcademicField('F01', 'F', 'Astronomy and Astrophysics', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F02', 'F', 'Chemistry', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F03', 'F', 'Materials Science', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F04', 'F', 'Physics', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('F05', 'F', 'Other Physical Sciences', 'Physical Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('G', 'G', 'Psychology', 'Psychology', 'Arts and Sciences'),
    NsfHerdAcademicField('H01', 'H', 'Anthropology', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('H02', 'H', 'Economics', 'Social Sciences', 'Business'),
    NsfHerdAcademicField('H03', 'H', 'Political Science and Government', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('H04', 'H', 'Sociology, Demography, and Population Studies', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('H05', 'H', 'Other Social Sciences', 'Social Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('I', 'I', 'Other Sciences', 'Other Sciences', 'Arts and Sciences'),
    NsfHerdAcademicField('J01', 'J', 'Business Management and Business Administration', 'Non-STEM Fields', 'Business'),
    NsfHerdAcademicField('J02', 'J', 'Communication and Communications Technologies', 'Non-STEM Fields', 'Journalism and Mass Communications'),
    NsfHerdAcademicField('J03', 'J', 'Education', 'Non-STEM Fields', 'Education and Human Science'),
    NsfHerdAcademicField('J04', 'J', 'Humanities', 'Non-STEM Fields', 'Arts and Sciences'),
    NsfHerdAcademicField('J05', 'J', 'Law', 'Non-STEM Fields', 'Law'),
    NsfHerdAcademicField('J06', 'J', 'Social Work', 'Non-STEM Fields', 'Arts and Sciences'),
    NsfHerdAcademicField('J07', 'J', 'Visual and Performing Arts', 'Non-STEM Fields', 'Fine and Performing Arts'),
    NsfHerdAcademicField('J08', 'J', 'Other Non-STEM Fields', 'Non-STEM Fields', 'Architecture')
    ])

print("Reading date dimension data.")
dates = pd.read_csv('data/date_dimension.csv')
dates = dates.fillna(sql.null())

print("Reading state data")
states = pd.read_csv('data/states.csv',
                     encoding='utf-16')

session = Session()

try:
    print('\nPopulating dimension tables.')
    session.bulk_save_objects(objects)
    print('\tFinished populating nsf_herd_federal_agencies.')
    print('\tFinished populating nsf_herd_academic_fields.')
    # dates.to_sql(DateRow.__tablename__, engine, if_exists = 'append')
    date_inserts = session.bulk_insert_mappings(mapper = DateRow,
                                                mappings = dates.to_dict(orient='records')),
    print('\tFinished populating date_dimension.')
    state_inserts = session.bulk_insert_mappings(mapper = State,
                                                 mappings = states.to_dict(orient='records')),
    print('\tFinished populating state table.')
except Exception as e:
    session.rollback()
    print("\nAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
else:
    session.commit()
    print('\nChanges committed to database.')

session.close()

print("\nAll Done.")