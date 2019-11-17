# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class AauMember(Base):
    """ map to a table name in db """
    __tablename__ = "aau_membership"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    inst_name = Column(String(255), nullable = False)

    """ method for instantiating object """
    def __init__(self, unitid, inst_name):
        self.unitid
        self.inst_name = inst_name

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<AauMember(unitid={}, "
                "inst_name={})").format(self.unitid,
                                        self.inst_name)
