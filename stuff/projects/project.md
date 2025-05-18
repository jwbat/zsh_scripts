 ✅ 


     ----------
     priorities
     ----------

# These should arrive to me by Friday:
### EM320 LoRaWAN TILT Sensor
### EM300-MCS Magnetic Contact Switch 1
### WS202 PIR & Light Sensor 1
Here’s time install timeline:
    5/30 (AM on site in NY)
### Tilt Sensor (EM320-TILT
    6/2 (AM on site in NY)
### Occupancy / PIR (WS202)
### Bathroom Occupancy (VS330)
### Gate Sensor (EM300-MCS)
8-in-1 without screen (AM308L is identical to AM308, so no work here except maybe a new model number and KA)

(Note: David presently thinks the WS202 is better than VS370 which is why
he has not planned any… i think he may change his mind after testing)

---

### New Product Support for Prime Group (estimate time to integrate only):

These will be required for outdoor usage, especially on access controlled lift gates for car entry/exit:

    * EM300-MCS Magnetic switch 

Prime Group is interested in VS350 & VS351 for traffic level assessment.  
Their main goal for counting is to identify whether someone is living in facility overnight.  
So they would like to pilot these sensors as a basis for detecting any presence:

    * VS370 Presence Sensor
    * VS330 Bathroom Occ Sensor

David & Josh feel that this device may be better at detecting Bay Door open/close  
than the switch closures that were used at the first Queens, NY test site:

    * EM320-tilt 

This is less critical for Prime now, but it keeps coming up as a strong candidate for threshold counting,  
and I’d like to estimate the support effort:

    * VS360 Breakbeam Counter

Backlog

* Study Humidity Control logic of WT201 V2
* Python script to better automate batch registration of devices (for mfg/ops)
* Add Support for Water Leak sensor(s)
* Test FUOTA on AWS with WT201 V2

---


* Study Humidity Control logic of WT201 V2

---

* multi-cast will be straightforward b/c AWS more or less merely asks for more devices to be added.
    The task is configured with a line or 2 for multi-task.
* my present sense is - do multi-cast everywhere on every device with the right starting version, v1.1.
  Schedule it for an off-hour like 2:00 a.m. or similar.  Time zone influence on scheduling - ?

