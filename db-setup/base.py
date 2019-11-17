# coding=utf-8

from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

import keyring
import psycopg2

engine = create_engine(r"postgres+psycopg2://{}:{}@localhost:5432/{}".format("jason",
                                                                             keyring.get_password("localhost", "jason"),
                                                                             "public_comparative_data"))
Session = sessionmaker(bind=engine)

Base = declarative_base()