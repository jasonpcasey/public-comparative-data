# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class CarnegieClass(Base):
    """ map to a table name in db """
    __tablename__ = "carnegie_classes"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    basic_code = Column(Integer, nullable = False)
    carnegie_class = Column(String(255), nullable = False)

    """ method for instantiating object """
    def __init__(self, unitid, basic_code, carnegie_class):
        self.unitid = unitid
        self.basic_code = basic_code
        self.carnegie_class = carnegie_class

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<CarnegieClass(unitid={}, basic_code={}, "
                "carnegie_class={})").format(self.unitid,
                                     self.basic_code,
                                     self.carnegie_class)
