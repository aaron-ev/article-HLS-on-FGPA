; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/heapSort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@operation_V = external global i1                 ; [#uses=1 type=i1*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@heapSort_str = internal unnamed_addr constant [9 x i8] c"heapSort\00" ; [#uses=1 type=[9 x i8]*]
@A = external global [256 x i16]                  ; [#uses=9 type=[256 x i16]*]

; [#uses=2]
define internal fastcc void @heapSort_maxHeapify_noRecurv(i8 signext %startA, i10 %endA) {
  %p_0 = alloca i16                               ; [#uses=3 type=i16*]
  call void @llvm.dbg.declare(metadata !{i16* %p_0}, metadata !19) ; [debug variable = startA]
  %endA_read = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %endA) ; [#uses=2 type=i10]
  call void @llvm.dbg.value(metadata !{i10 %endA_read}, i64 0, metadata !28), !dbg !29 ; [debug line = 31:52] [debug variable = endA]
  %startA_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %startA) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %startA_read}, i64 0, metadata !19), !dbg !30 ; [debug line = 31:35] [debug variable = startA]
  %endA_cast1 = zext i10 %endA_read to i16        ; [#uses=2 type=i16]
  %startA_cast = zext i8 %startA_read to i16      ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i8 %startA}, i64 0, metadata !19), !dbg !30 ; [debug line = 31:35] [debug variable = startA]
  call void @llvm.dbg.value(metadata !{i10 %endA}, i64 0, metadata !28), !dbg !29 ; [debug line = 31:52] [debug variable = endA]
  call void @llvm.dbg.value(metadata !{i8 %startA}, i64 0, metadata !31), !dbg !33 ; [debug line = 33:27] [debug variable = current]
  store i16 %startA_cast, i16* %p_0
  br label %._crit_edge2, !dbg !34                ; [debug line = 35:9]

._crit_edge2:                                     ; preds = %._crit_edge2.backedge, %0
  %current = phi i16 [ %startA_cast, %0 ], [ %startA_assign, %._crit_edge2.backedge ] ; [#uses=4 type=i16]
  %i = phi i9 [ 0, %0 ], [ %i_1, %._crit_edge2.backedge ] ; [#uses=2 type=i9]
  %i_cast = zext i9 %i to i10, !dbg !34           ; [#uses=1 type=i10] [debug line = 35:9]
  %tmp = icmp slt i10 %i_cast, %endA_read, !dbg !34 ; [#uses=1 type=i1] [debug line = 35:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 256, i64 0) nounwind ; [#uses=0 type=i32]
  %i_1 = add i9 %i, 1, !dbg !36                   ; [#uses=1 type=i9] [debug line = 35:26]
  call void @llvm.dbg.value(metadata !{i9 %i_1}, i64 0, metadata !37), !dbg !36 ; [debug line = 35:26] [debug variable = i]
  br i1 %tmp, label %_ifconv, label %2, !dbg !34  ; [debug line = 35:9]

_ifconv:                                          ; preds = %._crit_edge2
  %p_0_load = load i16* %p_0, !dbg !38            ; [#uses=2 type=i16] [debug line = 45:9]
  %tmp_1 = shl i16 %current, 1, !dbg !40          ; [#uses=2 type=i16] [debug line = 38:37]
  %current_4 = or i16 %tmp_1, 1, !dbg !40         ; [#uses=3 type=i16] [debug line = 38:37]
  call void @llvm.dbg.value(metadata !{i16 %current_4}, i64 0, metadata !31), !dbg !41 ; [debug line = 42:13] [debug variable = current]
  call void @llvm.dbg.value(metadata !{i16 %current_4}, i64 0, metadata !42), !dbg !40 ; [debug line = 38:37] [debug variable = left]
  %current_5 = add i16 2, %tmp_1, !dbg !43        ; [#uses=3 type=i16] [debug line = 39:38]
  call void @llvm.dbg.value(metadata !{i16 %current_5}, i64 0, metadata !31), !dbg !44 ; [debug line = 44:13] [debug variable = current]
  call void @llvm.dbg.value(metadata !{i16 %current_5}, i64 0, metadata !45), !dbg !43 ; [debug line = 39:38] [debug variable = right]
  %tmp_4 = icmp slt i16 %current_4, %endA_cast1, !dbg !46 ; [#uses=1 type=i1] [debug line = 41:9]
  %tmp_5 = sext i16 %current to i64, !dbg !46     ; [#uses=1 type=i64] [debug line = 41:9]
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_5, !dbg !46 ; [#uses=1 type=i16*] [debug line = 41:9]
  %A_load = load i16* %A_addr, align 2, !dbg !46  ; [#uses=1 type=i16] [debug line = 41:9]
  %tmp_6 = sext i16 %current_4 to i64, !dbg !46   ; [#uses=1 type=i64] [debug line = 41:9]
  %A_addr_1 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_6, !dbg !46 ; [#uses=1 type=i16*] [debug line = 41:9]
  %A_load_1 = load i16* %A_addr_1, align 2, !dbg !46 ; [#uses=1 type=i16] [debug line = 41:9]
  %tmp_7 = icmp slt i16 %A_load, %A_load_1, !dbg !46 ; [#uses=1 type=i1] [debug line = 41:9]
  %p_current = select i1 %tmp_7, i16 %current_4, i16 %current, !dbg !46 ; [#uses=1 type=i16] [debug line = 41:9]
  %current_1 = select i1 %tmp_4, i16 %p_current, i16 %current ; [#uses=3 type=i16]
  %tmp_8 = icmp slt i16 %current_5, %endA_cast1, !dbg !47 ; [#uses=1 type=i1] [debug line = 43:9]
  %tmp_9 = sext i16 %current_1 to i64, !dbg !47   ; [#uses=1 type=i64] [debug line = 43:9]
  %A_addr_2 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_9, !dbg !47 ; [#uses=1 type=i16*] [debug line = 43:9]
  %A_load_2 = load i16* %A_addr_2, align 2, !dbg !47 ; [#uses=1 type=i16] [debug line = 43:9]
  %tmp_s = sext i16 %current_5 to i64, !dbg !47   ; [#uses=1 type=i64] [debug line = 43:9]
  %A_addr_3 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_s, !dbg !47 ; [#uses=1 type=i16*] [debug line = 43:9]
  %A_load_3 = load i16* %A_addr_3, align 2, !dbg !47 ; [#uses=1 type=i16] [debug line = 43:9]
  %tmp_2 = icmp slt i16 %A_load_2, %A_load_3, !dbg !47 ; [#uses=1 type=i1] [debug line = 43:9]
  %p_current_1 = select i1 %tmp_2, i16 %current_5, i16 %current_1, !dbg !47 ; [#uses=1 type=i16] [debug line = 43:9]
  %startA_assign = select i1 %tmp_8, i16 %p_current_1, i16 %current_1, !dbg !48 ; [#uses=4 type=i16] [debug line = 54:13]
  %tmp_3 = icmp eq i16 %startA_assign, %p_0_load, !dbg !38 ; [#uses=1 type=i1] [debug line = 45:9]
  br i1 %tmp_3, label %._crit_edge2.backedge, label %1, !dbg !38 ; [debug line = 45:9]

; <label>:1                                       ; preds = %_ifconv
  %tmp_10 = sext i16 %startA_assign to i64, !dbg !50 ; [#uses=1 type=i64] [debug line = 50:13]
  %A_addr_4 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_10, !dbg !50 ; [#uses=2 type=i16*] [debug line = 50:13]
  %temp = load i16* %A_addr_4, align 2, !dbg !50  ; [#uses=1 type=i16] [debug line = 50:13]
  call void @llvm.dbg.value(metadata !{i16 %temp}, i64 0, metadata !51), !dbg !50 ; [debug line = 50:13] [debug variable = temp]
  %tmp_11 = sext i16 %p_0_load to i64, !dbg !52   ; [#uses=1 type=i64] [debug line = 51:13]
  %A_addr_5 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_11, !dbg !52 ; [#uses=2 type=i16*] [debug line = 51:13]
  %A_load_5 = load i16* %A_addr_5, align 2, !dbg !52 ; [#uses=1 type=i16] [debug line = 51:13]
  store i16 %A_load_5, i16* %A_addr_4, align 2, !dbg !52 ; [debug line = 51:13]
  store i16 %temp, i16* %A_addr_5, align 2, !dbg !53 ; [debug line = 52:13]
  call void @llvm.dbg.value(metadata !{i16 %startA_assign}, i64 0, metadata !19), !dbg !48 ; [debug line = 54:13] [debug variable = startA]
  store i16 %startA_assign, i16* %p_0, !dbg !48   ; [debug line = 54:13]
  br label %._crit_edge2.backedge, !dbg !54       ; [debug line = 55:9]

._crit_edge2.backedge:                            ; preds = %1, %_ifconv
  br label %._crit_edge2

; <label>:2                                       ; preds = %._crit_edge2
  ret void, !dbg !55                              ; [debug line = 59:1]
}

; [#uses=17]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define signext i16 @heapSort(i8 signext %indexOutputData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @heapSort_str) nounwind
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %indexOutputData_read}, i64 0, metadata !68), !dbg !73 ; [debug line = 61:24] [debug variable = indexOutputData]
  call void @llvm.dbg.value(metadata !{i8 %indexOutputData}, i64 0, metadata !68), !dbg !73 ; [debug line = 61:24] [debug variable = indexOutputData]
  %operation_V_load = load i1* @operation_V, align 1, !dbg !74 ; [#uses=1 type=i1] [debug line = 63:2]
  br i1 %operation_V_load, label %3, label %.preheader, !dbg !74 ; [debug line = 63:2]

.preheader:                                       ; preds = %1, %0
  %i_i = phi i8 [ %i, %1 ], [ 127, %0 ]           ; [#uses=3 type=i8]
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %i_i, i32 7), !dbg !76 ; [#uses=1 type=i1] [debug line = 16:9@65:11]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_2, label %.preheader.i, label %1, !dbg !76 ; [debug line = 16:9@65:11]

; <label>:1                                       ; preds = %.preheader
  call fastcc void @heapSort_maxHeapify_noRecurv(i8 signext %i_i, i10 signext 256) nounwind, !dbg !84 ; [debug line = 18:9@65:11]
  %i = add i8 %i_i, -1, !dbg !86                  ; [#uses=1 type=i8] [debug line = 16:64@65:11]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !87) nounwind, !dbg !86 ; [debug line = 16:64@65:11] [debug variable = i]
  br label %.preheader, !dbg !86                  ; [debug line = 16:64@65:11]

.preheader.i:                                     ; preds = %2, %.preheader
  %i_1_i = phi i9 [ %i_2, %2 ], [ 255, %.preheader ] ; [#uses=4 type=i9]
  %i_1_i_cast = sext i9 %i_1_i to i16, !dbg !88   ; [#uses=1 type=i16] [debug line = 20:10@65:11]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %i_1_i, i32 8), !dbg !88 ; [#uses=1 type=i1] [debug line = 20:10@65:11]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_3, label %heapSort_noRecurv.exit, label %2, !dbg !88 ; [debug line = 20:10@65:11]

; <label>:2                                       ; preds = %.preheader.i
  %temp = load i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 2, !dbg !90 ; [#uses=1 type=i16] [debug line = 24:9@65:11]
  call void @llvm.dbg.value(metadata !{i16 %temp}, i64 0, metadata !92) nounwind, !dbg !90 ; [debug line = 24:9@65:11] [debug variable = temp]
  %tmp_12_i = zext i16 %i_1_i_cast to i64, !dbg !93 ; [#uses=1 type=i64] [debug line = 25:9@65:11]
  %A_addr_6 = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_12_i, !dbg !93 ; [#uses=2 type=i16*] [debug line = 25:9@65:11]
  %A_load_7 = load i16* %A_addr_6, align 2, !dbg !93 ; [#uses=1 type=i16] [debug line = 25:9@65:11]
  store i16 %A_load_7, i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), align 2, !dbg !93 ; [debug line = 25:9@65:11]
  store i16 %temp, i16* %A_addr_6, align 2, !dbg !94 ; [debug line = 26:9@65:11]
  %i_1_i_cast_cast = zext i9 %i_1_i to i10, !dbg !95 ; [#uses=1 type=i10] [debug line = 28:9@65:11]
  call fastcc void @heapSort_maxHeapify_noRecurv(i8 signext 0, i10 signext %i_1_i_cast_cast) nounwind, !dbg !95 ; [debug line = 28:9@65:11]
  %i_2 = add i9 %i_1_i, -1, !dbg !96              ; [#uses=1 type=i9] [debug line = 20:63@65:11]
  call void @llvm.dbg.value(metadata !{i9 %i_2}, i64 0, metadata !87) nounwind, !dbg !96 ; [debug line = 20:63@65:11] [debug variable = i]
  br label %.preheader.i, !dbg !96                ; [debug line = 20:63@65:11]

; <label>:3                                       ; preds = %0
  %tmp = sext i8 %indexOutputData_read to i64, !dbg !97 ; [#uses=1 type=i64] [debug line = 66:12]
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp, !dbg !97 ; [#uses=1 type=i16*] [debug line = 66:12]
  %A_load = load i16* %A_addr, align 2, !dbg !97  ; [#uses=1 type=i16] [debug line = 66:12]
  br label %heapSort_noRecurv.exit, !dbg !97      ; [debug line = 66:12]

heapSort_noRecurv.exit:                           ; preds = %3, %.preheader.i
  %p_0 = phi i16 [ %A_load, %3 ], [ 0, %.preheader.i ] ; [#uses=1 type=i16]
  ret i16 %p_0, !dbg !98                          ; [debug line = 68:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i10 @_ssdm_op_Read.ap_auto.i10(i10) {
entry:
  ret i10 %0
}

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i16.i32.i32(i16, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9                     ; [#uses=1 type=i9]
  %empty_4 = shl i9 1, %empty                     ; [#uses=1 type=i9]
  %empty_5 = and i9 %0, %empty_4                  ; [#uses=1 type=i9]
  %empty_6 = icmp ne i9 %empty_5, 0               ; [#uses=1 type=i1]
  ret i1 %empty_6
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_7 = shl i8 1, %empty                     ; [#uses=1 type=i8]
  %empty_8 = and i8 %0, %empty_7                  ; [#uses=1 type=i8]
  %empty_9 = icmp ne i8 %empty_8, 0               ; [#uses=1 type=i1]
  ret i1 %empty_9
}

; [#uses=0]
declare i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone

; [#uses=1]
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
!19 = metadata !{i32 786689, metadata !20, metadata !"startA", metadata !21, i32 16777247, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"maxHeapify_noRecurv", metadata !"maxHeapify_noRecurv", metadata !"_Z19maxHeapify_noRecurvss", metadata !21, i32 31, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 32} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"heapSort/heapSort.cpp", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !24}
!24 = metadata !{i32 786454, null, metadata !"data_inp", metadata !21, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786689, metadata !20, metadata !"endA", metadata !21, i32 33554463, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 31, i32 52, metadata !20, null}
!30 = metadata !{i32 31, i32 35, metadata !20, null}
!31 = metadata !{i32 786688, metadata !32, metadata !"current", metadata !21, i32 33, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 786443, metadata !20, i32 32, i32 1, metadata !21, i32 5} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 33, i32 27, metadata !32, null}
!34 = metadata !{i32 35, i32 9, metadata !35, null}
!35 = metadata !{i32 786443, metadata !32, i32 35, i32 5, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 35, i32 26, metadata !35, null}
!37 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !21, i32 34, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 45, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !35, i32 37, i32 5, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 38, i32 37, metadata !39, null}
!41 = metadata !{i32 42, i32 13, metadata !39, null}
!42 = metadata !{i32 786688, metadata !39, metadata !"left", metadata !21, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 39, i32 38, metadata !39, null}
!44 = metadata !{i32 44, i32 13, metadata !39, null}
!45 = metadata !{i32 786688, metadata !39, metadata !"right", metadata !21, i32 39, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 41, i32 9, metadata !39, null}
!47 = metadata !{i32 43, i32 9, metadata !39, null}
!48 = metadata !{i32 54, i32 13, metadata !49, null}
!49 = metadata !{i32 786443, metadata !39, i32 46, i32 9, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 50, i32 13, metadata !49, null}
!51 = metadata !{i32 786688, metadata !49, metadata !"temp", metadata !21, i32 49, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 51, i32 13, metadata !49, null}
!53 = metadata !{i32 52, i32 13, metadata !49, null}
!54 = metadata !{i32 55, i32 9, metadata !49, null}
!55 = metadata !{i32 59, i32 1, metadata !32, null}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 7, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"indexOutputData", metadata !60, metadata !"char", i32 0, i32 7}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, i32 0}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 15, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"return", metadata !66, metadata !"data_inp", i32 0, i32 15}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 1, i32 0}
!68 = metadata !{i32 786689, metadata !69, metadata !"indexOutputData", metadata !21, i32 16777277, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 786478, i32 0, metadata !21, metadata !"heapSort", metadata !"heapSort", metadata !"_Z8heapSortc", metadata !21, i32 61, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i8)* @heapSort, null, null, metadata !26, i32 62} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{metadata !24, metadata !72}
!72 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 61, i32 24, metadata !69, null}
!74 = metadata !{i32 63, i32 2, metadata !75, null}
!75 = metadata !{i32 786443, metadata !69, i32 62, i32 1, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 16, i32 9, metadata !77, metadata !82}
!77 = metadata !{i32 786443, metadata !78, i32 16, i32 5, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !79, i32 14, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786478, i32 0, metadata !21, metadata !"heapSort_noRecurv", metadata !"heapSort_noRecurv", metadata !"_Z17heapSort_noRecurvv", metadata !21, i32 13, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !26, i32 14} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null}
!82 = metadata !{i32 65, i32 11, metadata !83, null}
!83 = metadata !{i32 786443, metadata !75, i32 64, i32 2, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 18, i32 9, metadata !85, metadata !82}
!85 = metadata !{i32 786443, metadata !77, i32 17, i32 5, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 16, i32 64, metadata !77, metadata !82}
!87 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !21, i32 15, metadata !25, i32 0, metadata !82} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 20, i32 10, metadata !89, metadata !82}
!89 = metadata !{i32 786443, metadata !78, i32 20, i32 6, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 24, i32 9, metadata !91, metadata !82}
!91 = metadata !{i32 786443, metadata !89, i32 21, i32 5, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786688, metadata !91, metadata !"temp", metadata !21, i32 23, metadata !24, i32 0, metadata !82} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 25, i32 9, metadata !91, metadata !82}
!94 = metadata !{i32 26, i32 9, metadata !91, metadata !82}
!95 = metadata !{i32 28, i32 9, metadata !91, metadata !82}
!96 = metadata !{i32 20, i32 63, metadata !89, metadata !82}
!97 = metadata !{i32 66, i32 12, metadata !83, null}
!98 = metadata !{i32 68, i32 1, metadata !75, null}
