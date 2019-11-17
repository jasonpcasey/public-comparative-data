# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class County(Base):
    """ map to a table name in db """
    __tablename__ = "counties"

    """ create columns """
    county_fips = Column(Integer, primary_key = True)
    county_name = Column(String(255), nullable = False)
    state = Column(String(2), nullable = False)

    """ method for instantiating object """
    def __init__(self, county_fips, county_name, state):
        self.county_fips - county_fips
        self.county_name = county_name
        self.state = state

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<County(county_fips={}, county_name={}, "
                "state={})").format(self.county_fips,
                                    self.county_name,
                                    self.state)
