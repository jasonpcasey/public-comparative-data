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

    def __init__(self, degree_key, award_level, major_number):
        """ method for instantiating object """
        self.degree_key = degree_key
        self.award_level = award_level
        self.major_number = major_number

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'degree_key={self.degree_key!r}, '
            f'award_level={self.award_level!r}, '
            f'major_number={self.major_number!r})'
        )
