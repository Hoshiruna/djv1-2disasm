; --- text_rows.asm ---

; Credit rows 11..15 read the following ShowListText instruction bytes as offsets.
TextRowOffsets:
    db $00, $12, $24, $36, $48, $5a, $6c, $7e, $90

; --- text_label.asm ---

; Draw the indexed list label from bank one, then restore the previous ROM bank.
ShowListText:

Call_000_10d0:
    ld a, $01
    call PushRomBank
    call DrawListText
    call PopRomBank
    ret

; Select the case-specific label pointer by wListMark and draw it in text mode two.
DrawListText:


Call_000_10dc:
    ld a, [wListMark]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, l
    ldh [hTextIndex], a
    ld a, h
    ldh [hTextIndex+1], a
    ld a, [wCaseId]
    cp $00
    jr nz, ListTextCase2

Jump_000_10f0:
    ld bc, C1ListTexts
    ldh a, [hTextIndex]
    ld l, a
    ldh a, [hTextIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl+]

Jump_000_10fb:
    jr ListTextStorePointer

; Select the Case II list-label pointer table.
ListTextCase2:
jr_000_10fd:
    ld bc, C2ListTexts
    ldh a, [hTextIndex]
    ld l, a
    ldh a, [hTextIndex+1]
    ld h, a
    add hl, bc
    ld a, [hl+]

; Store the resolved US list-label pointer before drawing in mode two.
ListTextStorePointer:
jr_000_1108:
    ld [wTextPtr], a
    ld a, [hl]
    ld [wTextPtr+1], a
    call Mode2Text
    ret

; --- text_loop.asm ---

; Call the original normal-mode text start routine.
ShowTextMsg:


Call_000_1113:
    call StartTextMsg
    ret

; Select text mode two and enter the regional text loop.
Mode2Text:


Call_000_1117:
    call SetTextMode2
    jr ReadTextLoop

; Select text mode one, initialize the regional text buffer, and enter the loop.
StartTextMsg:

Call_000_111c:
    call SetTextMode1
    call InitTextBuffer

; END enters page/finish handling; WAIT_END waits only for A release and returns.
; Read and handle regional text codes, preserving the original end and wait controls.
ReadTextLoop:

Call_000_1122:
jr_000_1122:
    call ReadTextByte
    ld [wTextChar], a
    cp UsTextCtrlWaitEnd
    jr z, WaitTextRelease

    cp UsTextCtrlEnd
    jr z, TextEndWaitWindow

    call DispatchTextCtrl

Call_000_1133:
    jr ReadTextLoop

; --- text_ctrl.asm ---

; Dispatch regional text controls using the original comparisons or Japan word table.
DispatchTextCtrl:

Call_000_1135:
    cp UsTextCtrlWaitPage
    jp z, WaitTextPage

    cp UsTextCtrlPage
    jr z, TextPageControl

    cp UsTextCtrlLine
    jp z, TextLineControl

    cp UsTextCtrlName
    jp z, DrawTextName

    cp UsTextCtrlNameAlt
    jp z, DrawTextName

    cp UsTextCtrlNameIndirect
    jp z, DrawNameIndirect

    cp UsTextCtrlNum8
    jp z, DrawTextNum8

    cp UsTextCtrlNum16
    jp z, DrawTextNum16

    cp UsTextCtrlSetX
    jp z, SetTextX

    cp UsTextCtrlSetY
    jp z, SetTextY

    cp UsTextCtrlMap0
    jp z, TextUseMap0

    cp UsTextCtrlMap1
    jp z, TextUseMap1

    cp UsTextCtrlSetFlag7
    jp z, SetTextFlag7

    jp DrawTextGlyph


; Wait in window mode before resetting the US text page.
TextPageControl:
jr_000_1178:
    ld a, [wTextMode]
    bit 1, a
    call z, WaitTextPage
    jp ResetTextPage

; Set text mode bit seven.
SetTextFlag7:


Jump_000_1183:
    ld a, [wTextMode]
    or $80
    ld [wTextMode], a
    ret

; --- text_exit.asm ---

; Wait only for held A to clear; this return skips FinishText, confirmation audio and wait-counter reset.
WaitTextRelease:


jr_000_118c:
    call SubmitMapQueue

