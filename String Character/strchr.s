@PAGE 0 0

@DECLARE location 1
@DECLARE character 2

@IF enable-prefetch
    PRF .strchr.array-
@END

; main
    IMM @location, .strchr.array
    IMM @character, $t
.loop:
    MLD @location, 0
    BRH #zero, .finished
    SUB @character
    BRH #zero, .finished
    INC @location
    JMP zero, .loop
.finished:
    PPS @location