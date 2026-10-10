
; Set the selected item state and attribute 2, play the case cue, and refresh the scene.
SetSelStateView:


    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call SetStateBit
    call SetAttr2
    ld bc, wItemId

Call_000_20ff:
Jump_000_20ff:
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call PlayCaseCue
    jp RefreshStateView

; Read a state ID, set its state and attribute 2, then play the cue and refresh.
ScriptSetStateView:


    call ReadArg
    call SetStateBit

Jump_000_2113:
    call SetAttr2
    ld a, [wArg0]
    call PlayCaseCue

; Reset object scrolling, pick the scene, and run the original case-specific refresh.
RefreshStateView:

Call_000_211c:
Jump_000_211c:
jr_000_211c:
    call ResetObjScroll
    ld a, [wCaseId]
    cp $00
    jr nz, jr_000_2141

    push af
    ld a, $01
    call PushRomBank
    pop af
    call PickC1Scene
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call RefreshC1
    call PopRomBank
    ret


Call_000_2141:
jr_000_2141:
    push af
    ld a, $03
    call PushRomBank
    pop af

Jump_000_2148:
    call PickC2Scene
    call PopRomBank
    call ReloadScene
    ret

; Read the current Case II room state ID and set it before refreshing the scene.
SetC2RoomView:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomState
    call PopRomBank
    jr jr_000_2164

; Read a state ID and use the state-only refresh path.
ScriptSetStateDraw:

Call_000_2161:
    call ReadArg

; Set state A and refresh the scene, retaining the original lack of attribute and cue changes.
SetStateDraw:

Call_000_2164:
jr_000_2164:
    call SetStateBit
    ld a, [wArg0]
    jr jr_000_211c

; Clear the selected item state and attribute 2, play the case cue, and refresh the scene.
ClearSelStateView:

Call_000_216c:
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc
    ld a, [hl]
    call ClearStateBit
    call ClearAttr2
    ld bc, wItemId
    ldh a, [hItemSlot]
    ld l, a

Call_000_2183:
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc

Call_000_2187:
    ld a, [hl]
    call PlayCaseCue
    jp RefreshStateView

; Read the current Case II room state ID, clear it, play the cue, and refresh.
ClearC2RoomView:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomState
    call PopRomBank
    jp ClearStateView

; Clear each additional Case II room state in order, preserving both cue and refresh calls.
ClearC2ExtraView:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomStateA

Call_000_21a8:
    call PopRomBank
    call ClearStateView
    push af
    ld a, $03
    call PushRomBank
    pop af
    call C2RoomStateB
    call PopRomBank
    jp ClearStateView

; Read a state ID, clear it, play the case cue, and refresh the scene.
ScriptClrStateView:


    call ReadArg

; Clear state A, play the case cue, and refresh the scene.
ClearStateView:

Call_000_21c1:
Jump_000_21c1:
    call ClearStateBit
    call PlayCaseCue
    jp RefreshStateView
