# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsNewHire(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_new_hires"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    employee_key = Column(String(5), ForeignKey('ipeds_employee_dimension.employee_key'), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    faculty_key = Column(Integer, ForeignKey('ipeds_faculty_dimension.faculty_key'), nullable = False)
    headcount = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_fall_staff_keys',
                            'unitid',
                            'date_key',
                            'employee_key',
                            'demographic_key',
                            'faculty_key',
                            unique = True), )

    
    def __init__(self, unitid, date_key, employee_key, demographic_key, faculty_key, headcount):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.employee_key = employee_key
        self.demographic_key = demographic_key
        self.faculty_key = faculty_key
        self.headcount = headcount

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'employee_key={self.employee_key!r}, '
            f'demographic_key={self.demographic_key!r}, '
            f'faculty_key={self.faculty_key!r}, '
            f'headcount={self.headcount!r})'
            )
