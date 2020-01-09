# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsFallEnrollmentByResidency(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_enrollment_by_residency"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    state = Column(String(50), nullable = False)
    student_population = Column(String(50), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_fall_enrollment_by_residency_keys',
                            'unitid',
                            'date_key',
                            'state',
                            'student_population',
                            unique = True), )

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
