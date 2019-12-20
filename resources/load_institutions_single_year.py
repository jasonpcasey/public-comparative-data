import numpy as np
import pandas as pd
from pandas import Series, DataFrame
pd.set_option("display.max_rows", 6)

# to handle encrypted passwords
import keyring

# handle spec map
import json

# database objects
from sqlalchemy import (create_engine, insert, select, MetaData, Table, Column,
                        String, Integer, Boolean, Date, Float,
                        func, distinct, desc)

import user_functions

# set values of constants
start_year = 2017 # 2002
end_year = 2018
years = [i for i in np.arange(start_year, end_year + 1)]

# local functions
def fix_binary(col, trueval = 1):
    col = np.where(col == trueval, 1, 0)
    return col

def read_file(year, types = "object"):
    file_spec = "hd{}.zip".format(year)
    url = "https://nces.ed.gov/ipeds/datacenter/data/{}".format(file_spec)
    print("Processing {}".format(year))
    answer = user_functions.net_load_data(url, types)
    answer = user_functions.fix_cols(answer)
    answer["date_key"] = "{}-10-15".format(year)
    # answer = answer.replace({".": ""})
    return(answer)

# load configuration file
with open("data/ic_recode_map.json", "r") as config_file:
    config = json.load(config_file)

# create frame to hold data
df = DataFrame()

# cycle through years, download and concatenate to df
for year in years:
    df = read_file(year, "object")
 
    # confirm that something was read
    print("{:,} rows and {} columns read".format(df.shape[0], df.shape[1]))

    # recode categorical variables
    for var, item_map in config["recodes"].items():
        df[var] = df[var].map(item_map)
        df[var] = df[var].fillna('Unknown')

    # fix data types
    # to fix: better text cleanup and conversion ~ df = df.astype(config["conversions"])
    for var in list(config["conversions"].keys()):
        df[var] = pd.to_numeric(df[var], errors = "ignore")

   # rename variables
    df = df.rename(columns = config["aliases"])

    # make changes to individual columns
    df["parent_id"] = df["parent_id"].fillna(df["unitid"])
    df["parent_id"] = np.where(df["parent_id"] < 100, df["unitid"], df["parent_id"])

    df["service_academy"] = fix_binary(df["service_academy"], 0)
    df["hospital"] = fix_binary(df["hospital"])
    df["graduate_offering"] = fix_binary(df["graduate_offering"])
    df["undergraduate_offering"] = fix_binary(df["undergraduate_offering"])
    df["degree_granting"] = fix_binary(df["degree_granting"])
    df["medical"] = fix_binary(df["medical"])
    df["tribal"] = fix_binary(df["tribal"])
    df["hbcu"] = fix_binary(df["hbcu"])
    df["active"] = fix_binary(df["active"])
    df["landgrant"] = fix_binary(df["landgrant"])

    # inspect your work
    df[config["aliases"].values()]

df.groupby("landgrant").count()