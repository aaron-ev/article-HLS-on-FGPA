; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/heapSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@heapSort_noRecurv_str = internal unnamed_addr constant [18 x i8] c"heapSort_noRecurv\00"
@A = common global [48 x float] zeroinitializer, align 16

define internal fastcc void @heapSort_noRecurv_maxHeapify_noRecurv([48 x float]* nocapture %A, i6 %startA, i7 %endA) {
  %j_assign = alloca i32
  %endA_read = call i7 @_ssdm_op_Read.ap_auto.i7(i7 %endA)
  %startA_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %startA)
  %endA_cast1 = zext i7 %endA_read to i32
  %startA_cast = zext i6 %startA_read to i32
  store i32 %startA_cast, i32* %j_assign
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.backedge, %0
  %current = phi i32 [ %startA_cast, %0 ], [ %current_6, %._crit_edge5.backedge ]
  %i = phi i6 [ 0, %0 ], [ %i_1, %._crit_edge5.backedge ]
  %i_cast = zext i6 %i to i7
  %exitcond = icmp eq i7 %i_cast, %endA_read
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 48, i64 0)
  %i_1 = add i6 %i, 1
  br i1 %exitcond, label %1, label %_ifconv

_ifconv:                                          ; preds = %._crit_edge5
  %j_assign_load = load i32* %j_assign
  %tmp = shl i32 %current, 1
  %left = or i32 %tmp, 1
  %right = add nsw i32 2, %tmp
  %tmp_3 = icmp ult i32 %left, %endA_cast1
  %tmp_4 = sext i32 %current to i64
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp_4
  %A_load = load float* %A_addr, align 4
  %tmp_5 = zext i32 %left to i64
  %A_addr_1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_5
  %A_load_1 = load float* %A_addr_1, align 4
  %A_load_to_int = bitcast float %A_load to i32
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_to_int, i32 23, i32 30)
  %tmp_6 = trunc i32 %A_load_to_int to i23
  %A_load_1_to_int = bitcast float %A_load_1 to i32
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_1_to_int, i32 23, i32 30)
  %tmp_10 = trunc i32 %A_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_2, -1
  %notrhs = icmp eq i23 %tmp_6, 0
  %tmp_11 = or i1 %notrhs, %notlhs
  %notlhs2 = icmp ne i8 %tmp_s, -1
  %notrhs3 = icmp eq i23 %tmp_10, 0
  %tmp_12 = or i1 %notrhs3, %notlhs2
  %tmp_13 = and i1 %tmp_11, %tmp_12
  %tmp_14 = fcmp olt float %A_load, %A_load_1
  %tmp_15 = and i1 %tmp_13, %tmp_14
  %sel_tmp = and i1 %tmp_3, %tmp_15
  %current_3 = select i1 %sel_tmp, i32 %left, i32 %current
  %current_1 = select i1 %tmp_3, i32 %current_3, i32 %current
  %tmp_7 = icmp ult i32 %right, %endA_cast1
  %tmp_8 = sext i32 %current_1 to i64
  %A_addr_2 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_8
  %A_load_2 = load float* %A_addr_2, align 4
  %tmp_9 = zext i32 %right to i64
  %A_addr_3 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_9
  %A_load_3 = load float* %A_addr_3, align 4
  %A_load_2_to_int = bitcast float %A_load_2 to i32
  %tmp_16 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_2_to_int, i32 23, i32 30)
  %tmp_17 = trunc i32 %A_load_2_to_int to i23
  %A_load_3_to_int = bitcast float %A_load_3 to i32
  %tmp_18 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_3_to_int, i32 23, i32 30)
  %tmp_19 = trunc i32 %A_load_3_to_int to i23
  %notlhs4 = icmp ne i8 %tmp_16, -1
  %notrhs5 = icmp eq i23 %tmp_17, 0
  %tmp_20 = or i1 %notrhs5, %notlhs4
  %notlhs6 = icmp ne i8 %tmp_18, -1
  %notrhs7 = icmp eq i23 %tmp_19, 0
  %tmp_21 = or i1 %notrhs7, %notlhs6
  %tmp_22 = and i1 %tmp_20, %tmp_21
  %tmp_23 = fcmp olt float %A_load_2, %A_load_3
  %tmp_24 = and i1 %tmp_22, %tmp_23
  %sel_tmp4 = and i1 %tmp_7, %tmp_24
  %current_5 = select i1 %sel_tmp4, i32 %right, i32 %current_1
  %current_6 = select i1 %tmp_7, i32 %current_5, i32 %current_1
  %tmp_1 = icmp eq i32 %current_6, %j_assign_load
  br i1 %tmp_1, label %._crit_edge5.backedge, label %_ifconv8

