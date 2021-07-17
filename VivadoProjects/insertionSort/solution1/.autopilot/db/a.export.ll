; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertionSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@operation_V = external global i1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@insertionSort_str = internal unnamed_addr constant [14 x i8] c"insertionSort\00"
@A = external global [256 x i16]

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define signext i16 @insertionSort(i8 signext %indexOutputData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @insertionSort_str) nounwind
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind
  %operation_V_load = load i1* @operation_V, align 1
  br i1 %operation_V_load, label %4, label %.preheader

.preheader:                                       ; preds = %0, %3
  %i_i = phi i9 [ %i, %3 ], [ 1, %0 ]
  %exitcond_i = icmp eq i9 %i_i, -256
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 255, i64 255, i64 255) nounwind
  br i1 %exitcond_i, label %insertionAlgorithm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader, %._crit_edge.i
  %j_0_in_i = phi i9 [ %j, %._crit_edge.i ], [ %i_i, %.preheader ]
  %j = add i9 %j_0_in_i, -1
  %j_cast = sext i9 %j to i16
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %j, i32 8)
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 255, i64 0) nounwind
  br i1 %tmp_1, label %3, label %1

; <label>:1                                       ; preds = %.preheader.i
  %tmp_1_i = zext i16 %j_cast to i64
  %A_addr_1 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_1_i
  %temp = load i16* %A_addr_1, align 2
  %tmp_4_i = zext i9 %j_0_in_i to i64
  %A_addr_2 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_4_i
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
  %i = add i9 %i_i, 1
  br label %.preheader

; <label>:4                                       ; preds = %0
  %tmp = sext i8 %indexOutputData_read to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp
  %A_load = load i16* %A_addr, align 2
  br label %insertionAlgorithm.exit

insertionAlgorithm.exit:                          ; preds = %.preheader, %4
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

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_3 = shl i9 1, %empty
  %empty_4 = and i9 %0, %empty_3
  %empty_5 = icmp ne i9 %empty_4, 0
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
