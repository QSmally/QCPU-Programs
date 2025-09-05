
// qcpu --virtualise --listen 7 String\ Occurrences/strocc.s

@import array, "array.s"

@header output
                  rst rz
@end

@section root
@region 256
@align 2

_:                u16 .start

@end

@linkinfo(origin) root, 0
@linkinfo(align) data, 256
@linkinfo(align) text, 256

@define var_search_char, 'l'

@section text
.start:           imm ra, -1
                  imm rb, @var_search_char
.loop:            inc ra
                  mld' zr, .array.origin
                  brh z, .end
                  sub rb
                  brh nz, .loop
                  ast ra            ; output
                  @output
                  jmpr .loop
.end:             bkpt
