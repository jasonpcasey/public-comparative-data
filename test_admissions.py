from netfile.admissions_file import AdmissionsFile
from database.ipeds_admissions import IpedsAdmissions

def main():
    for year in [2002, 2012, 2018]:
        adm = AdmissionsFile(year)
        print('The data file for {} can be found at {}.'.format(adm.year, adm.url))
        print('{:,} rows were extracted from this file.'.format(adm.row_count()))
        print('The first five extracted rows:')
        for row in adm.rows[:5]:
            print(row)
        print('\n')

if __name__ == '__main__':
    main()