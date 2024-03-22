#!/bin/zsh

query="
    SELECT 
        MAX((property_value->>'watchdog_last_seen')::TIMESTAMPTZ AT TIME ZONE 'America/Los_Angeles') AS time,
        ROUND(MAX(CAST(property_value->>'temp_c' AS FLOAT) * 9/5 + 32), 1) AS temp,
        MAX(property_value->>'rh_pct') AS rh,
        MAX(property_value->>'co2_ppm') AS co2
    FROM ubx_device_property_state 
    WHERE registry_uuid = 'b3ab5550-c8ec-4190-8a54-99e604f13fba';
"

cockroach sql --url $UBX_GLOBAL --execute $query --format=csv > temp_el.csv;
tab temp_el.csv;
rm temp_el.csv;

exit 0
