from netfile.admissions_file import AdmissionsFile
from database.ipeds_admissions import IpedsAdmissions

def main():
    adm = AdmissionsFile(2018)
    print(adm.year)
    print(adm.uri)
    print(adm.rows[0])

if __name__ == '__main__':
    main()