; Draw objects and poll for A release.
TextReleasePoll:
jr_000_118f:
    call SubmitMapQueue
    call DrawRoomObjs
    call SubmitOam
    call PollJoy
    ld a, [wJoyHeld]
    bit 0, a
    jr nz, TextReleasePoll

    ret


; Wait for page confirmation in window mode before the common text finish path.
TextEndWaitWindow:
jr_000_11a3:
    ld a, [wTextMode]
    bit 1, a
    call z, WaitTextPage

; --- text_end.asm ---

; Apply the original result-bit and mode cleanup conditions, then select text mode one.
FinishText:

Call_000_11ab:
    ld a, [wStateResult]
    and $08
    jr z, FinishTextClearUi

    ld a, [wTextMode]
    and $02
    jr nz, FinishTextSetMode

    ret


; Clear the text interface when the result and mode require it.
FinishTextClearUi:
jr_000_11ba:
    call ClearTextUI

; Select text mode one at the end of text.
FinishTextSetMode:
jr_000_11bd:
    call SetTextMode1
    ret

; When mode bit 1 is clear, reset the page flag, hide the window, redraw objects, and clear result bit 3.
ClearTextUI:


Call_000_11c1:
    ld a, [wTextMode]
    and $02
    jr nz, ClearTextUiReturn

    ld a, $00
    ld [wTextPageReady], a
    call HideTextWindow
    call DrawRoomObjs
    call SubmitOam
    ld a, [wStateResult]
    and $f7
    ld [wStateResult], a

; Return after the conditional text-interface cleanup.
ClearTextUiReturn:
jr_000_11de:
    ret

; --- text_modes.asm ---

; Write text mode two.
SetTextMode2:


Call_000_11df:
    ld a, $02
    ld [wTextMode], a
    ret

; Write text mode one.
SetTextMode1:


Call_000_11e5:
    ld a, $01
    ld [wTextMode], a
    ret

; --- text_name.asm ---

; Read a two-byte address from the text stream and draw the name ID stored there.
DrawNameIndirect:


Jump_000_11eb:
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
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [wTextValue], a
    jr TextNameLocateRecord

; Read a name ID from the text stream and select its regional name record.
DrawTextName:

Jump_000_1209:
    call ReadTextByte
    ld [wTextValue], a

; Find the selected name record in the regional reference table.
TextNameLocateRecord:
jr_000_120f:
    ld a, [wTextValue]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc hl
    ld a, [wTextRefs]
    ld c, a
    ld a, [wTextRefs+1]
    ld b, a
    add hl, bc
    ld a, l
    ld [wTextTmp], a

Jump_000_1227:
    ld a, h
    ld [wTextTmp+1], a
    ld a, [wTextRefs+2]
    call PushRomBank
    call EmitTextName
    jp PopRomBank

; US names have no length cap: return only on $1f; JP additionally stops after eight codes.
EmitTextName:


Call_000_1237:
jr_000_1237:
    ld a, [wTextTmp]
    ld l, a
    ld a, [wTextTmp+1]
    ld h, a

Call_000_123f:
    ld a, [hl+]
    cp $1f
    ret z

    ld [wTextChar], a
    ld a, l
    ld [wTextTmp], a
    ld a, h
    ld [wTextTmp+1], a
    ld a, [wTextChar]
    call DrawTextGlyph
    jr EmitTextName

; --- text_num16.asm ---

; Read an indirect eight-bit value, split it into decimal digits, and draw it.
DrawTextNum8:

Jump_000_1256:
    call ReadTextValue8

Jump_000_1259:
    call SplitTextNumber
    ld a, [wTextNum100]

Call_000_125f:
    call DrawTextDigit
    ld a, [wTextNum10]
    call DrawTextDigit
    ld a, [wTextNum1]
    call EmitTextDigit
    ret

; Read an indirect sixteen-bit value and draw up to five decimal digits.
DrawTextNum16:


Jump_000_126f:
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


Call_000_1294:
    ld de, $0000

; Index the next decimal place for the sixteen-bit text number.
TextNum16NextPlace:
jr_000_1297:
    ld c, e
    ld b, d
    sla c

