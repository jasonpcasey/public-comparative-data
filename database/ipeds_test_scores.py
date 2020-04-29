# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsTestScore(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_test_scores"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    test_type = Column(String(32), nullable = False)
    subject = Column(String(64), nullable = False)
    count = Column(Integer, nullable = True)
    percentage = Column(Numeric(6, 2), nullable = True)
    percentile_25 = Column(Integer, nullable = True)
    percentile_75 = Column(Integer, nullable = True)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_test_scores_keys',
                            'unitid',
                            'date_key',
                            'test_type',
                            'subject',
                            unique = True), )

    def __init__(self, unitid, date_key, test_type, subject, count, percentage, percentile_25, percentile_75):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.test_type = test_type
        self.subject = subject
        self.count = count
        self.percentage = percentage
        self.percentile_25 = percentile_25
        self.percentile_75 = percentile_75

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'test_type={self.test_type!r}, '
            f'subject={self.subject!r}, '
            f'count={self.count!r}, '
            f'percentage={self.percentage!r}, '
            f'percentile_25={self.percentile_25!r}, '
            f'percentile_75={self.percentile_75!r})'
        )
