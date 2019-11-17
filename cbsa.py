# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class Cbsa(Base):
    """ map to a table name in db """
    __tablename__ = "cbsa"

    """ create columns """
    cbsa_id = Column(Integer, primary_key = True)
    cbsa_name = Column(String(255), nullable = False)

    """ method for instantiating object """
    def __init__(self, cbsa_id, cbsa_name):
        self.cbsa_id = cbsa_id
        self.cbsa_name = cbsa_name

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<Cbsa(cbsa_id={}, "
                "cbsa_name={})").format(self.cbsa_id,
                                        self.cbsa_name)
