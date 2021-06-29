; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/bubbleSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bubbleSort_str = internal unnamed_addr constant [11 x i8] c"bubbleSort\00"
@A = common global [48 x float] zeroinitializer, align 16

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @bubbleSort([48 x float]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !8
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @bubbleSort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %3, %0
  %indvars_iv = phi i7 [ %i, %3 ], [ 47, %0 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %indvars_iv, i32 6)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) nounwind
  br i1 %tmp, label %4, label %.preheader

.preheader:                                       ; preds = %1, %._crit_edge
  %i_assign = phi i6 [ %j, %._crit_edge ], [ 0, %1 ]
  %i_assign_cast = zext i6 %i_assign to i7
  %exitcond = icmp eq i7 %i_assign_cast, %indvars_iv
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 47, i64 0) nounwind
  %j = add i6 %i_assign, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_s = zext i6 %i_assign to i64
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp_s
  %A_load = load float* %A_addr, align 4
  %tmp_6 = zext i6 %j to i64
  %A_addr_1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_6
  %A_load_1 = load float* %A_addr_1, align 4
  %p_Val2_1 = bitcast float %A_load to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_1, i32 23, i32 30)
  %loc_V_1 = trunc i32 %p_Val2_1 to i23
  %A_load_1_to_int = bitcast float %A_load_1 to i32
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_1_to_int, i32 23, i32 30)
  %tmp_2 = trunc i32 %A_load_1_to_int to i23
  %notlhs = icmp ne i8 %loc_V, -1
  %notrhs = icmp eq i23 %loc_V_1, 0
  %tmp_5 = or i1 %notrhs, %notlhs
  %notlhs3 = icmp ne i8 %tmp_3, -1
  %notrhs4 = icmp eq i23 %tmp_2, 0
  %tmp_7 = or i1 %notrhs4, %notlhs3
  %tmp_8 = and i1 %tmp_5, %tmp_7
  %tmp_9 = fcmp ogt float %A_load, %A_load_1
  %tmp_4 = and i1 %tmp_8, %tmp_9
  br i1 %tmp_4, label %_ifconv, label %._crit_edge

_ifconv:                                          ; preds = %2
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_1, i32 31)
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_4_i_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 %tmp_i_i_i_i_cast1, -127
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_6_i_i_i = sub i8 127, %loc_V
  %tmp_6_i_i_i_cast = sext i8 %tmp_6_i_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_6_i_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_8_i_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_9_i_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_1_i_i_i = shl i78 %tmp_4_i_i_i, %tmp_8_i_i_i
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_9_i_i_i, i32 23)
  %tmp_10 = zext i1 %tmp_14 to i32
  %tmp_11 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_1_i_i_i, i32 23, i32 54)
  %p_Val2_4 = select i1 %isNeg, i32 %tmp_10, i32 %tmp_11
  %p_Val2_7_i_i_i = sub i32 0, %p_Val2_4
  %p_Val2_s = select i1 %p_Result_s, i32 %p_Val2_7_i_i_i, i32 %p_Val2_4
  store float %A_load_1, float* %A_addr, align 4
  %tmp_2_i = sitofp i32 %p_Val2_s to float
  store float %tmp_2_i, float* %A_addr_1, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ifconv, %2
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %i = add i7 %indvars_iv, -1
  br label %1

; <label>:4                                       ; preds = %1
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
  %empty_7 = trunc i32 %empty to i8
  ret i8 %empty_7
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_8 = trunc i78 %empty to i32
  ret i32 %empty_8
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_9 = shl i9 1, %empty
  %empty_10 = and i9 %0, %empty_9
  %empty_11 = icmp ne i9 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_12 = shl i7 1, %empty
  %empty_13 = and i7 %0, %empty_12
  %empty_14 = icmp ne i7 %empty_13, 0
  ret i1 %empty_14
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_15 = and i32 %0, %empty
  %empty_16 = icmp ne i32 %empty_15, 0
  ret i1 %empty_16
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_17 = shl i24 1, %empty
  %empty_18 = and i24 %0, %empty_17
  %empty_19 = icmp ne i24 %empty_18, 0
  ret i1 %empty_19
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_20 = zext i23 %1 to i24
  %empty_21 = shl i24 %empty, 23
  %empty_22 = or i24 %empty_21, %empty_20
  ret i24 %empty_22
}

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [48 x float]* @A}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"A", metadata !12, metadata !"float", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 47, i32 1}
