# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsFallEnrollment(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_enrollment"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    time_status = Column(String(16), nullable = False)
    career_level = Column(String(16), nullable = False)
    degree_seeking = Column(String(20), nullable = False)
    continuation_type = Column(String(16), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_fall_enrollment_keys',
                            'unitid',
                            'date_key',
                            'time_status',
                            'career_level',
                            'degree_seeking',
                            'continuation_type',
                            'demographic_key',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, time_status, career_level, degree_seeking, continuation_type, demographic_key, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.time_status = time_status
        self.career_level = career_level
        self.degree_seeking = degree_seeking
        self.continuation_type = continuation_type
        self.demographic_key = demographic_key
        self.headcount = headcount

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsFallEnrollment(unitid={}, date_key={}, "
                "time_status={}, career_level={}, degree_seeking = {}, "
                "continuation_type = {}, demographic_key={}, "
                "headcount={})").format(self.unitid,
                                        self.date_key,
                                        self.time_status,
                                        self.career_level,
                                        self.degree_seeking,
                                        self.continuation_type,
                                        self.demographic_key,
                                        self.headcount)
