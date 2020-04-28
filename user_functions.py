#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Created on Sat Mar 23 19:42:57 2019
@author: jasoncasey
"""

from io import BytesIO, StringIO
from zipfile import ZipFile
from urllib.request import urlopen
import pandas as pd
import pickle


# item_recode maps labels on to coded columns
def item_recode(col, codings):
    # df.replace({colname: codings})
    answer = col.map(codings, na_action = "ignore") 
    
    return(answer)

def fix_cols(data):
    data.columns = [colname.lower() for colname in list(data.columns.values)]
    return(data)


def fix_number(col):
    try:
        col = col.str.replace("^\\.$", "")
        answer = pd.to_numeric(col.str.replace("[^0-9\\.\\-]", ""), errors = "coerce")
        # answer = pd.to_numeric(col, errors = "coerce")
    except Exception as e:
        print(str(e))
        return(str(e))
    
    return(answer)

def make_proportion(col):
    """ turn an integer column into a decimal proportion. """
    answer = col / 100
    return(answer)

def get_filename(file_list):
    """ find csv file from IPEDS download.  If a revised file exists ("_rv"), return
        that, otherwise, return the csv."""
    match = [s for s in file_list if "_rv" in s]
    answer = file_list[0]
    if len(match) > 0:
        answer = match[0]
    return(answer)

def net_load_info(url):
    """ return the file list from a zip file downloaded from a URL. """
    resp = urlopen(url)
    zipfile = ZipFile(BytesIO(resp.read()))
    files = zipfile.namelist()
    return(files)

def net_load_data(url, types = "object"):
    """ load a csv from an IPEDS zip at the specified URL.  use get_filename() to
        get the most recent revision.  Returns a pandas DataFrame. """
    with urlopen(url) as resp:
        zipfile = ZipFile(BytesIO(resp.read()))
        file_name = get_filename(zipfile.namelist())
        with zipfile.open(file_name) as data_file:
            answer = pd.read_csv(data_file,
                                 dtype = types,
                                 na_values = '.',
                                 index_col = False,
                                 low_memory = False,
                                 encoding = "iso-8859-1")

    return(answer)




def item_recode(col, codings, default_value = None):
    """ recode values in column col using codings and default_value for unmatched codings """
    if default_value == None:
        answer = col.map(codings, na_action = 'ignore')
    else:
        answer = col.map(codings, na_action = 'ignore').fillna(default_value)
    return(answer)


def read_pickle(filespec):
    """ read pickle file at filespec """
    try:
        with open(filespec, 'rb') as f:
            answer = pickle.load(f)
    except Exception as e:
        print('File not loaded properly.\n\n{}'.format(str(e)))
        raise

    return answer
