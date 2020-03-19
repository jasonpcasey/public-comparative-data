# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class AauMember(Base):
    """ map to a table name in db """
    __tablename__ = "aau_membership"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    inst_name = Column(String(255), nullable = False)

    def __init__(self, unitid, inst_name):
        """ method for instantiating object """
        self.unitid = unitid
        self.inst_name = inst_name

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'inst_name={self.inst_name!r})'
            )
