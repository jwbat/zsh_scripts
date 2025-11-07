     ----------
     priorities
     ----------
 ✅ 

order of QA importance is:
1. Verifying that every op in UBX is consistent with Toolbox
2. Verifying that validation in the UI seems to be working and consistent with Toolbox/device validation policy
3. Verifying that the things that were broken before (downlink tolerance changes when RH enabled)
works with beta FW (I know you tested this with raw downllinks, so this is source of a sanity check)
4. Verifying that actual RH control logic appears to be working (this is hard to test without real world systems, but there are ways you can fake it by using set points (temp & RH) right near ambient, and watching Stage 1 demand calls. Or perhaps moving the Tstat between indoors outdoors (or ambient indoor and fridge?)

---

only turn on:
> G (GH) = Fan
> Y1 = Stage 1 Cooling
> W1 = Stage 1 Heating  
(all others off)

do this exclusively with UBX so that UBX representation of wiring config matches the Tstat   
(the only way UBX knows is when it gets a confirmed downlink to set the wriing)

---

ssh into the ec2 instance as backend and do a journalctl --user -f to watch the log while you try it
