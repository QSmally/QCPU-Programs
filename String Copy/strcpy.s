@PAGE 0 0

@DECLARE source_location 1
@DECLARE copy_location 2

@IF enable-prefetch
    PRF .strcpy.array-
@END

; main
    IMM @source_location, .strcpy.array
    IMM @copy_location, .strcpy.array_copy
    JMP zero, .first_iteration_loop
.loop:
    INC @source_location
    INC @copy_location
.first_iteration_loop:
    MLD @source_location, 0
    MST @copy_location, 0
    BRH #!zero, .loop