# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class PeerGroup(Base):
    """ map to a table name in db """
    __tablename__ = "peer_groups"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    group_name = Column(String(132), nullable = False)

    """ method for instantiating object """
    def __init__(self, unitid, group_name):
        self.unitid = unitid
        self.group_name = group_name

    """ method used to produce print-friendly output """
    def __repr__(self):
        return "<PeerGroup(unitid={}, \
                group_name={})".format(self.unitid,
                                       self.group_name)
