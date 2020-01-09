# coding=utf-8

from sqlalchemy import Column, String

from .base import Base

class IpedsDegreeType(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_degree_types"

    """ create columns """
    degree_key = Column(String(3), primary_key = True)
    award_level = Column(String(132), nullable = False)
    major_number = Column(String(20), nullable = False)

    """ method for instantiating object """
    def __init__(self, degree_key, award_level, major_number):
        self.degree_key = degree_key
        self.award_level = award_level
        self.major_number = major_number

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsDegreeType(degree_key={}, "
                "award_level={}, major_number={})").format(self.degree_key,
                                                           self.award_level,
                                                           self.major_number)
