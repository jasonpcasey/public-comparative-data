# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsPellGradRate(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_pell_grad_rates"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    cohort_date = Column(Date, primary_key = True)
    cohort_type = Column(String(64), primary_key = True)
    aid_type = Column(String(64), primary_key = True)
    adjusted_cohort = Column(Integer, default = 0)
    completers_6_years = Column(Integer, default = 0)

    """ method for instantiating object """
    def __init__(self, unitid, date_key, cohort_date, cohort_type, aid_type, adjusted_cohort, completers_6_years):
        self.unitid = unitid
        self.date_key = date_key
        self.cohort_date = cohort_date
        self.cohort_type = cohort_type
        self.aid_type = aid_type
        self.adjusted_cohort = adjusted_cohort
        self.completers_6_years = completers_6_years

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsPellGradRate(unitid={}, date_key={}, "
                "cohort_date={}, cohort_type={}, aid_type = {}, "
                "adjusted_cohort={}, "
                "completers_6_years={})").format(self.unitid,
                                                 self.date_key,
                                                 self.cohort_date,
                                                 self.cohort_type,
                                                 self.aid_type,
                                                 self.adjusted_cohort,
                                                 self.completers_6_years)
