#! python3

# Description
# call the OpenWeatherMap API to get current weather conditions 

# Usage
# t

import os
import json
import requests
from pprint import PrettyPrinter
from colored import fg


os.system('clear')


blue = fg(87)
red = fg(196)
light_red = fg(9)
yellow = fg(192)
indianred = fg(202)
khaki = fg(185)
honeydew = fg(194)

API_KEY = os.getenv('OpenWeatherAPIKey')
CITY = 'White Salmon'
STATE = 'WA'

response = requests.get(f'https://api.openweathermap.org/data/2.5/weather?q={ CITY }&appid={API_KEY}&units=imperial')
print(response)
exit()

#pp = PrettyPrinter(indent=4)
#pp.pprint(response.json())

temperature = response.json()['main']['temp']
high        = response.json()['main']['temp_max']
low         = response.json()['main']['temp_min']
humidity    = response.json()['main']['humidity']
description = response.json()['weather'][0]['description']
wind_speed  = response.json()['wind']['speed']

#temperature, high, low = celc_to_fahr(temperature), celc_to_fahr(high), celc_to_fahr(low)
temperature, high, low = round(temperature), round(high), round(low)


print()
print(khaki + CITY.rjust(40))
print(red + 'temperature:'.rjust(25), (honeydew + str(temperature) + '° F').rjust(35))
print(red + 'high:'.rjust(25), (honeydew + str(high) + '° F').rjust(35))
print(red + 'low:'.rjust(25), (honeydew + str(low) + '° F').rjust(35))
print(red + 'humidity:'.rjust(25), (honeydew + str(humidity)).rjust(35))
print(red + 'description:'.rjust(25), (honeydew + str(description)).rjust(35))
print(red + 'wind speed:'.rjust(25), (honeydew + str(wind_speed) + ' mph').rjust(35))
print()
