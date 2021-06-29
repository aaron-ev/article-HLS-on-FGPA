; ModuleID = 'C:/Users/aaron/Desktop/VivadoProjects/selection_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@selection_sort_str = internal unnamed_addr constant [15 x i8] c"selection_sort\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]

define void @selection_sort([48 x float]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @selection_sort_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %index_min = phi i6 [ 0, %0 ], [ %i, %2 ]
  %index_min_cast4 = zext i6 %index_min to i32
  %exitcond1 = icmp eq i6 %index_min, -17
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 47, i64 47, i64 47) nounwind
  %i = add i6 %index_min, 1
  br i1 %exitcond1, label %3, label %_ifconv1

_ifconv1:                                         ; preds = %1
  %tmp = zext i6 %index_min to i64
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp
  %A_load_1 = load float* %A_addr, align 4
  %p_Val2_s = bitcast float %A_load_1 to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i = zext i24 %p_Result_s to i78
  %tmp_i_i_i_cast3 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast3
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_1_i_i = sub i8 127, %loc_V
  %tmp_1_i_i_cast = sext i8 %tmp_1_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_1_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_2_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_3_i_i = lshr i24 %p_Result_s, %sh_assign_1_cast_cast
  %tmp_5_i_i = shl i78 %tmp_i_i, %tmp_2_i_i
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i, i32 23)
  %tmp_1 = zext i1 %tmp_8 to i32
  %tmp_4 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i, i32 23, i32 54)
  %result_V = select i1 %isNeg, i32 %tmp_1, i32 %tmp_4
  br label %.backedge

.backedge:                                        ; preds = %_ifconv, %_ifconv1
  %index_min1 = phi i32 [ %index_min_cast4, %_ifconv1 ], [ %index_min_2, %_ifconv ]
  %min1 = phi i32 [ %result_V, %_ifconv1 ], [ %min_1, %_ifconv ]
  %j_0_in = phi i32 [ %index_min_cast4, %_ifconv1 ], [ %j, %_ifconv ]
  %j = add nsw i32 %j_0_in, 1
  %exitcond = icmp eq i32 %j_0_in, 47
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 47, i64 0) nounwind
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %.backedge
  %tmp_5 = sext i32 %j to i64
  %A_addr_2 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_5
  %A_load_2 = load float* %A_addr_2, align 4
  %tmp_6 = uitofp i32 %min1 to float
  %p_Val2_4 = bitcast float %A_load_2 to i32
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_4, i32 23, i32 30)
  %loc_V_3 = trunc i32 %p_Val2_4 to i23
  %tmp_6_to_int = bitcast float %tmp_6 to i32
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_6_to_int, i32 23, i32 30)
  %tmp_14 = trunc i32 %tmp_6_to_int to i23
  %notlhs = icmp ne i8 %loc_V_2, -1
  %notrhs = icmp eq i23 %loc_V_3, 0
  %tmp_9 = or i1 %notrhs, %notlhs
  %notlhs5 = icmp ne i8 %tmp_7, -1
  %notrhs6 = icmp eq i23 %tmp_14, 0
  %tmp_s = or i1 %notrhs6, %notlhs5
  %tmp_10 = and i1 %tmp_9, %tmp_s
  %tmp_11 = fcmp olt float %A_load_2, %tmp_6
  %tmp_12 = and i1 %tmp_10, %tmp_11
  %p_Result_4 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_3) nounwind
  %tmp_i_i1 = zext i24 %p_Result_4 to i78
  %tmp_i_i_i1_cast2 = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_i1_cast2
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_1_i_i1 = sub i8 127, %loc_V_2
  %tmp_1_i_i1_cast = sext i8 %tmp_1_i_i1 to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_1_i_i1_cast, i9 %sh_assign_2
  %sh_assign_3_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_3_cast_cast = sext i9 %sh_assign_3 to i24
  %tmp_2_i_i1 = zext i32 %sh_assign_3_cast to i78
  %tmp_3_i_i1 = lshr i24 %p_Result_4, %sh_assign_3_cast_cast
  %tmp_5_i_i1 = shl i78 %tmp_i_i1, %tmp_2_i_i1
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_3_i_i1, i32 23)
  %tmp_13 = zext i1 %tmp_16 to i32
  %tmp_15 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_5_i_i1, i32 23, i32 54)
  %result_V_1 = select i1 %isNeg_1, i32 %tmp_13, i32 %tmp_15
  %index_min_2 = select i1 %tmp_12, i32 %j, i32 %index_min1
  %min_1 = select i1 %tmp_12, i32 %result_V_1, i32 %min1
  br label %.backedge

; <label>:2                                       ; preds = %.backedge
  %tmp_2 = zext i32 %index_min1 to i64
  %A_addr_1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_2
  %A_load = load float* %A_addr_1, align 4
  store float %A_load, float* %A_addr, align 4
  %tmp_3 = uitofp i32 %result_V to float
  store float %tmp_3, float* %A_addr_1, align 4
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_12 = shl i24 1, %empty
  %empty_13 = and i24 %0, %empty_12
  %empty_14 = icmp ne i24 %empty_13, 0
  ret i1 %empty_14
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_15 = zext i23 %1 to i24
  %empty_16 = shl i24 %empty, 23
  %empty_17 = or i24 %empty_16, %empty_15
  ret i24 %empty_17
}

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"A", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 47, i32 1}
