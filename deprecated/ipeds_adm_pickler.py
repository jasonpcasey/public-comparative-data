# coding=utf-8

import pickle
import pandas as pd
import numpy as np
from user_functions import net_load_data
import pathlib

first_year = 2007
last_year = 2018

# file_spec = np.where(year < 2014, "ic{}.zip".format(year), "adm{}.zip".format(year))
# url = "https://nces.ed.gov/ipeds/datacenter/data/{}".format(file_spec)

def ipeds_pickle(url, filespec, dtypes = 'object'):
    """ download ipeds data file at url and dump to pickle at filespec
        setting column name to lower and dropping imputation fields """
    print('\tReading {}...'.format(url), end='', flush=True)
    df = net_load_data(url, types = dtypes)
    df.columns = df.columns.str.lower()
    keepers = [col for col in df if not col.startswith('x')]
    df = df[keepers]

    with open(filespec, 'wb') as f:
        pickle.dump(df, f, pickle.HIGHEST_PROTOCOL)
    
    print('DONE.\n')

for year in range(first_year, last_year + 1):
    print('Downloading data for {}:'.format(year))
    if year < 2014:
        spec = 'https://nces.ed.gov/ipeds/datacenter/data/ic{}.zip'.format(year)
    else:
        spec = 'https://nces.ed.gov/ipeds/datacenter/data/adm{}.zip'.format(year)

    try:
        # read hd
        ipeds_pickle(spec,
                     pathlib.Path.cwd() / 'data/ipeds_adm_{}.pickle'.format(year),
                     dtypes = {'UNITID': np.int32,
                               'APPLCN': np.float32,
                               'APPLCNM': np.float32,
                               'APPLCNW': np.float32,
                               'ADMSSN': np.float32,
                               'ADMSSNM': np.float32,
                               'ADMSSNW': np.float32,
                               'ENRLT': np.float32,
                               'ENRLM': np.float32,
                               'ENRLW': np.float32})

    except Exception as e:
        print('ERROR.\nFile not downloaded properly.\n\n{}\n'.format(str(e)))
        break

print('All Done!')
