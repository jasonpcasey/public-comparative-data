# coding=utf-8

from database.base import Session, engine, Base
from database.carnegie_classes import CarnegieClass

import numpy as np
import pandas as pd

def get_sheet(sheet_name):
    df = pd.read_excel(
        io = 'http://carnegieclassifications.iu.edu/downloads/CCIHE2018-PublicData.xlsx',
        sheet_name = sheet_name,
        index_col = None)
    # df.columns = df.columns.str.strip().str.lower()
    return df

def main():
    print("Reading carnegie_classes data")

    labels = get_sheet('Labels')
    labels.columns = labels.columns.str.strip().str.lower()
    labels = labels.rename(columns = {
        'variable': 'classification_id',
        'label': 'classification',
        'value': 'class_code',
        'label.1': 'carnegie_class'})
    labels = labels[labels.class_code.notnull()]
    labels = labels.ffill()

    vals = get_sheet('Data')

    # reshape from wide to long format
    carnegie = pd.melt(
        vals,
        id_vars = ['UNITID'],
        var_name = 'classification_id',
        value_vars = [
            'BASIC2005',
            'BASIC2010',
            'BASIC2015',
            'BASIC2018',
            'IPUG2018',
            'IPGRAD2018',
            'ENRPROFILE2018',
            'UGPROFILE2018',
            'SIZESET2018',
            'CCE2015',
        ],
        value_name = 'class_code')

    carnegie = carnegie.rename(columns = {'UNITID': 'unitid'})

    carnegie = carnegie.merge(labels, on = ['class_code', 'classification_id'], how='inner')

    session = Session()

    try:
        print('Populating dimension tables.')
        # insert state data
        record_deletes = session.query(CarnegieClass).delete(synchronize_session=False)
        df_inserts = session.bulk_insert_mappings(mapper = CarnegieClass,
                                                  mappings = carnegie.to_dict(orient='records')),
        print('\tFinished populating carnegie_classes table.')

    except Exception as e:
        session.rollback()
        print("\tAn error occurred and no data were changed in the database.\n\nError:\n{}".format(str(e)))
        print("\tNo changed made to database.\n")
    else:
        session.commit()
        print('\tChanges committed to database.\n')

    session.close()

    print("All Done.")

if __name__ == '__main__':
    main()