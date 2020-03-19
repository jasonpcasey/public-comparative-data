# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class NsfHerdAcademicField(Base):
    """ map to a table name in db """
    __tablename__ = "nsf_herd_academic_fields"

    """ create columns """
    academic_field_key = Column(String(3), primary_key = True)
    academic_broad_field_id = Column(String(1), nullable = False)
    academic_field = Column(String(255), nullable = False)
    academic_broad_field = Column(String(255), nullable = False)
    nu_division = Column(String(255), nullable = False)


    def __init__(self, academic_field_key, academic_broad_field_id, academic_field,
                 academic_broad_field, nu_division):
        """ method for instantiating object """
        self.academic_field_key = academic_field_key
        self.academic_broad_field_id = academic_broad_field_id
        self.academic_field = academic_field
        self.academic_broad_field = academic_broad_field
        self.nu_division = nu_division

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'academic_field_key={self.academic_field_key!r}, '
            f'academic_broad_field_id={self.academic_broad_field_id!r}, '
            f'academic_field={self.academic_field!r}, '
            f'academic_broad_field={self.academic_broad_field!r}, '
            f'nu_division={self.nu_division!r})'
        )
