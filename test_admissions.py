from netfile.admissions_file import AdmissionsFile
from database.ipeds_admissions import IpedsAdmissions

def main():
    adm = AdmissionsFile(2018)
    print(adm.rows[0])
    # print(vars(adm.rows[0]))
    x = eval(repr(adm.rows[0]))
    type(x)

if __name__ == '__main__':
    main()