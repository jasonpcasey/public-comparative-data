# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class IpedsFacultyDimension(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_faculty_dimension"

    """ create columns """
    faculty_key = Column(Integer, primary_key = True)
    faculty_status = Column(String(255), nullable = False)
    tenure_status = Column(String(64), nullable = False)
    contract_type = Column(String(255), nullable = False)

    """ method for instantiating object """
    def __init__(self, faculty_key, faculty_status, tenure_status, contract_type):
        self.faculty_key
        self.faculty_status = faculty_status
        self.tenure_status = tenure_status
        self.contract_type = contract_type

    """ method used to produce print-friendly output """
    def __repr__(self):
        return (
            f'{self.__class__.__name__}('
            f'faculty_key={self.faculty_key!r}, '
            f'faculty_status={self.faculty_status!r}, '
            f'tenure_status={self.tenure_status!r}, '
            f'contract_type={self.contract_type!r})'
            )
