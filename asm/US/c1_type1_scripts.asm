; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc1_00:
    ; Test object flag.
    db $16, $1b
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_00
    ; Show message 1.
    db $01, $0c
    ; End script.
    db $ff

C1Loc1_00:
    ; Show message 2.
    db $02, $96
    ; End script.
    db $ff

C1Sc1_01:
    ; Test selected attribute bit 2.
    db $0d

jr_006_4a98:
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_05
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_05:
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_02:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_06
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_06:
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_03:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_07
    ; Show message 2.
    db $02, $8e
    ; End script.
    db $ff

C1Loc1_07:
    ; Set text name 0.
    db $1e, $d2

jr_006_4ac0:
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_04:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_08
    ; Set text name 0.
    db $1e, $d3
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_08:
    ; Set text name 0.
    db $1e, $d3

jr_006_4ad0:
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_05:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_09
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $00
    ; Set state and refresh.
    db $33, $48
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_09:
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_06:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_0A
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_0A:
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_07:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_0B
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_0B:
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_08:
    ; Test object flag.
    db $16, $1f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_01
    ; Show message 0.
    db $00, $43
    ; End script.
    db $ff

C1Loc1_01:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_0D
    ; Jump to script.
    db $1c
    dw C1Loc1_0C

C1Sc1_09:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_0D
    ; Set object flag.
    db $17, $1e

C1Loc1_0C:
    ; Set text name 0.
    db $1e, $d8
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

C1Loc1_0D:
    ; Set text name 0.
    db $1e, $d8
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_0A:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_0E
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_0E:
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_0B:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_0F
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_0F:
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_0C:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_10
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc1_10:
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_0D:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_11
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02

Call_006_4b60:
    db $00
    ; Set state and refresh.
    db $33, $4b
    ; Set selected attribute bit 2.
    db $0e
    ; Keep selected change.
    db $26
    ; Show message 0.
    db $00, $37
    ; End script.
    db $ff

C1Loc1_11:
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc1_0E:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_12
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_12:
    ; Set text name 0.
    db $1e, $c4
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_0F:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_13
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_13:
    ; Set text name 0.
    db $1e, $d1
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_10:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_14
    ; Set text name 0.
    db $1e, $d2
    ; Show message 2.
    db $02, $02
    ; Clear state and refresh.
    db $34, $4a
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_14:
    ; Set text name 0.
    db $1e, $d2
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_11:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_15
    ; Set text name 0.
    db $1e, $d3
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_15:
    ; Set text name 0.
    db $1e, $d3
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_12:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_16
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $02
    ; Clear state and refresh.
    db $34, $48
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_16:
    ; Set text name 0.
    db $1e, $d4
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_13:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_17
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_17:
    ; Set text name 0.
    db $1e, $d5
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_14:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_18
    ; Set text name 0.
    db $1e, $d6
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; Refresh room objects.
    db $27
    ; End script.
    db $ff

C1Loc1_18:
    ; Set text name 0.
    db $1e, $d6
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_15:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_19
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_19:
    ; Set text name 0.
    db $1e, $d7
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_16:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_1A
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_1A:
    ; Set text name 0.
    db $1e, $d9
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_17:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_1B
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_1B:
    ; Set text name 0.
    db $1e, $da
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_18:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_1C
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc1_1C:
    ; Set text name 0.
    db $1e, $db
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_19:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc1_1D
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02, $02
    ; Clear state and refresh.
    db $34, $4b
    ; Clear selected attribute bit 2.
    db $0f
    ; Remove selected change.
    db $47
    ; Show message 0.
    db $00, $38
    ; End script.
    db $ff

C1Loc1_1D:
    ; Set text name 0.
    db $1e, $c5
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc1_1A:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

C1Sc1_1B:
    ; Test object flag.
    db $16, $61
    ; Branch if result bit 0 is set.
    db $04
    dw C1Sc1_1E
    ; Show message 2.
    db $02, $84
    ; End script.
    db $ff

C1Sc1_1C:
    ; Show message 0.
    db $00, $14
    ; End script.
    db $ff

C1Sc1_1D:
    ; Test object flag.
    db $16, $1c
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_02
    ; Show message 2.
    db $02, $85
    ; End script.
    db $ff

C1Loc1_02:
    ; Show message 2.
    db $02, $94
    ; End script.
    db $ff

C1Sc1_1E:
    ; Show message 2.
    db $02, $99
    ; End script.
    db $ff

C1Sc1_1F:
    ; Test selected attribute bit 2.
    db $0d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_09
    ; Show message 1.
    db $01, $06
    ; End script.
    db $ff

C1Sc1_20:
    ; Show message 1.
    db $01, $68
    ; End script.
    db $ff

C1Sc1_21:
    ; Test object flag.
    db $16, $1f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_03
    ; Show message 1.
    db $01, $7c
    ; End script.
    db $ff

C1Loc1_03:
    ; Show message 2.
    db $02, $3b
    ; End script.
    db $ff

C1Sc1_22:
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

C1Sc1_23:
    ; Show message 1.
    db $01, $8d
    ; End script.
    db $ff

C1Sc1_24:
    ; Test object flag.
    db $16, $1e
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc1_04
    ; Show message 1.
    db $01, $8f
    ; End script.
    db $ff

C1Loc1_04:
    ; Show message 2.
    db $02, $3b
    ; End script.
    db $ff

C1Sc1_25:
    ; Show message 1.
    db $01, $9b
    ; End script.
    db $ff

C1Sc1_26:
    ; Show message 1.
    db $01, $c0
    ; End script.
    db $ff

C1Sc1_27:
    ; Show message 0.
    db $00, $36
    ; End script.
    db $ff
