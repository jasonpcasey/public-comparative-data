# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class State(Base):
    """ map to a table name in db """
    __tablename__ = "states"

    """ create columns """
    state_fips = Column(Integer, primary_key = True)
    state_abbreviation = Column(String(2), nullable = False)
    state = Column(String(32), nullable = False)
    region = Column(String(32), nullable=False)

    def __init__(self, state_fips, state_abbreviation, state, region):
        """ method for instantiating object """
        self.state_fips = state_fips
        self.state_abbreviation = state_abbreviation
        self.state = state
        self.region = region

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'state_fips={self.state_fips!r}, '
            f'state_abbreviation={self.state_abbreviation!r}, '
            f'state={self.state!r}, '
            f'region={self.region!r})'
            )
