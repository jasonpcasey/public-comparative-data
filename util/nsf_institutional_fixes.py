# coding=utf-8

import pickle
import pathlib

# dictionary of unitid's to fix
# key = NSF inst_id, value = IPEDS Unitid
fixes = {
    1081: 104151,        # Arizona State University
    100132: 109651,      # Art Center College of Design
    1158: 110468,        # Alliant International University
    8718: 129020,        # University of Connecticut
    1479: 133553,        # Embry-Riddle Aeronautical University
    1657: 143853,        # Midwestern University
    # 101674: 154174,      # Palmer College of Chiropractic, Port Orange
    330010: 160621,      # Southern University and A&M College, Agricultural Research and Extension Center
    29977: 162928,       # Johns Hopkins University
    233046: 172699,      # Western Michigan University and Homer Stryker M.D. School of Medicine
    102059: 176017,      # University of Mississippi
    100588: 181020,      # Doane University
    2589: 183044,        # University of New Hampshire
    8770: 184694,        # Fairleigh Dickinson University
    2671: 189088,        # Bard College
    # 102091: 190576,      # City University of New York, Graduate School of Public Health and Health Policy
    # 102060: 190576,      # City University of New York, The, Advanced Science Research Center
    8780: 192448,        # Long Island University
    # 330009: 196060,      # State University of New York, University at Albany, College of Nanoscale Science and Engineering
    12310: 200800,       # University of Akron, The
    8796: 201441,        # Bowling Green State University
    8805: 201885,        # University of Cincinnati
    8799: 203517,        # Kent State University
    8800: 204024,        # Miami University
    8802: 204796,        # Ohio State University, The
    8803: 204857,        # Ohio University
    9167: 206604,        # Wright State University
    # 666053: 207315,      # Oklahoma State University Tulsa
    8807: 207500,        # University of Oklahoma, The, Norman and Health Science Center
    102041: 207500,      # University of Oklahoma, The, Tulsa
    3198: 209065,        # Linfield College
    3210: 209542,        # Oregon State University
    # 7785: 221759,        # University of Tennessee, The, Knoxville, Institute of Agriculture
    353086: 221999,      # Vanderbilt University and Vanderbilt University Medical Center
    208828: 231624,      # College of William and Mary and Virginia Institute of Marine Science
    10724: 241331,       # Carlos Albizu University (San Juan, PR)
    41426: 459736,       # Touro University
    102044: 492689       # Texas Tech University Health Sciences Center, El Paso
    }

file_spec = pathlib.Path.cwd() / 'data/inst_id_fixes.pickle'

with open(file_spec, 'wb') as f:
    # Pickle the dictionary using the highest protocol available.
    pickle.dump(fixes, f, pickle.HIGHEST_PROTOCOL)

print('All Done.')