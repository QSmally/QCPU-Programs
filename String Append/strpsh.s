@PAGE 0 0

@DECLARE location 1

; main
    IMM @location, .strpsh.array
.loop:
    MLI @location, 0
    BRH #!zero, .loop
; append char
    DEC @location
    IMM accumulator, $d
    MST @location, 0
; insert 0x00
    INC @location
    CLR
    MST @location, 0