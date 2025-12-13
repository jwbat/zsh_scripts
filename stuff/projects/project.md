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
FUOTA to 1.3 for all online Tstats

    - Short Term:
    - User cannot update their own FW, but we don’t let them shoot themselves in the foot by using an old version.
    - Should we surface these events automatically? Or just wait for a user to ask for it,
        based on a UI warning message? (since this should be rare,
        I’m tempted to take the user-driven approach to save the effort of automation.
        Also maybe we will empower them to do themselves soon anyway)

    - Long Term: 
        - What is the UI and how will the back end work to let users update FW themselves?

---
