     ----------
     priorities
     ----------
 ✅ 

some accuracy/reliability testing done on all of these.
### UBX-CONT101
### UBX-TILT100
Then compare all the OCC sensors (specifically for Occupancy status/counts)

---

Backlog

* Study Humidity Control logic of WT201 V2
* Python script to better automate batch registration of devices (for mfg/ops)
* Add Support for Water Leak sensor(s)
* Test FUOTA on AWS with WT201 V2

---

* multi-cast will be straightforward b/c AWS more or less merely asks for more devices to be added.
    The task is configured with a line or 2 for multi-task.
* my present sense is - do multi-cast everywhere on every device with the right starting version, v1.1.
  Schedule it for an off-hour like 2:00 a.m. or similar.  Time zone influence on scheduling - ?

