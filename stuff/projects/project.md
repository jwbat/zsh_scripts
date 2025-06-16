     ----------
     priorities
     ----------
 ✅ 


---

add Primegroup Saratoga devices to SQS

---


### script to evaluate RSSI for each device over time


      considerations
     ================

    The RSSI I see on the Report page, I believe is the best RSSI out of those listed for a given uplink
    (but that may deserve some verification)

    I’ve seen low RSSIs for devices that are really close to a gateway,
    which means to me that the latency was slower on that pathway (perhaps just temporarily).

    It’s worth considering how we portray signal quality even when devices may briefly jump
    to distant gateways that get through while nearer ones don’t:

        We probably don’t want a single RSSI that intermixes the RSSIs from multiple gateways.

    Maybe it’s better just to evaluate the RSSI’s for all received packets & gateways,
    and list each gateway RSSI separately.
    In that case, maybe we want to know how many uplinks went through each gateway
    (or the % of all uplinks that went through each gateway)

---

Backlog

* Study Humidity Control logic of WT201 V2
 ✅Python script to better automate batch registration of devices (for mfg/ops)
 ✅ Add Support for Water Leak sensor(s)
 ✅Test FUOTA on AWS with WT201 V2

---

* multi-cast will be straightforward b/c AWS more or less merely asks for more devices to be added.
    The task is configured with a line or 2 for multi-task.
* my present sense is - do multi-cast everywhere on every device with the right starting version, v1.1.
  Schedule it for an off-hour like 2:00 a.m. or similar.  Time zone influence on scheduling - ?
