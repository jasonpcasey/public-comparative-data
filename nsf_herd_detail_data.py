# coding=utf-8

from sqlalchemy import Column, String, Integer, Numeric, Date

from base import Base

class NsfHerdDetail(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_herd_detail_data"

    """ create columns """
    inst_id = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    funding_type = Column(String(32), primary_key = True)
    agency_key = Column(String(3), primary_key = True)
    academic_field_key = Column(String(3), primary_key = True)
    ncses_inst_id = Column(String(8), nullable = False)
    unitid = Column(Integer, nullable = False)
    expenditure = Column(Numeric, nullable = False, default=0)


    """ method for instantiating object """
    def __init__(self, inst_id, date_key, funding_type,
                 agency_key, academic_field_key,
                 ncses_inst_id, unitid, expenditure):
        self.inst_id = inst_id,
        self.date_key = date_key,
        self.funding_type = funding_type,
        self.agency_key - agency_key
        self.academic_field_key = academic_field_key
        self.ncses_inst_id = ncses_inst_id
        self.unitid = unitid
        self.expenditure = expenditure

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<NsfHerdDetail(inst_id={}, date_key={}, funding_type={}, "
                "agency_key={}, academic_field_key={}, "
                "ncses_inst_id={}, unitid={}, "
                "expenditure={})").format(self.inst_id,
                                        self.date_key,
                                        self.funding_type,
                                        self.agency_key,
                                        self.academic_field_key,
                                        self.ncses_inst_id,
                                        self.unitid,
                                        self.expenditure)
