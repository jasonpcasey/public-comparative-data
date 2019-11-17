# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsFallEnrollment(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_enrollment"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    time_status = Column(String(16), primary_key = True)
    career_level = Column(String(16), primary_key = True)
    degree_seeking = Column(String(20), primary_key = True)
    continuation_type = Column(String(16), primary_key = True)
    demographic_key = Column(String(5), primary_key = True)
    headcount = Column(Integer, default = 0)

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
