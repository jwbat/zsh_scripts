     ----------
     priorities
     ----------
 ✅ 

 this workflow:
1. Milesight toggle on all units (no probes)
2. Run your script
3. Wait 2mins. If any of them don’t have the screen on, repeat 2

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
