import csv
from colored import fg
from db import execute_query


def to_csv(table):
    query = f''' SELECT * FROM { table } '''
    rows = execute_query(query)

    path = f'{ table }.csv'
    with open(path, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(rows)
