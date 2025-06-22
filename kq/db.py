import os
import psycopg2
from contextlib import contextmanager


def get_cnx_strings(cluster):
    prefix = { 'global': 'CR', 'prod': 'CRP' }.get(cluster)
    return {
        'user'     : os.getenv(f'{prefix}_USER'),
        'password' : os.getenv(f'{prefix}_PW'),
        'host'     : os.getenv(f'{prefix}_HOST'),
        'port'     : os.getenv(f'{prefix}_PORT'),
        'database' : os.getenv(f'{prefix}_DATABASE')
    }


@contextmanager
def cursor_iterator(query, params=None, cluster='global'):
    cnx_strings = get_cnx_strings(cluster)
    conn        = None
    cur         = None
    try:
        conn = psycopg2.connect(**cnx_strings)
        cur = conn.cursor()
        cur.execute(query, params)
        yield cur
    except Exception as e:
        print("Database error:", e)
        yield None
    finally:
        if cur:
            cur.close()
        if conn:
            conn.close()
