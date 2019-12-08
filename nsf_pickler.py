
import pickle
import pandas as pd
import numpy as np

first_year = 2010
last_year = 2018

for year in np.arange(first_year, last_year + 1):
    spec = 'https://www.nsf.gov/statistics/herd/data/csv/herd_' + str(year) + '.csv'
    print("\nReading data for fiscal year ending {}:\n\t{}... ".format(year, spec), end="", flush=True)
    try:
        df = pd.read_csv(spec,
                         dtype =  {"inst_id":  np.int32,
                                  "year":  np.int16,
                                  "ncses_inst_id":  object,
                                  "ipeds_unitid":  np.float32,
                                  "hbcu_flag":  bool,
                                  "med_sch_flag":  object,
                                  "hhe_flag":  bool,
                                  "toi_code":  np.int8,
                                  "hdg_code":  np.int8,
                                  "toc_code":  np.int8,
                                  "inst_name_long":  object,
                                  "inst_city":  object,
                                  "inst_state_code":  object,
                                  "inst_zip":  object,
                                  "questionnaire_no":  object,
                                  "question":  object,
                                  "row":  object,
                                  "column":  object,
                                  "data":  np.float32,
                                  "status":  object,
                                  "othinfo":  object,
                                  "othinfo_s":  object,
                                  "standardized_agency_names":  object},
                         encoding='iso-8859-1')
        with open('data/nsf_{}.pickle'.format(year), 'wb') as f:
            # Pickle the 'data' dictionary using the highest protocol available.
            pickle.dump(df, f, pickle.HIGHEST_PROTOCOL)
        print('DONE.\n\nData written to data/nsf_{}.pickle\n'.format(year))
    except Exception as e:
        print('ERROR.\nFile not downloaded properly.\n\n{}\n'.format(str(e)))
    else:
        df.info()

print("\nAll Done!")