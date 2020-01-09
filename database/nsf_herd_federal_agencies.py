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


    """ method for instantiating object """
    def __init__(self, agency_key, agency_name, agency_short_name,
                 agency_type):
        self.agency_key = agency_key
        self.agency_name = agency_name
        self.agency_short_name = agency_short_name
        self.agency_type = agency_type

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ('<NsfHerdFederalAgency(agency_key={}, '
                'agency_name={}, agency_short_name={}, '
                'agency_type={})').format(self.agency_key,
                                          self.agency_name,
                                          self.agency_short_name,
                                          self.agency_type)
