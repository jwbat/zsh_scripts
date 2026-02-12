 ✅ 

Questions:

- What time period does counter_a and counter_b represent (fixed time? or based on configured uplink interval?)
    these reset to 0 after each transmission (report), so represent counts per uplink interval.

- What is the default uplink interval?  Can we configure it and if so what are all the options to do so?
    default uplink interval: 15 minutes.  to configure, the "stable" option is via NFC.  (see note below **)

- What do device_status and payload_type mean?
    device_status: reports one of the following status messages once on the next uplink:

        No status information
        Startup
        Reconnect
        Settings changed
        Placed battery not full during startup

    payload_type:  signifies which device type, in this case, People Counter.
        So we only have the 1 type as of now.  We can switch on the type from IMB if we use other devices from them.

- How can we translate battery_voltage to a % ?
    not resolved yet ..

** settings changed via downlink are "volatile": 
    "when the device resets or powers off and on again the settings are back to the configured settings within NFC memory"
