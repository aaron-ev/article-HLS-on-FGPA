; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/selectionSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@selectionSort_str = internal unnamed_addr constant [14 x i8] c"selectionSort\00"
@sOutData_done_V = internal unnamed_addr global i1 false
@sOutData_data = internal unnamed_addr global i16 0
@ptr_index = internal global i1 false
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@flagFill = internal unnamed_addr global i1 false
@count = internal unnamed_addr global i16 0, align 2
@A = internal global [256 x i16] zeroinitializer, align 16

define void @selectionSort(i16* noalias %agg_result_data, i1* noalias %agg_result_done_V, i16 signext %dataIn, i8 signext %posOutData) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %agg_result_data), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %agg_result_done_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData), !map !21
  %posOutData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %posOutData)
  %dataIn_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %dataIn)
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @selectionSort_str) nounwind
  %count_load = load i16* @count, align 2
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %count_load, i32 8, i32 15)
  %icmp = icmp slt i8 %tmp, 1
  %sOutData_done_V_load = load i1* @sOutData_done_V, align 1
  br i1 %icmp, label %0, label %1

; <label>:0                                       ; preds = %codeRepl
  %tmp_1 = sext i16 %count_load to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_1
  store i16 %dataIn_read, i16* %A_addr, align 2
  %tmp_2 = add i16 %count_load, 1
  store i16 %tmp_2, i16* @count, align 2
  %sOutData_data_load = load i16* @sOutData_data, align 2
  br label %4

; <label>:1                                       ; preds = %codeRepl
  %flagFill_load = load i1* @flagFill, align 1
  br i1 %flagFill_load, label %._crit_edge7, label %.preheader

.preheader:                                       ; preds = %1, %3
  %index_min = phi i8 [ %i, %3 ], [ 0, %1 ]
  %index_min_cast1 = zext i8 %index_min to i16
  %exitcond3_i = icmp eq i8 %index_min, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 255, i64 255, i64 255)
  %i = add i8 %index_min, 1
  br i1 %exitcond3_i, label %selectionAlgorithm.exit, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_i = zext i8 %index_min to i64
  %A_addr_1 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_i
  %min_2 = load i16* %A_addr_1, align 2
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %2
  %j_0_in_i = phi i16 [ %index_min_cast1, %2 ], [ %index_min_2, %.backedge.i.backedge ]
  %min1_i = phi i16 [ %min_2, %2 ], [ %min_i_min1_i, %.backedge.i.backedge ]
  %index_min1_i = phi i16 [ %index_min_cast1, %2 ], [ %j_i_index_min1_i, %.backedge.i.backedge ]
  %index_min_2 = add i16 %j_0_in_i, 1
  %exitcond_i = icmp eq i16 %j_0_in_i, 255
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 255, i64 0)
  br i1 %exitcond_i, label %3, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.backedge.i
  %tmp_7_i = sext i16 %index_min_2 to i64
  %A_addr_3 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_7_i
  %min = load i16* %A_addr_3, align 2
  %tmp_8_i = icmp slt i16 %min, %min1_i
  %min_i_min1_i = select i1 %tmp_8_i, i16 %min, i16 %min1_i
  %j_i_index_min1_i = select i1 %tmp_8_i, i16 %index_min_2, i16 %index_min1_i
  br label %.backedge.i

; <label>:3                                       ; preds = %.backedge.i
  %tmp_5_i = sext i16 %index_min1_i to i64
  %A_addr_2 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_5_i
  %A_load = load i16* %A_addr_2, align 2
  store i16 %A_load, i16* %A_addr_1, align 2
  store i16 %min_2, i16* %A_addr_2, align 2
  br label %.preheader

selectionAlgorithm.exit:                          ; preds = %.preheader
  store i1 true, i1* @sOutData_done_V, align 2
  store i1 true, i1* @flagFill, align 1
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %selectionAlgorithm.exit, %1
  %sOutData_done_V_loc = phi i1 [ true, %selectionAlgorithm.exit ], [ %sOutData_done_V_load, %1 ]
  %mem_index_gep5_cast = sext i8 %posOutData_read to i11
  %adjSize = zext i11 %mem_index_gep5_cast to i64
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %posOutData_read, i32 7)
  %gepindex2 = select i1 %tmp_3, i64 255, i64 %adjSize
  %A_addr_4 = getelementptr [256 x i16]* @A, i64 0, i64 %gepindex2
  %A_load_2 = load i16* %A_addr_4, align 2
  store i16 %A_load_2, i16* @sOutData_data, align 2
  br label %4

; <label>:4                                       ; preds = %._crit_edge7, %0
  %storemerge1 = phi i16 [ %A_load_2, %._crit_edge7 ], [ %sOutData_data_load, %0 ]
  %storemerge = phi i1 [ %sOutData_done_V_loc, %._crit_edge7 ], [ %sOutData_done_V_load, %0 ]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %agg_result_data, i16 %storemerge1)
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %agg_result_done_V, i1 %storemerge)
  ret void
}

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_5 = trunc i16 %empty to i8
  ret i8 %empty_5
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_6 = shl i8 1, %empty
  %empty_7 = and i8 %0, %empty_6
  %empty_8 = icmp ne i8 %empty_7, 0
  ret i1 %empty_8
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
