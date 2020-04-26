# coding=utf-8

from sqlalchemy import Column, String, Integer, Boolean, Date

from .base import Base

class DateRow(Base):
    """ map to a table name in db """
    __tablename__ = "date_dimension"

    """ create columns """
    date_key = Column(Date, primary_key=True)
    calendar_year = Column(Integer, nullable=False)
    amis_term = Column(String(5), nullable=False)
    peoplesoft_term_code = Column(String(4), nullable=False)
    semester = Column(String(6), nullable=False)
    fiscal_year = Column(String(9), nullable=False)
    academic_year = Column(String(9), nullable=False)

    
    def __init__(self, date_key, calendar_year,
                 amis_term, peoplesoft_term_code, semester, fiscal_year, 
                 academic_year):
        """ method for instantiating object """
        self.date_key = date_key
        self.calendar_year = calendar_year
        self.amis_term = amis_term
        self.peoplesoft_term_code = peoplesoft_term_code
        self.semester = semester
        self.fiscal_year = fiscal_year
        self.academic_year= academic_year

    
    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'date_key={self.date_key!r}, '
            f'calendar_year={self.calendar_year!r}, '
            f'amis_term={self.amis_term!r}, '
            f'peoplesoft_term_code={self.peoplesoft_term_code!r}, '
            f'semester={self.semester!r}, '
            f'fiscal_year={self.fiscal_year!r}, '
            f'academic_year={self.academic_year!r})'
            )
