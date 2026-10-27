
; After escape, show the planted-evidence mob war and Chicago epilogue, play the credits, then remain in the ending loop.
WinCase2:
PlayC2Final:


Jump_003_577b:
jr_003_577b:
    xor a
    call PlayAudio
    ld a, $d3
    call ShowMsg1 ; Message Text15Message53: YOU ARE NOT / FOLLOWED AS YOU / LEAVE THE CITY.[PAGE] / YOUR PLAN MIGHT / HAVE ACTUAL...
    ld a, FxVegasNews2
    call SwitchC2Fx
    ld a, $d5
    call ShowMsg1 ; Message Text15Message55: MEANWHILE, BACK / IN THE CITY OF / LAS VEGAS...[END]
    ld a, $09
    call PlayAudio
    ld a, FxLuckyDoor
    call SwitchC2Fx
    ld a, $d8
    call ShowMsg1 ; Message Text15Message58: GANG KINGPIN / ANTHONY MALONE / NOTICES SOMETHING / DIFFERENT ABOUT / HIS DESK IN HIS...
    ld a, FxCleaners
    call SwitchC2Fx
    ld a, $28
    call PlayAudio
    call PlayMobWar
    ld a, $09
    call PlayAudio
    xor a
    ld [wC2AnimFrame], a
    ld [wC2AnimTick], a
    ld a, C2TextAnim
    call SetObjFlag
    ; Mode-one END clears clipping only when result bit 3 is clear.
    ld a, $e7
    call ShowMsg1 ; Message Text15Message67: AT THE SAME TIME, / MOBSTER DANIEL / VENTINI DISCOVERS / A TELLTALE CIGAR / RING IN H...
    ld a, C2TextAnim
    call ClearObjFlag
    ld a, FxLuckyDoor
    call SwitchC2Fx
    ld a, $ab
    call SetObjFlag
    call AnimateWarMarks
    ; Starting this message enables text clipping again.
    ld a, $e8
    call ShowMsg1 ; Message Text15Message68: THE GANG WAR / EXPLODES ACROSS / THE QUIET OF THE / DESERT CITY.[END]
    ld a, $ab
    call ClearObjFlag
    ld a, $02
    call PlayAudio
    ld a, FxVegasNews1
    call SwitchC2Fx
    ld a, $78
    call WaitTicks
    ld a, $eb
    call ShowMsg1 ; Message Text15Message6B: THE NEWSPAPERS / TRUMPET THE BIG / NEWS OF THE LAST / FEW DAYS...[PAGE] / "-GREAT LAS...
    call ResumeTextUI
    ld a, $78
    call WaitTicks
    call PlayEndCredits

; Remain in the final ending loop.
C2EndingHold:
jr_003_57fb:
    jr C2EndingHold
