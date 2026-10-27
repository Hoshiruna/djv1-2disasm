
; Select the Case II fallback reply for wOpClass and wSelAction; return when its selector is $ff.
FallbackC2:
    ld a, [wOpClass]
    add a
    ld c, a
    ld b, $00
    ld hl, C2ReplyRows
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, [wSelAction]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, bc
    inc hl
    ld a, [hl-]
    cp $ff
    ret z

    push hl
    rst RST_00

C2ReplyCalls:
    dw C2Reply0
    dw C2Reply1
    dw C2Reply2

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 0.
C2Reply0:
    pop hl
    ld a, [hl]
    call ShowMsg0
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 1.
C2Reply1:


    pop hl
    ld a, [hl]
    call ShowMsg1
    ret

; Dispatch continuation: pop the saved reply pointer and pass its low byte to message helper 2.
C2Reply2:


    pop hl
    ld a, [hl]
    call ShowMsg2
    ret

C2ReplyRows:
    dw C2Rep00
    dw C2Rep01
    dw C2Rep02
    dw C2Rep03
    dw C2Rep04
    dw C2Rep05
    dw C2Rep06

C2Rep00:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $d3, $00 ; Fallback action SelActionOpen: Text13Message53: HMM... / IT DOESN'T OPEN.[END]
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $e5, $00 ; Fallback action SelActionPut: Text13Message65: IF YOU DON'T HAVE / IT, YOU CAN'T / THROW IT AWAY.[END]
    db $e1, $00 ; Fallback action SelActionTake: Text13Message61: I CAN'T DO THAT.[END]
    db $2d, $00 ; Fallback action SelActionClose: Text12Message2D: WHAT ARE YOU / DOING...?[END]
    db $ff, $ff ; Fallback action SelActionHit: script; no table reply
    db $ff, $ff ; Fallback action SelActionTalk: script; no table reply
    db $2d, $00 ; Fallback action SelActionMove: Text12Message2D: WHAT ARE YOU / DOING...?[END]
    db $13, $00 ; Fallback action $09: Text12Message13: IT'S YOUR LUCKY / TRENCH COAT, / COMPLETE WITH A / NEW SET OF / WRINKLES ...
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C2Rep01:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $e5, $00 ; Fallback action SelActionPut: Text13Message65: IF YOU DON'T HAVE / IT, YOU CAN'T / THROW IT AWAY.[END]
    db $e1, $00 ; Fallback action SelActionTake: Text13Message61: I CAN'T DO THAT.[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $2c, $00 ; Fallback action SelActionHit: Text12Message2C: NOTHING HAPPENS.[END]
    db $e3, $00 ; Fallback action SelActionTalk: Text13Message63: ...NO ANSWER.[END]
    db $2d, $00 ; Fallback action SelActionMove: Text12Message2D: WHAT ARE YOU / DOING...?[END]
    db $13, $00 ; Fallback action $09: Text12Message13: IT'S YOUR LUCKY / TRENCH COAT, / COMPLETE WITH A / NEW SET OF / WRINKLES ...
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C2Rep02:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $e5, $00 ; Fallback action SelActionPut: Text13Message65: IF YOU DON'T HAVE / IT, YOU CAN'T / THROW IT AWAY.[END]
    db $e1, $00 ; Fallback action SelActionTake: Text13Message61: I CAN'T DO THAT.[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $2c, $00 ; Fallback action SelActionHit: Text12Message2C: NOTHING HAPPENS.[END]
    db $e3, $00 ; Fallback action SelActionTalk: Text13Message63: ...NO ANSWER.[END]
    db $2d, $00 ; Fallback action SelActionMove: Text12Message2D: WHAT ARE YOU / DOING...?[END]
    db $13, $00 ; Fallback action $09: Text12Message13: IT'S YOUR LUCKY / TRENCH COAT, / COMPLETE WITH A / NEW SET OF / WRINKLES ...
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C2Rep03:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $d3, $00 ; Fallback action SelActionOpen: Text13Message53: HMM... / IT DOESN'T OPEN.[END]
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $ff, $ff ; Fallback action SelActionPut: script; no table reply
    db $ff, $ff ; Fallback action SelActionTake: script; no table reply
    db $2d, $00 ; Fallback action SelActionClose: Text12Message2D: WHAT ARE YOU / DOING...?[END]
    db $2c, $00 ; Fallback action SelActionHit: Text12Message2C: NOTHING HAPPENS.[END]
    db $e3, $00 ; Fallback action SelActionTalk: Text13Message63: ...NO ANSWER.[END]
    db $2d, $00 ; Fallback action SelActionMove: Text12Message2D: WHAT ARE YOU / DOING...?[END]
    db $14, $00 ; Fallback action $09: Text12Message14: IT'S YOUR PAIR OF / GRAY PANTS WHICH / LOOK ABOUT AS BAD / AS YOU FEEL.[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C2Rep04:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $ff, $ff ; Fallback action SelActionPut: script; no table reply
    db $ff, $ff ; Fallback action SelActionTake: script; no table reply
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $2c, $00 ; Fallback action SelActionHit: Text12Message2C: NOTHING HAPPENS.[END]
    db $e3, $00 ; Fallback action SelActionTalk: Text13Message63: ...NO ANSWER.[END]
    db $2d, $00 ; Fallback action SelActionMove: Text12Message2D: WHAT ARE YOU / DOING...?[END]
    db $13, $00 ; Fallback action $09: Text12Message13: IT'S YOUR LUCKY / TRENCH COAT, / COMPLETE WITH A / NEW SET OF / WRINKLES ...
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C2Rep05:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: silent fallback; no table reply
    db $e5, $00 ; Fallback action SelActionPut: Text13Message65: IF YOU DON'T HAVE / IT, YOU CAN'T / THROW IT AWAY.[END]
    db $e1, $00 ; Fallback action SelActionTake: Text13Message61: I CAN'T DO THAT.[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $2c, $00 ; Fallback action SelActionHit: Text12Message2C: NOTHING HAPPENS.[END]
    db $e3, $00 ; Fallback action SelActionTalk: Text13Message63: ...NO ANSWER.[END]
    db $ff, $ff ; Fallback action SelActionMove: script; no table reply
    db $13, $00 ; Fallback action $09: Text12Message13: IT'S YOUR LUCKY / TRENCH COAT, / COMPLETE WITH A / NEW SET OF / WRINKLES ...
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C2Rep06:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $ff, $ff ; Fallback action SelActionPut: script; no table reply
    db $ff, $ff ; Fallback action SelActionTake: script; no table reply
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $ff, $ff ; Fallback action SelActionHit: script; no table reply
    db $ff, $ff ; Fallback action SelActionTalk: script; no table reply
    db $ff, $ff ; Fallback action SelActionMove: script; no table reply
    db $ff, $ff ; Fallback action $09: script; no table reply
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply
