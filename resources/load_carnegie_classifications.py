# coding=utf-8

import pandas as pd
import numpy as np

urls = {2018: "http://carnegieclassifications.iu.edu/downloads/CCIHE2018-PublicData.xlsx",
        2015: "http://carnegieclassifications.iu.edu/downloads/CCIHE2015-PublicDataFile.xlsx",
        2010: "http://carnegieclassifications.iu.edu/downloads/cc2010_classification_data_file.xls",
        2005: "http://carnegieclassifications.iu.edu/downloads/cc2005_public_file_021110.xls",
        2000: "http://carnegieclassifications.iu.edu/downloads/2000_edition_data.xlsx",
        1994: "http://carnegieclassifications.iu.edu/downloads/1994_edition_data.xls"}

for year, url in urls.items():
    df = pd.read_excel(url,
                       sheet_name = "CC94" if year < 2000 else "Data")

    df["date_key"] = "{}-06-30".format(year)

    df