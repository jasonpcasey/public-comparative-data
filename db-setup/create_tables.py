# coding=utf-8

from base import Session, engine, Base
from ipeds_custom_peer_lists import IpedsCustomPeerList

Base.metadata.drop_all(bind=engine, checkfirst=True, tables=[IpedsCustomPeerList.__table__])

Base.metadata.create_all(engine)

session = Session()

peers = session.query(IpedsCustomPeerList).all()

for peer in peers:
    print(peer)

session.close()

print("All Done!")
