# coding=utf-8

from sqlalchemy import Column, String, Integer

from base import Base

class NsfHerdAcademicField(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_herd_academic_fields"

    """ create columns """
    academic_field_key = Column(String(3), primary_key = True)
    academic_broad_field_id = Column(String(1), nullable = False)
    academic_field = Column(String(255), nullable = False)
    academic_broad_field = Column(String(255), nullable = False)
    nu_division = Column(String(255), nullable = False)


    """ method for instantiating object """
    def __init__(self, academic_field_key, academic_broad_field_id, academic_field,
                 academic_broad_field, nu_division):
        self.academic_field_key = academic_field_key
        self.academic_broad_field_id = academic_broad_field_id
        self.academic_field = academic_field
        self.academic_broad_field = academic_broad_field
        self.nu_division = nu_division

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ('<NsfHerdAcademicField(academic_field_key={}, '
                'academic_broad_field_id={}, academic_field={}, '
                'academic_broad_field={}, '
                'nu_division={})').format(self.academic_field_key,
                                          self.academic_broad_field_id,
                                          self.academic_field,
                                          self.academic_broad_field,
                                          self.nu_division)
