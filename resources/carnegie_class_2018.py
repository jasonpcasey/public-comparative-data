# coding=utf-8

import pandas as pd
import numpy as np
import keyring
from sqlalchemy import (Column, Float, Integer, String, Table, Date, MetaData,
                        create_engine, insert, delete, and_, null)

pd.set_option("display.max_rows", 6)

# local function(s)
def get_engine(db_name):
    answer = create_engine(r"mssql+pyodbc://{}:{}@{}".format(keyring.get_password("nu_warehouse_id", "token"),
                                                                                  keyring.get_password("nu_warehouse_secret", "token"),
                                                                                  db_name),
                           legacy_schema_aliasing = True # ,
                           #fast_executemany=True
                           )
    return answer

def get_page(url, sheet_name):
    answer = pd.read_excel(url, sheet_name = sheet_name)
    answer.columns = [colname.lower() for colname in list(answer.columns.values)]

    return(answer)

url = "http://carnegieclassifications.iu.edu/downloads/CCIHE2018-PublicData.xlsx"
year = 2018

classes = get_page(url, "Data")[["unitid", "basic2018"]]

labels = {0 : "(Not classified)",
          1 : "Associate's Colleges: High Transfer-High Traditional",
          2 : "Associate's Colleges: High Transfer-Mixed Traditional/Nontraditional",
          3 : "Associate's Colleges: High Transfer-High Nontraditional",
          4 : "Associate's Colleges: Mixed Transfer/Career & Technical-High Traditional",
          5 : "Associate's Colleges: Mixed Transfer/Career & Technical-Mixed Traditional/Nontraditional",
          6 : "Associate's Colleges: Mixed Transfer/Career & Technical-High Nontraditional",
          7 : "Associate's Colleges: High Career & Technical-High Traditional",
          8 : "Associate's Colleges: High Career & Technical-Mixed Traditional/Nontraditional",
          9 : "Associate's Colleges: High Career & Technical-High Nontraditional",
          10 : "Special Focus Two-Year: Health Professions",
          11 : "Special Focus Two-Year: Technical Professions",
          12 : "Special Focus Two-Year: Arts & Design",
          13 : "Special Focus Two-Year: Other Fields",
          14 : "Baccalaureate/Associate's Colleges: Associate's Dominant",
          15 : "Doctoral Universities: Very High Research Activity",
          16 : "Doctoral Universities: High Research Activity",
          17 : "Doctoral/Professional Universities",
          18 : "Master's Colleges & Universities: Larger Programs",
          19 : "Master's Colleges & Universities: Medium Programs",
          20 : "Master's Colleges & Universities: Small Programs",
          21 : "Baccalaureate Colleges: Arts & Sciences Focus",
          22 : "Baccalaureate Colleges: Diverse Fields",
          23 : "Baccalaureate/Associate's Colleges: Mixed Baccalaureate/Associate's",
          24 : "Special Focus Four-Year: Faith-Related Institutions",
          25 : "Special Focus Four-Year: Medical Schools & Centers",
          26 : "Special Focus Four-Year: Other Health Professions Schools",
          27 : "Special Focus Four-Year: Engineering Schools",
          28 : "Special Focus Four-Year: Other Technology-Related Schools",
          29 : "Special Focus Four-Year: Business & Management Schools",
          30 : "Special Focus Four-Year: Arts, Music & Design Schools",
          31 : "Special Focus Four-Year: Law Schools",
          32 : "Special Focus Four-Year: Other Special Focus Institutions",
          33 : "Tribal Colleges"}

classes["carnegie"] = classes["basic2018"].replace(labels)
classes = classes.rename(columns = {"basic2018": "basic_code"})

classes

items_to_insert = classes.to_dict(orient = "records")

######## write data to unl_ir
engine = get_engine("unl_ir")

metadata = MetaData(bind=engine, schema="dbo")

items_table = Table("carnegie_2018", metadata, autoload = True, autoload_with = engine)

# write the data to unl_ir
print("Attempting to add responses for {}.".format(year))
with engine.connect() as connection:
    trans = connection.begin()

    del_items_query = delete(items_table)
    
    try:
        item_del = connection.execute(del_items_query)
        
        item_ins = connection.execute(insert(items_table), items_to_insert)
    except Exception as e:
        trans.rollback()
        print(str(e))
        print("\nNo data were altered due to error.")
    else:
        trans.commit()
        print("\n{:,} old items were deleted.".format(item_del.rowcount))
        print("{:,} new items were inserted.".format(item_ins.rowcount))
    finally:
        trans = None

engine = None
print("\nAll done!")