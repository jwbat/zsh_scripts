     ----------
     priorities
     ----------
 ✅ 

1. Tstat V2 difference documentation


 ✅ to analyze uplink data at the Heat Pump Store for the two assets that uplink every 1min:
    Tstat: https://app.ubxsystems.com/assets/74a63dc1-5e2a-407a-812a-127f6790c651
    Dual Temp Probe: https://app.ubxsystems.com/assets/2258c432-b900-4576-bca3-a38a41a922ac

 ✅ Also we need to use your tool to analyze from Snowflake whether there are any missing 
    1min Tstat uplinks during testing periods.
    So far Arthur and I believe periodic uplinks are reliable even in long latency LTE conditions.
    But I’d like to be sure.
    Actually something immediately helpful would be to look at the uplink stats on this Tstat since install.
    This location has strong RSSI but ping latencies of 1sec.
    Want to know if the regular uplinks are not getting through because of that:
    https://app.ubxsystems.com/assets/74a63dc1-5e2a-407a-812a-127f6790c651
