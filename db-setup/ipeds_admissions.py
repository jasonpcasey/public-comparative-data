# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsAdmissions(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_admissions"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    demographic_key = Column(String(5), primary_key = True)
    applications = Column(Numeric, default = 0)
    admissions = Column(Numeric, default = 0)
    enrolled = Column(Numeric, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, demographic_key, applications, admissions, enrolled):
        self.unitid = unitid
        self.date_key = date_key
        self.demographic_key = demographic_key
        self.applications = applications
        self.admissions = admissions
        self.enrolled = enrolled

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsAdmissions(unitid={}, date_key={}, demographic_key={}, "
                "applications = {}, admissions = {}, enrolled={})").format(self.unitid,
                                                                           self.date_key,
                                                                           self.demographic_key,
                                                                           self.applications,
                                                                           self.admissions,
                                                                           self.enrolled)
