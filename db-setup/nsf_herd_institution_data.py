# coding=utf-8

from sqlalchemy import Column, String, Integer, Numeric, Date

from base import Base

class NsfHerdInstitution(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_herd_institution_data"

    """ create columns """
    inst_id = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    med_sch_flag = Column(Integer, nullable = False, default=0)
    federal_government = Column(Numeric, nullable = False, default=0)
    state_and_local_government = Column(Numeric, nullable = False, default=0)
    business = Column(Numeric, nullable = False, default=0)
    nonprofit_organizations = Column(Numeric, nullable = False, default=0)
    institutional_funds = Column(Numeric, nullable = False, default=0)
    other_sources = Column(Numeric, nullable = False, default=0)
    total_rd_expenses = Column(Numeric, nullable = False, default=0)
    medical_school_expenses = Column(Numeric, nullable = False, default=0)
    non_medical_rd = Column(Numeric, nullable = False, default=0)



    """ method for instantiating object """
    def __init__(self, inst_id, date_key, med_sch_flag, federal_government, state_and_local_government,
    business, nonprofit_organizations, institutional_funds, other_sources, total_rd_expenses,
    medical_school_expenses, non_medical_rd):
        self.inst_id = inst_id
        self.date_key = date_key
        self.med_sch_flag = med_sch_flag
        self.federal_government = federal_government
        self.state_and_local_government = state_and_local_government
        self.business = business
        self.nonprofit_organizations = nonprofit_organizations
        self.institutional_funds = institutional_funds
        self.other_sources = other_sources
        self.total_rd_expenses = total_rd_expenses
        self.medical_school_expenses = medical_school_expenses
        self.non_medical_rd = non_medical_rd


    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<NsfHerdInstitution(inst_id={}, date_key={}, med_sch_flag={}, "
                "federal_government={}, state_and_local_government={}, "
                "business={}, nonprofit_organizations={}, institutional_funds={}, "
                "other_sources={}, total_rd_expenses={}, medical_school_expenses={}, "
                "non_medical_rd={})").format(self.inst_id,
                                             self.date_key,
                                             self.med_sc_flag,
                                             self.federal_government,
                                             self.state_and_local_government,
                                             self.business,
                                             self.nonprofit_organizations,
                                             self.institutional_funds,
                                             self.other_sources,
                                             self.total_rd_expenses,
                                             self.medical_school_expenses,
                                             self.non_medical_rd)
