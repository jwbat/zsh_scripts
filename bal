#! python3

import os
import sys
import subprocess as sp
import csv
from colored import fg

blue = fg(87)
red = fg(196)
yellow = fg(192)
indianred = fg(202)
khaki = fg(185)
colors = [ indianred, khaki ]

file = os.path.expanduser('~/code/shell/scripts/stuff/balances.csv')
fields = []
rows = []


def display_date():
    p1 = sp.run('date', capture_output=True, text=True)
    date = p1.stdout;
    words = date.split(' ')[0 : 4]
    print(yellow + '\n\t Today is ' + ' '.join(words))


display_date()

with open(file, 'r') as csvfile:
    reader = csv.reader(csvfile)
    fields = next(reader)

    print()
    for field in fields:
        print(red + field.rjust(15), end='')
    print()
 
    colors_idx = 0
    color = colors[0]
    rcvd = ''

    for row in reader:
        idx = 0
        for item in row:
            print(blue + item.rjust(15), end='')
            idx += 1
        print()

    print() 

