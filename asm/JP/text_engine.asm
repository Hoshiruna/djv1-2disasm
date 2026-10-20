; --- text_rows.asm ---

; Credit rows 11..15 read the following ShowListText instruction bytes as offsets.
TextRowOffsets:
Jump_000_1075:
    db $00, $24, $48, $6c, $90

; --- text_label.asm ---

; Draw the indexed list label from bank one, then restore the previous ROM bank.
ShowListText:

Call_000_107a:
    ld a, $01
    call PushRomBank
    call DrawListText
    call PopRomBank
    ret

; Select the case-specific label pointer by wListMark and draw it in text mode two.
DrawListText:


Call_000_1086:
    ld a, [wListMark]
    ld l, a
    ld h, $00
    add hl, hl

Call_000_108d:
    ld a, [wCaseId]
    cp $00
    jr nz, ListTextCase2

    ld bc, C1ListTexts
    jr JpListTextReadPointer

; Select the Case II list-label pointer table.
ListTextCase2:
jr_000_1099:
    ld bc, C2ListTexts

; Read the selected Japanese list-label pointer and draw it in mode two.
JpListTextReadPointer:
jr_000_109c:
    add hl, bc
    ld a, [hl+]
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    call Mode2Text
    ret

; --- text_loop.asm ---

; Call the original normal-mode text start routine.
ShowTextMsg:


Call_000_10a9:
    call StartTextMsg
    ret

; Select text mode two and enter the regional text loop.
Mode2Text:


Call_000_10ad:
    call SetTextMode2
    jr ReadTextLoop

; Select text mode one, initialize the regional text buffer, and enter the loop.
StartTextMsg:

Call_000_10b2:
    call SetTextMode1
    call InitTextBuffer

; Read one-byte text codes and retain the next byte without consuming it.
; Preserve the original end and wait controls.
ReadTextLoop:

Call_000_10b8:
Jump_000_10b8:
jr_000_10b8:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextChar], a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    ld a, [hl]
    ld [wTextNext], a
    ld a, [wTextChar]
    cp $ff
    jr z, TextEndWaitWindow

    cp $0f
    jr z, WaitTextRelease

    cp $30
    jr c, JpTextDispatchControl

    call DrawTextGlyph
    jr ReadTextLoop

; --- text_exit.asm ---

; Submit maps, draw objects, and poll until A is released.
WaitTextRelease:

Jump_000_10e4:
jr_000_10e4:
    call SubmitMapQueue

; Draw objects and poll for A release.
TextReleasePoll:
jr_000_10e7:
    call SubmitMapQueue
    call DrawRoomObjs
    call SubmitOam

Jump_000_10f0:
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, TextReleasePoll

    ret


Jump_000_10fb:
; Wait for page confirmation in window mode before the common text finish path.
TextEndWaitWindow:
jr_000_10fb:
    ld a, [wTextMode]
    bit 1, a
    call z, WaitTextPage

; --- text_end.asm ---

; Apply the original result-bit and mode cleanup conditions, then select text mode one.
FinishText:

Call_000_1103:
    ld a, [wStateResult]
    and $08
    jr z, FinishTextClearUi

    ld a, [wTextMode]
    and $02
    jr nz, FinishTextSetMode

    ret


; Clear the text interface when the result and mode require it.
FinishTextClearUi:
jr_000_1112:
    call ClearTextUI

; Select text mode one at the end of text.
FinishTextSetMode:
jr_000_1115:
    call SetTextMode1
    ret

; When mode bit 1 is clear, reset the page flag, hide the window, redraw objects, and clear result bit 3.
ClearTextUI:


Call_000_1119:
    ld a, [wTextMode]
    and $02
    jr nz, ClearTextUiReturn

    ld a, $00
    ld [wTextPageReady], a
    call HideTextWindow
    call DrawRoomObjs
    call SubmitOam
    ld a, [wStateResult]

Call_000_1131:
    and $f7

Call_000_1133:
    ld [wStateResult], a

