; Confirmed script commands; unrecognized command sequences remain raw bytes.

C1Sc4_00:
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 0.
    db $00, $01
    ; Test object flag.
    db $16, $18
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_00
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Loc4_00:
    ; Show message 0.
    db $00, $02
    ; End script.
    db $ff

C1Sc4_01:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_01
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Set object flag.
    db $17, $18
    ; Set text name 1.
    db $38, $07
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_01:
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_02:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_02
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_02:
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_03:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_03
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $03
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_03:
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_04:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_04
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_04:
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_05:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_05
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_05:
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_06:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_06
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_06:
jr_006_6694:
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_07:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_07
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_07:
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_08:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_08
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $00
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_08:
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_09:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_09
    ; Test object flag.
    db $16, $8f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_0A
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_09:
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Loc4_0A:
    ; Show message 1.
    db $01, $72
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Sc4_0A:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_0B
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $06
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_0B:
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_0B:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_0C
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_0C:
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_0C:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_0D
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_0D:
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_0D:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_0E
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_0E:
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_0E:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_0F
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_0F:
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_0F:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_10
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_10:
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_10:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_11
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_11:
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_11:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_12
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_12:
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_12:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_13
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $00
    ; Set selected attribute bit 2.
    db $11
    ; Set text name 1.
    db $38, $06
    ; Keep selected change.
    db $26
    ; End script.
    db $ff

C1Loc4_13:
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $01
    ; End script.
    db $ff

C1Sc4_13:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_14
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_14:
    ; Set text name 0.
    db $1e, $c3
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_14:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_15
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_15:
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_15:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_16
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_16:
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_16:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_17
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_17:
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_17:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_18
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_18:
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_18:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_19
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_19:
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_19:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_1A
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_1A:
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_1A:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_1B
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_1B:
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_1B:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_1C
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_1C:
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_1C:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_1D
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_1D:
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_1D:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_1E
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_1E:
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_1E:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_1F
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_1F:
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_1F:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_20
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_20:
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_20:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_21
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_21:
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_21:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_22
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_22:
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_22:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_23
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_23:
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_23:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_24
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_24:
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_24:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_25
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $02
    ; Clear selected attribute bit 2.
    db $12
    ; Remove selected change.
    db $47
    ; End script.
    db $ff

C1Loc4_25:
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $03
    ; End script.
    db $ff

C1Sc4_25:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $40
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; Test object flag.
    db $16, $19
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_31
    ; Test object flag.
    db $16, $1d
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_31
    ; Show message 0.
    db $00, $17
    ; Set object flag.
    db $17, $1d

C1Loc4_30:
    ; End script.
    db $ff

C1Loc4_31:
    ; Resume text.
    db $45
    ; End script.
    db $ff

C1Sc4_26:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_32:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test item flag.
    db $52, $00
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Test item flag.
    db $52, $01
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Test property 4 bit 0.
    db $5d, $01
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C

C1Loc4_9A:
    ; Test item flag.
    db $52, $05
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Test item flag.
    db $52, $06
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Test item flag.
    db $52, $07
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b

C1Loc4_9B:
    ; End script.
    db $ff

C1Loc4_26:
    ; Show message 2.
    db $02, $56
    ; End script.
    db $ff

C1Loc4_33:
    ; Show message 2.
    db $02, $57
    ; End script.
    db $ff

C1Loc4_9C:
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

C1Sc4_27:
    ; Test selected attribute bit 0.
    db $0a

jr_006_68e3:
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_34:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Jump to script.
    db $1c
    dw C1Loc4_9A

C1Sc4_28:
    ; Show message 2.
    db $02, $37
    ; End script.
    db $ff

C1Loc4_27:
    ; Show message 0.
    db $00, $13
    ; End script.
    db $ff

C1Sc4_29:
    ; Show message 0.
    db $00, $0d
    ; End script.
    db $ff

C1Sc4_2A:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $42
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_2B:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $41
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_2C:
jr_006_691b:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $43
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_2D:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $44
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_2E:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $45
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_2F:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $46
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_30:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $47
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_31:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $48
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_32:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $49
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_33:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $4a
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_34:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $4b
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_35:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $4c
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_36:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $4d
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_37:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $4e
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_38:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $4f
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_39:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Set text name 0.
    db $1e, $50
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_3A:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_27
    ; Test object flag.
    db $16, $af
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_28
    ; Test item flag.
    db $52, $07
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_35
    ; Test item flag.
    db $52, $54
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_36
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; Set text name 0.
    db $1e, $c1
    ; Show message 2.
    db $02, $1a
    ; Set item state.
    db $53, $54
    ; Drop list value.
    db $55, $54
    ; Set first item type and ID.
    db $5c, $03, $54
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $af
    ; End script.
    db $ff

