# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsRetention(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_retention"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    cohort_date = Column(Date, primary_key = True)
    time_status = Column(String(64), primary_key = True)
    adjusted_cohort = Column(Integer, default = 0)
    enrolled = Column(Integer, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, cohort_date, time_status, aid_type, adjusted_cohort, enrolled):
        self.unitid = unitid
        self.date_key = date_key
        self.cohort_date = cohort_date
        self.time_status = time_status
        self.adjusted_cohort = adjusted_cohort
        self.enrolled = enrolled

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsRetention(unitid={}, date_key={}, "
                "cohort_date={}, time_status={}, "
                "adjusted_cohort={}, "
                "enrolled={})").format(self.unitid,
                                       self.date_key,
                                       self.cohort_date,
                                       self.time_status,
                                       self.adjusted_cohort,
                                       self.enrolled)
