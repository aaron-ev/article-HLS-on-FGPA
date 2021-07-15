; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/heapSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sOutData_done_V = internal unnamed_addr global i1 false
@sOutData_data = internal unnamed_addr global i16 0
@ptr_index = internal global i1 false
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@heapSort_str = internal unnamed_addr constant [9 x i8] c"heapSort\00"
@flagFill = internal unnamed_addr global i1 false
@count = internal unnamed_addr global i16 0, align 2
@A = internal global [256 x i16] zeroinitializer, align 16

define internal fastcc void @heapSort_maxHeapify_noRecurv([256 x i16]* nocapture %A, i8 %startA, i10 %endA) {
  %p_0 = alloca i16
  %endA_read = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %endA)
  %startA_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %startA)
  %endA_cast = zext i10 %endA_read to i16
  %startA_cast = zext i8 %startA_read to i16
  %tmp = zext i8 %startA_read to i32
  store i16 %startA_cast, i16* %p_0
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %._crit_edge2.backedge, %0
  %current = phi i32 [ %tmp, %0 ], [ %current_2, %._crit_edge2.backedge ]
  %i = phi i9 [ 0, %0 ], [ %i_1, %._crit_edge2.backedge ]
  %i_cast = zext i9 %i to i10
  %tmp_2 = icmp slt i10 %i_cast, %endA_read
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 256, i64 0)
  %i_1 = add i9 %i, 1
  br i1 %tmp_2, label %_ifconv, label %2

_ifconv:                                          ; preds = %._crit_edge2
  %p_0_load = load i16* %p_0
  %tmp_3 = trunc i32 %current to i15
  %tmp_4 = call i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15 %tmp_3, i1 false)
  %left = or i16 %tmp_4, 1
  %right = add i16 2, %tmp_4
  %tmp_5 = icmp slt i16 %left, %endA_cast
  %tmp_6 = sext i32 %current to i64
  %A_addr = getelementptr [256 x i16]* %A, i64 0, i64 %tmp_6
  %A_load = load i16* %A_addr, align 2
  %tmp_7 = sext i16 %left to i64
  %A_addr_1 = getelementptr [256 x i16]* %A, i64 0, i64 %tmp_7
  %A_load_1 = load i16* %A_addr_1, align 2
  %tmp_8 = icmp slt i16 %A_load, %A_load_1
  %current_3 = sext i16 %left to i32
  %p_current = select i1 %tmp_8, i32 %current_3, i32 %current
  %current_1 = select i1 %tmp_5, i32 %p_current, i32 %current
  %tmp_s = icmp slt i16 %right, %endA_cast
  %tmp_9 = sext i32 %current_1 to i64
  %A_addr_2 = getelementptr [256 x i16]* %A, i64 0, i64 %tmp_9
  %A_load_2 = load i16* %A_addr_2, align 2
  %tmp_1 = sext i16 %right to i64
  %A_addr_3 = getelementptr [256 x i16]* %A, i64 0, i64 %tmp_1
  %A_load_3 = load i16* %A_addr_3, align 2
  %tmp_10 = icmp slt i16 %A_load_2, %A_load_3
  %current_4 = sext i16 %right to i32
  %p_current_1 = select i1 %tmp_10, i32 %current_4, i32 %current_1
  %current_2 = select i1 %tmp_s, i32 %p_current_1, i32 %current_1
  %tmp_11 = sext i16 %p_0_load to i32
  %tmp_12 = icmp eq i32 %current_2, %tmp_11
  br i1 %tmp_12, label %._crit_edge2.backedge, label %1

; <label>:1                                       ; preds = %_ifconv
  %tmp_13 = sext i32 %current_2 to i64
  %A_addr_4 = getelementptr [256 x i16]* %A, i64 0, i64 %tmp_13
  %temp = load i16* %A_addr_4, align 2
  %tmp_14 = sext i16 %p_0_load to i64
  %A_addr_5 = getelementptr [256 x i16]* %A, i64 0, i64 %tmp_14
  %A_load_5 = load i16* %A_addr_5, align 2
  store i16 %A_load_5, i16* %A_addr_4, align 2
  store i16 %temp, i16* %A_addr_5, align 2
  %tmp_15 = trunc i32 %current_2 to i16
  store i16 %tmp_15, i16* %p_0
  br label %._crit_edge2.backedge

._crit_edge2.backedge:                            ; preds = %1, %_ifconv
  br label %._crit_edge2

; <label>:2                                       ; preds = %._crit_edge2
  ret void
}

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @heapSort(i16* noalias %agg_result_data, i1* noalias %agg_result_done_V, i16 signext %dataIn, i8 signext %posOutData) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %agg_result_data), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %agg_result_done_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData), !map !21
  %posOutData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %posOutData)
  %dataIn_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %dataIn)
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @heapSort_str) nounwind
  %count_load = load i16* @count, align 2
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %count_load, i32 8, i32 15)
  %icmp = icmp slt i8 %tmp, 1
  %sOutData_done_V_load = load i1* @sOutData_done_V, align 1
  br i1 %icmp, label %0, label %1

