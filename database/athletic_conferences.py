# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class AthleticConference(Base):
    """ map to a table name in db """
    __tablename__ = "athletic_conferences"

    """ create columns """
    conference_id = Column(Integer, primary_key = True)
    conference_name = Column(String(255), nullable = False)

    def __init__(self, conference_id, conference_name):
        """ method for instantiating object """
        self.conference_id = conference_id
        self.conference_name = conference_name

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'conference_id={self.conference_id!r}, '
            f'conference_name={self.conference_name!r})')
