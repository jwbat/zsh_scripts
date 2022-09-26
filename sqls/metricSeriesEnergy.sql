SELECT to_varchar(stamp_utc::TIMESTAMP_NTZ, 'YYYY-MM-DD"T"HH24:MI:SS.FF"Z"') AS stamp_utc,  
        agg_sensor   
    FROM (SELECT row_number() OVER (ORDER BY STAMP) as row_num, 
        stamp::TIMESTAMP_NTZ as stamp_utc, 
        avg(data:average_milliampere)    
            OVER (ORDER BY stamp ROWS BETWEEN 9 PRECEDING AND CURRENT ROW) as agg_sensor
        FROM sbg_state_transfer 
        WHERE deviceuuid = '7b794dd5-e29c-4851-a533-100c57dc4cff' 
            AND stamp::TIMESTAMP_NTZ > '2022-07-19'
            AND stamp::TIMESTAMP_NTZ < '2022-07-30'
        ORDER BY stamp ASC) x  
    WHERE mod(row_num, 10) = 0;
