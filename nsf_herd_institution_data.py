# coding=utf-8

from sqlalchemy import Column, Index, ForeignKey, String, Integer, Date, Boolean, BigInteger

from base import Base

class NsfHerdInstitution(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_herd_institution_data"

    """ create columns """
    id = Column(Integer, primary_key = True)
    inst_id = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    unitid = Column(Integer, nullable = True)
    ncses_inst_id = Column(String(10), nullable = True)
    institution_name = Column(String(255), nullable = False)
    state_fips = Column(Integer, ForeignKey('states.fips'), nullable = False)
    control = Column(String(32), nullable = False)
    academic_institution = Column(Boolean, nullable = False, default=0)
    medical_school_flag = Column(Boolean, nullable = False, default=0)
    federal_government = Column(BigInteger, nullable = False, default=0)
    state_and_local_government = Column(BigInteger, nullable = False, default=0)
    business = Column(BigInteger, nullable = False, default=0)
    nonprofit_organizations = Column(BigInteger, nullable = False, default=0)
    institutional_funds = Column(BigInteger, nullable = False, default=0)
    other_sources = Column(BigInteger, nullable = False, default=0)
    total_rd_expenses = Column(BigInteger, nullable = False, default=0)
    medical_school_expenses = Column(BigInteger, nullable = False, default=0)
    non_medical_rd = Column(BigInteger, nullable = False, default=0)
    arra_funds = Column(BigInteger, nullable = False, default=0)
    
    """ Unique index constraint """                  
    __table_args__ = (Index('idx_nsf_institution_keys',
                            'inst_id',
                            'date_key',
                            unique = True), )



    """ method for instantiating object """
    def __init__(self, inst_id, date_key, unitid, ncses_inst_id, institution_name, state_fips,
                 control, academic_institution, medical_school_flag, federal_government,
                 state_and_local_government, business, nonprofit_organizations, institutional_funds,
                 other_sources, total_rd_expenses, medical_school_expenses, non_medical_rd, arra_funds):
        self.inst_id = inst_id
        self.date_key = date_key
        self.unitid = unitid
        self.ncses_inst_id = ncses_inst_id
        self.institution_name = institution_name
        self.state_fips = state_fips
        self.control = control
        self.academic_institution = academic_institution
        self.medical_school_flag = medical_school_flag
        self.federal_government = federal_government
        self.state_and_local_government = state_and_local_government
        self.business = business
        self.nonprofit_organizations = nonprofit_organizations
        self.institutional_funds = institutional_funds
        self.other_sources = other_sources
        self.total_rd_expenses = total_rd_expenses
        self.medical_school_expenses = medical_school_expenses
        self.non_medical_rd = non_medical_rd
        self.arra_funds = arra_funds


    """ method used to produce print-friendly output """
    def __repr__(self):
        return ('<NsfHerdInstitution(inst_id={}, date_key={}, unitid={}, ncses_inst_id={}, '
                'institution_name={}, state_fips={}, control={}, academic_institution={}, '
                'medical_school_flag={}, federal_government={}, state_and_local_government={}, '
                'business={}, nonprofit_organizations={}, institutional_funds={}, '
                'other_sources={}, total_rd_expenses={}, medical_school_expenses={}, '
                'non_medical_rd={}, arra_funds={})').format(self.inst_id,
                                             self.date_key,
                                             self.unitid,
                                             self.ncses_inst_id,
                                             self.institution_name,
                                             self.state_fips,
                                             self.control,
                                             self.academic_institution,
                                             self.medical_school_flag,
                                             self.federal_government,
                                             self.state_and_local_government,
                                             self.business,
                                             self.nonprofit_organizations,
                                             self.institutional_funds,
                                             self.other_sources,
                                             self.total_rd_expenses,
                                             self.medical_school_expenses,
                                             self.non_medical_rd,
                                             self.arra_funds)
