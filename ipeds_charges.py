# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsCharge(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_charges"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    student_residency = Column(String(16), primary_key = True)
    charge_type = Column(String(64), primary_key = True)
    charge = Column(Numeric)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, student_residency, charge_type, charge):
        self.unitid = unitid
        self.date_key = date_key
        self.student_residency = student_residency
        self.charge_type = charge_type
        self.charge = charge

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsCharge(unitid={}, date_key={}, "
               "student_residency={}, charge_type={}, "
               "charge={})").format(self.unitid,
                                    self.date_key,
                                    self.student_residency,
                                    self.charge_type,
                                    self.charge)
