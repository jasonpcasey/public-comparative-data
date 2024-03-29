# coding=utf-8

from sqlalchemy import Column, String, Numeric, Integer

from .base import Base

class Cip(Base):
    """ map to a table name in db """
    __tablename__ = "ref_cip_hierarchy"

    """ create columns """
    cipcode = Column(String(7), primary_key = True)
    cip6 = Column(Numeric, nullable = False)
    cip6_description = Column(String(500), nullable = False)
    cip4 = Column(Numeric, nullable = False)
    cip4_description = Column(String(500), nullable = False)
    cip2 = Column(Integer, nullable = False)
    cip2_description = Column(String(500), nullable = False)
    latest_version = Column(Integer, nullable = False)

    def __init__(self, cipcode, cip6, cip6_description, cip4, cip4_description, cip2, cip2_description, latest_version):
        """ method for instantiating object """
        self.cipcode = cipcode
        self.cip6 = cip6
        self.cip6_description = cip6_description
        self.cip4 = cip4
        self.cip4_description = cip4_description
        self.cip2 = cip2
        self.cip2_description = cip2_description
        self.latest_version = latest_version

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'cipcode={self.cipcode!r}, '
            f'cip6={self.cip6!r}, '
            f'cip6_description={self.cip6_description!r}, '
            f'cip4={self.cip4!r}, '
            f'cip4_description={self.cip4_description!r}, '
            f'cip2={self.cip2!r}, '
            f'cip2_description={self.cip2_description!r}'
            f'latest_version={self.latest_version})'
            )
