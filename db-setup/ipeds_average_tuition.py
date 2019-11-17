# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsAverageTuition(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_average_tuition"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    student_career = Column(String(16), primary_key = True)
    student_residency = Column(String(16), primary_key = True)
    average_tuition = Column(Numeric)
    per_credit_hour_charge = Column(Numeric)
    required_fees = Column(Numeric)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, student_career, student_residency, average_tuition, per_credit_hour_charge, required_fees):
        self.unitid = unitid
        self.date_key = date_key
        self.student_career = student_career
        self.student_residency = student_residency
        self.average_tuition = average_tuition
        self.per_credit_hour_charge = per_credit_hour_charge
        self.required_fees= required_fees

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsAverageTuition(unitid={}, date_key={}, "
               "student_career={}, student_residency={}, "
               "average_tuition={}, per_credit_hour_charge={}, "
               "required_fees={})").format(self.unitid,
                                           self.date_key,
                                           self.student_career,
                                           self.student_residency,
                                           self.average_tuition,
                                           self.per_credit_hour_charge,
                                           self.required_fees)
