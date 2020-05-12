#!/usr/bin/env python3
# coding=utf-8

from netfile.ipeds_tuition_file import IpedsTuitionFile

import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.ipeds_average_tuition import IpedsAverageTuition

# get command line arguments
parser = argparse.ArgumentParser(description='Transfers IPEDS Average Tuition for specified years to database.')
parser.add_argument("--first", default=2000, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()


def main():
    for year in range(args.first, args.last + 1):
        _file = IpedsTuitionFile(year)
        print(f'{_file.row_count():,} rows were extracted for {_file.year}.')
        _file.write()
        print('\n')

    print('All done.')

if __name__ == '__main__':
    main()