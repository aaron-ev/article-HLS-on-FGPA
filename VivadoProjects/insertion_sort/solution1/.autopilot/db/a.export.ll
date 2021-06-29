; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@insertion_sort_str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00"
@A = common global [48 x float] zeroinitializer, align 16

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @insertion_sort([48 x float]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !1
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %i = phi i6 [ 1, %0 ], [ %i_1, %4 ]
  %i_cast = zext i6 %i to i7
  %exitcond = icmp eq i6 %i, -16
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 47, i64 47, i64 47) nounwind
  br i1 %exitcond, label %5, label %.preheader

.preheader:                                       ; preds = %1, %._crit_edge
  %j_0_in = phi i7 [ %j, %._crit_edge ], [ %i_cast, %1 ]
  %j_0_in_cast = sext i7 %j_0_in to i32
  %j = add i7 %j_0_in, -1
  %j_cast = sext i7 %j to i32
  %tmp = icmp sgt i7 %j_0_in, 0
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 47, i64 0) nounwind
  br i1 %tmp, label %2, label %4

; <label>:2                                       ; preds = %.preheader
  %tmp_1 = zext i32 %j_cast to i64
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp_1
  %temp = load float* %A_addr, align 4
  %tmp_2 = zext i32 %j_0_in_cast to i64
  %A_addr_1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_2
  %A_load_1 = load float* %A_addr_1, align 4
  %temp_to_int = bitcast float %temp to i32
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_to_int, i32 23, i32 30)
  %tmp_4 = trunc i32 %temp_to_int to i23
  %A_load_1_to_int = bitcast float %A_load_1 to i32
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_1_to_int, i32 23, i32 30)
  %tmp_6 = trunc i32 %A_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_3, -1
  %notrhs = icmp eq i23 %tmp_4, 0
  %tmp_7 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_5, -1
  %notrhs2 = icmp eq i23 %tmp_6, 0
  %tmp_8 = or i1 %notrhs2, %notlhs1
  %tmp_9 = and i1 %tmp_7, %tmp_8
  %tmp_s = fcmp ogt float %temp, %A_load_1
  %tmp_10 = and i1 %tmp_9, %tmp_s
  br i1 %tmp_10, label %3, label %._crit_edge

; <label>:3                                       ; preds = %2
  store float %A_load_1, float* %A_addr, align 4
  store float %temp, float* %A_addr_1, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  %i_1 = add i6 %i, 1
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i8
  ret i8 %empty_5
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [48 x float]* @A}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"A", metadata !5, metadata !"float", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 47, i32 1}
