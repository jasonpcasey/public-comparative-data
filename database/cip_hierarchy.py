# coding=utf-8

from sqlalchemy import Column, String, Numeric, Integer

from .base import Base

class Cip(Base):
    """ map to a table name in db """
    __tablename__ = "cip_hierarchy"

    """ create columns """
    cipcode = Column(String(7), primary_key = True)
    cip6 = Column(Numeric, nullable = False)
    cip6_description = Column(String(132), nullable = False)
    cip4 = Column(Numeric, nullable = False)
    cip4_description = Column(String(132), nullable = False)
    cip2 = Column(Integer, nullable = False)
    cip2_description = Column(String(132), nullable = False)

    """ method for instantiating object """
    def __init__(self, cipcode, cip6, cip6_description, cip4, cip4_description, cip2, cip2_description):
        self.cipcode = cipcode
        self.cip6 = cip6
        self.cip6_description = cip6_description
        self.cip4 = cip4
        self.cip4_description = cip4_description
        self.cip2 = cip2
        self.cip2_description = cip2_description

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<Cip(cipcode={}, cip6={}, "
                "cip6_description={}, cip4={}, "
                "cip4_description={}, cip2={}, "
                "cip2_description={})").format(self.cipcode,
                                               self.cip6,
                                               self.cip6_description,
                                               self.cip4,
                                               self.cip4_description,
                                               self.cip2,
                                               self.cip2_description)
