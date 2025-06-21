import os
import psycopg2
from contextlib import contextmanager


cr_user     = os.getenv('CR_USER')
cr_pw       = os.getenv('CR_PW')
cr_host     = os.getenv('CR_HOST')
cr_port     = os.getenv('CR_PORT')
cr_database = os.getenv('CR_DATABASE')


@contextmanager
def cursor_iterator(query, params=None):
    conn = None
    cur = None
    try:
        conn = psycopg2.connect(
            user=cr_user,
            password=cr_pw,
            host=cr_host,
            port=cr_port,
            database=cr_database
        )
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
