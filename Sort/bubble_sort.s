@PAGE 0 1
@ADDRESSABLE sort.bubble

@DECLARE base_value 1
@DECLARE compare_value 2
@DECLARE base_value_pointer 3
@DECLARE compare_value_pointer 4
@DECLARE array_size 5

.iteration:
    IMM @base_value_pointer, 0
    IMM @compare_value_pointer, 1
; initialise base value
    MLD @base_value_pointer, .sort.array
    RST @base_value
.&loop:
    MLD @compare_value_pointer, .sort.array
    RST @compare_value
    SUB @base_value
    CND #signed
    BRH 0, .swap
; shift compare to base
    AST @compare_value
    RST @base_value
    JMP 0, .continue
.swap:
    AST @base_value
    MST @compare_value_pointer, .sort.array
    AST @compare_value
    MST @base_value_pointer, .sort.array
.continue:
    INC @compare_value_pointer
    SUB @array_size
    CND #zero
    BRH 0, .iteration
    INC @base_value_pointer
    JMP 0, .loop