# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsRetention(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_retention"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    cohort_date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    time_status = Column(String(64), nullable = False)
    adjusted_cohort = Column(Integer, nullable = False, default = 0)
    enrolled = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_retention_keys',
                            'unitid',
                            'date_key',
                            'cohort_date_key',
                            'time_status',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, cohort_date_key, time_status, aid_type, adjusted_cohort, enrolled):
        self.unitid = unitid
        self.date_key = date_key
        self.cohort_date_key = cohort_date_key
        self.time_status = time_status
        self.adjusted_cohort = adjusted_cohort
        self.enrolled = enrolled

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsRetention(unitid={}, date_key={}, "
                "cohort_date_key={}, time_status={}, "
                "adjusted_cohort={}, "
                "enrolled={})").format(self.unitid,
                                       self.date_key,
                                       self.cohort_date_key,
                                       self.time_status,
                                       self.adjusted_cohort,
                                       self.enrolled)
