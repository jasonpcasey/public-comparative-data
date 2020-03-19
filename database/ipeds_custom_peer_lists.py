# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, Integer, Date

from .base import Base

class IpedsCustomPeerList(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_custom_peer_lists"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    peer_unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_custom_peer_lists_keys',
                            'unitid',
                            'peer_unitid',
                            'date_key',
                            unique = True), )

    def __init__(self, unitid, peer_unitid, date_key):
        """ method for instantiating object """
        self.unitid = unitid
        self.peer_unitid = peer_unitid
        self.date_key = date_key
    

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'peer_unitid={self.peer_unitid!r}, '
            f'date_key={self.date_key!r})'
        )
