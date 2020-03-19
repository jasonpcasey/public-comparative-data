# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsCharge(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_charges"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    student_residency = Column(String(16), nullable = False)
    charge_type = Column(String(64), nullable = False)
    charge = Column(Numeric, nullable = True)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_charges_keys',
                            'unitid',
                            'date_key',
                            'student_residency',
                            'charge_type',
                            unique = True), )

    def __init__(self, unitid, date_key, student_residency, charge_type, charge):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.student_residency = student_residency
        self.charge_type = charge_type
        self.charge = charge

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'student_residency={self.student_residency!r}, '
            f'charge_type={self.charge_type!r}, '
            f'charge={self.charge!r})'
        )
