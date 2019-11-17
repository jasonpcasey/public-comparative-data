# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsFallEnrollmentByAge(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_enrollment_by_age"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    age_range = Column(String(20), primary_key = True)
    career_level = Column(String(16), primary_key = True)
    time_status = Column(String(16), primary_key = True)
    demographic_key = Column(String(5), primary_key = True)
    headcount = Column(Integer, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, age_range, career_level, time_status, demographic_key, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.age_range = age_range
        self.career_level = career_level
        self.time_status = time_status
        self.demographic_key = demographic_key
        self.headcount = headcount

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsFallEnrollmentByAge(unitid={}, date_key={}, "
                "age_range = {}, career_level={}, "
                "time_status={}, demographic_key={}, "
                "headcount={})").format(self.unitid,
                                        self.date_key,
                                        self.age_range,
                                        self.career_level,
                                        self.time_status,
                                        self.demographic_key,
                                        self.headcount)
