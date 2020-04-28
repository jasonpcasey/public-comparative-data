from netfile.fall_enrollment_by_residency_file import FallEnrollmentByResidencyFile

import argparse

from database.ipeds_fall_enrollment_by_residency import IpedsFallEnrollmentByResidency

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--first", default=1994, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()

def main():
    for year in range(args.first, args.last + 1):
        if year >= 2000 or (year < 2000 and year % 2 == 0):
            _file = FallEnrollmentByResidencyFile(year)
            print(f'{_file.row_count():,} rows were extracted for {_file.year}.')
            _file.write()
            print('\n')
        else:
            pass

    print('All done.')

if __name__ == '__main__':
    main()