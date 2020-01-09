# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsPellGradRate(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_pell_grad_rates"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    cohort_date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    cohort_type = Column(String(64), nullable = False)
    aid_type = Column(String(64), nullable = False)
    adjusted_cohort = Column(Integer, nullable = False, default = 0)
    completers_6_years = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_pell_grad_rates_keys',
                            'unitid',
                            'date_key',
                            'cohort_date_key',
                            'cohort_type',
                            'aid_type',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, cohort_date_key, cohort_type, aid_type, adjusted_cohort, completers_6_years):
        self.unitid = unitid
        self.date_key = date_key
        self.cohort_date_key = cohort_date_key
        self.cohort_type = cohort_type
        self.aid_type = aid_type
        self.adjusted_cohort = adjusted_cohort
        self.completers_6_years = completers_6_years

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsPellGradRate(unitid={}, date_key={}, "
                "cohort_date_key={}, cohort_type={}, aid_type = {}, "
                "adjusted_cohort={}, "
                "completers_6_years={})").format(self.unitid,
                                                 self.date_key,
                                                 self.cohort_date_key,
                                                 self.cohort_type,
                                                 self.aid_type,
                                                 self.adjusted_cohort,
                                                 self.completers_6_years)
