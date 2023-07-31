from colored import fg
from db import execute_query

gold  = fg(220)
green = fg(154)
clr   = fg(138)


def get_registries(deveuis):
    deveuis = [s.lower() for s in deveuis]

    query = f'''
        SELECT serial_number AS deveui, registry_uuid
        FROM ubx_device_registry
        WHERE serial_number IN %s
    '''

    params = (tuple(deveuis),) 
    rows = execute_query(query, params)

    if rows:
        print('\n' + clr + 'deveui'.rjust(25), 'registry_uuid'.rjust(40))
        for r in rows:
            print(green + r[0].rjust(25), gold + r[1].rjust(40))
        print('\n')
    else:
        print('No rows returned')
