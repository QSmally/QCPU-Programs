@PAGE 0 0

@DECLARE input_a 1
@DECLARE input_b 2
@DECLARE incrementer 3
@DECLARE output 4

@DECLARE var_a_uint 24
@DECLARE var_b_uint 10

; main
    IMM @input_a, @var_a_uint
    IMM @input_b, @var_b_uint
    IMM @incrementer, -1
    IMM @output, 0
.loop:
    AST @input_a
    BRH #zero, .finished
    INC @incrementer
    RSH @input_a
    BRH #!underflow, .loop
; shift and add
    AST @input_b
    BPL @incrementer
    ADD @output
    RST @output
    JMP zero, .loop
.finished:
    PPS @output