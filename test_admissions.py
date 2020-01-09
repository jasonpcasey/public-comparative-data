from netfile.admissions_file import AdmissionsFile

def main():
    adm = AdmissionsFile(2018)
    print(adm.rows[:5])
    # print(vars(adm))

if __name__ == '__main__':
    main()