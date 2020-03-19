# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsFallEnrollmentByAge(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_enrollment_by_age"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    age_range = Column(String(20), nullable = False)
    career_level = Column(String(16), nullable = False)
    time_status = Column(String(16), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_fall_enrollment_by_age_keys',
                            'unitid',
                            'date_key',
                            'age_range',
                            'career_level',
                            'time_status',
                            'demographic_key',
                            unique = True), )

    def __init__(self, unitid, date_key, age_range, career_level, time_status, demographic_key, headcount):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.age_range = age_range
        self.career_level = career_level
        self.time_status = time_status
        self.demographic_key = demographic_key
        self.headcount = headcount

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'age_range={self.age_range!r}, '
            f'career_level={self.career_level!r}, '
            f'time_status={self.time_status!r}, '
            f'demographic_key={self.demographic_key!r}, '
            f'headcount={self.headcount!r})'
        )
