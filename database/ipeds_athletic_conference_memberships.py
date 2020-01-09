# coding=utf-8

from sqlalchemy import Column, Index, ForeignKey, Date, String, Integer

from .base import Base

class IpedsAthleticConferenceMembership(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_athletic_conference_memberships"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    conference_id = Column(Integer, nullable = False)
    sport_name = Column(String(255), nullable = False)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_average_tuition_keys',
                            'unitid',
                            'date_key',
                            'conference_id',
                            'sport_name',
                            unique = True), )

    """ method for instantiating object """
    def __init__(self, unitid, date_key, conference_id, sport_name):
        self.unitid = unitid
        self.conference_id = conference_id
        self.date_key = date_key
        self.sport_name = sport_name

    """ method used to produce print-friendly output """
    def __repr__(self):
        return ("<IpedsAthleticConferenceMembership(unitid={}, date_key={}, conference_id={}, "
                "sport_name={})").format(self.unitid,
                                         self.date_key,
                                         self.conference_id,
                                         self.sport_name)
