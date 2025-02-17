#!/bin/zsh

query="

SELECT 
      TO_CHAR(MAX((property_value->>'watchdog_last_seen')::TIMESTAMPTZ AT TIME ZONE 'America/Los_Angeles'), 
        'MM-DD-YYYY HH12:MI:SS AM') AS time,
      CONCAT(ROUND(MAX(CAST(property_value->>'temp_c' AS FLOAT) * 9/5 + 32), 1)::STRING, ' °F') AS temp,
      CONCAT(MAX(property_value->>'rh_pct')::STRING, ' %') AS rh,
      CONCAT(MAX(property_value->>'co2_ppm')::STRING, ' ppm') AS co2
    FROM ubx_device_property_state 
    WHERE registry_uuid = 'b3ab5550-c8ec-4190-8a54-99e604f13fba';
"

cockroach sql --url $UBX_GLOBAL --execute $query --format=csv > temp_el.csv;
tbl temp_el.csv;
rm temp_el.csv;
echo ""

exit 0
