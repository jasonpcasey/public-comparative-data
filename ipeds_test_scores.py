# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from base import Base

class IpedsTestScore(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_test_scores"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    test_type = Column(String(32), nullable = False)
    subject = Column(String(64), nullable = False)
    count = Column(Integer, nullable = False, default = 0)
    percentage = Column(Numeric, nullable = False, default = 0)
    percentile_25 = Column(Integer, nullable = False, default = 0)
    percentile_75 = Column(Integer, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_test_scores_keys',
                            'unitid',
                            'date_key',
                            'test_type',
                            'subject',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, test_type, subject, count, percentage, percentile_25, percentile_75):
        self.unitid = unitid
        self.date_key = date_key
        self.test_type = test_type
        self.subject = subject
        self.count = count
        self.percentage = percentage
        self.percentile_25 = percentile_25
        self.percentile_75 = percentile_75

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsTestScore(unitid={}, date_key={}, "
                "test_type={}, subject={}, count={}, "
                "percentage={}, percentile_25={}, "
                "percentile_75={})").format(self.unitid,
                                            self.date_key,
                                            self.test_type,
                                            self.subject,
                                            self.count,
                                            self.percentage,
                                            self.percentile_25,
                                            self.percentile_75)