_ifconv8:                                         ; preds = %_ifconv
  %tmp_i = zext i32 %current_6 to i64
  %A_addr_4 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_i
  %A_load_4 = load float* %A_addr_4, align 4
  %p_Val2_1 = bitcast float %A_load_4 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_1, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_1, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_1 to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_i_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_i_cast = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_i_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_2_i_i_i = sub i8 127, %loc_V
  %tmp_2_i_i_i_cast = sext i8 %tmp_2_i_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_2_i_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_3_i_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_4_i_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_6_i_i_i = shl i78 %tmp_i_i_i, %tmp_3_i_i_i
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_4_i_i_i, i32 23)
  %tmp_25 = zext i1 %tmp_30 to i32
  %tmp_26 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_6_i_i_i, i32 23, i32 54)
  %p_Val2_4 = select i1 %isNeg, i32 %tmp_25, i32 %tmp_26
  %p_Val2_7_i_i_i = sub i32 0, %p_Val2_4
  %p_Val2_s = select i1 %p_Result_s, i32 %p_Val2_7_i_i_i, i32 %p_Val2_4
  %tmp_1_i = sext i32 %j_assign_load to i64
  %A_addr_5 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_1_i
  %A_load_5 = load float* %A_addr_5, align 4
  store float %A_load_5, float* %A_addr_4, align 4
  %tmp_2_i = sitofp i32 %p_Val2_s to float
  store float %tmp_2_i, float* %A_addr_5, align 4
  store i32 %current_6, i32* %j_assign
  br label %._crit_edge5.backedge

._crit_edge5.backedge:                            ; preds = %_ifconv8, %_ifconv
  br label %._crit_edge5

; <label>:1                                       ; preds = %._crit_edge5
  ret void
}

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @heapSort_noRecurv([48 x float]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !8
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @heapSort_noRecurv_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i6 [ 23, %0 ], [ %i_2, %2 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i, i32 5)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 24, i64 24, i64 24) nounwind
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 0
  br label %.preheader

; <label>:2                                       ; preds = %1
  call fastcc void @heapSort_noRecurv_maxHeapify_noRecurv([48 x float]* %A, i6 %i, i7 48) nounwind
  %i_2 = add i6 %i, -1
  br label %1

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %i_assign = phi i7 [ %i_3, %_ifconv ], [ 47, %.preheader.preheader ]
  %i_assign_cast = sext i7 %i_assign to i32
  %tmp_31 = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %i_assign, i32 6)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 48, i64 48, i64 48) nounwind
  br i1 %tmp_31, label %3, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp_i = zext i32 %i_assign_cast to i64
  %A_addr_6 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_i
  %A_load_6 = load float* %A_addr_6, align 4
  %p_Val2_5 = bitcast float %A_load_6 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_5, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_5, i32 23, i32 30) nounwind
  %loc_V_2 = trunc i32 %p_Val2_5 to i23
  %p_Result_2 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_2) nounwind
  %tmp_i_i_i = zext i24 %p_Result_2 to i78
  %tmp_i_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_2_i_i_i = sub i8 127, %loc_V
  %tmp_2_i_i_i_cast = sext i8 %tmp_2_i_i_i to i9
  %sh_assign_2 = select i1 %isNeg, i9 %tmp_2_i_i_i_cast, i9 %sh_assign
  %sh_assign_2_cast = sext i9 %sh_assign_2 to i32
  %sh_assign_2_cast_cast = sext i9 %sh_assign_2 to i24
  %tmp_3_i_i_i = zext i32 %sh_assign_2_cast to i78
  %tmp_4_i_i_i = lshr i24 %p_Result_2, %sh_assign_2_cast_cast
  %tmp_6_i_i_i = shl i78 %tmp_i_i_i, %tmp_3_i_i_i
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_4_i_i_i, i32 23)
  %tmp_s = zext i1 %tmp_37 to i32
  %tmp_27 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_6_i_i_i, i32 23, i32 54)
  %p_Val2_8 = select i1 %isNeg, i32 %tmp_s, i32 %tmp_27
  %p_Val2_7_i_i_i = sub i32 0, %p_Val2_8
  %p_Val2_s = select i1 %p_Result_s, i32 %p_Val2_7_i_i_i, i32 %p_Val2_8
  %A_load = load float* %A_addr, align 4
  store float %A_load, float* %A_addr_6, align 4
  %tmp_2_i = sitofp i32 %p_Val2_s to float
  store float %tmp_2_i, float* %A_addr, align 4
  call fastcc void @heapSort_noRecurv_maxHeapify_noRecurv([48 x float]* %A, i6 0, i7 %i_assign) nounwind
  %i_3 = add i7 -1, %i_assign
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
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

define weak i7 @_ssdm_op_Read.ap_auto.i7(i7) {
entry:
  ret i7 %0
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i8
  ret i8 %empty_8
}

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_9 = trunc i78 %empty to i32
  ret i32 %empty_9
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_10 = shl i9 1, %empty
  %empty_11 = and i9 %0, %empty_10
  %empty_12 = icmp ne i9 %empty_11, 0
  ret i1 %empty_12
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_13 = shl i7 1, %empty
  %empty_14 = and i7 %0, %empty_13
  %empty_15 = icmp ne i7 %empty_14, 0
  ret i1 %empty_15
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_16 = shl i6 1, %empty
  %empty_17 = and i6 %0, %empty_16
  %empty_18 = icmp ne i6 %empty_17, 0
  ret i1 %empty_18
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_19 = and i32 %0, %empty
  %empty_20 = icmp ne i32 %empty_19, 0
  ret i1 %empty_20
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_21 = shl i24 1, %empty
  %empty_22 = and i24 %0, %empty_21
  %empty_23 = icmp ne i24 %empty_22, 0
  ret i1 %empty_23
}

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_24 = zext i23 %1 to i24
  %empty_25 = shl i24 %empty, 23
  %empty_26 = or i24 %empty_25, %empty_24
  ret i24 %empty_26
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
