from colored import fg
from db import execute_query


gold  = fg(220)
green = fg(150)
clr   = fg(138)


def get_tables_and_columns():
    tables_and_columns = {}
    query = '''
        SELECT table_name, column_name
        FROM information_schema.columns
        WHERE table_schema='public'
    '''
    rows = execute_query(query)

    for table_name, column_name in rows:
        if table_name not in tables_and_columns:
            tables_and_columns[table_name] = []
        tables_and_columns[table_name].append(column_name)

    print()
    for key in tables_and_columns.keys():
        print(gold + key.rjust(32) + ': ' + green, tables_and_columns[key])
        print()
    print()



def get_crdb_tables():
    query = '''
        SELECT table_name 
        FROM information_schema.tables
        WHERE table_schema='public' 
    '''
    rows = execute_query(query)
    tables = [tup[0] for tup in rows]

    print()
    for t in tables:
        print('\t' + green + t)
    print()

