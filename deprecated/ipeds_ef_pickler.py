# coding=utf-8

import pickle
import pandas as pd
import numpy as np
from user_functions import net_load_data
import pathlib

first_year = 1990
last_year = 2018

def ipeds_pickle(url, filespec, dtypes = 'object'):
    """ download ipeds data file at url and dump to pickle at filespec
        setting column name to lower and dropping imputation fields """
    print(f'\tReading {url}...', end='', flush=True)
    df = net_load_data(url, types = dtypes)
    df.columns = df.columns.str.lower()
    keepers = [col for col in df if not col.startswith('x')]
    df = df[keepers]

    with open(filespec, 'wb') as f:
        pickle.dump(df, f, pickle.HIGHEST_PROTOCOL)
    
    print('DONE.\n')

for year in range(first_year, last_year + 1):
    print(f'Downloading data for {year}:')
    if (year == 1990):
        spec = f'https://nces.ed.gov/ipeds/datacenter/data/EF{str(year)[2:]}_A.zip'
    elif (year > 1990 and year <= 1993):
        spec = f'https://nces.ed.gov/ipeds/datacenter/data/EF{year}_A.zip'
    elif (year == 1994):
        spec = f'https://nces.ed.gov/ipeds/datacenter/data/EF{year}_ANR.zip'
    elif (year > 1994 and year <= 1999):
        spec = f'https://nces.ed.gov/ipeds/datacenter/data/EF{str(year)[2:]}_ANR.zip'
    else:
        spec = f'https://nces.ed.gov/ipeds/datacenter/data/EF{year}A.zip'

    try:
        # read hd
        ipeds_pickle(spec,
                     f'{pathlib.Path.cwd()}/data/ipeds_ef_{year}.pickle',
                     dtypes = {
                         'UNITID': np.int32,
                         'EFALEVEL': np.int32,
                         'LINE' : np.int32,
                         'EFRACE01' : np.float32,
                         'EFRACE02' : np.float32,
                         'EFRACE03' : np.float32,
                         'EFRACE04' : np.float32,
                         'EFRACE05' : np.float32,
                         'EFRACE06' : np.float32,
                         'EFRACE07' : np.float32,
                         'EFRACE08' : np.float32,
                         'EFRACE09' : np.float32,
                         'EFRACE10' : np.float32,
                         'EFRACE11' : np.float32,
                         'EFRACE12' : np.float32,
                         'EFRACE13' : np.float32,
                         'EFRACE14' : np.float32,
                         'DVEFHSM' : np.float32,
                         'DVEFHSW' : np.float32,
                         'DVEFAIM' : np.float32,
                         'DVEFAIW' : np.float32,
                         'DVEFBKM' : np.float32,
                         'DVEFBKW' : np.float32,
                         'DVEFWHM' : np.float32,
                         'DVEFWHW' : np.float32,
                         'EFNRALM': np.float32,
                         'EFNRALW': np.float32,
                         'EFUNKNM': np.float32,
                         'EFUNKNW': np.float32,
                         'EFHISPM': np.float32,
                         'EFHISPW': np.float32,
                         'EFAIANM': np.float32,
                         'EFAIAMW': np.float32,
                         'EFASIAM': np.float32,
                         'EFASIAW': np.float32,
                         'EFBKAAM': np.float32,
                         'EFBKAAW': np.float32,
                         'EFNHPIM': np.float32,
                         'EFNHPIW': np.float32,
                         'EFWHITM': np.float32,
                         'EFWHITW': np.float32,
                         'EF2MORM': np.float32,
                         'EF2MORW': np.float32,
                         })

    except Exception as e:
        print(f'ERROR.\nFile not downloaded properly.\n\n{str(e)}\n')
        break

print('All Done!')