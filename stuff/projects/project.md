     ----------
     priorities
     ----------
 ✅ 

 testing the Tstat 1.3 binary over FUOTA would be great   
 (ideally upgrading both a 1.1 and 1.2, if possible?)

## Document the origins of FUOTA process (how did we learn that certain FPorts are required in device profiles, for example).

    - Put in a GDoc with a folder if there are any referenced files (Milesight or AWS docs)

### Examine the profile of an AIR, which has our own FUOTA support to compare Pat’s FUOTA profile choices vs yours(Milesights?)

    - See exampe AIR DevEUI; ac1f09fffe104983

## How will we know when a FUOTA has succeeded?

    - Understand our present FW version identification capabilities
    - What do we capture and where (CRDB, SF) about Milesight device FW versions?
    - Is this uplinked only on Join or also periodically while powered?

## Identify Operationalizing plans for how we handle the scenario of a Tstat that was offline when we do a   
## FUOTA to 1.3 for all online Tstats

    - Short Term:
    - User cannot update their own FW, but we don’t let them shoot themselves in the foot by using an old version.
    - Should we surface these events automatically? Or just wait for a user to ask for it,
        based on a UI warning message? (since this should be rare,
        I’m tempted to take the user-driven approach to save the effort of automation.
        Also maybe we will empower them to do themselves soon anyway)

    - Long Term: 
        - What is the UI and how will the back end work to let users update FW themselves?

---

@James  I found this diagnostic agent payload exmple.
@Arthur Babitz and I are thinking it would be great to add “uptime” to this,
which will help us differentiate between cellular outages caused by power loss versus something else 
(since when it comes back, if the uptime is really short that means it rebooted).
I don’t see any equivalent in the payload so could you put that in your backlog after the Tstat FW1.3 stuff is done?
```json
{
    "gateway_timestamp": "2024-12-02T19:09:38Z",
    "gateway_eui": "0080000000022ab5",
    "model_number": "MTCAP-LNA3-915-041A",
    "firmware": "6.0.1",
    "mac_address": "0008004c316a",
    "os": "mLinux 6.0.2",
    "python_version": "3.8.11",
    "connection_type": "Mobile",
    "home_network": "Sierra Wireless",
    "current_network": "T-Mobile",
    "cellular_mode": "4g",
    "service": "LTE",
    "lte_rssi": -84.0,
    "lte_rsrq": -13.5,
    "lte_rsrp": -116.0,
    "ping_latency_min_ms": 136.204,
    "ping_latency_avg_ms": 172.414,
    "ping_latency_max_ms": 242.688,
    "ping_latency_stddev_ms": 49.698,
    "ram": {
        "mem_total_kb": 251348,
        "mem_free_kb": 163464,
        "mem_available_kb": 196932
    },
    "cpu": {
        "model_name": "ARM926EJ-S rev 5 (v5l)",
        "bogo_mips": 33.38,
        "features": "swp half thumb fastmult edsp java",
        "hardware": "Atmel AT91SAM9"
    },
    "disk_usage": [
        {
            "filesystem": "/orig",
            "total_space_mb": 128.0,
            "used_space_mb": 91.1,
            "available_space_mb": 36.9,
            "usage_percentage": 71
        },
        {
            "filesystem": "/var/persistent",
            "total_space_mb": 104.0,
            "used_space_mb": 2.6,
            "available_space_mb": 101.4,
            "usage_percentage": 3
        }
    ]
}
```
