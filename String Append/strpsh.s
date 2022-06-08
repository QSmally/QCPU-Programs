@PAGE 0 0

@DECLARE location 1

@DECLARE var_append_char $d

; main
    IMM @location, .strpsh.array
.loop:
    MLI @location, 0
    BRH #!zero, .loop
; append char
    DEC @location
    IMM accumulator, @var_append_char
    MST @location, 0
; insert 0x00
    INC @location
    CLR
    MST @location, 0