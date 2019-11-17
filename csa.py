# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class Csa(Base):
    """ map to a table name in db """
    __tablename__ = "csa"

    """ create columns """
    csa_id = Column(Integer, primary_key = True)
    csa_name = Column(String(255), nullable = False)

    """ method for instantiating object """
    def __init__(self, csa_id, csa_name):
        self.csa_id = csa_id
        self.csa_name = csa_name

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<Csa(csa_id={}, "
                "csa_name={})").format(self.csa_id,
                                       self.csa_name)
