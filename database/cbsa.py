# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class Cbsa(Base):
    """ map to a table name in db """
    __tablename__ = "cbsa"

    """ create columns """
    cbsa_id = Column(Integer, primary_key = True)
    cbsa_name = Column(String(255), nullable = False)

    def __init__(self, cbsa_id, cbsa_name):
        """ method for instantiating object """
        self.cbsa_id = cbsa_id
        self.cbsa_name = cbsa_name

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'cbsa_id={self.cbsa_id!r}, '
            f'cbsa_name={self.cbsa_name!r})'
            )
