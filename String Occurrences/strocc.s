@PAGE 0 0

@DECLARE location 1
@DECLARE character 2

@DECLARE var_search_char $l

@IF enable-prefetch
    PRF .strocc.array-
@END

; main
    IMM @location, .strocc.array
    IMM @character, @var_search_char
.loop:
    MLI @location, 0
    BRH #zero, .exit
    SUB @character
    BRH #!zero, .loop
; push char location
    AST @location
    DEC accumulator
    PPS accumulator
    JMP zero, .loop
.exit: