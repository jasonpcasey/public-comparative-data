from netfile.retention_file import RetentionFile

import argparse

# get command line arguments
parser = argparse.ArgumentParser(description='Transfers IPEDS Retention (D) for specified years to database.')
parser.add_argument("--first", default=2007, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()

def main():
    for year in range(args.first, args.last + 1):
        _file = RetentionFile(year)
        print(f'{_file.row_count():,} rows were extracted for {_file.year}.')
        _file.write()
        print('\n')

    print('All done.')

if __name__ == '__main__':
    main()