; Save the remainder and subtract the current decimal place once more.
TextNum16SubtractPlace:
jr_000_129b:
    ld a, [wTextValue]
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
    jr TextNum16SubtractPlace

; Restore the pre-underflow value and advance to the next decimal place.
TextNum16RestoreRemainder:
jr_000_12c0:
    ld a, [wTextTmp]
    ld [wTextValue], a
    ld a, [wTextTmp+1]
    ld [wTextValue+1], a
    inc de
    ld a, TextNum16ProcessedPlaces
    cp e
    jr nz, TextNum16NextPlace

    ld a, [wTextValue]
    ld [wTextNum1], a
    xor a
    ld [wTextNumShown], a
    ret

; Decimal places 10000, 1000, 100, 10, 1.
TextDecPlaces:
    dw 10000, 1000, 100, 10, 1

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

Call_000_12f7:
    call AdvanceText2
    ld a, [wTextTmp]
    ld l, a
    ld a, [wTextTmp+1]
    ld h, a
    ld a, [hl+]

Call_000_1303:
    ld [wTextValue], a
    ld a, [hl]
    ld [wTextValue+1], a
    ld hl, wTextNum10000
    xor a
    ld c, TextNumDigitBufferBytes

Jump_000_1310:
; Clear the next of five digit bytes before converting an indirect sixteen-bit value.
TextNum16ClearNextDigit:
jr_000_1310:
    ld [hl+], a
    dec c
    jr nz, TextNum16ClearNextDigit

    ret

; --- text_page.asm ---

; Run the original regional text page confirmation path.
WaitTextPage:


Call_000_1315:
Jump_000_1315:
    ld a, [wTextFast]
    cp $00
    jr z, TextPageClearFast

    call SubmitMapQueue

; Clear fast-text state and enter the US page-confirmation wait.
TextPageClearFast:
jr_000_131f:
    xor a
    ld [wTextFast], a
    ld [$c891], a
    call WaitTextConfirm
    ret

; Apply the regional line control: Japan waits for confirmation before advancing the row.
TextLineControl:


Jump_000_132a:
    jp TextNewline

; In window mode, reset the page through the original regional wait and initialization order.
ResetTextPage:


Jump_000_132d:
    ld a, [wTextMode]
    and $02
    ret nz

    xor a

Call_000_1334:
    ld [wWaitFrame], a
    ld [wWaitTick], a
    jp InitTextBuffer

; --- text_number.asm ---

; Suppress leading zeroes until a digit has been emitted.
DrawTextDigit:


Call_000_133d:
    ld [wTextChar], a
    cp $00
    jr nz, TextDigitEmit

    ld a, [wTextNumShown]
    cp $00
    ret z

; Emit a non-leading-zero digit glyph.
TextDigitEmit:
jr_000_134a:
    ld a, [wTextChar]

; Apply the regional digit glyph bits, mark the number started, and draw the glyph.
EmitTextDigit:

Call_000_134d:
    or UsTextDigitGlyphBits
    ld [wTextChar], a
    ld a, $ff
    ld [wTextNumShown], a
    call DrawTextGlyph
    ret

; Split the eight-bit text value into hundreds, tens, and units; clear the digit-start flag.
SplitTextNumber:


Call_000_135b:
    ld a, [wTextValue]
    ld e, a
    ld b, 100
    call DivTextDigit
    ld [wTextNum100], a
    ld b, 10
    call DivTextDigit
    ld [wTextNum10], a
    ld a, e
    ld [wTextNum1], a
    ld a, $00
    ld [wTextNumShown], a
    ret

; Repeatedly subtract B from E, returning the quotient in A and remainder in E.
DivTextDigit:


Call_000_1379:
    ld d, $00

; Subtract the decimal place value while possible.
TextDivideSubtract:
jr_000_137b:
    ld a, e
    sub b
    jr c, TextDivideDone

    inc d
    ld e, a

Call_000_1381:
    jr TextDivideSubtract

; Return the quotient after subtraction would underflow.
TextDivideDone:
jr_000_1383:
    ld a, d
    ret

; --- text_flags.asm ---

; Clear text mode bit zero to select tile map $9800.
TextUseMap0:


Jump_000_1385:
    ld a, [wTextMode]
    and $fe
    ld [wTextMode], a
    ret

