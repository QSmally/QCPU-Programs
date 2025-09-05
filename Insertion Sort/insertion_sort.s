
// qcpu --virtualise --memory 256 --maxcycles 8192 Insertion\ Sort/insertion_sort.s

@import array, "array.s"

@section root
@region 256
@align 2

_:                u16 .start

@end

@linkinfo(origin) root, 0
@linkinfo(align) data, 256
@linkinfo(align) text, 256

@define iteration_ptr, ra
@define compare_ptr, rb
@define current_val, rc
@define compare_val, rd
@define array_len, rx

@section text
.start:           imm @array_len, @array.len
                  imm @iteration_ptr, -1
.loop:            inc @iteration_ptr
                  rst @compare_ptr
                  sub @array_len
                  brh z, .end
                  ast @iteration_ptr
                  mld' zr, .array.origin
                  rst @current_val
.inner_loop:      ast @compare_ptr
                  brh z, .loop
                  dec @compare_ptr
                  mld' zr, .array.origin
                  rst @compare_val
                  sub @current_val
                  brh s, .loop
                  ast @current_val  ; swap
                  ast @compare_ptr
                  mst' zr, .array.origin
                  inc @compare_ptr
                  ast @compare_val
                  ast @compare_ptr
                  mst' zr, .array.origin
                  dec @compare_ptr
                  jmpr .inner_loop
.end:             bkpt
