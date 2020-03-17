# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Numeric

from .base import Base

class County(Base):
    """ map to a table name in db """
    __tablename__ = "counties"

    """ create columns """
    fips_code = Column(Numeric(5, 3), primary_key = True)
    state_fips = Column(Integer, ForeignKey('states.fips'), nullable = False)
    county_fips = Column(Integer, nullable = False)
    county_name = Column(String(255), nullable = False)
 
    """ method for instantiating object """
    def __init__(self, fips_code, state_fips, county_fips, county_name):
        self.fips_code = fips_code
        self.state_fips = state_fips
        self.county_fips = county_fips
        self.county_name = county_name
    
    """ method used to produce print-friendly output """
    def __repr__(self):
        return (
            f'{self.__class__.__name__}('
            f'fips_code={self.fips_code!r}, '
            f'state_fips={self.state_fips!r}, '
            f'county_fips={self.county_fips!r}, '
            f'county_name={self.county_name!r})'
        )
