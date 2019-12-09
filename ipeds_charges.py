# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from base import Base

class IpedsCharge(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_charges"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    student_residency = Column(String(16), nullable = False)
    charge_type = Column(String(64), nullable = False)
    charge = Column(Numeric, nullable = True)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_charges_keys',
                            'unitid',
                            'date_key',
                            'student_residency',
                            'charge_type',
                            unique = True), )

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
