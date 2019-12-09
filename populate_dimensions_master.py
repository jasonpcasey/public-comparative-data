import os
from subprocess import Popen, PIPE

#run child script 1
p = Popen(["Date Dimensions", r'populate_date_dimension.py'], shell=True, stdin=PIPE, stdout=PIPE)
output = p.communicate()
print(output)

#run child script 2
p = Popen(["States", r'populate_states.py'], shell=True, stdin=PIPE, stdout=PIPE)
output = p.communicate()
print(output)