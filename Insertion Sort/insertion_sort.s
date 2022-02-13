@PAGE 0 0
@OVERFLOWABLE

@DECLARE iteration_pointer 1
@DECLARE compare_pointer 2
@DECLARE swap_pointer 3
@DECLARE current_value 4
@DECLARE compare_value 5
@DECLARE array_size 6

; main
    IMM @array_size, 23
    IMM @iteration_pointer, -1
.iteration:
    AST @iteration_pointer
    SUB @array_size
    BRH #zero, .finished
; increment iteration
    INC @iteration_pointer
    MLD @iteration_pointer, .sort.array
    RST @current_value
; enter insertion loop
    AST @iteration_pointer
    RST @compare_pointer
.&insertion_loop:
    BRH #zero, .iteration
    DEC @compare_pointer
    MLD @compare_pointer, .sort.array
    RST @compare_value
    SUB @current_value
    BRH #signed, .iteration
; swap
    AST @current_value
    MST @compare_pointer, .sort.array
    AST @compare_pointer
    INC 0
    RST @swap_pointer
    AST @compare_value
    MST @swap_pointer, .sort.array
; continue
    AST @compare_pointer
    JMP 0, .insertion_loop
.&finished:
    JMP 0, .finished