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

    def __init__(self, demographic_key, sex, race_ethnicity):
        """ method for instantiating object """
        self.demographic_key
        self.sex = sex
        self.race_ethnicity = race_ethnicity

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'demographic_key={self.demographic_key!r}, '
            f'sex={self.sex!r}, '
            f'race_ethnicity={self.race_ethnicity!r})'
        )
