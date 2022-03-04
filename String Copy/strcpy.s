@PAGE 0 0

@DECLARE source_location 1
@DECLARE copy_location 2

@IF enable-prefetch
    PRF .strcpy.array-
@END

; main
    IMM @source_location, .strcpy.array
    IMM @copy_location, .strcpy.copied_array
.loop:
    MLD @source_location, 0
    MST @copy_location, 0
    INC @source_location
    INC @copy_location
    BRH #!zero, .loop