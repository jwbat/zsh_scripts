#! python
import sys
import pandas as pd
from colored import fg
from tabulate import tabulate

gold, honey, green, red, grey, orange = fg(220), fg(194), fg(84), fg(196), fg(245), fg(208)
colors  = [gold, red, honey, green, orange]


if len(sys.argv) == 1:
    path = 'output.csv'
else:
    path = sys.argv[1]

frame = pd.read_csv(path)
frame.fillna('', inplace=True)

for idx, col in enumerate(frame.columns):
    color = colors[idx % len(colors)]
    frame[col] = frame[col].apply(lambda x: f'{ color } { x } { grey }')
    frame.rename(columns={ col: f'{ color } { col } { grey }' }, inplace=True)

print(grey)
table = tabulate(frame, headers='keys', tablefmt='fancy_grid', showindex=False)
print(table)
