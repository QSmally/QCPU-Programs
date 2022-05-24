@PAGE 0 0

@DECLARE source_location 1
@DECLARE copy_location 2

@IF enable-prefetch
    PRF .strcpy.array-
@END

; main
    IMM @source_location, .strcpy.array
    IMM @copy_location, .strcpy.array_copy - 1
.loop:
    INC @copy_location
    MLI @source_location, 0
    MST @copy_location, 0
    BRH #!zero, .loop