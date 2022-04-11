@PAGE 0 0

@DECLARE begin_location 1
@DECLARE location 2

@IF enable-prefetch
    PRF .strlen.array-
@END

; main
    IMM @location, .strlen.array
    RST @begin_location
.loop:
    MLI @location, 0
    BRH #!zero, .loop
; finished
    DEC @location
    SUB @begin_location
    PPS accumulator