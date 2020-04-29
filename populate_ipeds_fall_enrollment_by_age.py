from netfile.fall_enrollment_by_age_file import FallEnrollmentByAgeFile

import argparse

from database.ipeds_fall_enrollment_by_age import IpedsFallEnrollmentByAge

# get command line arguments
parser = argparse.ArgumentParser(description='Transfers IPEDS Fall Enrollment by Age for specified years to database.')
parser.add_argument("--first", default=1990, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()

def main():
    for year in range(args.first, args.last + 1):
        if year >= 2001 or (year < 2001 and year % 2 == 1):
            _file = FallEnrollmentByAgeFile(year)
            print(f'{_file.row_count():,} rows were extracted for {_file.year}.')
            _file.write()
            print('\n')
        else:
            pass

    print('All done.')

if __name__ == '__main__':
    main()