@PAGE 0 0

@DECLARE location 1

// TODO: add 'empty' instruction to halt whilst in the middle of code.

; main
    JMP zero, .start_loop

.array:
    $Hello world
    0x00

.closure:
    PPS accumulator
    JMP zero, .loop

.start_loop:
    IMM @location, .array
.loop:
    MLI @location, 0
    BRH #!zero, .closure