; Return after the conditional text-interface cleanup.
ClearTextUiReturn:
jr_000_1136:
    ret

; --- text_ctrl.asm ---


; Dispatch the Japanese control range and continue reading the message.
JpTextDispatchControl:
jr_000_1137:
    call DispatchTextCtrl
    jp ReadTextLoop

; Dispatch regional text controls using the original comparisons or Japan word table.
DispatchTextCtrl:


Call_000_113d:
    ld a, [wTextChar]
    cp $20
    ret nc

    rst RST_00

; Control bytes $00..$1f index this table.
JpTextControls:
    dw DrawTextName
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw FinishText
    dw DrawTextNum8
    dw DrawTextNum16
    dw SetTextX
    dw SetTextY
    dw FinishText
    dw FinishText
    dw TextLineControl
    dw WaitTextPage
    dw ResetTextPage
    dw TextNewline
    dw FinishText
    dw FinishText
    dw FinishText
    dw FinishText
    dw DrawNameIndirect
    dw FinishText
    dw TextUseMap0
    dw TextUseMap1
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
    dw DrawTextGlyph
Jump_000_1182:
    dw DrawTextGlyph

; --- text_modes.asm ---

; Write text mode two.
SetTextMode2:

Call_000_1184:
    ld a, $02
    ld [wTextMode], a
    ret

; Write text mode one.
SetTextMode1:


Call_000_118a:
    ld a, $01
    ld [wTextMode], a
    ret

; Set text mode bit seven.
SetTextFlag7:


    ld a, [wTextMode]
    or $80
    ld [wTextMode], a
    ret

; --- text_flags.asm ---

; Clear text mode bit zero to select tile map $9800.
TextUseMap0:


Jump_000_1199:
    ld a, [wTextMode]
    and $fe
    ld [wTextMode], a
    ret

; Set text mode bit zero to select tile map $9c00.
TextUseMap1:


Jump_000_11a2:
    ld a, [wTextMode]
    or $01
    ld [wTextMode], a
    ret

; --- text_pos.asm ---

; Read the next byte into the text column or sprite X, according to text mode.
SetTextX:


Jump_000_11ab:
    ld a, [wTextMode]
    and $02
    jr nz, TextSetSpriteX

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextCol], a
    call AdvanceText1
    ret


; Set the sprite text X and start column from the stream.
TextSetSpriteX:
jr_000_11c2:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextX], a
    ld [wTextStartX], a
    call AdvanceText1
    ret

; Read the next byte into the text row or sprite Y, according to text mode.
SetTextY:


Jump_000_11d5:
    ld a, [wTextMode]

Call_000_11d8:
    and $02
    jr nz, TextSetSpriteY

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextRow], a
    call AdvanceText1
    ret


; Set the sprite text Y from the stream.
TextSetSpriteY:
jr_000_11ec:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextY], a
    call AdvanceText1
    ret

; --- text_ptr.asm ---

; Advance the text pointer by two bytes with carry.
AdvanceText2:


Call_000_11fc:
    ld a, [wTextPtr]
    add $02
    jr TextPtrStoreAdvance

; Advance the text pointer by one byte with carry.
AdvanceText1:

Call_000_1203:
    ld a, [wTextPtr]
    add $01

; Store the advanced text pointer with carry.
TextPtrStoreAdvance:
jr_000_1208:
    ld [wTextPtr], a
    ld a, [wTextPtr+1]
    adc $00
    ld [wTextPtr+1], a
    ret

; --- text_name.asm ---

; Read a two-byte address from the text stream and draw the name ID stored there.
DrawNameIndirect:


Call_000_1214:
Jump_000_1214:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    ld a, [bc]
    ld [wTextValue], a
    jr TextNameLocateRecord

; Read a name ID from the text stream and select its regional name record.
DrawTextName:

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextValue], a
    ld a, l
    ld [wTextPtr], a
    ld a, h

Call_000_123f:
    ld [wTextPtr+1], a

