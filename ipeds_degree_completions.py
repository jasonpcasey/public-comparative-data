# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from base import Base

class IpedsDegreeCompletion(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_degree_completions"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    degree_key = Column(String(3), ForeignKey('ipeds_degree_types.degree_key'), nullable = False)
    cipcode = Column(String(7), ForeignKey('cip_hierarchy.cipcode'), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    awards = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_degree_completions_keys',
                            'unitid',
                            'date_key',
                            'degree_key',
                            'cipcode',
                            'demographic_key',
                            unique = True), )

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
