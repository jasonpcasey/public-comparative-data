from netfile.ipeds_file import IpedsFile
from database.ipeds_admissions import IpedsAdmissions
import numpy as np
import pandas as pd

class AdmissionsFile(IpedsFile):
    def __init__(self, year):
        super().__init__(year)
        if self.year < 2014:
            self.url = self.get_url('ic')
        else:
            self.url = self.get_url('adm')
        self.populate_rows()
    
    def populate_rows(self):
        df = self.read({'UNITID': np.int32,
                        'APPLCN': np.float32,
                        'APPLCNM': np.float32,
                        'APPLCNW': np.float32,
                        'ADMSSN': np.float32,
                        'ADMSSNM': np.float32,
                        'ADMSSNW': np.float32,
                        'ENRLT': np.float32,
                        'ENRLM': np.float32,
                        'ENRLW': np.float32})[['unitid',
                                               'applcn',
                                               'applcnm',
                                               'applcnw',
                                               'admssn',
                                               'admssnm',
                                               'admssnw',
                                               'enrlt',
                                               'enrlm',
                                               'enrlw']].fillna(0)
        
        # add date key
        df['date_key'] = self.date_key
        
        # calculate unknowns
        df['applcnu'] = df.applcn - (df.applcnm + df.applcnw)
        df['admssnu'] = df.admssn - (df.admssnm + df.admssnw)
        df['enrlu'] = df.enrlt - (df.enrlm + df.enrlw)
        
        # reshape from wide to long format
        df = pd.melt(df,
                    id_vars = ['unitid','date_key'],
                    value_vars = ['applcnm', 'applcnw', 'applcnu',
                                    'admssnm', 'admssnw', 'admssnu',
                                    'enrlm', 'enrlw', 'enrlu'],
                    value_name = 'count')

        # field indicator
        df['field'] = np.where(df.variable.str.slice(0, 3) == 'app', 'applications', 'unknown')
        df['field'] = np.where(df.variable.str.slice(0, 3) == 'adm', 'admissions', df['field'])
        df['field'] = np.where(df.variable.str.slice(0, 3) == 'enr', 'enrolled', df['field'])

        # add demographic key
        df['demographic_key'] = 'unknu'
        df['demographic_key'] = np.where(df.variable.str.slice(-1) == 'm', 'unknm', df.demographic_key)
        df['demographic_key'] = np.where(df.variable.str.slice(-1) == 'w', 'unknw', df.demographic_key)

        df = df.pivot_table(index=['unitid', 'date_key', 'demographic_key'],
                            columns='field',
                            values='count',
                            aggfunc = np.sum,
                            fill_value = 0).reset_index()

        # remove institutions with no applications
        df = df.loc[df.applications > 0]

        for row in df.itertuples(index=False):
            self.rows.append(IpedsAdmissions(row.unitid,
                                             row.date_key,
                                             row.demographic_key,
                                             row.applications,
                                             row.admissions,
                                             row.enrolled))

    def __repr__(self):
        return('AdmissionsFile(year={})'.format(self.year))

if __name__ == '__main__':
    adm = AdmissionsFile(2018)
    print(adm.year)
    print(adm.url)
    print(adm.rows[0])