; Set text mode bit zero to select tile map $9c00.
TextUseMap1:


Jump_000_138e:
    ld a, [wTextMode]
    or $01
    ld [wTextMode], a
    ret

; --- text_pos.asm ---

; Read one operand into the buffered column or direct tile-map X, according to mode bit 1.
SetTextX:


Jump_000_1397:
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


; Set direct tile-map X and its newline start position from the stream.
TextSetSpriteX:
jr_000_13ae:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl]
    ld [wTextX], a
    ld [wTextStartX], a
    call AdvanceText1

Call_000_13c0:
Jump_000_13c0:
    ret

; Read one operand into the buffered row or direct tile-map Y, according to mode bit 1.
SetTextY:


Jump_000_13c1:
    ld a, [wTextMode]
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


; Set direct tile-map Y from the stream.
TextSetSpriteY:
jr_000_13d8:
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


Call_000_13e8:
    ld a, [wTextPtr]
    add $02
    jr TextPtrStoreAdvance

; Advance the text pointer by one byte with carry.
AdvanceText1:

Call_000_13ef:
    ld a, [wTextPtr]
    add $01

; Store the advanced text pointer with carry.
TextPtrStoreAdvance:
jr_000_13f4:
    ld [wTextPtr], a
    ld a, [wTextPtr+1]
    adc $00

Jump_000_13fc:
    ld [wTextPtr+1], a
    ret

; --- text_value.asm ---

; Read an address from the text stream, advance two bytes, load its byte, and clear the digit buffer.
ReadTextValue8:


Call_000_1400:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]

Call_000_1409:
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    xor a
    ld [$c8eb], a
    ld a, [bc]
    ld [wTextValue], a
    ld hl, wTextNum10000
    ld d, TextNumDigitBufferBytes
    xor a

; Clear the next of five digit bytes before converting an indirect eight-bit value.
TextNum8ClearNextDigit:
jr_000_1422:
    ld [hl+], a
    dec d
    jr nz, TextNum8ClearNextDigit

    ret

; --- text_init.asm ---

; Refresh room objects, reset the text buffer state, and show the text window.
InitTextBuffer:


Call_000_1427:
Jump_000_1427:
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
    ld a, TextBufferRowTiles
    ld [wTextWidth], a
    ld a, TextWindowDefaultTileRows
    ld [wTextHeight], a
    xor a
    ld [wTextOriginX], a
    ld [wTextOriginY], a
    call ClearTextBuffer
    xor a
    ld [wTextFast], a
    ld [wTextStartX], a
    ld [wTextNoWrap], a
    call ShowTextWindow
    ret

; --- text_glyph.asm ---

; Resolve the regional glyph and queue tile-map writes at buffered or direct coordinates.
DrawTextGlyph:


Call_000_1461:
Jump_000_1461:
    ld a, [wTextChar]
    cp SingleRowGlyphDirectMin
    jr nc, TextGlyphStoreTile

    ld e, a
    ld d, $00
    ld hl, TextGlyphMap
    add hl, de
    ld a, [hl]

; Store the mapped or direct US glyph tile before selecting its drawing mode.
TextGlyphStoreTile:
jr_000_1470:
    ld [wTextTile], a
    ld a, [wTextMode]
    and TextModeDirectCoordinatesFlag
    jp z, DrawWindowGlyph

    ld a, [wTextX]
    ld [wTextMapX], a
    ld a, [wTextY]
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTextGlyph
    ld a, [wTextX]
    inc a
    ld [wTextX], a
    and TextMapColumnHighBits
    ret z

    jp TextNewline

TextGlyphMap:
    db $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb
Call_000_14b0:
    db $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $7f
    db $7f, $7f, $7f, $7f, $7f, $a1, $a4, $a5, $cb, $cc, $cd, $d5, $8a, $8b, $ce, $cf
    db $7f, $fe, $a3, $7f, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $7f
    db $7f, $7f, $7f, $7f, $7f, $d1, $d3, $d4, $d6, $d0, $d2, $d8, $d9, $da, $d7, $7f
    db $7f, $7f, $7f, $7f, $7f

; Queue the glyph tiles, or tiles and attribute six/seven according to text mode bits six/seven.
QueueTextGlyph:

