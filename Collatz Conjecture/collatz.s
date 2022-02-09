@PAGE 0 0

@DECLARE copy 1

; main
    CND #!underflow
    IMM 0, 24
.loop:
    PST 0, 0
; iteration
    RST @copy
    RSH 0
    BRH 0, .loop
; 3n+1
    AST @copy
    BSL 1
    ADD @copy
    INC 0
    JMP 0, .loop