; <label>:0                                       ; preds = %codeRepl
  %tmp_s = sext i16 %count_load to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_s
  store i16 %dataIn_read, i16* %A_addr, align 2
  %tmp_15 = add i16 %count_load, 1
  store i16 %tmp_15, i16* @count, align 2
  %sOutData_data_load = load i16* @sOutData_data, align 2
  br label %4

; <label>:1                                       ; preds = %codeRepl
  %flagFill_load = load i1* @flagFill, align 1
  br i1 %flagFill_load, label %._crit_edge7, label %.preheader

.preheader:                                       ; preds = %1, %2
  %i_i = phi i8 [ %i, %2 ], [ 127, %1 ]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %i_i, i32 7)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  br i1 %tmp_16, label %.preheader.i, label %2

; <label>:2                                       ; preds = %.preheader
  call fastcc void @heapSort_maxHeapify_noRecurv([256 x i16]* @A, i8 signext %i_i, i10 signext 256)
  %i = add i8 %i_i, -1
  br label %.preheader

.preheader.i:                                     ; preds = %.preheader, %3
  %i_1_i = phi i9 [ %i_2, %3 ], [ 255, %.preheader ]
  %i_1_i_cast = sext i9 %i_1_i to i16
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1_i, i32 8)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  br i1 %tmp_17, label %heapSort_noRecurv.exit, label %3

; <label>:3                                       ; preds = %.preheader.i
  %temp = load i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 16
  %tmp_16_i = zext i16 %i_1_i_cast to i64
  %A_addr_6 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_16_i
  %A_load = load i16* %A_addr_6, align 2
  store i16 %A_load, i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 16
  store i16 %temp, i16* %A_addr_6, align 2
  %i_1_i_cast_cast = zext i9 %i_1_i to i10
  call fastcc void @heapSort_maxHeapify_noRecurv([256 x i16]* @A, i8 signext 0, i10 signext %i_1_i_cast_cast)
  %i_2 = add i9 %i_1_i, -1
  br label %.preheader.i

heapSort_noRecurv.exit:                           ; preds = %.preheader.i
  store i1 true, i1* @sOutData_done_V, align 2
  store i1 true, i1* @flagFill, align 1
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %heapSort_noRecurv.exit, %1
  %sOutData_done_V_loc = phi i1 [ true, %heapSort_noRecurv.exit ], [ %sOutData_done_V_load, %1 ]
  %mem_index_gep7_cast = sext i8 %posOutData_read to i11
  %adjSize = zext i11 %mem_index_gep7_cast to i64
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %posOutData_read, i32 7)
  %gepindex2 = select i1 %tmp_18, i64 255, i64 %adjSize
  %A_addr_7 = getelementptr [256 x i16]* @A, i64 0, i64 %gepindex2
  %A_load_7 = load i16* %A_addr_7, align 2
  store i16 %A_load_7, i16* @sOutData_data, align 2
  br label %4

; <label>:4                                       ; preds = %._crit_edge7, %0
  %storemerge1 = phi i16 [ %A_load_7, %._crit_edge7 ], [ %sOutData_data_load, %0 ]
  %storemerge = phi i1 [ %sOutData_done_V_loc, %._crit_edge7 ], [ %sOutData_done_V_load, %0 ]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %agg_result_data, i16 %storemerge1)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %agg_result_done_V, i1 %storemerge)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
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

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak i10 @_ssdm_op_Read.ap_auto.i10(i10) {
entry:
  ret i10 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_6 = trunc i16 %empty to i8
  ret i8 %empty_6
}

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_7 = shl i9 1, %empty
  %empty_8 = and i9 %0, %empty_7
  %empty_9 = icmp ne i9 %empty_8, 0
  ret i1 %empty_9
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_10 = shl i8 1, %empty
  %empty_11 = and i8 %0, %empty_10
  %empty_12 = icmp ne i8 %empty_11, 0
  ret i1 %empty_12
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone {
entry:
  %empty = zext i15 %0 to i16
  %empty_13 = zext i1 %1 to i16
  %empty_14 = shl i16 %empty, 1
  %empty_15 = or i16 %empty_14, %empty_13
  ret i16 %empty_15
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
!8 = metadata !{i32 0, i32 15, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"agg.result.data", metadata !5, metadata !"short", i32 0, i32 15}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"agg.result.done.V", metadata !5, metadata !"int1", i32 0, i32 0}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 15, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"dataIn", metadata !19, metadata !"short", i32 0, i32 15}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 7, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"posOutData", metadata !19, metadata !"char", i32 0, i32 7}
