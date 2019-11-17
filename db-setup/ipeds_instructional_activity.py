# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsInstructionalActivity(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_instructional_activity"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    career_level = Column(String(16), primary_key = True)
    activity_type = Column(String(64), nullable = False)
    credit_hours = Column(Numeric, default = 0)
    clock_hours = Column(Numeric, default = 0)
    estimated_fte = Column(Numeric, default = 0)
    reported_fte = Column(Numeric, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, career_level, activity_type, credit_hours, clock_hours, estimated_fte, reported_fte):
        self.unitid = unitid
        self.date_key = date_key
        self.career_level = career_level
        self.activity_type = activity_type
        self.credit_hours = credit_hours
        self.clock_hours = clock_hours
        self.estimated_fte = estimated_fte
        self.reported_fte = reported_fte

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsInstructionalActivity(unitid={}, date_key={}, "
                "career_level={}, activity_type={}, credit_hours={}, "
                "clock_hours={}, estimated_fte={}, reported_fte={})").format(self.unitid,
                                                                             self.date_key,
                                                                             self.career_level,
                                                                             self.activity_type,
                                                                             self.credit_hours,
                                                                             self.clock_hours,
                                                                             self.estimated_fte,
                                                                             self.reported_fte)
