@PAGE 0 0

@DECLARE location 1

; main
    IMM @location, .strpsh.array
.loop:
    MLD @location, 0
    BRH #zero, .append_char
    INC @location
    JMP zero, .loop
.append_char:
    IMM accumulator, $d
    MST @location, 0
; insert 0x00
    INC @location
    XCH zero
    MST @location, 0