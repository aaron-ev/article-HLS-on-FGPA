; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/heapSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ptr_index = internal global i1 false
@heapSort_str = internal unnamed_addr constant [9 x i8] c"heapSort\00"
@flagFill = internal unnamed_addr global i1 false
@count = internal unnamed_addr global i32 0, align 4
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

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define signext i16 @heapSort(i16 signext %dataIn, i8 signext %posOutData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @heapSort_str) nounwind
  %posOutData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %posOutData) nounwind
  %dataIn_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %dataIn) nounwind
  %count_load = load i32* @count, align 4
  %tmp = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %count_load, i32 8, i32 31)
  %icmp = icmp slt i24 %tmp, 1
  br i1 %icmp, label %1, label %2

; <label>:1                                       ; preds = %0
  %tmp_s = sext i32 %count_load to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_s
  store i16 %dataIn_read, i16* %A_addr, align 2
  %tmp_15 = add nsw i32 %count_load, 1
  store i32 %tmp_15, i32* @count, align 4
  br label %5

; <label>:2                                       ; preds = %0
  %flagFill_load = load i1* @flagFill, align 1
  br i1 %flagFill_load, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %2, %3
  %i_i = phi i8 [ %i, %3 ], [ 127, %2 ]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %i_i, i32 7)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  br i1 %tmp_16, label %.preheader.i, label %3

; <label>:3                                       ; preds = %.preheader
  call fastcc void @heapSort_maxHeapify_noRecurv([256 x i16]* @A, i8 signext %i_i, i10 signext 256) nounwind
  %i = add i8 %i_i, -1
  br label %.preheader

.preheader.i:                                     ; preds = %.preheader, %4
  %i_1_i = phi i9 [ %i_2, %4 ], [ 255, %.preheader ]
  %i_1_i_cast = sext i9 %i_1_i to i16
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1_i, i32 8)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  br i1 %tmp_17, label %heapSort_noRecurv.exit, label %4

; <label>:4                                       ; preds = %.preheader.i
  %temp = load i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 16
  %tmp_16_i = zext i16 %i_1_i_cast to i64
  %A_addr_6 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_16_i
  %A_load = load i16* %A_addr_6, align 2
  store i16 %A_load, i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 16
  store i16 %temp, i16* %A_addr_6, align 2
  %i_1_i_cast_cast = zext i9 %i_1_i to i10
  call fastcc void @heapSort_maxHeapify_noRecurv([256 x i16]* @A, i8 signext 0, i10 signext %i_1_i_cast_cast) nounwind
  %i_2 = add i9 %i_1_i, -1
  br label %.preheader.i

heapSort_noRecurv.exit:                           ; preds = %.preheader.i
  store i1 true, i1* @flagFill, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %heapSort_noRecurv.exit, %2
  %mem_index_gep7_cast = sext i8 %posOutData_read to i11
  %adjSize = zext i11 %mem_index_gep7_cast to i64
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %posOutData_read, i32 7)
  %gepindex2 = select i1 %tmp_18, i64 255, i64 %adjSize
  %A_addr_7 = getelementptr [256 x i16]* @A, i64 0, i64 %gepindex2
  %A_load_7 = load i16* %A_addr_7, align 2
  br label %5

; <label>:5                                       ; preds = %._crit_edge, %1
  %p_0 = phi i16 [ 0, %1 ], [ %A_load_7, %._crit_edge ]
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

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak i10 @_ssdm_op_Read.ap_auto.i10(i10) {
entry:
  ret i10 %0
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_6 = trunc i32 %empty to i24
  ret i24 %empty_6
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

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 15, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"dataIn", metadata !4, metadata !"short", i32 0, i32 15}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 7, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"posOutData", metadata !4, metadata !"char", i32 0, i32 7}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 15, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"return", metadata !14, metadata !"data_inp", i32 0, i32 15}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 1, i32 0}