Jump_000_1242:
; Find the selected name record in the regional reference table.
TextNameLocateRecord:
jr_000_1242:
    ld a, [wTextValue]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [wTextRefs]
    ld c, a
    ld a, [wTextRefs+1]
    ld b, a
    add hl, bc
    ld a, l

Jump_000_1255:
    ld [wTextTmp], a
    ld a, h

Jump_000_1259:
    ld [wTextTmp+1], a
    ld a, [wTextRefs+2]

Call_000_125f:
    call PushRomBank
    call EmitTextName
    jp PopRomBank


    ret

; Draw at most eight one-byte name codes, stopping at $ff.
; Retain the following byte in wTextNext without advancing wTextTmp past it.
EmitTextName:


Call_000_1269:
    ld d, $08

; Read the next Japanese name code while retaining the eight-code limit.
JpTextNameNextChar:
jr_000_126b:
    ld a, [wTextTmp]
    ld l, a
    ld a, [wTextTmp+1]
    ld h, a
    ld a, [hl+]
    cp $ff
    ret z

    ld [wTextChar], a
    ld a, l
    ld [wTextTmp], a
    ld a, h
    ld [wTextTmp+1], a
    ld a, [hl+]

Jump_000_1283:
    ld [wTextNext], a
    push de
    call DrawTextGlyph
    pop de

Call_000_128b:
    dec d
    jr nz, JpTextNameNextChar

    ret

; --- text_num16.asm ---

; Read an indirect eight-bit value, split it into decimal digits, and draw it.
DrawTextNum8:


    call ReadTextValue8
    call SplitTextNumber
    ld a, [wTextNum100]
    call DrawTextDigit
    ld a, [wTextNum10]
    call DrawTextDigit
    ld a, [wTextNum1]
    call EmitTextDigit
    ret

; Read an indirect sixteen-bit value and draw up to five decimal digits.
DrawTextNum16:


    call ReadTextValue16
    call SplitTextNum16
    ld a, [wTextNum10000]
    call DrawTextDigit
    ld a, [wTextNum1000]
    call DrawTextDigit
    ld a, [wTextNum100]
    call DrawTextDigit
    ld a, [wTextNum10]
    call DrawTextDigit
    ld a, [wTextNum1]
    call EmitTextDigit
    ret

; Subtract the original decimal place values into the digit buffer and retain the units remainder.
SplitTextNum16:


Call_000_12cd:
    ld de, $0000

; Index the next decimal place for the sixteen-bit text number.
TextNum16NextPlace:
jr_000_12d0:
    ld c, e
    ld b, d
    sla c

; Save the remainder and subtract the current decimal place once more.
TextNum16SubtractPlace:
jr_000_12d4:
    ld a, [wTextValue]

Jump_000_12d7:
    ld [wTextTmp], a
    ld hl, TextDecPlaces
    add hl, bc
    sub [hl]
    ld [wTextValue], a
    ld a, [wTextValue+1]
    ld [wTextTmp+1], a
    inc hl
    sbc [hl]
    ld [wTextValue+1], a
    jr c, TextNum16RestoreRemainder

    ld hl, wTextNum10000
    add hl, de
    ld a, [hl]
    add $01
    ld [hl], a

Call_000_12f7:
    jr TextNum16SubtractPlace

; Restore the pre-underflow value and advance to the next decimal place.
TextNum16RestoreRemainder:
jr_000_12f9:
    ld a, [wTextTmp]

Jump_000_12fc:
    ld [wTextValue], a

Call_000_12ff:
    ld a, [wTextTmp+1]
    ld [wTextValue+1], a
    inc de
    ld a, $04
    cp e
    jr nz, TextNum16NextPlace

    ld a, [wTextValue]
    ld [wTextNum1], a
    xor a
    ld [wTextNumShown], a
    ret

; Decimal places 10000, 1000, 100, 10, 1.
TextDecPlaces:
    dw $2710, $03e8, $0064, $000a, $0001

