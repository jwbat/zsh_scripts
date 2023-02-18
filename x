#! python3

import os
import sys
import subprocess as sp
from colored import fg

color = fg(153)
#ui = os.getenv('UI')
path = os.path.expanduser('~/code')
print(color)

#sp.run(['cd', path])

try:
    p1 = sp.run(['cd', path], capture_output=True, text=True)
    print(p1.stdout)
except:
    print('oops')
