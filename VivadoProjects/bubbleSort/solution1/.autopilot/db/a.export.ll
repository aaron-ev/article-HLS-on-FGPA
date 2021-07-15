; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/bubbleSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@bubbleSort_str = internal unnamed_addr constant [11 x i8] c"bubbleSort\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define signext i16 @bubbleSort([5 x i16]* %A, i8 signext %indexOutputData, i8 signext %operation) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap([5 x i16]* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %operation) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @bubbleSort_str) nounwind
  %operation_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %operation) nounwind
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind
  switch i8 %operation_read, label %._crit_edge8 [
    i8 0, label %.preheader
    i8 1, label %3
  ]

.preheader:                                       ; preds = %codeRepl, %2
  %indvars_iv_i = phi i4 [ %i, %2 ], [ 4, %codeRepl ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %indvars_iv_i, i32 3)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  br i1 %tmp, label %._crit_edge8, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader, %._crit_edge.i
  %j_i = phi i3 [ %j, %._crit_edge.i ], [ 0, %.preheader ]
  %j_i_cast = zext i3 %j_i to i4
  %exitcond_i = icmp eq i4 %j_i_cast, %indvars_iv_i
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 4, i64 0) nounwind
  %j = add i3 %j_i, 1
  br i1 %exitcond_i, label %2, label %0

; <label>:0                                       ; preds = %.preheader.i
  %tmp_2_i = zext i3 %j_i to i64
  %A_addr_1 = getelementptr [5 x i16]* %A, i64 0, i64 %tmp_2_i
  %temp = load i16* %A_addr_1, align 2
  %tmp_5_i = zext i3 %j to i64
  %A_addr_2 = getelementptr [5 x i16]* %A, i64 0, i64 %tmp_5_i
  %A_load_2 = load i16* %A_addr_2, align 2
  %tmp_6_i = icmp sgt i16 %temp, %A_load_2
  br i1 %tmp_6_i, label %1, label %._crit_edge.i

; <label>:1                                       ; preds = %0
  store i16 %A_load_2, i16* %A_addr_1, align 2
  store i16 %temp, i16* %A_addr_2, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %1, %0
  br label %.preheader.i

; <label>:2                                       ; preds = %.preheader.i
  %i = add i4 %indvars_iv_i, -1
  br label %.preheader

; <label>:3                                       ; preds = %codeRepl
  %tmp_1 = sext i8 %indexOutputData_read to i64
  %A_addr = getelementptr [5 x i16]* %A, i64 0, i64 %tmp_1
  %A_load = load i16* %A_addr, align 2
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %3, %codeRepl
  %p_s = phi i16 [ %A_load, %3 ], [ undef, %codeRepl ], [ 0, %.preheader ]
  ret i16 %p_s
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

define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4
  %empty_3 = shl i4 1, %empty
  %empty_4 = and i4 %0, %empty_3
  %empty_5 = icmp ne i4 %empty_4, 0
  ret i1 %empty_5
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
!10 = metadata !{metadata !"A", metadata !11, metadata !"short", i32 0, i32 15}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 4, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"indexOutputData", metadata !17, metadata !"char", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 7, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"operation", metadata !17, metadata !"char", i32 0, i32 7}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 15, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"return", metadata !27, metadata !"data_inp", i32 0, i32 15}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 0}