Call_000_14f5:
    ld a, [wTextMode]
    bit TextModeGlyphAttributesBit, a
    jr nz, TextGlyphCheckAttributes

    call QueueTileRect
    ret


; Select glyph attribute six or seven from text-mode bit seven.
TextGlyphCheckAttributes:
jr_000_1500:
    ld a, [wTextMode]
    bit TextModeGlyphAltPaletteBit, a
    jr z, TextGlyphAttribute7

    ld a, TextGlyphAlternateAttribute
    jr TextGlyphQueueAttributes

; Use attribute seven when text-mode bit seven is clear.
TextGlyphAttribute7:
jr_000_150b:
    ld a, TextGlyphDefaultAttribute

; Store the selected glyph attribute and queue tiles with attributes.
TextGlyphQueueAttributes:
jr_000_150d:
    ld [wTextAux], a
    call QueueMapRect
    ret

; A new A press enables fast text; queue/store the glyph and retain the forced wC1Exit=$ff delay.
DrawWindowGlyph:


Jump_000_1514:
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
jr_000_153a:
    ld a, [wTextOriginX]
    inc a

Jump_000_153e:
    ld b, a
    ld a, [wTextCol]
    add b
    ld [wTextMapX], a
    ld a, [wTextOriginY]
    inc a
    ld b, a
    ld a, [wTextRow]
    add b
    ld [wTextMapY], a
    call TextMapAddr
    ld a, $01
    ld [wTextRect], a

Jump_000_155a:
    ld [wTextRect+1], a
    ld hl, wTextRect
    call QueueTextGlyph
    ld a, [wC1Exit]
    cp $ff
    jr z, WindowGlyphSubmit

    ld a, [wTextFast]
    cp $00
    jr nz, WindowGlyphStoreBuffer

; Submit the glyph map update before the short display delay.
WindowGlyphSubmit:
jr_000_1571:
    call SubmitMapQueue
    ld a, $03

; Update room objects during the short glyph delay.
WindowGlyphDelayFrame:
jr_000_1576:
    push af
    push af
    ld a, $03
    call PushRomBank
    pop af
    call StepC2WarText
    call PopRomBank
    call DrawRoomObjs
    call SubmitOam
    pop af
    dec a
    jr nz, WindowGlyphDelayFrame

; Store the glyph in the text buffer and advance the column.
; Buffer index addition is eight-bit; D is cleared after the offset plus column.
WindowGlyphStoreBuffer:
jr_000_158e:
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
jr_000_15c1:
    ld a, $11
    ld [wTextCol], a
    ret

; --- text_line.asm ---

; Advance a buffered text row or direct map Y using the regional height comparison.
TextNewline:


Call_000_15c7:
Jump_000_15c7:
    ld a, [wTextMode]
    and TextModeDirectCoordinatesFlag
    jr nz, TextMapNewline

    ld a, [wTextRow]
    inc a
    ld [wTextRow], a
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
jr_000_15e6:
    xor a
    ld [wTextCol], a
    ret

; Restore start X, increment byte Y, and clear Y only when the result equals $20.
; Restore direct map X and advance Y through the original equality-based wrap.
TextMapNewline:
TextSpriteLine:


jr_000_15eb:
    ld a, [wTextStartX]
    ld [wTextX], a
    ld a, [wTextY]
    inc a
    ld [wTextY], a
    ld a, [wTextY]
    cp TextMapRowWrapValue
    ret nz

    xor a
    ld [wTextY], a
    ret

; Shift the text buffer by one eighteen-tile row, blank the last row, and submit it.
ScrollTextRow:

; Scroll and submit the text buffer through the original regional entry flow.
ScrollTextBuffer:


Call_000_1603:
Jump_000_1603:
    ld hl, wTextBuf
    ld bc, wTextBuf+TextBufferRowTiles
    ld d, TextScrollCopyBytes

; Copy the next tile from the following row.
TextScrollCopyNextTile:
jr_000_160b:
    ld a, [bc]
    inc bc
    ld [hl+], a
    dec d
    jr nz, TextScrollCopyNextTile

Call_000_1611:
    ld d, TextBufferRowTiles
    ld a, TextBufferBlankTile

