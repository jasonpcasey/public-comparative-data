# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class Csa(Base):
    """ map to a table name in db """
    __tablename__ = "csa"

    """ create columns """
    csa_id = Column(Integer, primary_key = True)
    csa_name = Column(String(255), nullable = False)

    def __init__(self, csa_id, csa_name):
        """ method for instantiating object """
        self.csa_id = csa_id
        self.csa_name = csa_name

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'csa_id={self.csa_id!r}, '
            f'csa_name={self.csa_name!r})'
        )
