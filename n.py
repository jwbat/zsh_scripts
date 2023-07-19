'''
 =======
 NOTHING
 =======
'''
import json
import requests
import base64
import binascii
import boto3
from botocore.exceptions import ClientError


def get_secret():

    secret_name = "ABM-Secret"
    region_name = "us-west-2"

    session = boto3.session.Session()
    client = session.client(
        service_name='secretsmanager',
        region_name=region_name
    )

    try:
        get_secret_value_response = client.get_secret_value(
            SecretId=secret_name
        )
    except ClientError as e:
        raise e

    # decrypt secret using the associated KMS key.
    secret = get_secret_value_response['SecretString']
    return  json.loads(secret)['webhook_url']


def post(url, payload):
    headers = {'Content-Type': 'application/json'}

    try:
        response = requests.post(url, headers=headers, json=payload)
        response.raise_for_status() # raise HTTPError if 4xx or 5xx

        return {
            'statusCode': 200,
            'body': json.dumps('Success')
        }
    except requests.exceptions.HTTPError as e:
        print(f'HTTP error occurred: {e}')
    except Exception as e:
        print(f'An error occurred: {e}')


def lambda_handler(event, context):

    def decode(payload):
        b = binascii.a2b_base64(payload)

        fields = {
            '0175': { 'name': 'battery_pct',    'size': 1, 'scale':   1, 'signed': False, 'unit': '%' },
            '0367': { 'name': 'temp_c',         'size': 2, 'scale': 0.1, 'signed': True,  'unit': '°C' },
            '0468': { 'name': 'rh_pct',         'size': 1, 'scale': 0.5, 'signed': False, 'unit': '%' },
            '056a': { 'name': 'activity',       'size': 2, 'scale':   1, 'signed': True,  'unit': '' },
            '0665': { 'name': 'illumination',   'size': 6, 'scale': 1.0, 'signed': True,  'unit': 'lux' },
            '06cb': { 'name': 'light_level',    'size': 1, 'scale':   1, 'signed': False, 'unit': 'lux' },
            '077d': { 'name': 'co2_ppm',        'size': 2, 'scale':   1, 'signed': True,  'unit': 'ppm' },
            '0973': { 'name': 'barometric_hpa', 'size': 2, 'scale': 0.1, 'signed': True,  'unit': 'hPa' },
            '0a7d': { 'name': 'hcoh',           'size': 2, 'scale':   1, 'signed': False, 'unit': 'µg/㎥' },
            '0b7d': { 'name': 'pm2_5_ug_m3',    'size': 2, 'scale':   1, 'signed': False, 'unit': 'µg/㎥' },
            '0c7d': { 'name': 'pm10_ug_m3',     'size': 2, 'scale':   1, 'signed': False, 'unit': 'µg/㎥' }
        }

        fields.update({ # AM308  (TVOC meaning depends on device). AM100 series typedata will be in default fields
            '0500': { 'name': 'occupied',       'size': 1, 'scale':    1, 'signed': False, 'unit': '' },
            '087d': { 'name': 'tvoc_level',     'size': 2, 'scale': 0.01, 'signed': False, 'unit': '' },
        })

        field_keys = list(fields)
        result = dict()
        idx = 0

        while idx < len(b):
            typedata = b[idx : idx + 2].hex()

            if typedata not in field_keys:
                print(' typedata ', typedata, ' not found.')
                break

            field = fields[typedata]
            name, size, scale, signed, unit = field['name'], field['size'], field['scale'], field['signed'], field['unit']
            idx += 2

            if name in ['illumination', 'light_level', 'activity']:
                idx += size
                continue

            else:
                value = int.from_bytes(b[idx : idx + size], 'little', signed=signed) * scale
                result[name] = (round(value, 1), unit)

            idx += size

        return result

    #.................... ^^ decode ^^ .............................................................

    stamp = date_created =  event['WirelessMetadata']['LoRaWAN']['Timestamp']
    deveui = event['WirelessMetadata']['LoRaWAN']['DevEui']
    payload = event['PayloadData']
    result = decode(payload)

    if not result:
        print('could not decode.  ', ' payload: ', payload, ' deveui: ', deveui)
        return

    data = []
    for key, val in result.items():
        data.append({
            'name': key,
            'units': val[1],
            'value': val[0]
        })

    webhook_payload = {
        'uid': 'ventacity',
        'utcts': stamp,
        'deviceId': deveui,
        'data': data
    }


    test_url = 'https://httpbin.org/post'
    test_payload = { 'test': 'value' }

    webhook_url = get_secret()

    post_response = post(webhook_url, webhook_payload)
    print('\n ** post_response : \n', post_response, '\n')

    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda')
    }

