# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class AthleticConference(Base):
    """ map to a table name in db """
    __tablename__ = "athletic_conferences"

    """ create columns """
    conference_id = Column(Integer, primary_key = True)
    conference_name = Column(String(255), nullable = False)

    """ method for instantiating object """
    def __init__(self, conference_id, conference_name):
        self.conference_id = conference_id
        self.conference_name = conference_name

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<AthleticConference(conference_id={}, "
                "conference_name={})").format(self.conference_id,
                                              self.conference_name)