# coding=utf-8

from sqlalchemy import Column, String

from base import Base

class IpedsEmployeeDimension(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_employee_dimension"

    """ create columns """
    employee_key = Column(String(5), primary_key = True)
    occupational_category = Column(String(255), nullable = False)
    time_status = Column(String(9), nullable = False)

    """ method for instantiating object """
    def __init__(self, employee_key, occupational_category, time_status):
        self.employee_key
        self.occupational_category = occupational_category
        self.time_status = time_status

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsEmployeeDimension(employee_key={}, "
                "occupational_category={}, time_status={})").format(self.employee_key,
                                                                    self.occupational_category,
                                                                    self.time_status)
