# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsAverageTuition(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_average_tuition"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    student_career = Column(String(16), nullable = False)
    student_residency = Column(String(16), nullable = False)
    average_tuition = Column(Numeric, nullable = True)
    per_credit_hour_charge = Column(Numeric, nullable = True)
    required_fees = Column(Numeric, nullable = True)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_average_tuition_keys',
                            'unitid',
                            'date_key',
                            'student_career',
                            'student_residency',
                            unique = True), )

    def __init__(self, unitid, date_key, student_career, student_residency, average_tuition, per_credit_hour_charge, required_fees):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.student_career = student_career
        self.student_residency = student_residency
        self.average_tuition = average_tuition
        self.per_credit_hour_charge = per_credit_hour_charge
        self.required_fees= required_fees

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'student_career={self.student_career!r}, '
            f'student_residency={self.student_residency!r}, '
            f'average_tuition={self.average_tuition!r}, '
            f'per_credit_hour_charge={self.per_credit_hour_charge!r}, '
            f'required_fees={self.required_fees!r})'
        )