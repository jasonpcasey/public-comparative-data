# coding=utf-8

from sqlalchemy import Column, Index, Date, Numeric

from .base import Base

class Gdp(Base):
    """ map to a table name in db """
    __tablename__ = "gdp_dimension"

    """ create columns """
    date_key = Column(Date, primary_key = True, nullable = False)
    gdp = Column(Numeric(8, 3), nullable = False)
 
    def __init__(self, date_key, gdp):
        """ method for instantiating object """
        self.date_key = date_key
        self.gdp = gdp
    
    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'date_key={self.date_key!r}, '
            f'gdp={self.gdp!r})'
        )
