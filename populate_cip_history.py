# coding=utf-8

from database.cip_history import CipCode
from netfile.cip_file import CipFile

import numpy as np
import pandas as pd
from pandas import DataFrame



def main():
    for year in (1985, 1990, 2000, 2010, 2020):
        _file = CipFile(year)
        print(f'{_file.row_count():,} rows were extracted for {year}.')
        _file.write()
        print('\n')

    print('All done.')



if __name__ == '__main__':
    main()