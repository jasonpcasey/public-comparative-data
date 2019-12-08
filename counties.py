# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Numeric

from base import Base

class County(Base):
    """ map to a table name in db """
    __tablename__ = "counties"

    """ create columns """
    fips_code = Column(Numeric(5, 3), primary_key = True)
    state_fips = Column(Integer, ForeignKey('states.fips'), nullable = False)
    county_fips = Column(Integer, nullable = False)
    county_name = Column(String(255), nullable = False)
 
    """ Unique index constraint """
    __table_args__ = (Index('idx_fips_county_keys',
                            'state_fips',
                            'county_fips',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, fips_code, state_fips, county_fips, county_name):
        self.fips_code = fips_code
        self.state_fips = state_fips
        self.county_fips = county_fips
        self.county_name = county_name
    
    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<County(fips_code={}, state_fips={}, county_fips={}, "
                "county_name={})").format(self.fips_code,
                                          self.state_fips,
                                          self.county_fips,
                                          self.county_name)
