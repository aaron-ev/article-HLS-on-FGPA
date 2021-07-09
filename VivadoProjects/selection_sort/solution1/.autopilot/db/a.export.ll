; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/selection_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@selectionSort_str = internal unnamed_addr constant [14 x i8] c"selectionSort\00"
@ptr_index = internal global i1 false
@flagFill = internal unnamed_addr global i1 false
@count = internal unnamed_addr global i32 0, align 4
@A = internal global [256 x i16] zeroinitializer, align 16

define signext i16 @selectionSort(i16 signext %dataIn, i8 signext %posOutData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @selectionSort_str) nounwind
  %posOutData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %posOutData) nounwind
  %dataIn_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %dataIn) nounwind
  %count_load = load i32* @count, align 4
  %tmp = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %count_load, i32 8, i32 31)
  %icmp = icmp slt i24 %tmp, 1
  br i1 %icmp, label %1, label %2

; <label>:1                                       ; preds = %0
  %tmp_1 = sext i32 %count_load to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_1
  store i16 %dataIn_read, i16* %A_addr, align 2
  %tmp_2 = add nsw i32 %count_load, 1
  store i32 %tmp_2, i32* @count, align 4
  br label %5

; <label>:2                                       ; preds = %0
  %flagFill_load = load i1* @flagFill, align 1
  br i1 %flagFill_load, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %2, %4
  %i_i = phi i8 [ %i, %4 ], [ 0, %2 ]
  %i_i_cast1 = zext i8 %i_i to i16
  %exitcond1_i = icmp eq i8 %i_i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 255, i64 255, i64 255) nounwind
  %i = add i8 %i_i, 1
  br i1 %exitcond1_i, label %selectionAlgorithm.exit, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_i = zext i8 %i_i to i64
  %A_addr_1 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_i
  %temp = load i16* %A_addr_1, align 2
  %min = sext i16 %temp to i32
  %index_min = zext i8 %i_i to i32
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %3
  %min1_i = phi i32 [ %min, %3 ], [ %min_1_i_min1_i, %.backedge.i.backedge ]
  %j_0_in_i = phi i16 [ %i_i_cast1, %3 ], [ %j, %.backedge.i.backedge ]
  %index_min1_i = phi i32 [ %index_min, %3 ], [ %index_min_1_i_index_min1_i, %.backedge.i.backedge ]
  %j = add i16 %j_0_in_i, 1
  %exitcond_i = icmp eq i16 %j_0_in_i, 255
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 255, i64 0) nounwind
  br i1 %exitcond_i, label %4, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.backedge.i
  %tmp_9_i = sext i16 %j to i64
  %A_addr_3 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_9_i
  %A_load_1 = load i16* %A_addr_3, align 2
  %min_1 = sext i16 %A_load_1 to i32
  %tmp_i_5 = icmp ult i32 %min_1, %min1_i
  %index_min_1 = sext i16 %j to i32
  %min_1_i_min1_i = select i1 %tmp_i_5, i32 %min_1, i32 %min1_i
  %index_min_1_i_index_min1_i = select i1 %tmp_i_5, i32 %index_min_1, i32 %index_min1_i
  br label %.backedge.i

; <label>:4                                       ; preds = %.backedge.i
  %tmp_7_i = zext i32 %index_min1_i to i64
  %A_addr_2 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_7_i
  %A_load = load i16* %A_addr_2, align 2
  store i16 %A_load, i16* %A_addr_1, align 2
  store i16 %temp, i16* %A_addr_2, align 2
  br label %.preheader

selectionAlgorithm.exit:                          ; preds = %.preheader
  store i1 true, i1* @flagFill, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %selectionAlgorithm.exit, %2
  %mem_index_gep5_cast = sext i8 %posOutData_read to i11
  %adjSize = zext i11 %mem_index_gep5_cast to i64
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %posOutData_read, i32 7)
  %gepindex2 = select i1 %tmp_3, i64 255, i64 %adjSize
  %A_addr_4 = getelementptr [256 x i16]* @A, i64 0, i64 %gepindex2
  %A_load_3 = load i16* %A_addr_4, align 2
  br label %5

; <label>:5                                       ; preds = %._crit_edge, %1
  %p_0 = phi i16 [ 0, %1 ], [ %A_load_3, %._crit_edge ]
  ret i16 %p_0
}

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

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_6 = trunc i32 %empty to i24
  ret i24 %empty_6
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_7 = shl i8 1, %empty
  %empty_8 = and i8 %0, %empty_7
  %empty_9 = icmp ne i8 %empty_8, 0
  ret i1 %empty_9
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