; Fill the final text-buffer row with blank tiles.
TextScrollBlankLastRow:
jr_000_1615:
    ld [hl+], a
    dec d
    jr nz, TextScrollBlankLastRow

    call SubmitTextBuffer
    call SubmitMapQueue
    ret

; --- text_map.asm ---

; Return BC = selected tile-map base plus row * 32 + column; preserve HL.
TextMapAddr:


Call_000_1620:
Jump_000_1620:
    push hl
    ld a, [wTextMode]
    bit TextModeWindowMapBit, a
    jr nz, TextMapUseWindow

    ld bc, _SCRN0
    jr TextMapComputeOffset

; Select the window tile-map base.
TextMapUseWindow:
jr_000_162d:
    ld bc, _SCRN1

; Add the row and column offset to the selected tile-map base.
TextMapComputeOffset:
jr_000_1630:
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


Call_000_1647:
    ld a, [wTextMode]
    and TextModeDirectCoordinatesFlag
    ret nz

    ld a, [wTextPageReady]
    cp $00

Call_000_1652:
    jr nz, TextBufferResetPosition

    call InitTextFrame
    ld a, $ff
    ld [wTextPageReady], a

; Reset the buffer cursor before clearing its tiles.
TextBufferResetPosition:
jr_000_165c:
    xor a
    ld [wTextCol], a
    ld [wTextRow], a
    ld hl, wTextBuf
    ld bc, UsTextBufferClearBytes
    ld d, TextBufferBlankTile

; Fill the next buffer tile with the blank glyph.
TextBufferBlankNextTile:
jr_000_166b:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, TextBufferBlankNextTile

    jr SubmitTextBuffer

; Queue the text buffer at $9c21 and submit the map queue.
SubmitTextBuffer:

Call_000_1674:
jr_000_1674:
    ld bc, _SCRN1+33
    ld hl, wTextWidth
    call QueueTileRect
    call SubmitMapQueue
    ret

; Fill the text window top row and body with the original tile and attribute values.
InitTextFrame:


Call_000_1681:
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
jr_000_16a4:
    call WaitFrame
    dec d
    jr nz, TextDelayInitialFrame

    ld a, [wJoyPress]
    push af
    ld d, $1e

; Wait while A or B remains held, up to thirty frames.
TextDelayHeldButtons:
jr_000_16b0:
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
jr_000_16c6:
    pop af
    ld [wJoyPress], a
    ret

; Update objects and wait animation until A is pressed, play the case cue, then wait for A release.
WaitTextConfirm:


Call_000_16cb:
    call SubmitMapQueue

; Update the room and wait for an A press.
TextConfirmPollPress:
jr_000_16ce:
    call StepTextWait
    call PollJoy
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
jr_000_16e6:
    ld a, $18

; Play the selected confirmation cue.
TextConfirmPlayCue:
jr_000_16e8:
    call PlayAudio

; Wait for the A button to be released.
TextConfirmPollRelease:
jr_000_16eb:
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

Call_000_16ff:
jr_000_16ff:
    call DrawRoomObjs
    call SubmitOam
    ret

; Call the bank-three update and bank-two wait animation, then draw and submit room objects.
; Active war text already draws room objects; the final refresh draws them again.
StepTextWait:


Call_000_1706:
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

Call_000_1720:
    jr RefreshObjOam

; --- text_byte.asm ---

; Read one byte through the text pointer, advance it, and return the saved byte.
ReadTextByte:

Call_000_1722:
    ld a, [wTextPtr]
    ld l, a
    ld a, [wTextPtr+1]
    ld h, a
    ld a, [hl+]
    ld [wTextByte], a
    ld a, l
    ld [wTextPtr], a
    ld a, h
    ld [wTextPtr+1], a
    ld a, [wTextByte]
    ret

; --- text_window.asm ---

; Set WX to $07 and the regional WY value, then show the window.
ShowTextWindow:


Call_000_173a:
    ld a, $07
    ldh [rWX], a
    ld a, $48
    ldh [rWY], a
    call ShowWindow
    ret

; Clear the sprite clip field and hide the window.
HideTextWindow:


Call_000_1746:
    xor a
    ld [wSpriteClip], a
    call HideWindow
    ret
