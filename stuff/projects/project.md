     ----------
     priorities
     ----------
 ✅ 

OCC100
    WellStat Fed Res Board Gov 1801 K St
    First order of business is to make sure our queries that graph occupancy are correctly tallying the raw data


1. Make sure that generally our bar charts represent a correct summation of the raw SF data.
    Doesn’t matter which data you look at but you might as well study the periods David was looking at 1801K to start?
2. if our bar chart algos look correct, then see if you can draw any conclusions about why the data 
    doesn’t match David’s on site observations. (Theories about sensor limitations or sources of error)


 Per yesterdays product sync, the performance of the occupancy sensors at 1801K is not great. 
 Similar to what we are seeing at Prime Group, but worse due to complexity of environment.
 Based on my observations there should be very distinict in/out patterns and we should be seeing 1,000+ ins / outs per day.
 Here is what the pattern should look like:
    7-9 > 90% In Traffic (high traffic)
    9-11:30 > 50% In / 50% Out (low / moderate traffic)
    11:30-12:30 > 25% In / 75% Out (moderate / high traffic) - Go to Lunch
    12:30 - 1:30 > 75% In / 25% Out  (moderate / high traffic) - Come back from Lunch
 I assume the afternoon would be similar to morning, but reversed for end of day.
 A couple of items:
    We need to eliminate UBX collection / calculation / display errors from the data I am looking at. 
    It would be helpful to have the occupancy changes we already discussed for Prime Group - 
        1.) daily display at 10 min resolution on ins / outs 
        2.) reorientation of bar chart around activity and 
        3.) total report for building.

---

> move device check to Ready for Review on KB.
> Alert offline devices > gap

---

- I’m starting to brainstorm how we can stay more on top of device and gateway outages with  
- a very fast path that leverages your device/hub_check scripts being run on a regular basis (nightly? daily at  
- noon? on-demand?).  Here’s the essence of what I think I want to know (but would like your  
- feedback and ideas):
- We want to identify as quickly as possible when a Device or Hub has  
- gone offline for more than X minutes. I don’t recall whether hub_check is using agent data as  
- its basis, or just device data that has passed through it? For now I’ll assume agent data  
- as I think that’s probably what we’ll want to use (I’d wager that device_check might work to  
- look for gaps in hub agent data).
- I think a good strategy might be to run every  
- day (at midnight and noon?) a report of EVERY Device or Hub that has had any >  
- Xmin gap in the last 12hrs. The output should be grouped by Account>Building. It would be posted  
- to a dedicated slack channel.
- That will surface a list of things we might want to look  
- into every time any outage, anywhere happens.  This list might be a bit noisy, especially when it  
- comes to devices/hubs that have become permanently offline. To solve that propblem, I propose that we establish  
- an “ignore” list that has a list of EUIs that we decide we can safely ignore. That  
- would probably include a comment at the end of the EUI to describe that device and maybe  
- have a URL to it on UBX, and perhaps notes about why it’s offline.
- It’s possible we’ll  
- find instances of locations that have very frequent outages (LTE problems?). Those might end up being put  
- on a special list of “problem child” EUIs that might either get a different set of requirements  
- (Gap must be larger. Or only run once a week). We can brainstorm how to best handle  
- these.
- Finally, I might expect that sales people would like to focus on just specific accounts that  
- are really critical--like new/important customers. But they don’t want to have to stay on top of. Maybe  
- that works exactly like the method above but gets its own slack channel so that they can  
- focus on just their key customers. And they’d specify perhaps a “watchlist” as a list of buildingUuid’s  
- (with comment for name and link to UBX URL).
- For your consideration.

- I am thinking more about different “configurations” that make it possible for different use cases of investigations.  
- Like different gap sizes when certain devices are set to unique non-standard intervals.  
- Or simply when we want to study shorter outages and not just longer ones.  
- It seems increasingly like some design that makes it easy to create a config file for different users could be worthy.  
- And the idea of two types of lists is appealing: one is when you have a specific set of things you want to monitor   
- (for Arthur or Sales).  
- The other is when you want to monitor everything but be able to specify an ignore list (for Ops or Arthur).  
- Having the flexibility to specify either type by buildingUuid or EUI might be really handy too.  

---
Backlog

* Study Humidity Control logic of WT201 V2
 ✅Test FUOTA on AWS with WT201 V2

---

* multi-cast will be straightforward b/c AWS more or less merely asks for more devices to be added.
    The task is configured with a line or 2 for multi-task.
* my present sense is - do multi-cast everywhere on every device with the right starting version, v1.1.
  Schedule it for an off-hour like 2:00 a.m. or similar.  Time zone influence on scheduling - ?
