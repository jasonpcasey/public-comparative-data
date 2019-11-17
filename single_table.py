# coding=utf-8

from base import Session, engine, Base
from test_institution import Institution

# if the table exists in the db, drop it
Base.metadata.drop_all(bind = engine, checkfirst = True, tables = [Institution.__table__])

# if Base.metadata.institutions.exists(engine):
#     Base.metadata.institutions.drop(engine)
# using the engine from base, create our institutions table
Base.metadata.create_all(engine)

# open a session
session = Session()

# create some Institutions (unitid, name, state_fips, public, for_profit)
fm = Institution(212577, "Franklin & Marshall College", 42, False, False)
fit = Institution(191126, "Fashion Institute of Technology", 36, True, False)
gu = Institution(131496, "Georgetown University", 11, False, False)
nd = Institution(152080, "University of Notre Dame", 18, False, False)
nu = Institution(181464, "University of Nebraska-Lincoln", 31, True, False)

# add objects to table
session.add(fm)
session.add(fit)
session.add(gu)
session.add(nd)
session.add(nu)

# commit changes to db
session.commit()

# select these institutions from the db
places_jason_has_worked = session.query(Institution).all()

# loop through these and show each
for employer in places_jason_has_worked:
    print(employer)

# close the session
session.close()