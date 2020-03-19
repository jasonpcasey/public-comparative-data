# coding=utf-8

from sqlalchemy import Column, String

from .base import Base

class NsfHerdFederalAgency(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_herd_federal_agencies"

    """ create columns """
    agency_key = Column(String(3), primary_key = True)
    agency_name = Column(String(64), nullable = False)
    agency_short_name = Column(String(32), nullable = False)
    agency_type = Column(String(16), nullable = False)


    def __init__(self, agency_key, agency_name, agency_short_name,
                 agency_type):
        """ method for instantiating object """
        self.agency_key = agency_key
        self.agency_name = agency_name
        self.agency_short_name = agency_short_name
        self.agency_type = agency_type

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'agency_key={self.agency_key!r}, '
            f'agency_name={self.agency_name!r}, '
            f'agency_short_name={self.agency_short_name!r}, '
            f'agency_type={self.agency_type!r})'
        )
