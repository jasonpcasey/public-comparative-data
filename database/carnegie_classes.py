# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class CarnegieClass(Base):
    """ map to a table name in db """
    __tablename__ = "carnegie_classes"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    classification_id = Column(String(64), primary_key = True)
    classification = Column(String(500), nullable = False)
    class_code = Column(Integer, nullable = False)
    carnegie_class = Column(String(500), nullable = False)

    def __init__(self, unitid, classification_id, classification, class_code, carnegie_class):
        """ method for instantiating object """
        self.unitid = unitid
        self.classification_id = classification_id
        self.classification = classification_id
        self.class_code = class_code
        self.carnegie_class = carnegie_class

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'classification_id={self.classification_id!r}, '
            f'classification={self.classification!r}, '
            f'class_code={self.class_code!r}, '
            f'carnegie_class={self.carnegie_class!r})'
            )
