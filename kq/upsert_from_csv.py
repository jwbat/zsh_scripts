import os
import sys
import csv
import psycopg2
from psycopg2 import sql


table        = 'ubx_device_registry'
csv_path     = 'ubx_device_registry.csv'
placeholders = ', '.join(['%s'] * 5)
query        = f''' UPSERT INTO { table } VALUES ({ placeholders }) '''

# LOCAL CLUSTER
cr_user     = os.getenv('CRL_USER')
cr_pw       = os.getenv('CRL_PW')
cr_host     = os.getenv('CRL_HOST')
cr_port     = os.getenv('CRL_PORT')
cr_database = os.getenv('CRL_DATABASE')


def execute():

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

        with open(csv_path, newline='') as f:
            reader = csv.reader(f)
            for row in reader:
                row = [value if value.strip() != '' else None for value in row]
                cur.execute(query, row)


    except (Exception, psycopg2.DatabaseError) as error:
        print('Error: ', error)
        return None

    finally:
        if cur is not None:
            cur.close()
        if conn is not None:
            conn.close()


execute()
