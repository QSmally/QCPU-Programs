@PAGE 0 0

@DECLARE location 1
@DECLARE character 2

@IF enable-prefetch
    PRF .strchr.array-
@END

; main
    IMM @location, .strchr.array
    IMM @character, $w
.loop:
    MLI @location, 0
    BRH #zero, .exit
    SUB @character
    BRH #!zero, .loop
; finished
    DEC @location
    PPS accumulator
.exit: