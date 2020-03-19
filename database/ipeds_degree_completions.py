# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsDegreeCompletion(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_degree_completions"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    degree_key = Column(String(3), ForeignKey('ipeds_degree_types.degree_key'), nullable = False)
    cipcode = Column(String(7), ForeignKey('ref_cip_hierarchy.cipcode'), nullable = False)
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

    def __init__(self, unitid, date_key, degree_key, cipcode, demographic_key, awards):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.degree_key = degree_key
        self.cipcode = cipcode
        self.demographic_key = demographic_key
        self.awards = awards

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'degree_key={self.degree_key!r}, '
            f'cipcode={self.cipcode!r}, '
            f'demographic_key={self.demographic_key!r}, '
            f'awards={self.awards!r})'
        )
