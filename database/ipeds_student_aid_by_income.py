# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

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

    def __init__(self, unitid, date_key, income_band, count,
                 grant_recipients, total_amount, average_amount, 
                 average_net_price):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.income_band = income_band
        self.count = count
        self.grant_recipients = grant_recipients
        self.total_amount = total_amount
        self.average_amount = average_amount
        self.average_net_price = average_net_price


    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'income_band={self.income_band!r}, '
            f'count={self.count!r}, '
            f'grant_recipients={self.grant_recipients!r}, '
            f'total_amount={self.total_amount!r}, '
            f'average_amount={self.average_amount!r}, '
            f'average_net_price={self.average_net_price!r})'
        )
