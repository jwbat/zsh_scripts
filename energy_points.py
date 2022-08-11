from colored import fg

red, green, yellow, orange = fg(160), fg(120), fg(226), fg(202)


pts = [
    { "time": "2022-06-20T23:00:00+00:00", "accumNaHr": 21002130735, "voltage": 4 },
    { "time": "2022-06-21T23:00:00+00:00", "accumNaHr": 37943665806, "voltage": 4 },
    { "time": "2022-06-22T23:00:00+00:00", "accumNaHr": 55791254901, "voltage": 4 },
    { "time": "2022-06-23T23:00:00+00:00", "accumNaHr": 64687097076, "voltage": 4 },
    { "time": "2022-06-24T23:00:00+00:00", "accumNaHr": 74846623826, "voltage": 4 },
    { "time": "2022-06-25T23:00:00+00:00", "accumNaHr": 85033928960, "voltage": 4 },
    { "time": "2022-06-26T23:00:00+00:00", "accumNaHr": 95374778649, "voltage": 4 },
    { "time": "2022-06-27T23:00:00+00:00", "accumNaHr": 105322979675, "voltage": 4 },
    { "time": "2022-06-28T23:00:00+00:00", "accumNaHr": 115242966911, "voltage": 4 },
    { "time": "2022-06-29T23:00:00+00:00", "accumNaHr": 125150425379, "voltage": 4 },
    { "time": "2022-06-30T23:00:00+00:00", "accumNaHr": 135101028719, "voltage": 4 },
    { "time": "2022-07-01T20:00:00+00:00", "accumNaHr": 143800007374, "voltage": 4 } ]



f = lambda d1, d2: { **d2, 'accumNaHr': d2['accumNaHr'] - d1['accumNaHr'] }

new_pts = [f(pts[idx - 1], pts[idx]) for idx in range(1, len(pts))]

for pt in new_pts:
    print()
    for k, v in pt.items():
        print('\t', yellow, k, ':  ',  green, v)
