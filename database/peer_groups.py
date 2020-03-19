# coding=utf-8

from sqlalchemy import Column, Index, String, Integer

from .base import Base

class PeerGroup(Base):
    """ map to a table name in db """
    __tablename__ = "peer_groups"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    group_name = Column(String(132), nullable = False)

    """ Unique index constraint """
    __table_args__ = (Index('idx_peer_groups_keys',
                            'unitid',
                            'group_name',
                            unique = True), )

    def __init__(self, unitid, group_name):
        """ method for instantiating object """
        self.unitid = unitid
        self.group_name = group_name

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'group_name={self.group_name!r})'
        )
