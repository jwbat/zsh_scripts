     ----------
     priorities
     ----------
 ✅ 

One of my ideas is that there is one cron job / lambda per Slack channel.
This way you can configure a channel with special config options (unique gaps, allow lists, ignore lists).
We might setup special channels for sales people who want to stay on top of a particular project,
but then they leave the channel and don’t care some day

#monitor-all
    Jonah/Lilly use to stay on top of every device everywhere
#monitor-arthur
    Arthur’s channel so he can setup studies of particular locations and devices he’s studying
#monitor-david
    David can stay on top of his favorite cutsomers/buildings

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
