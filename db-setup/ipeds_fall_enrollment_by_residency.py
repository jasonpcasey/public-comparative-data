# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsFallEnrollmentByResidency(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_enrollment_by_residency"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    state = Column(String(50), primary_key = True)
    student_population = Column(String(50), primary_key = True)
    headcount = Column(Integer, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, state, student_population, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.state = state
        self.student_population = student_population
        self.headcount = headcount

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsFallEnrollmentByResidency(unitid={}, date_key={}, "
                "state = {}, student_population={}, "
                "headcount={})").format(self.unitid,
                                        self.date_key,
                                        self.state,
                                        self.student_population,
                                        self.headcount)
