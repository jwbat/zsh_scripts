#!/usr/bin/env python3
import requests
from requests import get

url = (
    'https://fundresearch.fidelity.com/mutual-funds/api/v1/investments/'
    '31617H805/header?funduniverse=RETAIL&documentId=31617H805'
)

resp = get(url, headers={'User-Agent': 'Mozilla/5.0'})
resp.raise_for_status()     # exception on 4xx/5xx
data = resp.json()          # no need to manually call json.loads

yield_val = data['dailyInfo']['subjectAreaData']['sevenDayYield']
print(f'FZDXX 7-Day Yield: {yield_val}%')
