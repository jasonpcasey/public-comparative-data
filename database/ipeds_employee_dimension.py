# coding=utf-8

from sqlalchemy import Column, String

from .base import Base

class IpedsEmployeeDimension(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_employee_dimension"

    """ create columns """
    employee_key = Column(String(5), primary_key = True)
    occupational_category = Column(String(255), nullable = False)
    time_status = Column(String(9), nullable = False)

    def __init__(self, employee_key, occupational_category, time_status):
        """ method for instantiating object """
        self.employee_key
        self.occupational_category = occupational_category
        self.time_status = time_status

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'employee_key={self.employee_key!r}, '
            f'occupational_category={self.occupational_category}, '
            f'time_status={self.time_status})'
            )