; Read an address from the text stream, advance two bytes, and load its sixteen-bit value.
ReadTextValue16:

    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextTmp], a
    ld a, [hl]
    ld [wTextTmp+1], a
    call AdvanceText2
    ld a, [wTextTmp]
    ld l, a
    ld a, [wTextTmp+1]
    ld h, a
    ld a, [hl+]
    ld [wTextValue], a
    ld a, [hl]
    ld [wTextValue+1], a
    ld hl, wTextNum10000
    xor a
    ld c, $05

; Clear the next of five digit bytes before converting an indirect sixteen-bit value.
TextNum16ClearNextDigit:
jr_000_1349:
    ld [hl+], a
    dec c
    jr nz, TextNum16ClearNextDigit

    ret

; --- text_page.asm ---

; Apply the regional line control: Japan waits for confirmation before advancing the row.
TextLineControl:


    call WaitTextConfirm
    jp TextNewline

; Run the original regional text page confirmation path.
WaitTextPage:


Call_000_1354:
    jp WaitTextConfirm

; In window mode, reset the page through the original regional wait and initialization order.
ResetTextPage:


    ld a, [wTextMode]
    and $02
    ret nz

    call WaitTextConfirm
    call InitTextBuffer
    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a
    ret

; --- text_number.asm ---

; Suppress leading zeroes until a digit has been emitted.
DrawTextDigit:


Call_000_136b:
    ld [wTextChar], a
    cp $00
    jr nz, TextDigitEmit

    ld a, [wTextNumShown]
    cp $00
    ret z

; Emit a non-leading-zero digit glyph.
TextDigitEmit:
jr_000_1378:
    ld a, [wTextChar]

; Apply the regional digit glyph bits, mark the number started, and draw the glyph.
EmitTextDigit:

Call_000_137b:
    or $80
    ld [wTextChar], a
    ld a, $ff
    ld [wTextNumShown], a
    call DrawTextGlyph
    ret

; Split the eight-bit text value into hundreds, tens, and units; clear the digit-start flag.
SplitTextNumber:


Call_000_1389:
    ld a, [wTextValue]
    ld e, a
    ld b, $64
    call DivTextDigit
    ld [wTextNum100], a
    ld b, $0a
    call DivTextDigit
    ld [wTextNum10], a
    ld a, e
    ld [wTextNum1], a
    ld a, $00
    ld [wTextNumShown], a
    ret

; Repeatedly subtract B from E, returning the quotient in A and remainder in E.
DivTextDigit:


Call_000_13a7:
    ld d, $00

; Subtract the decimal place value while possible.
TextDivideSubtract:
jr_000_13a9:
    ld a, e
    sub b
    jr c, TextDivideDone

    inc d
    ld e, a
    jr TextDivideSubtract

; Return the quotient after subtraction would underflow.
TextDivideDone:
jr_000_13b1:
    ld a, d
    ret

; --- text_value.asm ---

; Read an address from the text stream, advance two bytes, load its byte, and clear the digit buffer.
ReadTextValue8:


Call_000_13b3:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

Jump_000_13bf:
    ld a, l

Call_000_13c0:
Jump_000_13c0:
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [wTextValue], a
    ld hl, wTextNum10000
    ld d, $05
    xor a

; Clear the next of five digit bytes before converting an indirect eight-bit value.
TextNum8ClearNextDigit:
jr_000_13d5:
    ld [hl+], a
    dec d
    jr nz, TextNum8ClearNextDigit

    ret

; --- text_init.asm ---

; Refresh room objects, reset the text buffer state, and show the text window.
InitTextBuffer:


Call_000_13da:
    ld a, $ff
    ld [wSpriteClip], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2WarText
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    ld a, $12
    ld [wTextWidth], a
    ld a, $08
    ld [wTextHeight], a

Jump_000_13fc:
    xor a
    ld [wTextOriginX], a
    ld [wTextOriginY], a
    call ClearTextBuffer

Call_000_1406:
    xor a
    ld [wTextFast], a
    ld [wTextStartX], a
    ld [wTextNoWrap], a
    call ShowTextWindow
    ret

; --- text_glyph.asm ---

; Resolve the regional character glyph and draw at the text or sprite position.
DrawTextGlyph:


