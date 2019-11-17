# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class State(Base):
    """ map to a table name in db """
    __tablename__ = "states"

    """ create columns """
    fips = Column(Integer, primary_key = True)
    state_abbreviation = Column(String(2), nullable = False)
    state = Column(String(32), nullable = False)
    region = Column(String(32), nullable=False)

    """ method for instantiating object """
    def __init__(self, fips, state_abbreviation, state, region):
        self.fips - fips
        self.state_abbreviation = state_abbreviation
        self.state = state
        self.region = region

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<State(fips={}, "
                "state_abbreviation={}. state={}, "
                "region = {})").format(self.fips,
                                       self.state_abbreviation,
                                       self.state,
                                       self.region)
