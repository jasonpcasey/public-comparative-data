# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date
from sqlalchemy.orm import relationship

from base import Base

class Enrollment(Base):
    """ map to the table in our db """
    __tablename__ = 'fall_enrollment'

    """ column definitions """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, ForeignKey('institutions.unitid'), nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    student_level = Column(String(32), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    __table_args__ = (Index('idx_enrollment',
                            'inst_id',
                            'date_key',
                            'student_level',
                            unique = True), )


    """ method used to create an instance of Institution """
    def __init__(self, unitid, date_key, student_level, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.student_level = student_level
        self.headcount = headcount

    def __repr__(self):
        # return '<Enrollment(unitid='%s', date_key='%s', student_level='%s', headcount='%s')>' % (
        #                         self.unitid, self.date_key, self.student_level, self.headcount)
        return ("<Enrollment(unitid={}, date_key={}, student_level={}, "
                "headcount={})").format(self.unitid,
                                        self.date_key,
                                        self.student_level,
                                        self.headcount)

