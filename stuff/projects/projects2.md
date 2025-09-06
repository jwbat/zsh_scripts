     ----------
     priorities
     ----------
 ✅ 


---

#monitor-all
    Jonah/Lilly use to stay on top of every device everywhere
#monitor-arthur
    Arthur’s channel so he can setup studies of particular locations and devices he’s studying
#monitor-david
    David can stay on top of his favorite cutsomers/buildings

---

- I am thinking more about different “configurations” that make it possible for different use cases of investigations.  
- Like different gap sizes when certain devices are set to unique non-standard intervals.  
- Or simply when we want to study shorter outages and not just longer ones.  
- It seems increasingly like some design that makes it easy to create a config file for different users could be worthy.  
- And the idea of two types of lists is appealing: one is when you have a specific set of things you want to monitor   
- (for Arthur or Sales).  
- The other is when you want to monitor everything but be able to specify an ignore list (for Ops or Arthur).  
- Having the flexibility to specify either type by buildingUuid or EUI might be really handy too.  

---

* multi-cast will be straightforward b/c AWS more or less merely asks for more devices to be added.
    The task is configured with a line or 2 for multi-task.
* my present sense is - do multi-cast everywhere on every device with the right starting version, v1.1.
  Schedule it for an off-hour like 2:00 a.m. or similar.  Time zone influence on scheduling - ?
