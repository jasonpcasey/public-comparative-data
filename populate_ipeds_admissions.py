from netfile.admissions_file import AdmissionsFile

import argparse

# from database.date_dimension import DateRow
# from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_admissions import IpedsAdmissions

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--first", default=2001, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()

def main():
    for year in range(args.first, args.last + 1):
        _file = AdmissionsFile(year)
        print(f'{_file.row_count():,} rows were extracted for {_file.year}.')
        _file.write()
        print('\n')

    print('All done.')

if __name__ == '__main__':
    main()