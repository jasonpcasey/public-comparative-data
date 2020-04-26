#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd
from pandas import DataFrame

import pickle
import argparse

from database.base import engine, Session, Base
from database.date_dimension import DateRow
from database.states import State
from database.counties import County
from database.ipeds_institutions import IpedsInstitution

# get command line arguments
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--first", default=2002, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()


# local functions
def item_recode(col, codings, default_value = None):
    if default_value == None:
        answer = col.map(codings, na_action = 'ignore')
    else:
        answer = col.map(codings, na_action = 'ignore').fillna(default_value)
    return(answer)


def read_pickle(filespec):
    try:
        with open(filespec, 'rb') as f:
            answer = pickle.load(f)
    except Exception as e:
        print(f'\tFile not loaded properly.\n\n{str(e)}')
        raise

    return answer

# main function
def main():
    for year in np.arange(args.first, args.last + 1):
        try:
            print(f'Reading files for {year}...', end='', flush=True)
            ic = read_pickle(f'data/ipeds_hd_{year}.pickle')
            ic = ic.merge(read_pickle(f'data/ipeds_ic_{year}.pickle'),
                        how = 'inner',
                        on = 'unitid')

        except Exception as e:
            print(f'ERROR.\n\n{str(e)}\n')
        else:
            print('DONE.')

        keepers = ['unitid',
                'instnm',
                'addr',
                'city',
                'zip',
                'webaddr',
                'fips',
                'countycd',
                'obereg',
                'iclevel',
                'control',
                'hloffer',
                'hdegofr1',
                'ugoffer',
                'groffer',
                'deggrant',
                'locale',
                'newid',
                'deathyr',
                'cyactive',
                'cbsa',
                'cbsatype',
                'csa',
                'longitud',
                'latitude',
                'f1syscod',
                'f1sysnam',
                'openpubl',
                'landgrnt',
                'hbcu',
                'hospital',
                'medical',
                'tribal',
                'slo5',
                'confno1',
                'confno2',
                'confno3',
                'confno4']

        # add back missing variables
        for col in keepers:
            if col not in list(ic.columns):
                ic[col] = None

        ic = ic[keepers]   

        ic = ic.rename(columns = {'longitud': 'longitude',
                                'instnm': 'institution_name',
                                'addr': 'address',
                                'fips': 'state_fips',
                                'countycd': 'county_fips',
                                'iclevel': 'institution_level',
                                'slo5': 'rotc',
                                'f1syscod': 'system_member',
                                'f1sysnam': 'system_name',
                                'zip': 'zip_code',
                                'webaddr': 'web_address',
                                'obereg': 'service_academy',
                                'hloffer': 'highest_level_offering',
                                'hdegofr1': 'highest_degree_offering',
                                'ugoffer': 'undergraduate_offering',
                                'groffer': 'graduate_offering',
                                'deggrant': 'degree_granting',
                                'newid': 'parent_id',
                                'deathyr': 'year_closed',
                                'cyactive': 'active',
                                'cbsa': 'cbsa_id',
                                'cbsatype': 'cbsa_type',
                                'csa': 'csa_id',
                                'openpubl': 'open_to_public',
                                'landgrnt': 'landgrant'})

        # set date key
        date_key = f'{year}-10-15'

        # modify data frame to apply needed fixes
        ic['date_key'] = date_key

        # fix fips codes
        ic.state_fips = np.where(ic.state_fips < 0, 0, ic.state_fips)
        ic.county_fips = np.where(ic.county_fips < 0, 0, ic.county_fips)
        ic.county_fips = ic.county_fips / 1000

        # fix locale
        ic.locale = item_recode(ic.locale,
                                {11: 'City: Large',
                                12: 'City: Midsize',
                                13: 'City: Small',
                                21: 'Suburb: Large',
                                22: 'Suburb: Midsize',
                                23: 'Suburb: Small',
                                31: 'Town: Fringe',
                                32: 'Town: Distant',
                                33: 'Town: Remote',
                                41: 'Rural: Fringe',
                                42: 'Rural: Distant',
                                43: 'Rural: Remote',
                                -3: 'Not available'},
                                'Unknown')

        # fix cbsa
        ic.cbsa_type = item_recode(ic.cbsa_type,
                                {1: 'Metropolitan Statistical Area',
                                    2:'Micropolitan Statistical Area',
                                    -2: 'Not applicable'},
                                'Unknown')

        # fix institution_level
        ic.institution_level = item_recode(ic.institution_level,
                                        {1: 'Four or more years',
                                            2: 'At least 2 but less than 4 years',
                                            3: 'Less than 2 years (below associate)',
                                            -3: 'Not available'},
                                        'Unknown')

        # fix control
        ic.control = item_recode(ic.control,
                                {1: 'Public',
                                2: 'Private not-for-profit',
                                3: 'Private for-profit'},
                                'Unknown')

        # fix degree offering variables
        ic.highest_level_offering = item_recode(ic.highest_level_offering,
                                                {1: 'Award of less than one academic year',
                                                2: 'At least 1, but less than 2 academic yrs',
                                                3: "Associate's degree",
                                                4: 'At least 2, but less than 4 academic yrs',
                                                5: "Bachelor's degree",
                                                6: 'Postbaccalaureate certificate',
                                                7: "Master's degree",
                                                8: "Post-master's certificate",
                                                9: "Doctor's degree"},
                                                'Unknown')
        ic.highest_degree_offering = item_recode(ic.highest_degree_offering,
                                                {11: "Doctor's degree - research/scholarship and professional practice",
                                                12: "Doctor's degree - research/scholarship",
                                                13: "Doctor's degree -  professional practice",
                                                14: "Doctor's degree - other",
                                                20: "Master's degree",
                                                30: "Bachelor's degree",
                                                40: "Associate's degree",
                                                0: 'Non-degree granting'},
                                                'Unknown')

        # fix parent id
        ic.parent_id = np.where(ic.parent_id > 0, ic.parent_id, ic.unitid).astype(int)

        # fix close date
        ic.active = ic.active == 1
        ic.year_closed = np.where(ic.year_closed < 1000, None, ic.year_closed)

        # fix boolean variables
        ic.service_academy = ic.service_academy == 0
        ic.undergraduate_offering = ic.undergraduate_offering == 1
        ic.graduate_offering = ic.graduate_offering == 1
        ic.degree_granting = ic.degree_granting == 1
        ic.system_member = ic.system_member == 1
        ic.open_to_public = ic.open_to_public == 1
        ic.landgrant = ic.landgrant == 1
        ic.hbcu = ic.hbcu == 1
        ic.hospital = ic.hospital == 1
        ic.medical = ic.medical == 1
        ic.tribal = ic.tribal == 1
        ic.rotc = ic.rotc == 1

        # replace NaN with database-compliant nulls
        ic.confno4 = ic.confno4.fillna(-2)
        ic.csa_id = ic.csa_id.fillna(-2)
        ic.cbsa_id = ic.cbsa_id.fillna(-2)
        ic.system_name = ic.system_name.fillna('No system')
        
        # insert data into dbo.survey_records
        session = Session()

        try:
            print(f'Attempting to insert {ic.shape[0]:,} rows for {year} into {IpedsInstitution.__tablename__}.')
            record_deletes = session.query(IpedsInstitution).filter(IpedsInstitution.date_key==date_key).delete(synchronize_session=False)
            session.bulk_insert_mappings(mapper = IpedsInstitution,
                                        mappings = ic.to_dict(orient='records'),
                                        render_nulls = True)
        except Exception as e:
            session.rollback()
            print(str(e))
            print('\tNo data were altered due to error.\n')
        else:
            session.commit()
            print(f'\t{record_deletes:,} old records were deleted.')
            print(f'\t{ic.shape[0]:,} new records were inserted.\n')
        finally:
            session.close()
            session = None

    print('All done!')


if __name__ == '__main__':
    main()