 ✅ 


     ----------
     priorities
     ----------
1. Do JUST the occupancy sensor for all of these first (leave out Light & temp[?] ):
> - UBX-OCC103 = WS202 (PIR & Light Sensor)
> - UBX-OCC104 = WS203 (Presence Sensor)
> - UBX-OCC105 = VS370 (Radar Presence Sensor)
> - UBX-OCC106 = VS330 (Bathroom Occupancy Sensor)
2. Then this (but only if it looks easy and identical to UBX-CONT100)
> - UBX-CONT101 = EM300-MCS (Magnetic Contact Switch)
3. Then this “hardest”
> - UBX-TILT100 = EM320-TILT (Tilt Sensor)
Note: This plan assumes steps 1 & 2 go extremely quickly since nothing is new, so that you can pivot soon to 3. If you encounter any holdups/blockers with 1 & 2, then contact me immediately for reconsideration.
4. Finally, return to:
> - UBX-OCC103: add Light
> - UBX-OCC104: add Temperature
Tell me about anythings else that looks worth adding (and is quick/easy) on all devices


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

