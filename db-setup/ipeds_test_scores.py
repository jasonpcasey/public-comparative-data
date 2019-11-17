# coding=utf-8

from sqlalchemy import Column, String, Integer, Date, Numeric

from base import Base

class IpedsTestScore(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_test_scores"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    date_key = Column(Date, primary_key = True)
    test_type = Column(String(32), primary_key = True)
    subject = Column(String(64), primary_key = True)
    count = Column(Integer, default = 0)
    percentage = Column(Numeric, default = 0)
    percentile_25 = Column(Integer, default = 0)
    percentile_75 = Column(Integer, default = 0)

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
