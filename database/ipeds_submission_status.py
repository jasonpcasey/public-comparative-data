# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsSubmissionStatus(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_submission_status"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    survey_key = Column(String(3), ForeignKey('ipeds_survey_dimension.survey_key'), nullable = False)
    parent_child = Column(String(6), nullable = False, default = 'Parent')
    parent_unitid = Column(Integer, nullable = False)
    allocation_factor = Column(Numeric(3,2), nullable = True)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_submission_keys',
                            'unitid',
                            'date_key',
                            'survey_key',
                            unique = True), )

    def __init__(self, unitid, date_key, survey_key, parent_child, parent_unitid, allocation_factor):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.survey_key = survey_key
        self.parent_child = parent_child
        self.parent_unitid = parent_unitid
        self.allocation_factor = allocation_factor

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'survey_key={self.survey_key!r}, '
            f'parent_child={self.parent_child!r}, '
            f'parent_unitid={self.parent_unitid!r}, '
            f'allocation_factor={self.allocation_factor!r})'
        )