Call_000_1414:
    ld a, $7f
    ld [wTextTile], a
    ld a, [wTextChar]
    ld [wTextAux], a
    cp $7f
    jr z, JpGlyphBlankLower

    bit 7, a
    jr nz, JpGlyphSelectMode

    cp $10
    jr c, JpGlyphSelectMode

    swap a
    and $07
    rst RST_00

JpGlyphParts:
    dw JpGlyphPlain
    dw JpGlyphTop90
    dw JpGlyphPlain
    dw JpGlyphTop90
    dw JpGlyphTop90
    dw JpGlyphTopA0
    dw JpGlyphTop90
    dw JpGlyphTopA0

; Return directly from the glyph dispatcher without queueing tiles or advancing text.
JpGlyphPlain:
    ret


; Keep the lower tile blank for code $7f before selecting the drawing mode.
JpGlyphBlankLower:
jr_000_1441:
    ld a, $7f
    ld [wTextAux], a
    jr JpGlyphSelectMode

; Add $80 to the lower tile and select upper tile $90.
JpGlyphTop90:

    ld a, [wTextAux]
    add $80
    ld [wTextAux], a
    ld a, $90
    jr JpGlyphStoreUpper

; Add $70 to the lower tile and select upper tile $a0.
JpGlyphTopA0:

    ld a, [wTextAux]
    add $70
    ld [wTextAux], a
    ld a, $a0

; Store the selected upper glyph tile before choosing window or sprite output.
JpGlyphStoreUpper:
jr_000_145e:
    ld [wTextTile], a

; Choose window or sprite output for the prepared upper and lower tiles.
JpGlyphSelectMode:
jr_000_1461:
    ld a, [wTextMode]
    and $02
    jr nz, JpGlyphDrawSprite

    jp DrawWindowGlyph


; Queue a one-by-two glyph rectangle with its upper tile at text Y minus one.
JpGlyphDrawSprite:
jr_000_146b:
    ld a, [wTextX]
    ld [wTextMapX], a
    ld a, [wTextY]
    dec a
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a
    ld a, $02
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTileRect
    ld a, [wTextX]
    inc a
    ld [wTextX], a
    and $e0
    ret z

    jp TextNewline

; Draw the glyph in the text window, retain its buffer entry, and advance the column.
DrawWindowGlyph:


Jump_000_1498:
    ld a, [wTextFast]
    cp $00
    jr nz, WindowGlyphPosition

    call PollJoy
    ld a, [wJoyPress]
    bit 0, a
    jr z, WindowGlyphPosition

    ld a, $ff
    ld [wTextFast], a
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2WarText
    call PopRomBank
    call RefreshObjOam

; Compute the window-map coordinates for the current glyph.
WindowGlyphPosition:
jr_000_14be:
    ld a, [wTextOriginX]
    inc a
    ld b, a
    ld a, [wTextCol]
    add b
    ld [wTextMapX], a
    ld a, [wTextOriginY]
    inc a
    ld b, a

Jump_000_14cf:
    ld a, [wTextRow]
    add a
    add b
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a
    ld a, $02
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTileRect
    ld a, [wC1Exit]
    cp $ff
    jr z, WindowGlyphSubmit

    ld a, [wTextFast]
    cp $00
    jr nz, WindowGlyphStoreBuffer

; Submit the glyph map update before the short display delay.
WindowGlyphSubmit:
jr_000_14f8:
    call SubmitMapQueue
    ld a, $03

; Update room objects during the short glyph delay.
WindowGlyphDelayFrame:
jr_000_14fd:
    push af
    push af
    ld a, $03
    call PushRomBank

Jump_000_1504:
    pop af
    call StepC2WarText
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, WindowGlyphDelayFrame

