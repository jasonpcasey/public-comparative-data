# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class CipCode(Base):
    """ map to a table name in db """
    __tablename__ = "ref_cip_history"

    """ create columns """
    cipcode = Column(String(7), primary_key = True)
    version = Column(Integer, primary_key = True)
    title = Column(String(500), nullable = False)
    family = Column(String(2), nullable = False)

    def __init__(
        self,
        cipcode,
        version,
        title,
        family = '99'):
        """ method for instantiating object """
        self.cipcode = cipcode
        self.version = version
        self.title = title
        self.family = family

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'cipcode={self.cipcode!r}, '
            f'version={self.version!r}, '
            f'title={self.title!r}, '
            f'family={self.family!r})'
            )
