# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from base import Base

class IpedsStudentAidByIncome(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_student_aid_by_income"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    income_band = Column(String(32), nullable = False)
    count = Column(Integer, nullable = False, default = 0)
    grant_recipients = Column(Integer, nullable = False, default = 0)
    total_amount = Column(Integer, nullable = False, default = 0)
    average_amount = Column(Integer, nullable = False, default = 0)
    average_net_price = Column(Integer, nullable = False, default = 0)


    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_student_aid_by_income_keys',
                            'unitid',
                            'date_key',
                            'income_band',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, income_band, count,
                 grant_recipients, total_amount, average_amount, 
                 average_net_price):
        self.unitid = unitid
        self.date_key = date_key
        self.income_band = income_band
        self.count = count
        self.grant_recipients = grant_recipients
        self.total_amount = total_amount
        self.average_amount = average_amount
        self.average_net_price = average_net_price


    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsStudentAidByIncome(unitid={}, date_key={}, "
                "income_band={}, count={}, "
                "grant_recipients={}, total_amount={}, average_amount={}, "
                "average_net_price={})").format(self.unitid,
                                                self.date_key,
                                                self.income_band,
                                                self.count,
                                                self.grant_recipients,
                                                self.total_amount,
                                                self.average_amount,
                                                self.average_net_price)
