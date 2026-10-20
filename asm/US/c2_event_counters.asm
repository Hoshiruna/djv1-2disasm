
; Latched event bits 0..5 reset these timers; bit 7 uses flashlight cleanup.
; The original six-byte table has no entry for bit 6; leave its following code unchanged.
C2EventCounters:
    db C2HeatIx, C2GoonsIx, C2HuntIx, C2GuardIx, C2DebtIx, C2EndIx