; Store the glyph in the text buffer and advance the column.
WindowGlyphStoreBuffer:
jr_000_1515:
    ld a, [wTextRow]
    ld e, a
    ld d, $00
    ld hl, TextRowOffsets
    add hl, de
    ld a, [hl]
    ld b, a
    ld a, [wTextCol]
    add b
    ld e, a
    ld d, $00
    ld a, [wTextTile]
    ld hl, wTextBuf
    add hl, de
    ld [hl], a
    ld a, [wTextCol]
    inc a
    ld [wTextCol], a
    ld b, a
    ld a, [wTextWidth]
    cp b
    ret nz

    ld a, [wTextNoWrap]
    cp $00
    jr nz, WindowGlyphNoWrap

    call TextNewline
    ret


; Keep the column at the no-wrap position.
WindowGlyphNoWrap:
jr_000_1548:
    ld a, $11
    ld [wTextCol], a
    ret

; --- text_line.asm ---

; Advance the text row or sprite Y, preserving the regional row-height calculation.
TextNewline:


Call_000_154e:
Jump_000_154e:
    ld a, [wTextMode]
    and $02
    jr nz, TextSpriteLine

    ld a, [wTextRow]
    inc a
    ld [wTextRow], a
    add a
    ld b, a
    ld a, [wTextHeight]
    cp b
    jr nz, TextLineResetColumn

    call ScrollTextBuffer
    ld a, [wTextRow]
    dec a
    ld [wTextRow], a

; Reset the text column after advancing or scrolling a row.
TextLineResetColumn:
jr_000_156e:
    xor a
    ld [wTextCol], a
    ret

; Restore the text start column and advance Y, wrapping at $20.
TextSpriteLine:


Jump_000_1573:
jr_000_1573:
    ld a, [wTextStartX]
    ld [wTextX], a
    ld a, [wTextY]
    inc a
    ld [wTextY], a
    ld a, [wTextY]
    cp $20
    ret nz

    xor a
    ld [wTextY], a
    ret

; Scroll and submit the text buffer through the original regional entry flow.
ScrollTextBuffer:


Call_000_158b:
    ; Keep the call and fall-through: this entry runs the following body twice.
    call ScrollTextRow

; Shift the text buffer by one eighteen-tile row, blank the last row, and submit it.
ScrollTextRow:

Call_000_158e:
    ld hl, wTextBuf
    ld bc, wTextBuf+18
    ld d, $7e

; Copy the next tile from the following row.
TextScrollCopyNextTile:
jr_000_1596:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, TextScrollCopyNextTile

    ld d, $12
    ld a, $7f

; Fill the final text-buffer row with blank tiles.
TextScrollBlankLastRow:
jr_000_15a0:
    ld [hl+], a
    dec d
    jr nz, TextScrollBlankLastRow

    call SubmitTextBuffer
    call SubmitMapQueue
    ret

; --- text_map.asm ---

; Return BC = selected tile-map base plus row * 32 + column; preserve HL.
TextMapAddr:


Call_000_15ab:
    push hl
    ld a, [wTextMode]
    bit 0, a
    jr nz, TextMapUseWindow

    ld bc, _SCRN0
    jr TextMapComputeOffset

; Select the window tile-map base.
TextMapUseWindow:
jr_000_15b8:
    ld bc, _SCRN1

; Add the row and column offset to the selected tile-map base.
TextMapComputeOffset:
jr_000_15bb:
    ld a, [wTextMapY]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [wTextMapX]
    ld c, a
    ld b, $00
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret

; --- text_buffer.asm ---

; In window text mode, initialize the frame once, clear the regional buffer, and submit it.
ClearTextBuffer:


Call_000_15d2:
    ld a, [wTextMode]
    and $02
    ret nz

    ld a, [wTextPageReady]
    cp $00
    jr nz, TextBufferResetPosition

    call InitTextFrame
    ld a, $ff
    ld [wTextPageReady], a

; Reset the buffer cursor before clearing its tiles.
TextBufferResetPosition:
jr_000_15e7:
    xor a
    ld [wTextCol], a
    ld [wTextRow], a
    ld hl, wTextBuf
    ld bc, $0120
    ld d, $7f

