 ✅ 

     ----------
     priorities
     ----------

Make a summary for each device:
- Property names worth exposing for MVP
- For each Property, do we already have an existing MVP-suitable widget for visualization (Status Card, Line Graph, etc)?
- Is there a better longer term widget for the given Property?

Projects

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

