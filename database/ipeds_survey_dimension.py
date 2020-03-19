# coding=utf-8

from sqlalchemy import Column, String

from .base import Base

class IpedsSurveyDimension(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_survey_dimension"

    """ create columns """
    survey_key = Column(String(3), primary_key = True)
    survey_name = Column(String(255), nullable = False)

    def __init__(self, survey_key, survey_name):
        """ method for instantiating object """
        self.survey_key = survey_key
        self.survey_name = survey_name

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'survey_key={self.survey_key!r}, '
            f'survey_name={self.survey_name!r})'
        )
