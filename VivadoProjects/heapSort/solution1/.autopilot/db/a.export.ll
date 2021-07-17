; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/heapSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@operation_V = external global i1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@heapSort_str = internal unnamed_addr constant [9 x i8] c"heapSort\00"
@A = external global [256 x i16]

define internal fastcc void @heapSort_maxHeapify_noRecurv(i8 signext %startA, i10 %endA) {
  %p_0 = alloca i16
  %endA_read = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %endA)
  %startA_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %startA)
  %endA_cast1 = zext i10 %endA_read to i16
  %startA_cast = zext i8 %startA_read to i16
  store i16 %startA_cast, i16* %p_0
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %._crit_edge2.backedge, %0
  %current = phi i16 [ %startA_cast, %0 ], [ %startA_assign, %._crit_edge2.backedge ]
  %i = phi i9 [ 0, %0 ], [ %i_1, %._crit_edge2.backedge ]
  %i_cast = zext i9 %i to i10
  %tmp = icmp slt i10 %i_cast, %endA_read
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 256, i64 0) nounwind
  %i_1 = add i9 %i, 1
  br i1 %tmp, label %_ifconv, label %2

_ifconv:                                          ; preds = %._crit_edge2
  %p_0_load = load i16* %p_0
  %tmp_1 = shl i16 %current, 1
  %current_4 = or i16 %tmp_1, 1
  %current_5 = add i16 2, %tmp_1
  %tmp_4 = icmp slt i16 %current_4, %endA_cast1
  %tmp_5 = sext i16 %current to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_5
  %A_load = load i16* %A_addr, align 2
  %tmp_6 = sext i16 %current_4 to i64
  %A_addr_1 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_6
  %A_load_1 = load i16* %A_addr_1, align 2
  %tmp_7 = icmp slt i16 %A_load, %A_load_1
  %p_current = select i1 %tmp_7, i16 %current_4, i16 %current
  %current_1 = select i1 %tmp_4, i16 %p_current, i16 %current
  %tmp_8 = icmp slt i16 %current_5, %endA_cast1
  %tmp_9 = sext i16 %current_1 to i64
  %A_addr_2 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_9
  %A_load_2 = load i16* %A_addr_2, align 2
  %tmp_s = sext i16 %current_5 to i64
  %A_addr_3 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_s
  %A_load_3 = load i16* %A_addr_3, align 2
  %tmp_2 = icmp slt i16 %A_load_2, %A_load_3
  %p_current_1 = select i1 %tmp_2, i16 %current_5, i16 %current_1
  %startA_assign = select i1 %tmp_8, i16 %p_current_1, i16 %current_1
  %tmp_3 = icmp eq i16 %startA_assign, %p_0_load
  br i1 %tmp_3, label %._crit_edge2.backedge, label %1

; <label>:1                                       ; preds = %_ifconv
  %tmp_10 = sext i16 %startA_assign to i64
  %A_addr_4 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_10
  %temp = load i16* %A_addr_4, align 2
  %tmp_11 = sext i16 %p_0_load to i64
  %A_addr_5 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_11
  %A_load_5 = load i16* %A_addr_5, align 2
  store i16 %A_load_5, i16* %A_addr_4, align 2
  store i16 %temp, i16* %A_addr_5, align 2
  store i16 %startA_assign, i16* %p_0
  br label %._crit_edge2.backedge

._crit_edge2.backedge:                            ; preds = %1, %_ifconv
  br label %._crit_edge2

; <label>:2                                       ; preds = %._crit_edge2
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define signext i16 @heapSort(i8 signext %indexOutputData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @heapSort_str) nounwind
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind
  %operation_V_load = load i1* @operation_V, align 1
  br i1 %operation_V_load, label %3, label %.preheader

.preheader:                                       ; preds = %0, %1
  %i_i = phi i8 [ %i, %1 ], [ 127, %0 ]
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %i_i, i32 7)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  br i1 %tmp_2, label %.preheader.i, label %1

; <label>:1                                       ; preds = %.preheader
  call fastcc void @heapSort_maxHeapify_noRecurv(i8 signext %i_i, i10 signext 256) nounwind
  %i = add i8 %i_i, -1
  br label %.preheader

.preheader.i:                                     ; preds = %.preheader, %2
  %i_1_i = phi i9 [ %i_2, %2 ], [ 255, %.preheader ]
  %i_1_i_cast = sext i9 %i_1_i to i16
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1_i, i32 8)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  br i1 %tmp_3, label %heapSort_noRecurv.exit, label %2

; <label>:2                                       ; preds = %.preheader.i
  %temp = load i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 2
  %tmp_12_i = zext i16 %i_1_i_cast to i64
  %A_addr_6 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_12_i
  %A_load_7 = load i16* %A_addr_6, align 2
  store i16 %A_load_7, i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 2
  store i16 %temp, i16* %A_addr_6, align 2
  %i_1_i_cast_cast = zext i9 %i_1_i to i10
  call fastcc void @heapSort_maxHeapify_noRecurv(i8 signext 0, i10 signext %i_1_i_cast_cast) nounwind
  %i_2 = add i9 %i_1_i, -1
  br label %.preheader.i

; <label>:3                                       ; preds = %0
  %tmp = sext i8 %indexOutputData_read to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp
  %A_load = load i16* %A_addr, align 2
  br label %heapSort_noRecurv.exit

heapSort_noRecurv.exit:                           ; preds = %.preheader.i, %3
  %p_0 = phi i16 [ %A_load, %3 ], [ 0, %.preheader.i ]
  ret i16 %p_0
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

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i10 @_ssdm_op_Read.ap_auto.i10(i10) {
entry:
  ret i10 %0
}

declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_4 = shl i9 1, %empty
  %empty_5 = and i9 %0, %empty_4
  %empty_6 = icmp ne i9 %empty_5, 0
  ret i1 %empty_6
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_7 = shl i8 1, %empty
  %empty_8 = and i8 %0, %empty_7
  %empty_9 = icmp ne i8 %empty_8, 0
  ret i1 %empty_9
}

declare i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !12}

!0 = metadata !{metadata !1, i1* @operation_V}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 0, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"operation.V", metadata !5, metadata !"int1", i32 0, i32 0}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13, [256 x i16]* @A}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 15, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"A", metadata !17, metadata !"short", i32 0, i32 15}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 255, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 7, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"indexOutputData", metadata !23, metadata !"char", i32 0, i32 7}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 15, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"return", metadata !29, metadata !"data_inp", i32 0, i32 15}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 1, i32 0}
