; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc2_00:
    ; Show message 0.
    db $00, $74
    ; End script.
    db $ff

C1Sc2_01:
    ; Test object flag.
    db $16, $20
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc2_00
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Clear object flag.
    db $18, $9a
    ; Set object flag.
    db $17, $20
    ; Refresh room objects.
    db $27
    ; Test object flag.
    db $16, $24
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc2_03
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Loc2_03:
    ; Show message 0.
    db $00, $7a
    ; End script.
    db $ff

C1Loc2_00:
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc2_02:
    ; Test object flag.
    db $16, $20
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc2_01
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02

jr_006_4ce0:
    db $02
    ; Clear object flag.
    db $18, $20
    ; Set object flag.
    db $17, $9a
    ; Refresh room objects.
    db $27
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc2_01:
    ; Set text name 0.
    db $1e, $e0
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc2_03:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

C1Sc2_04:
jr_006_4cf0:
    ; Show message 0.
    db $00, $2e
    ; End script.
    db $ff

C1Sc2_05:
    ; Test object flag.
    db $16, $21
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc2_00
    ; Set text name 0.
    db $1e, $e1
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Clear object flag.
    db $18, $9b
    ; Set object flag.
    db $17, $21
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

C1Sc2_06:
jr_006_4d03:
    ; Test object flag.
    db $16, $21
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc2_01
    ; Set text name 0.
    db $1e, $e1
    ; Show message 2.
    db $02, $02
    ; Clear object flag.
    db $18, $21
    ; Set object flag.
    db $17, $9b
    ; Refresh room objects.
    db $27
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Sc2_07:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

C1Sc2_08:
    ; Test object flag.
    db $16, $22
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc2_00
    ; Set text name 0.
    db $1e, $e2
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Clear object flag.
    db $18, $9c
    ; Set object flag.
    db $17, $22
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

C1Sc2_09:
    ; Test object flag.
    db $16, $22
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc2_01
    ; Set text name 0.
    db $1e, $e2
    ; Show message 2.
    db $02, $02

jr_006_4d2f:
    ; Clear object flag.
    db $18, $22
    ; Set object flag.
    db $17, $9c
    ; Refresh room objects.
    db $27
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Sc2_0A:
    ; Show message 2.
    db $02, $ce
    ; End script.
    db $ff

C1Sc2_0B:
    ; Test object flag.
    db $16, $23
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc2_00
    ; Set text name 0.
    db $1e, $e3
    ; Show message 2.
    db $02, $00
    ; Keep selected change.
    db $26
    ; Set object flag.
    db $17, $23
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

C1Sc2_0C:
    ; Test object flag.
    db $16, $23
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc2_01
    ; Set text name 0.
    db $1e, $e3
    ; Show message 2.
    db $02, $02
    ; Clear object flag.
    db $18, $23
    ; Refresh room objects.
    db $27

jr_006_4d53:
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Sc2_0D:
    ; Test object flag.
    db $16, $25
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc2_02
    ; Show message 1.
    db $01, $2c
    ; End script.
    db $ff

C1Loc2_02:
    ; Show message 1.
    db $01, $2c
    ; Run scene effect.
    db $46, $1a
    ; End script.
    db $ff
