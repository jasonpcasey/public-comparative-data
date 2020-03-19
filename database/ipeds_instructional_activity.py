# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsInstructionalActivity(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_instructional_activity"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    career_level = Column(String(16), nullable = False)
    activity_type = Column(String(64), nullable = False)
    credit_hours = Column(Numeric, nullable = False, default = 0)
    clock_hours = Column(Numeric, nullable = False,default = 0)
    estimated_fte = Column(Numeric, nullable = False,default = 0)
    reported_fte = Column(Numeric, nullable = False,default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_instructional_activity_keys',
                            'unitid',
                            'date_key',
                            'career_level',
                            'activity_type',
                            unique = True), )

    def __init__(self, unitid, date_key, career_level, activity_type, credit_hours, clock_hours, estimated_fte, reported_fte):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.career_level = career_level
        self.activity_type = activity_type
        self.credit_hours = credit_hours
        self.clock_hours = clock_hours
        self.estimated_fte = estimated_fte
        self.reported_fte = reported_fte

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'career_level={self.career_level!r}, '
            f'activity_type={self.activity_type!r}, '
            f'credit_hours={self.credit_hours!r}, '
            f'clock_hours={self.clock_hours!r}, '
            f'estimated_fte={self.estimated_fte!r}, '
            f'reported_fte={self.reported_fte!r})'
        )