C1Loc4_35:
    ; Test whether list is full.
    db $64
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_30
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $04
    ; Set text name 0.
    db $1e, $c1
    ; Show message 2.
    db $02, $1a
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; Set item state.
    db $53, $07
    ; Drop list value.
    db $55, $07
    ; Set first item type and ID.
    db $5c, $03, $07
    ; Clear attribute bit 0.
    db $09
    ; Set object flag.
    db $17, $af
    ; End script.
    db $ff

C1Loc4_36:
    ; Show message 1.
    db $01, $1b
    ; End script.
    db $ff

C1Loc4_28:
    ; Set text name 0.
    db $1e, $51
    ; Show message 2.
    db $02, $04
    ; Set selected attribute bit 0.
    db $0b
    ; Append selected item to list.
    db $1d
    ; End script.
    db $ff

C1Sc4_3B:
    ; Show message 0.
    db $00, $08
    ; End script.
    db $ff

C1Sc4_3C:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_37:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test object flag.
    db $16, $60
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Test object flag.
    db $16, $1f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; Set object flag.
    db $17, $a1
    ; End script.
    db $ff

C1Sc4_3D:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_2A
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_29
    ; Show message 1.
    db $01, $60
    ; End script.
    db $ff

C1Loc4_29:
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_38:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $03
    dw C1Loc4_3D
    db $00, $07
    dw C1Loc4_47

jr_006_6a7c:
    db $00, $0d
    dw C1Loc4_53
    db $00, $2c
    dw C1Loc4_57
    db $00, $34
    dw C1Loc4_5B
    db $00, $35
    dw C1Loc4_5B
    db $00, $36
    dw C1Loc4_5F
    db $00, $3d
    dw C1Loc4_7B
    db $00, $3f
    dw C1Loc4_5B
    db $00, $40
    dw C1Loc4_63
    db $00, $42
    dw C1Loc4_67
    db $00, $46
    dw C1Loc4_67
    db $00, $54
    dw C1Loc4_4B
    db $00

jr_006_6aa9:
    db $5f
    dw C1Loc4_6B
    db $00, $64
    dw C1Loc4_6F
    db $00, $65
    dw C1Loc4_4F
    db $00, $68
    dw C1Loc4_6F
    db $00, $6a
    dw C1Loc4_73
    db $00, $6b
    dw C1Loc4_77
    db $01, $02
    dw C1Loc4_7B
    db $01, $06
    dw C1Loc4_7F
    db $05, $06
    dw C1Loc4_7B
    db $05, $14
    dw C1Loc4_7B
    db $05, $1b
    dw C1Loc4_7B
    db $05, $31
    dw C1Loc4_83
    db $05, $36
    dw C1Loc4_7B
    db $05, $38
    dw C1Loc4_77
    db $05, $49
    dw C1Loc4_89
    db $00, $2e
    dw C1Loc4_92
    db $00, $75
    dw C1Loc4_92
    db $00, $76
    dw C1Loc4_92
    db $00, $77
    dw C1Loc4_92
    db $00, $2f
    dw C1Loc4_93
    db $05, $47
    dw C1Loc4_41
    db $00, $73
    dw C1Loc4_39
    db $fe, $fe
    dw C1Sc4_28

C1Loc4_39:
    ; Show message 1.
    db $01, $e8
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_3A:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_3B:
    ; Show message 1.
    db $01, $e8
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_3A

C1Loc4_3C:
    ; Show message 1.
    db $01, $e8
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_3A

C1Loc4_3D:
    ; Test object flag.
    db $16, $17
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_40
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_3E:
    ; Run scene effect.
    db $46, $07
    ; Set object flag.
    db $17, $00
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22
    ; End script.
    db $ff

C1Loc4_3F:
    ; Show message 1.
    db $01, $64
    ; End script.
    db $ff

C1Loc4_40:
    ; Show message 2.
    db $02, $7d
    ; End script.
    db $ff

C1Loc4_41:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_42:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $db
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 1.
    db $01, $fc
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_43:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_42

C1Loc4_44:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_42

C1Loc4_45:
    ; Test object flag.
    db $16, $17
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_40
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_3E

C1Loc4_46:
    ; Test object flag.
    db $16, $17
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_40
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_3E

C1Loc4_47:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_48:
    ; Run scene effect.
    db $46, $07
    ; Set object flag.
    db $17, $01
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22
    ; End script.
    db $ff

C1Loc4_49:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_48

C1Loc4_4A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_48

