# coding=utf-8

from sqlalchemy import Column, Index, ForeignKeyConstraint, String, Integer, Numeric, Date

from .base import Base

class NsfHerdDetail(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_herd_detail_data"

    """ create columns """
    id = Column(Integer, primary_key = True)
    inst_id = Column(Integer, nullable = False)
    date_key = Column(Date, nullable = False)
    funding_type = Column(String(32), nullable = False)
    agency_key = Column(String(3), nullable = False)
    academic_field_key = Column(String(3), nullable = False)
    ncses_inst_id = Column(String(8), nullable = False, default='XXXXXXXX')
    unitid = Column(Integer, nullable = False, default=-1)
    expenditure = Column(Numeric, nullable = False, default=0)

    """ set unique index for key columns """
    __table_args__ = (ForeignKeyConstraint(['date_key'], ['date_dimension.date_key']),
                      ForeignKeyConstraint(['agency_key'], ['nsf_herd_federal_agencies.agency_key']),
                      ForeignKeyConstraint(['academic_field_key'], ['nsf_herd_academic_fields.academic_field_key']),
                      Index('idx_nsf_detail_keys',
                            'inst_id',
                            'date_key',
                            'agency_key',
                            'academic_field_key',
                            unique = True), )


    def __init__(self, inst_id, date_key, funding_type,
                 agency_key, academic_field_key,
                 ncses_inst_id, unitid, expenditure):
        """ method for instantiating object """
        self.inst_id = inst_id,
        self.date_key = date_key,
        self.funding_type = funding_type,
        self.agency_key - agency_key
        self.academic_field_key = academic_field_key
        self.ncses_inst_id = ncses_inst_id
        self.unitid = unitid
        self.expenditure = expenditure

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'inst_id={self.inst_id!r}, '
            f'date_key={self.date_key!r}, '
            f'funding_type={self.funding_type!r}, '
            f'agency_key={self.agency_key!r}, '
            f'academic_field_key={self.academic_field_key!r}, '
            f'ncses_inst_id={self.ncses_inst_id!r}, '
            f'unitid={self.unitid!r}, '
            f'expenditure={self.expenditure!r})'
        )
