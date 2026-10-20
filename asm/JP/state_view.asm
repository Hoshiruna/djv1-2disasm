
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

Jump_000_2263:
    call SetAttr2

Call_000_2266:
Jump_000_2266:
    ld a, [wArg0]
    call PlayCaseCue

; Reset object scrolling, pick the scene, and run the original case-specific refresh.
RefreshStateView:

Call_000_226c:
Jump_000_226c:
jr_000_226c:
    call ResetObjScroll
    ld a, [wCaseId]
    cp $00
    jr nz, RefreshStateCase2

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


; Select the Case II scene in bank three and reload it.
RefreshStateCase2:
jr_000_2291:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call PickC2Scene

Jump_000_229b:
    call PopRomBank
    call ReloadScene
    ret

; Read and set the current train-room fare-view state, then refresh without an attribute or cue change.
ShowCarFare:
SetC2RoomView:


Jump_000_22a2:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call TrainRoomState
    call PopRomBank
    jr SetStateDraw

; Read a state ID and use the state-only refresh path.
ScriptSetStateDraw:

    call ReadArg

; Set state A and refresh the scene, retaining the original lack of attribute and cue changes.
SetStateDraw:

Call_000_22b4:
jr_000_22b4:
    call SetStateBit
    ld a, [wArg0]
    jr RefreshStateView

; Clear the selected item state and attribute 2, play the case cue, and refresh the scene.
ClearSelStateView:

Call_000_22bc:
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

Jump_000_22d2:
    ld l, a
    ldh a, [hItemSlot+1]
    ld h, a
    add hl, bc

Call_000_22d7:
    ld a, [hl]
    call PlayCaseCue
    jp RefreshStateView

; Clear the current train-room fare-view state, play its cue, and refresh.
HideCarFare:
ClearC2RoomView:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TrainRoomState
    call PopRomBank
    jp ClearStateView

; Clear the two additional train-room states in order; retain both cue and refresh calls.
ClearTrainLinks:
ClearC2ExtraView:


    push af
    ld a, $03
    call PushRomBank
    pop af
    call TrainRoomStateA
    call PopRomBank
    call ClearStateView
    push af

Jump_000_22ff:
    ld a, $03
    call PushRomBank
    pop af
    call TrainRoomStateB
    call PopRomBank
    jp ClearStateView

; Read a state ID, clear it, play the case cue, and refresh the scene.
ScriptClrStateView:


    call ReadArg

; Clear state A, play the case cue, and refresh the scene.
ClearStateView:

Call_000_2311:
Jump_000_2311:
    call ClearStateBit
    call PlayCaseCue
    jp RefreshStateView