C1Loc4_4B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_4C:
    ; Run scene effect.
    db $46, $07
    ; Set object flag.
    db $17, $09
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22

jr_006_6b94:
    ; End script.
    db $ff

C1Loc4_4D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_4C

C1Loc4_4E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_4C

C1Loc4_4F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_50:
    ; Run scene effect.
    db $46, $07
    ; Set object flag.
    db $17, $14
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $22
    ; End script.
    db $ff

C1Loc4_51:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_50

C1Loc4_52:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_50

C1Loc4_53:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_54:
    ; Run scene effect.
    db $46, $07
    ; Set object flag.
    db $17, $02
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00

jr_006_6bc7:
    db $46
    ; End script.
    db $ff

C1Loc4_55:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_54

C1Loc4_56:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1Loc4_3F; retain the interior label.
    db $35

jr_006_6bd3:
    db $6b
    ; Jump to script.
    db $1c
    dw C1Loc4_54

C1Loc4_57:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_58:
    ; Run scene effect.
    db $46, $07
    ; Set object flag.
    db $17, $15
    ; Refresh room objects.
    db $27
    ; Show message 0.
    db $00, $46
    ; End script.
    db $ff

C1Loc4_59:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_58

C1Loc4_5A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_58

C1Loc4_5B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_5C:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 2.
    db $02, $ef
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 2.
    db $02, $7f
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_5D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_5C

C1Loc4_5E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_5C

C1Loc4_5F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_60:
    ; Run scene effect.
    db $46, $07
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 2.
    db $02, $e4
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 2.
    db $02, $7e
    ; Show message 1.
    db $01, $fc
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_61:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_60

C1Loc4_62:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_60

C1Loc4_63:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_64:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $1a
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_65:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_64

C1Loc4_66:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_64

C1Loc4_67:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_68:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $41
    ; Finish Case I scene effect.
    db $5a, $14
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $7e
    ; Show message 1.
    db $01, $fc
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_69:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_68

C1Loc4_6A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_68

C1Loc4_6B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_6C:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Hold text; consume the Case I extra argument.
    db $3f, $02
    ; Show message 1.
    db $01, $ab
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 2.
    db $02, $7e
    ; Show message 1.
    db $01, $fc
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_6D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_6C

C1Loc4_6E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_6C

C1Loc4_6F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_70:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $db
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 2.
    db $02, $7f
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_71:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_70

C1Loc4_72:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_70

C1Loc4_73:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_74:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Set state and refresh.
    db $33, $4d
    ; Wait sixty ticks.
    db $68
    ; Wait sixty ticks.
    db $68
    ; Show message 1.
    db $01, $36
    ; Wait sixty ticks.
    db $68
    ; Set first item type and ID.
    db $5c, $05, $45
    ; Move to the room argument if the selected state permits.
    db $06, $38
    ; Show message 1.
    db $01, $24
    ; Clear state bit.
    db $30, $4d
    ; End script.
    db $ff

C1Loc4_75:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_74

C1Loc4_76:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_74

C1Loc4_77:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_78:
    ; Test object flag.
    db $16, $16
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_7C
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $87
    ; Run scene effect.
    db $46, $07
    ; Clear object flag.
    db $18, $0a
    ; Set object flag.
    db $17, $16
    ; Refresh room objects.
    db $27
    ; Show message 1.
    db $01, $8a
    ; End script.
    db $ff

C1Loc4_79:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

jr_006_6ce5:
    ; Jump to script.
    db $1c
    dw C1Loc4_78

C1Loc4_7A:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_78

C1Loc4_7B:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_7C:
    ; Run scene effect.
    db $46, $07
    ; Show message 1.
    db $01, $f8
    ; End script.
    db $ff

C1Loc4_7D:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_7C

C1Loc4_7E:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_7C

C1Loc4_7F:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_80:
    ; Test object flag.
    db $16, $1f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_7B
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $87
    ; Run scene effect.
    db $46, $07
    ; Set object flag.
    db $17, $1f
    ; Swap operation slots.
    db $60
    ; Set property 1 bit 2.
    db $2c, $06
    ; Refresh room objects.
    db $27
    ; Keep selected change.
    db $26
    ; Set text name 0.
    db $1e, $d6
    ; Show message 2.
    db $02, $11
    ; End script.
    db $ff

C1Loc4_81:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_80

C1Loc4_82:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_80

C1Loc4_83:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_84:
    ; Test object flag.
    db $16, $60
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_7B
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $87
    ; Run scene effect.
    db $46, $07
    ; Set state and refresh.
    db $33, $31
    ; Set object flag.
    db $17, $60
    ; Set text name 0.
    db $1e, $b0
    ; Show message 2.
    db $02, $11
    ; End script.
    db $ff

