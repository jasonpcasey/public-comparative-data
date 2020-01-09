# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsFullYearEnrollment(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_full_year_enrollment"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    career_level = Column(String(16), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    headcount = Column(Numeric, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_full_year_enrollment_keys',
                            'unitid',
                            'date_key',
                            'career_level',
                            'demographic_key',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, career_level, demographic_key, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.career_level = career_level
        self.demographic_key = demographic_key
        self.headcount = headcount

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsFullYearEnrollment(unitid={}, date_key={}, "
                "career_level={}, demographic_key={}, headcount={})").format(self.unitid,
                                                                             self.date_key,
                                                                             self.career_level,
                                                                             self.demographic_key,
                                                                             self.headcount)
