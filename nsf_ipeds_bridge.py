# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class NsfIpedsBridge(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_ipeds_bridge"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid_xwalk = Column(Integer, nullable = False)
    inst_id = Column(Integer, nullable = False)
    ncses_inst_id = Column(Integer, nullable = False)
    inst_name_long = Column(String(132), nullable = False)
    inst_state_code = Column(String(2), nullable = False)
    med_sch_flag = Column(Integer, nullable = False)
    last_reported_year = Column(Integer, nullable = False)

    """ method for instantiating object """
    def __init__(self, unitid_xwalk, inst_id, ncses_inst_id, inst_name_long,
                 inst_state_code, med_sch_flag, last_reported_year):
        self.unitid_xwalk - unitid_xwalk
        self.inst_id = inst_id
        self.ncses_inst_id = ncses_inst_id
        self.inst_name_long = inst_name_long
        self.inst_state_code = inst_state_code
        self.med_sch_flag = med_sch_flag
        self.last_reported_year = last_reported_year

    """ method used to produce print-friendly output """
    def __repr__(self):
        return "<NsfIpedsBridge(unitid_xwalk={}, inst_id={}, ncses_inst_id={}, \
                inst_name_long={} inst_state_code={}, med_sch_flag={}, \
                last_reported_year={})".format(self.unitid_xwalk,
                                               self.inst_id,
                                               self.ncses_inst_id,
                                               self.inst_name_long,
                                               self.inst_state_code,
                                               self.med_sch_flag,
                                               self.last_reported_year)
