from dataclasses import dataclass

@dataclass
class Dude:
    Name: str = 'The Dude'
    Height: float = 6.0

def main():
    dude = Dude('Jeff', 5.96)
    dude2 = Dude('Jeff', 5.96)

    print(dude)
    print(dude.__dict__)
    print(dude == dude2)

if __name__ == '__main__':
    main()