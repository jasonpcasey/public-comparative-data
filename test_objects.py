from dataclasses import dataclass

@dataclass
class Dude:
    Name: str = 'The Dude'
    Height: float = 6.0

    def to_dict(self):
        return self.__dict__

def main():
    dude = Dude('Jeff', 5.96)
    dude2 = Dude('Jeff', 5.96)

    print(dude)
    print(dude.to_dict())
    print(dude == dude2)

if __name__ == '__main__':
    main()