import os
import psycopg2


def execute_query(query, params=None):

    cr_user     = os.getenv('CR_USER')
    cr_pw       = os.getenv('CR_PW')
    cr_host     = os.getenv('CR_HOST')
    cr_port     = os.getenv('CR_PORT')
    cr_database = os.getenv('CR_DATABASE')

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
        return cur.fetchall()

    except (Exception, psycopg2.DatabaseError) as error:
        print("Error: ", error)
        return None

    finally:
        if cur is not None:
            cur.close()
        if conn is not None:
            conn.close()
