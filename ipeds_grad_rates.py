# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from base import Base

class IpedsGraduationRate(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_grad_rates"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    cohort_date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    demographic_key = Column(String(5), ForeignKey('ipeds_demographic_dimension.demographic_key'), nullable = False)
    entering_cohort = Column(Integer, nullable = False, default = 0)
    exclusions = Column(Integer, nullable = False, default = 0)
    adjusted_cohort = Column(Integer, nullable = False, default = 0)
    completers_4_years = Column(Integer, nullable = False, default = 0)
    completers_5_years = Column(Integer, nullable = False, default = 0)
    completers_6_years = Column(Integer, nullable = False, default = 0)
    enrolled= Column(Integer, nullable = False, default = 0)
    transfers = Column(Integer, nullable = False, default = 0)
    no_longer_enrolled = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_grade_rates_keys',
                            'unitid',
                            'date_key',
                            'cohort_date_key',
                            'demographic_key',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, cohort_date_key, demographic_key, entering_cohort, exclusions,
                 adjusted_cohort, completers_4_years, completers_5_years, completers_6_years,
                 enrolled, transfers, no_longer_enrolled):
        self.unitid = unitid
        self.date_key = date_key
        self.cohort_date_key = cohort_date_key
        self.demographic_key = demographic_key
        self.entering_cohort = entering_cohort
        self.exclusions = exclusions
        self.adjusted_cohort = adjusted_cohort
        self.completers_4_years = completers_4_years
        self.completers_5_years = completers_5_years
        self.completers_6_years = completers_6_years
        self.enrolled = enrolled
        self.transfers = transfers
        self.no_longer_enrolled = no_longer_enrolled

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsGraduationRate(unitid={}, date_key={}, "
                "cohort_date_key = {}, demographic_key={}, "
                "entering_cohort ={ }, exclusions = {}, "
                "adjusted_cohort = {}, completers_4_years = {}, "
                "completers_5_years = {}, completers_6_years = {}, "
                "enrolled = {}, transfers = {}, "
                "no_longer_enrolled = {})").format(self.unitid,
                                                   self.date_key,
                                                   self.cohort_date_key,
                                                   self.demographic_key,
                                                   self.entering_cohort,
                                                   self.exclusions,
                                                   self.adjusted_cohort,
                                                   self.completers_4_years,
                                                   self.completers_5_years,
                                                   self.completers_6_years,
                                                   self.enrolled,
                                                   self.transfers,
                                                   self.no_longer_enrolled)
