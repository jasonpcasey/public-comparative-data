# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsFallStaff(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_fall_staff"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    employee_key = Column(String(5), ForeignKey('ipeds_employee_dimension.employee_key'), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_fall_staff_keys',
                            'unitid',
                            'date_key',
                            'employee_key',
                            'demographic_key',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, employee_key, demographic_key, headcount):
        self.unitid = unitid
        self.date_key = date_key
        self.employee_key = employee_key
        self.demographic_key = demographic_key
        self.headcount = headcount

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsFallStaff(unitid={}, date_key={}, "
                "employee_key = {}, demographic_key={}, "
                "headcount={})").format(self.unitid,
                                        self.date_key,
                                        self.employee_key,
                                        self.demographic_key,
                                        self.headcount)
