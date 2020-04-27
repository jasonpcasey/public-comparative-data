#!/usr/bin/env python3
# coding=utf-8

import numpy as np
import pandas as pd

from netfile.ipeds_file import IpedsFile
from database.ipeds_institutions import IpedsInstitution

class InstitutionsFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        self.populate_rows()
    
    def populate_rows(self):
        if (self.year == 1990):
            url = self.get_url('IC90ABCE.zip')
        elif (self.year == 1991):
            url = self.get_url('ic1991_ab.zip')
        elif (self.year > 1991 and self.year <= 1994):
            url = self.get_url(f'ic{self.year}_B.zip')
        elif (self.year > 1994 and self.year <= 1996):
            url = self.get_url(f'ic{str(self.year)[2:]}{str(self.year + 1)[2:]}_B.zip')
        elif (self.year == 1997):
            url = self.get_url('ic9798_AB.zip')
        elif (self.year == 1998):
            url = self.get_url('IC98_AB.zip')
        elif (self.year == 1999):
            url = self.get_url('ic99abcf.zip')
        else:
            url = self.get_url(f'ic{self.year}.zip')
        
        print(f'Reading data from {url}')
        ic = self.read(url, {
            'UNITID': np.int32,
            'SLO5': np.float32,
            'DISTNCED': np.float32
            })
        
        if (self.year == 1990):
            url = self.get_url('IC90HD.zip')
        elif (self.year == 1991):
            url = self.get_url('IC1991_hdr.zip')
        elif (self.year > 1991 and self.year <= 1994):
            url = self.get_url(f'ic{self.year}_A.zip')
        elif (self.year > 1994 and self.year <= 1996):
            url = self.get_url(f'ic{str(self.year)[2:]}{str(self.year + 1)[2:]}_A.zip')
        elif (self.year == 1997):
            url = self.get_url('ic9798_HDR.zip')
        elif (self.year == 1998):
            url = self.get_url('IC98hdac.zip')
        elif (self.year == 1999):
            url = self.get_url('ic99_hd.zip')
        elif (self.year > 1999 and self.year <= 2001):
            url = self.get_url(f'fa{self.year}hd.zip')
        else:
            url = self.get_url(f'hd{self.year}.zip')
        
        print(f'Reading data from {url}')
        df = self.read(url, {
            'UNITID': np.int32,
            'COUNTYCD': np.float32,
            'OBEREG': np.float32,
            'ICLEVEL': np.float32,
            'CONTROL': np.float32,
            'HLOFFER': np.float32,
            'HDEGOFR1': np.float32,
            'UGOFFER': np.float32,
            'GROFFER': np.float32,
            'OPEFLAG': np.float32,
            'DEGGRANT': np.float32,
            'LOCALE': np.float32,
            'NEWID': np.float32,
            'DEATHYR': np.float32,
            'CBSA': np.float32,
            'CBSATYPE': np.float32,
            'CSA': np.float32,
            'LONGITUD': np.float32,
            'LATITUDE': np.float32,
            'OPENPUBL': np.float32,
            'LANDGRNT': np.float32,
            'HBCU': np.float32,
            'HOSPITAL': np.float32,
            'MEDICAL': np.float32,
            'TRIBAL': np.float32
            })

        # merge files
        df = df.merge(
            ic,
            how = 'inner',
            on = 'unitid')

        # add date key
        df['date_key'] = self.date_key
        
        keepers = [
            'unitid',
            'date_key',
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
            'opeflag',
            'distnced']

        # add back missing variables
        for col in keepers:
            if col not in list(df.columns):
                df[col] = None
        
        # reduce file
        df = df[keepers]

        # rename columns
        df = df.rename(columns = {
            'longitud': 'longitude',
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
            'distnced': 'distance_only',
            'opeflag': 'title_iv_eligible',
            'openpubl': 'open_to_public',
            'landgrnt': 'landgrant'})

        df.state_fips = np.where(df.state_fips < 0, 0, df.state_fips)
        df.county_fips = np.where(df.county_fips < 0, 0, df.county_fips)
        df.county_fips = df.county_fips / 1000
        
        # fix locale
        df.locale = self.item_recode(
            df.locale,
            {
                11: 'City: Large',
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
                -3: 'Not available'
            },
            'Unknown')

        # fix cbsa
        df.cbsa_type = self.item_recode(
            df.cbsa_type,
            {
                1: 'Metropolitan Statistical Area',
                2:'Micropolitan Statistical Area',
                -2: 'Not applicable'
            },
            'Unknown')

        # fix institution_level
        df.institution_level = self.item_recode(
            df.institution_level,
            {
                1: 'Four or more years',
                2: 'At least 2 but less than 4 years',
                3: 'Less than 2 years (below associate)',
                -3: 'Not available'
            },
            'Unknown')

        # fix control
        df.control = self.item_recode(
            df.control,
            {
                1: 'Public',
                2: 'Private not-for-profit',
                3: 'Private for-profit'
            },
            'Unknown')

        # fix degree offering variables
        df.highest_level_offering = self.item_recode(
            df.highest_level_offering,
            {
                1: 'Award of less than one academic year',
                2: 'At least 1, but less than 2 academic yrs',
                3: "Associate's degree",
                4: 'At least 2, but less than 4 academic yrs',
                5: "Bachelor's degree",
                6: 'Postbaccalaureate certificate',
                7: "Master's degree",
                8: "Post-master's certificate",
                9: "Doctor's degree"
            },
            'Unknown')

        df.highest_degree_offering = self.item_recode(
            df.highest_degree_offering,
            {
                11: "Doctor's degree - research/scholarship and professional practice",
                12: "Doctor's degree - research/scholarship",
                13: "Doctor's degree -  professional practice",
                14: "Doctor's degree - other",
                20: "Master's degree",
                30: "Bachelor's degree",
                40: "Associate's degree",
                0: 'Non-degree granting'
            },
            'Unknown')

        # fix parent id
        df.parent_id = np.where(df.parent_id > 0, df.parent_id, df.unitid).astype(int)

        # fix close date
        df.active = df.active == 1
        df.year_closed = np.where(df.year_closed < 1000, None, df.year_closed)

        # fix boolean variables
        df.service_academy = df.service_academy == 0
        df.undergraduate_offering = df.undergraduate_offering == 1
        df.graduate_offering = df.graduate_offering == 1
        df.degree_granting = df.degree_granting == 1
        df.system_member = df.system_member == 1
        df.open_to_public = df.open_to_public == 1
        df.landgrant = df.landgrant == 1
        df.hbcu = df.hbcu == 1
        df.hospital = df.hospital == 1
        df.medical = df.medical == 1
        df.tribal = df.tribal == 1
        df.rotc = df.rotc == 1
        df.title_iv_eligible = df.title_iv_eligible == 1
        df.distance_only = df.distance_only == 1

        # replace NaN with database-compliant nulls
        df.csa_id = df.csa_id.fillna(-2)
        df.cbsa_id = df.cbsa_id.fillna(-2)
        df.system_name = df.system_name.fillna('No system')

        # create rows for insertion
        for row in df.itertuples(index=False):
            self.rows.append(IpedsInstitution(
                unitid = row.unitid,
                date_key = row.date_key,
                institution_name = row.institution_name,
                address = row.address,
                city = row.city,
                zip_code = row.zip_code,
                web_address = row.web_address,
                state_fips = row.state_fips,
                county_fips = row.county_fips,
                service_academy = row.service_academy,
                institution_level = row.institution_level,
                control = row.control,
                highest_level_offering = row.highest_level_offering,
                highest_degree_offering = row.highest_degree_offering,
                undergraduate_offering = row.undergraduate_offering,
                graduate_offering = row.graduate_offering,
                degree_granting = row.degree_granting,
                locale = row.locale,
                parent_id = row.parent_id,
                year_closed = row.year_closed,
                active = row.active,
                cbsa_id = row.cbsa_id,
                cbsa_type = row.cbsa_type,
                csa_id = row.csa_id,
                longitude = row.longitude,
                latitude = row.latitude,
                system_member = row.system_member,
                system_name = row.system_name,
                open_to_public = row.open_to_public,
                landgrant = row.landgrant,
                hbcu = row.hbcu,
                hospital = row.hospital,
                medical = row.medical,
                tribal = row.tribal,
                rotc = row.rotc,
                title_iv_eligible = row.title_iv_eligible,
                distance_only = row.distance_only))

    def __repr__(self):
        return(f'{__class__.__name__}(year={self.year})')

    def write(self):
        print(f'Writing {len(self.rows):,} rows to {IpedsInstitution.__tablename__} table in database.')
        super().write()

if __name__ == '__main__':
    inst = InstitutionsFile(2018)
    print(inst.year)
    print(inst.url)
    print(inst.rows[0])
