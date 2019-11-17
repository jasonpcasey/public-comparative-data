# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsFallStaff(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_staff"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    employee_key = Column(String(5), primary_key = True)
    demographic_key = Column(String(5), primary_key = True)
    headcount = Column(Integer, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, employee_key, demographic_key, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.employee_key = employee_key
        self.demographic_key = demographic_key
        self.headcount = headcount

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsFallStaff(unitid={}, date_key={}, "
                "employee_key = {}, demographic_key={}, "
                "headcount={})").format(self.unitid,
                                        self.date_key,
                                        self.employee_key,
                                        self.demographic_key,
                                        self.headcount)
