# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, ForeignKey
from sqlalchemy.orm import relationship

from base import Base

class Enrollment(Base):
    """ map to the table in our db """
    __tablename__ = "fall_enrollment"

    """ column definitions """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, ForeignKey("institutions.unitid"))
    date_key = Column(Date, nullable = False)
    student_level = Column(String(32), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    """ method used to create an instance of Institution """
    def __init__(self, unitid, date_key, student_level, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.student_level = student_level
        self.headcount = headcount

    def __repr__(self):
        return "<Enrollment(unitid='%s', date_key='%s', student_level='%s', headcount='%s')>" % (
                                self.unitid, self.date_key, self.student_level, self.headcount)
