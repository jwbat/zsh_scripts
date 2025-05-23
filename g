#! python

# Description
# git add . && git commit -m [ msg | date ] && git push

# Usage
# g [ message | no message ] 

from sys import argv
from datetime import datetime
import subprocess as sp
from pathlib import Path

#from colored import fg


run_cmd = lambda cmd: sp.run(cmd, capture_output=True, text=True) 

datestring = datetime.now().strftime('%A  ' + '%B %d, %Y' + '   %I:%M:%S %p')
datestring = datestring.replace('PM', 'p.m.').replace('AM', 'a.m.')
#print(s)
commit_message = datestring if len(argv) < 2 else argv[1]

print(commit_message)
print(f'We are currently in {Path.cwd()}')
