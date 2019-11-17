# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsDegreeCompletion(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_degree_completions"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    degree_key = Column(String(3), primary_key = True)
    cipcode = Column(String(7), nullable = False)
    demographic_key = Column(String(5), primary_key = True)
    awards = Column(Integer, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, degree_key, cipcode, demographic_key, awards):
        self.unitid = unitid
        self.date_key = date_key
        self.degree_key = degree_key
        self.cipcode = cipcode
        self.demographic_key = demographic_key
        self.awards = awards

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsDegreeCompletion(unitid={}, date_key={}, "
                "degree_key={}, cipcode={}, demographic_key={}, "
                "awards={})").format(self.unitid,
                                     self.date_key,
                                     self.degree_key,
                                     self.cipcode,
                                     self.demographic_key,
                                     self.awards)
