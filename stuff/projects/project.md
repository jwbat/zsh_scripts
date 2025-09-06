     ----------
     priorities
     ----------
 ✅ 

---

Command (hex)                   F93b33
Command (Base64 encoded)        +Tsz
Command Desc                    Y2 and W2 auxiliary mode enable

*disable* command:
Command (hex)                   f93b30
Command (Base64 encoded)        +Tsw
Command Desc                    disable W2/Y2 auxiliary mode

---

when you’re done with X_check work (or at least at a pause at is seems we always think of new features),
we need a device config script just like you made for UBX-TEMP100 (TS302),
but for UBX-TSTAT101 to send a config command that we can’t load via Toolbox App.

However, unlike UBX-TEMP100, we can’t easily tell whether the command was received (on TEMP100 we just use the button on the side to turn the display on/off via button).
So we need to use the Confirmed Downlink (ACK) feature of LoRaWAN to verify that it was received.

 I’m just now realizing it’s weird that TEMP100 lets us downlink to it whenever we want.

---
