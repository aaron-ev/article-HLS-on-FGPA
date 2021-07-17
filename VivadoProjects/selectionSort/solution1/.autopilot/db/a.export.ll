; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/selectionSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@selectionSort_str = internal unnamed_addr constant [14 x i8] c"selectionSort\00"
@operation_V = external global i1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@A = external global [256 x i16]

define signext i16 @selectionSort(i8 signext %indexOutputData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @selectionSort_str) nounwind
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind
  %operation_V_load = load i1* @operation_V, align 1
  br i1 %operation_V_load, label %3, label %.preheader

.preheader:                                       ; preds = %0, %2
  %index_min = phi i8 [ %i, %2 ], [ 0, %0 ]
  %index_min_cast1 = zext i8 %index_min to i16
  %exitcond1_i = icmp eq i8 %index_min, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 255, i64 255, i64 255) nounwind
  %i = add i8 %index_min, 1
  br i1 %exitcond1_i, label %selectionAlgorithm.exit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_i = zext i8 %index_min to i64
  %A_addr_1 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_i
  %min_2 = load i16* %A_addr_1, align 2
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %1
  %index_min1_i = phi i16 [ %index_min_cast1, %1 ], [ %j_i_index_min1_i, %.backedge.i.backedge ]
  %min1_i = phi i16 [ %min_2, %1 ], [ %min_i_min1_i, %.backedge.i.backedge ]
  %j_0_in_i = phi i16 [ %index_min_cast1, %1 ], [ %index_min_2, %.backedge.i.backedge ]
  %index_min_2 = add i16 %j_0_in_i, 1
  %exitcond_i = icmp eq i16 %j_0_in_i, 255
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 255, i64 0) nounwind
  br i1 %exitcond_i, label %2, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.backedge.i
  %tmp_3_i = sext i16 %index_min_2 to i64
  %A_addr_3 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_3_i
  %min = load i16* %A_addr_3, align 2
  %tmp_4_i = icmp slt i16 %min, %min1_i
  %j_i_index_min1_i = select i1 %tmp_4_i, i16 %index_min_2, i16 %index_min1_i
  %min_i_min1_i = select i1 %tmp_4_i, i16 %min, i16 %min1_i
  br label %.backedge.i

; <label>:2                                       ; preds = %.backedge.i
  %tmp_1_i = sext i16 %index_min1_i to i64
  %A_addr_2 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_1_i
  %A_load_2 = load i16* %A_addr_2, align 2
  store i16 %A_load_2, i16* %A_addr_1, align 2
  store i16 %min_2, i16* %A_addr_2, align 2
  br label %.preheader

; <label>:3                                       ; preds = %0
  %tmp = sext i8 %indexOutputData_read to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp
  %A_load = load i16* %A_addr, align 2
  br label %selectionAlgorithm.exit

selectionAlgorithm.exit:                          ; preds = %.preheader, %3
  %p_0 = phi i16 [ %A_load, %3 ], [ 0, %.preheader ]
  ret i16 %p_0
}

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
