# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from base import Base

class IpedsAdmissions(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_admissions"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), primary_key = True)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), primary_key = True)
    applications = Column(Numeric, nullable = False, default = 0)
    admissions = Column(Numeric, nullable = False, default = 0)
    enrolled = Column(Numeric, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_admissions_keys',
                            'unitid',
                            'date_key',
                            'demographic_key',
                            unique = True), )

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
