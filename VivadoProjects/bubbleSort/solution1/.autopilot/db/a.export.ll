; ModuleID = 'C:/Users/aaron/Desktop/bubbleSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@operation_V = external global i1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bubbleSort_str = internal unnamed_addr constant [11 x i8] c"bubbleSort\00"
@A = external global [16 x i16]

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define signext i16 @bubbleSort(i8 signext %indexOutputData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @bubbleSort_str) nounwind
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind
  %operation_V_load = load i1* @operation_V, align 1
  br i1 %operation_V_load, label %4, label %.preheader

.preheader:                                       ; preds = %0, %3
  %indvars_iv_i = phi i5 [ %i, %3 ], [ 15, %0 ]
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %indvars_iv_i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  br i1 %tmp_1, label %bubbleAlgorithm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader, %._crit_edge.i
  %j_i = phi i4 [ %j, %._crit_edge.i ], [ 0, %.preheader ]
  %j_i_cast = zext i4 %j_i to i5
  %exitcond_i = icmp eq i5 %j_i_cast, %indvars_iv_i
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 15, i64 0) nounwind
  %j = add i4 %j_i, 1
  br i1 %exitcond_i, label %3, label %1

; <label>:1                                       ; preds = %.preheader.i
  %tmp_1_i = zext i4 %j_i to i64
  %A_addr_1 = getelementptr inbounds [16 x i16]* @A, i64 0, i64 %tmp_1_i
  %temp = load i16* %A_addr_1, align 2
  %tmp_4_i = zext i4 %j to i64
  %A_addr_2 = getelementptr inbounds [16 x i16]* @A, i64 0, i64 %tmp_4_i
  %A_load_2 = load i16* %A_addr_2, align 2
  %tmp_5_i = icmp sgt i16 %temp, %A_load_2
  br i1 %tmp_5_i, label %2, label %._crit_edge.i

; <label>:2                                       ; preds = %1
  store i16 %A_load_2, i16* %A_addr_1, align 2
  store i16 %temp, i16* %A_addr_2, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %2, %1
  br label %.preheader.i

; <label>:3                                       ; preds = %.preheader.i
  %i = add i5 %indvars_iv_i, -1
  br label %.preheader

; <label>:4                                       ; preds = %0
  %tmp = sext i8 %indexOutputData_read to i64
  %A_addr = getelementptr inbounds [16 x i16]* @A, i64 0, i64 %tmp
  %A_load = load i16* %A_addr, align 2
  br label %bubbleAlgorithm.exit

bubbleAlgorithm.exit:                             ; preds = %.preheader, %4
  %p_0 = phi i16 [ %A_load, %4 ], [ 0, %.preheader ]
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

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_3 = shl i5 1, %empty
  %empty_4 = and i5 %0, %empty_3
  %empty_5 = icmp ne i5 %empty_4, 0
  ret i1 %empty_5
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
!12 = metadata !{metadata !13, [16 x i16]* @A}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 15, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"A", metadata !17, metadata !"short", i32 0, i32 15}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 15, i32 1}
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
