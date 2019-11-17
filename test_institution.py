# coding=utf-8

from sqlalchemy import Column, String, Integer, Boolean

from base import Base

class Institution(Base):
    """ map to a table name in db """
    __tablename__ = "test_institutions"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    name = Column(String(132), nullable = False)
    state_fips = Column(Integer, nullable = False)
    public = Column(Boolean, nullable = False, default = 0)
    for_profit = Column(Boolean, nullable = False, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, name, state_fips, public, for_profit):
        self.unitid = unitid
        self.name = name
        self.state_fips = state_fips
        self.public = public
        self.for_profit = for_profit

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<Institution(unitid={}, "
                "name={}, "
                "state_fips={}, "
                "public = {}, "
                "for_profit={})").format(self.unitid,
                                         self.name,
                                         self.state_fips,
                                         self.public,
                                         self.for_profit)
