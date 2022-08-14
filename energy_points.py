from colored import fg
import datetime

red, green, yellow, orange = fg(160), fg(120), fg(226), fg(202)

# (datetime.datetime(2022, 6, 20), '21002130735', '4')
#                           (time, accumNaHr, voltage) 

resp = [
    (datetime.datetime(2022, 6, 20), '21002130735', '4'),
    (datetime.datetime(2022, 6, 21), '37943665806', '4'),
    (datetime.datetime(2022, 6, 22), '55791254901', '4'),
    (datetime.datetime(2022, 6, 23), '64687097076', '4'),
    (datetime.datetime(2022, 6, 24), '74846623826', '4'),
    (datetime.datetime(2022, 6, 25), '85033928960', '4'),
    (datetime.datetime(2022, 6, 26), '95374778649', '4'),
    (datetime.datetime(2022, 6, 27), '105322979675', '4'),
    (datetime.datetime(2022, 6, 28), '115242966911', '4'),
    (datetime.datetime(2022, 6, 29), '125150425379', '4'),
    (datetime.datetime(2022, 6, 30), '135101028719', '4'),
    (datetime.datetime(2022, 7, 1),  '143800007374', '4')
] 

#f = lambda d1, d2: { **d2, 'accumNaHr': d2['accumNaHr'] - d1['accumNaHr'] }

def f(p1, p2):
    # kWh = Ah * V / 1000
    V = 117
    Ah = (float(p2[1]) - float(p1[1])) / 1e9
    return Ah * V / 1000


pts = [f(resp[idx - 1], resp[idx]) for idx in range(1, len(resp))]

for p in pts:
    print(p)

#        print('\t', yellow, k, ':  ',  green, v)


#pts = [
#    { "time": "2022-06-20T23:00:00+00:00", "accumNaHr": 21002130735, "voltage": 4 },
#    { "time": "2022-06-21T23:00:00+00:00", "accumNaHr": 37943665806, "voltage": 4 },
#    { "time": "2022-06-22T23:00:00+00:00", "accumNaHr": 55791254901, "voltage": 4 },
#    { "time": "2022-06-23T23:00:00+00:00", "accumNaHr": 64687097076, "voltage": 4 },
#    { "time": "2022-06-24T23:00:00+00:00", "accumNaHr": 74846623826, "voltage": 4 },
#    { "time": "2022-06-25T23:00:00+00:00", "accumNaHr": 85033928960, "voltage": 4 },
#    { "time": "2022-06-26T23:00:00+00:00", "accumNaHr": 95374778649, "voltage": 4 },
#    { "time": "2022-06-27T23:00:00+00:00", "accumNaHr": 105322979675, "voltage": 4 },
#    { "time": "2022-06-28T23:00:00+00:00", "accumNaHr": 115242966911, "voltage": 4 },
#    { "time": "2022-06-29T23:00:00+00:00", "accumNaHr": 125150425379, "voltage": 4 },
#    { "time": "2022-06-30T23:00:00+00:00", "accumNaHr": 135101028719, "voltage": 4 },
#    { "time": "2022-07-01T20:00:00+00:00", "accumNaHr": 143800007374, "voltage": 4 } ]
