from dataclasses import dataclass
from database.csa import Csa

@dataclass
class Dude:
    Name: str = 'The Dude'
    Height: float = 6.0

    def to_dict(self):
        return self.__dict__

@dataclass
class MyFile:
    _uri = 'https://someplace.com'

    Name: str = 'This file'

class MySpecificFile(MyFile):
    def __init__(self, Name: str, Filename: str = 'filename.ext'):
        super().__init__(Name)
        self.url = __class__._uri + '/' + Filename

def main():
    dude = Dude('Jeff', 5.96)
    dude2 = Dude('Jeff', 5.96)
    csa = Csa(-1, 'Timbuktu')
    place = MySpecificFile(Name = 'George', Filename = 'myfile.doc')

    assert dude == dude2

    # print(dude)
    # print(dude.to_dict())
    # print(dude == dude2)
    # print(csa.__class__.__tablename__)
    # print(csa.__class__.csa_name)
    # print(csa.__dict__)
    print(place)
    print(place.url)

if __name__ == '__main__':
    main()