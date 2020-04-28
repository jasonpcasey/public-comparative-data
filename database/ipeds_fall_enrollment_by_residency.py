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
    state_fips = Column(Integer, ForeignKey('states.state_fips'), nullable = False)
    student_population = Column(String(50), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_fall_enrollment_by_residency_keys',
                            'unitid',
                            'date_key',
                            'state_fips',
                            'student_population',
                            unique = True), )

    def __init__(self, unitid, date_key, state_fips, student_population, headcount):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.state_fips = state_fips
        self.student_population = student_population
        self.headcount = headcount

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'state_fips={self.state_fips!r}, '
            f'student_population={self.student_population!r}, '
            f'headcount={self.headcount!r})'
        )
