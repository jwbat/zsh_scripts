import os
import sys
import subprocess as sp

#for arg in sys.argv[1: ]:
#    print("\t", arg)

file = 'words.txt'

p1 = sp.popen(['cat', file])

print(p1.read())
#p1.wait()
#p2 = sp.check_output('wc -l', stdin=p1.stdout)
