# coding=utf-8

from sqlalchemy import Column, String

from .base import Base

class IpedsDemographicDimension(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_demographic_dimension"

    """ create columns """
    demographic_key = Column(String(5), primary_key = True)
    sex = Column(String(7), nullable = False)
    race_ethnicity = Column(String(64), nullable = False)

    """ method for instantiating object """
    def __init__(self, demographic_key, sex, race_ethnicity):
        self.demographic_key
        self.sex = sex
        self.race_ethnicity = race_ethnicity

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsDemographicDimension(demographic_key={}, "
                "sex={}, race_ethnicity={})").format(self.demographic_key,
                                                     self.sex,
                                                     self.race_ethnicity)
