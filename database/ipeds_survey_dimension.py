# coding=utf-8

from sqlalchemy import Column, String

from .base import Base

class IpedsSurveyDimension(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_survey_dimension"

    """ create columns """
    survey_key = Column(String(3), primary_key = True)
    survey_name = Column(String(255), nullable = False)

    """ method for instantiating object """
    def __init__(self, survey_key, survey_name):
        self.survey_key = survey_key
        self.survey_name = survey_name

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("IpedsSurveyDimension(survey_key={}, "
                "survey_name={})").format(self.survey_key,
                                          self.survey_name)
