# coding=utf-8

from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

from keyring import get_password
import psycopg2

engine = create_engine(
    f'postgres+psycopg2://{"jasoncasey"}:'
    f'{get_password("localhost", "jasoncasey")}@'
    f'localhost:5432/{"public_comparative_data"}'
)
Session = sessionmaker(bind=engine)

Base = declarative_base()