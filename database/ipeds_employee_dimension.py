# coding=utf-8

from sqlalchemy import Column, String

from .base import Base

class IpedsEmployeeDimension(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_employee_dimension"

    """ create columns """
    employee_key = Column(String(6), primary_key = True)
    occupational_group = Column(String(255), nullable = False)
    occupational_category = Column(String(255), nullable = False)
    time_status = Column(String(9), nullable = False)
    medical_school = Column(String(64), nullable = False)

    def __init__(self, employee_key, occupational_group, occupational_category, time_status, medical_school):
        """ method for instantiating object """
        self.employee_key
        self.occupational_group = occupational_group
        self.occupational_category = occupational_category
        self.time_status = time_status
        self.medical_school = medical_school

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'employee_key={self.employee_key!r}, '
            f'occupational_group={self.occupational_group!r}, '
            f'occupational_category={self.occupational_category}, '
            f'time_status={self.time_status}, '
            f'medical_school={self.medical_school})'
            )
