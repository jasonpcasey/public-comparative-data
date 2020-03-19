# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsAdmissions(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_admissions"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    applications = Column(Numeric, nullable = False, default = 0)
    admissions = Column(Numeric, nullable = False, default = 0)
    enrolled = Column(Numeric, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_admissions_keys',
                            'unitid',
                            'date_key',
                            'demographic_key',
                            unique = True), )

    def __init__(self, unitid, date_key, demographic_key, applications, admissions, enrolled):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.demographic_key = demographic_key
        self.applications = applications
        self.admissions = admissions
        self.enrolled = enrolled

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'demographic_key={self.demographic_key!r}, '
            f'applications={self.applications!r}, '
            f'admissions={self.admissions!r}, '
            f'enrolled={self.enrolled!r})')

    def to_dict(self):
        d = dict()
        d['unitid'] = self.unitid
        d['date_key'] = self.date_key
        d['demographic_key'] = self.demographic_key
        d['applications'] = self.applications
        d['admissions'] = self.admissions
        d['enrolled'] = self.enrolled
        return (d)
