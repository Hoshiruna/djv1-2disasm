
C1ReplyRows:
    dw C1Rep00
    dw C1Rep01
    dw C1Rep02
    dw C1Rep03
    dw C1Rep04
    dw C1Rep05

C1Rep00:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $13, $00 ; Fallback action SelActionOpen: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $37, $02 ; Fallback action SelActionClose: Text10Message37: なにを しているんだ おれは?![END]
    db $ff, $ff ; Fallback action SelActionHit: script; no table reply
    db $ff, $ff ; Fallback action SelActionTalk: script; no table reply
    db $14, $00 ; Fallback action SelActionMove: Text0CMessage14: ・・・・・・むりか。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep01:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $7d, $00 ; Fallback action SelActionHit: Text0CMessage7D: ・・・なにも おこらない。[END]
    db $1b, $00 ; Fallback action SelActionTalk: Text0CMessage1B: だれに はなしかけているんだ?[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep02:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $7d, $00 ; Fallback action SelActionHit: Text0CMessage7D: ・・・なにも おこらない。[END]
    db $1b, $00 ; Fallback action SelActionTalk: Text0CMessage1B: だれに はなしかけているんだ?[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep03:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $14, $00 ; Fallback action SelActionOpen: Text0CMessage14: ・・・・・・むりか。[END]
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $ff, $ff ; Fallback action SelActionPut: script; no table reply
    db $ff, $ff ; Fallback action SelActionTake: script; no table reply
    db $13, $00 ; Fallback action SelActionClose: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $1a, $00 ; Fallback action SelActionHit: Text0CMessage1A: コン コン! / ・・・・・・なにも おこらない。[END]
    db $13, $00 ; Fallback action SelActionTalk: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $14, $00 ; Fallback action $09: Text0CMessage14: ・・・・・・むりか。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep04:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: script; no table reply
    db $ff, $ff ; Fallback action SelActionPut: script; no table reply
    db $ff, $ff ; Fallback action SelActionTake: script; no table reply
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $1a, $00 ; Fallback action SelActionHit: Text0CMessage1A: コン コン! / ・・・・・・なにも おこらない。[END]
    db $1b, $00 ; Fallback action SelActionTalk: Text0CMessage1B: だれに はなしかけているんだ?[END]
    db $13, $00 ; Fallback action SelActionMove: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply

C1Rep05:
    db $ff, $ff ; Fallback action SelActionLook: script; no table reply
    db $ff, $ff ; Fallback action SelActionOpen: script; no table reply
    db $ff, $ff ; Fallback action SelActionUse: silent fallback; no table reply
    db $13, $00 ; Fallback action SelActionPut: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $16, $00 ; Fallback action SelActionTake: Text0CMessage16: とれないようだ。[END]
    db $ff, $ff ; Fallback action SelActionClose: script; no table reply
    db $1a, $00 ; Fallback action SelActionHit: Text0CMessage1A: コン コン! / ・・・・・・なにも おこらない。[END]
    db $13, $00 ; Fallback action SelActionTalk: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action SelActionMove: script; no table reply
    db $13, $00 ; Fallback action $09: Text0CMessage13: ははっ・・・。 / バカなことを してしまった。[END]
    db $ff, $ff ; Fallback action $0a: silent fallback; no table reply
