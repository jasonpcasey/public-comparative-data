# coding=utf-8

from sqlalchemy import Column, String, Integer, Boolean, Date

from .base import Base

class TableEntry(Base):
    """ map to a table name in db """
    __tablename__ = None

    @property
    def TableName(self):
        return self.__tablename__
    
    @property
    def Table(self):
        return self.__table__