; Fill the next buffer tile with the blank glyph.
TextBufferBlankNextTile:
jr_000_15f6:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, TextBufferBlankNextTile

    jr SubmitTextBuffer

; Queue the text buffer at $9c21 and submit the map queue.
SubmitTextBuffer:

Call_000_15ff:
jr_000_15ff:
    ld bc, _SCRN1+33
    ld hl, wTextWidth
    call QueueTileRect

Jump_000_1608:
    call SubmitMapQueue
    ret

; Fill the text window top row and body with the original tile and attribute values.
InitTextFrame:


Call_000_160c:
    ld hl, TextTopFill
    ld bc, _SCRN1
    call QueueMapFill
    ld hl, TextBodyFill
    ld bc, _SCRN1+32
    call QueueMapFill
    call SubmitMapQueue
    ret

; Width, height, tile, attribute for the window top row and body.
TextTopFill:
    db $14, $01, $77, $07
TextBodyFill:
    db $14, $09, $7f, $07

; --- text_wait.asm ---

; Wait twenty frames, then up to thirty more while A or B is held; restore the saved press byte.
DelayTextInput:
    call SubmitMapQueue
    ld d, $14

; Wait for the first twenty frames of text-input delay.
TextDelayInitialFrame:
jr_000_162f:
    call WaitFrame
    dec d
    jr nz, TextDelayInitialFrame

    ld a, [wJoyPress]
    push af
    ld d, $1e

; Wait while A or B remains held, up to thirty frames.
TextDelayHeldButtons:
jr_000_163b:
    push de
    call WaitFrame
    call PollJoy
    pop de
    dec d
    jr z, TextDelayRestorePress

    ld a, [wJoyHeld]
    bit 0, a
    jr nz, TextDelayHeldButtons

    bit 1, a
    jr nz, TextDelayHeldButtons

; Restore the saved button-press byte.
TextDelayRestorePress:
jr_000_1651:
    pop af

Call_000_1652:
    ld [wJoyPress], a
    ret

; Update objects and wait animation until A is pressed, play the case cue, then wait for A release.
WaitTextConfirm:


Call_000_1656:
Jump_000_1656:
    call SubmitMapQueue

; Update the room and wait for an A press.
TextConfirmPollPress:
jr_000_1659:
    call StepTextWait
    call PollJoy

Call_000_165f:
    ld a, [wJoyPress]
    bit 0, a
    jr z, TextConfirmPollPress

    ld a, [wCaseId]
    cp $00
    jr nz, TextConfirmCaseIICue

    ld a, $31
    jr TextConfirmPlayCue

; Select the Case II confirmation cue.
TextConfirmCaseIICue:
jr_000_1671:
    ld a, $18

Jump_000_1673:
; Play the selected confirmation cue.
TextConfirmPlayCue:
jr_000_1673:
    call PlayAudio

; Wait for the A button to be released.
TextConfirmPollRelease:
jr_000_1676:
    call StepTextWait
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, TextConfirmPollRelease

    xor a
    ld [wWaitFrame], a
    ld [wWaitTick], a

; Draw room objects and submit the OAM buffer.
RefreshObjOam:

Call_000_168a:
jr_000_168a:
    call DrawRoomObjs
    call SubmitOam
    ret

; Call the bank-three update and bank-two wait animation, then draw and submit room objects.
; Active war text already draws room objects; the final refresh draws them again.
StepTextWait:


Call_000_1691:
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2WarText
    call PopRomBank
    push af
    ld a, $02
    call PushRomBank
    pop af
    call StepWaitAnim
    call PopRomBank
    jr RefreshObjOam

; --- text_window.asm ---

; Set WX to $07 and the regional WY value, then show the window.
ShowTextWindow:

Call_000_16ad:
    ld a, $07
    ldh [rWX], a
    ld a, $47
    ldh [rWY], a
    call ShowWindow

Call_000_16b8:
    ret

; Clear the sprite clip field and hide the window.
HideTextWindow:


Call_000_16b9:
    xor a
    ld [wSpriteClip], a

Jump_000_16bd:
    call HideWindow
    ret
