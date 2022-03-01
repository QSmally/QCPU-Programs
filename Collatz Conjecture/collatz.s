@PAGE 0 0

@DECLARE copy 1

; main
    IMM accumulator, 24
.loop:
    PPS accumulator
; iteration
    RST @copy
    RSH accumulator
    BRH #!underflow, .loop
; 3n+1
    AST @copy
    BSL 1
    ADD @copy
    INC accumulator
    JMP zero, .loop