C1Loc4_85:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_84

C1Loc4_86:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_84

C1Loc4_87:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_78

C1Loc4_88:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_78

C1Loc4_89:
    ; Decrement gun 1 ammunition.
    db $4f
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F

C1Loc4_8A:
    ; Run scene effect.
    db $46, $07
    ; Show message 1.
    db $01, $a2
    ; End script.
    db $ff

C1Loc4_8B:
    ; Decrement gun 2 ammunition.
    db $59
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_8A

C1Loc4_8C:
    ; Decrement gun 3 ammunition.
    db $51
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_3F
    ; Jump to script.
    db $1c
    dw C1Loc4_8A

C1Loc4_2A:
    ; Show message 2.
    db $02, $52
    ; End script.
    db $ff

C1Sc4_3E:
    ; Test object flag.
    db $16, $90
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_2B
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 2.
    db $02, $8b
    ; Show message 2.
    db $02, $92
    ; End script.
    db $ff

C1Loc4_2B:
    ; Show message 2.
    db $02, $8b
    ; End script.
    db $ff

C1Sc4_3F:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_8D:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test item flag.
    db $52, $0e
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_40:
    ; Show message 2.
    db $02, $8c
    ; End script.
    db $ff

C1Sc4_41:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_8E:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test object flag.
    db $16, $9d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_42:
    ; Show message 2.
    db $02, $9d
    ; End script.
    db $ff

C1Sc4_43:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_8F:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test object flag.
    db $16, $7d
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_44:
    ; Show message 2.
    db $02, $ea
    ; End script.
    db $ff

C1Sc4_45:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_90:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test object flag.
    db $16, $99
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_46:
    ; Show message 2.
    db $02, $eb
    ; End script.
    db $ff

C1Sc4_47:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_2A
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    ; Target C1Loc4_2C; retain the interior label.
    db $fb

jr_006_6df7:
    db $6d
    ; Show message 1.
    db $01, $60
    ; End script.
    db $ff

C1Loc4_2C:
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_91:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $03
    dw C1Loc4_45
    db $00, $07
    dw C1Loc4_49
    db $00, $0d
    dw C1Loc4_55
    db $00, $2c
    dw C1Loc4_59
    db $00

jr_006_6e10:
    db $34
    dw C1Loc4_5D
    db $00, $35
    dw C1Loc4_5D
    db $00, $36
    dw C1Loc4_61
    db $00, $3d
    dw C1Loc4_7D
    db $00, $3f
    dw C1Loc4_5D
    db $00, $40
    dw C1Loc4_65
    db $00, $42
    dw C1Loc4_69
    db $00, $46
    dw C1Loc4_69
    db $00, $54
    dw C1Loc4_4D
    db $00, $5f
    dw C1Loc4_6D
    db $00, $64
    dw C1Loc4_71
    db $00, $65
    dw C1Loc4_51
    db $00, $68
    dw C1Loc4_71
    db $00, $6a
    dw C1Loc4_75
    db $00, $6b
    dw C1Loc4_79
    db $01, $02
    dw C1Loc4_7D
    db $01, $06
    dw C1Loc4_81
    db $05, $06
    dw C1Loc4_7D
    db $05, $14
    dw C1Loc4_7D
    db $05, $1b
    dw C1Loc4_7D
    db $05, $31
    dw C1Loc4_85
    db $05, $36
    dw C1Loc4_7D
    db $05, $38
    dw C1Loc4_87
    db $05, $49
    dw C1Loc4_8B
    db $00, $2e
    dw C1Loc4_92
    db $00, $75
    dw C1Loc4_92
    db $00, $76
    dw C1Loc4_92
    db $00, $77
    dw C1Loc4_92
    db $00, $2f
    dw C1Loc4_93
    db $05, $47
    dw C1Loc4_43
    db $00, $73
    dw C1Loc4_3B
    db $fe, $fe
    dw C1Sc4_28

C1Loc4_92:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $ee
    ; Finish Case I scene effect.
    db $5a, $15
    ; Show message 2.
    db $02, $62
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Loc4_93:
    ; Finish Case I scene effect.
    db $5a, $07
    ; Show message 1.
    db $01, $ea
    ; Finish Case I scene effect.
    db $5a, $14
    ; Show message 2.
    db $02, $7f
    ; Set exit flag and end this action.
    db $48
    ; Not reached from the recovered action and branch entries.
    db $ff

C1Sc4_48:
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_2D
    ; Test object flag.
    db $16, $8f
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_2E
    ; Hold text; consume the Case I extra argument.
    db $3f, $01
    ; Show message 1.
    db $01, $6e
    ; Show message 1.
    db $01, $1f
    ; End script.
    db $ff

C1Loc4_2D:
    ; Show message 1.
    db $01, $71
    ; End script.
    db $ff

C1Loc4_2E:
    ; Show message 1.
    db $01, $6e
    ; End script.
    db $ff

C1Sc4_49:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55

jr_006_6ebf:
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_94:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is set.
    db $04
    dw C1Loc4_9C
    ; End script.
    db $ff

C1Sc4_4A:
    ; Show message 1.
    db $01, $ff
    ; End script.
    db $ff

C1Sc4_4B:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_95:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test object flag.
    db $16, $96
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_4C:
    ; Show message 1.
    db $01, $9c
    ; End script.
    db $ff

C1Sc4_4D:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_96:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05

jr_006_6ef2:
    dw C1Loc4_9B
    ; Test object flag.
    db $16, $97
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_4E:
    ; Show message 1.
    db $01, $af
    ; End script.
    db $ff

C1Sc4_4F:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_97:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_50:
    ; Show message 1.
    db $01, $af
    ; End script.
    db $ff

C1Sc4_51:
    ; Show message 2.
    db $02, $9d
    ; End script.
    db $ff

C1Sc4_52:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_26
    ; Show message 2.
    db $02, $55
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_98:
    ; Check alternate room object.
    db $31
    ; Branch if result bit 0 is clear.
    db $05

jr_006_6f1e:
    dw C1Loc4_33
    ; Check and dispatch Case I item placement.
    db $32
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9B
    ; Test object flag.
    db $16, $98
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_9C
    ; Finish Case I item placement.
    db $5b
    ; End script.
    db $ff

C1Sc4_53:
    ; Show message 1.
    db $01, $c3
    ; End script.
    db $ff

C1Sc4_54:
    ; Show message 1.
    db $01, $bf
    ; End script.
    db $ff

C1Sc4_55:
    ; Show message 1.
    db $01, $af
    ; End script.
    db $ff

C1Sc4_56:
    ; Show message 1.
    db $01, $12
    ; End script.
    db $ff

C1Sc4_57:
jr_006_6f37:
    ; Test selected attribute bit 0.
    db $0a
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_2A
    ; Test selected attribute bit 2.
    db $10
    ; Branch if result bit 0 is clear.
    db $05
    dw C1Loc4_2F
    ; Show message 1.
    db $01, $60
    ; End script.
    db $ff

C1Loc4_2F:
    ; Show message 1.
    db $01, $b9
    ; Choose alternate target; selected input runs the following script.
    db $28

C1Loc4_99:
    ; Match alternate item against type, ID and script target rows.
    db $29, $00, $03
    dw C1Loc4_46
    db $00, $07
    dw C1Loc4_4A

jr_006_6f4e:
    db $00, $0d
    dw C1Loc4_56
    db $00, $2c
    dw C1Loc4_5A
    db $00, $34
    dw C1Loc4_5E
    db $00, $35
    dw C1Loc4_5E
    db $00, $36
    dw C1Loc4_62
    db $00, $3d
    dw C1Loc4_7E
    db $00, $3f
    dw C1Loc4_5E
    db $00, $40
    dw C1Loc4_66
    db $00, $42
    dw C1Loc4_6A
    db $00, $46
    dw C1Loc4_6A
    db $00, $54
    dw C1Loc4_4E
    db $00, $5f
    dw C1Loc4_6E
    db $00, $64
    dw C1Loc4_72
    db $00, $65
    dw C1Loc4_52
    db $00, $68
    dw C1Loc4_72
    db $00, $6a
    dw C1Loc4_76
    db $00, $6b
    dw C1Loc4_7A
    db $01, $02
    dw C1Loc4_7E
    db $01, $06
    dw C1Loc4_82
    db $05, $06
    dw C1Loc4_7E
    db $05, $14
    dw C1Loc4_7E
    db $05, $1b
    dw C1Loc4_7E
    db $05, $31
    dw C1Loc4_86
    db $05, $36
    dw C1Loc4_7E
    db $05, $38
    dw C1Loc4_88
    db $05, $49
    dw C1Loc4_8C
    db $00, $2e
    dw C1Loc4_92
    db $00, $75
    dw C1Loc4_92
    db $00, $76
    dw C1Loc4_92
    db $00, $77
    dw C1Loc4_92
    db $00, $2f
    dw C1Loc4_93
    db $05, $47
    dw C1Loc4_44
    db $00, $73
    dw C1Loc4_3C
    db $fe, $fe
    dw C1Sc4_28
