; ModuleID = 'C:/Users/aaron/Desktop/bubbleSort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@operation_V = external global i1                 ; [#uses=1 type=i1*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@bubbleSort_str = internal unnamed_addr constant [11 x i8] c"bubbleSort\00" ; [#uses=1 type=[11 x i8]*]
@A = external global [16 x i16]                   ; [#uses=3 type=[16 x i16]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define signext i16 @bubbleSort(i8 signext %indexOutputData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @bubbleSort_str) nounwind
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %indexOutputData_read}, i64 0, metadata !31), !dbg !41 ; [debug line = 26:26] [debug variable = indexOutputData]
  call void @llvm.dbg.value(metadata !{i8 %indexOutputData}, i64 0, metadata !31), !dbg !41 ; [debug line = 26:26] [debug variable = indexOutputData]
  %operation_V_load = load i1* @operation_V, align 1, !dbg !42 ; [#uses=1 type=i1] [debug line = 29:2]
  br i1 %operation_V_load, label %4, label %.preheader, !dbg !42 ; [debug line = 29:2]

.preheader:                                       ; preds = %3, %0
  %indvars_iv_i = phi i5 [ %i, %3 ], [ 15, %0 ]   ; [#uses=3 type=i5]
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %indvars_iv_i, i32 4), !dbg !44 ; [#uses=1 type=i1] [debug line = 11:13@31:11]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_1, label %bubbleAlgorithm.exit, label %.preheader.i, !dbg !44 ; [debug line = 11:13@31:11]

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader
  %j_i = phi i4 [ %j, %._crit_edge.i ], [ 0, %.preheader ] ; [#uses=3 type=i4]
  %j_i_cast = zext i4 %j_i to i5, !dbg !52        ; [#uses=1 type=i5] [debug line = 13:17@31:11]
  %exitcond_i = icmp eq i5 %j_i_cast, %indvars_iv_i, !dbg !52 ; [#uses=1 type=i1] [debug line = 13:17@31:11]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 15, i64 0) nounwind ; [#uses=0 type=i32]
  %j = add i4 %j_i, 1, !dbg !55                   ; [#uses=2 type=i4] [debug line = 15:17@31:11]
  br i1 %exitcond_i, label %3, label %1, !dbg !52 ; [debug line = 13:17@31:11]

; <label>:1                                       ; preds = %.preheader.i
  %tmp_1_i = zext i4 %j_i to i64, !dbg !55        ; [#uses=1 type=i64] [debug line = 15:17@31:11]
  %A_addr_1 = getelementptr inbounds [16 x i16]* @A, i64 0, i64 %tmp_1_i, !dbg !55 ; [#uses=2 type=i16*] [debug line = 15:17@31:11]
  %temp = load i16* %A_addr_1, align 2, !dbg !55  ; [#uses=2 type=i16] [debug line = 15:17@31:11]
  %tmp_4_i = zext i4 %j to i64, !dbg !55          ; [#uses=1 type=i64] [debug line = 15:17@31:11]
  %A_addr_2 = getelementptr inbounds [16 x i16]* @A, i64 0, i64 %tmp_4_i, !dbg !55 ; [#uses=2 type=i16*] [debug line = 15:17@31:11]
  %A_load_2 = load i16* %A_addr_2, align 2, !dbg !55 ; [#uses=2 type=i16] [debug line = 15:17@31:11]
  %tmp_5_i = icmp sgt i16 %temp, %A_load_2, !dbg !55 ; [#uses=1 type=i1] [debug line = 15:17@31:11]
  br i1 %tmp_5_i, label %2, label %._crit_edge.i, !dbg !55 ; [debug line = 15:17@31:11]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i16 %temp}, i64 0, metadata !57) nounwind, !dbg !59 ; [debug line = 18:38@31:11] [debug variable = temp]
  store i16 %A_load_2, i16* %A_addr_1, align 2, !dbg !60 ; [debug line = 19:21@31:11]
  store i16 %temp, i16* %A_addr_2, align 2, !dbg !61 ; [debug line = 20:21@31:11]
  br label %._crit_edge.i, !dbg !62               ; [debug line = 21:17@31:11]

._crit_edge.i:                                    ; preds = %2, %1
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !63) nounwind, !dbg !64 ; [debug line = 13:31@31:11] [debug variable = j]
  br label %.preheader.i, !dbg !64                ; [debug line = 13:31@31:11]

; <label>:3                                       ; preds = %.preheader.i
  %i = add i5 %indvars_iv_i, -1, !dbg !65         ; [#uses=1 type=i5] [debug line = 11:66@31:11]
  call void @llvm.dbg.value(metadata !{i5 %i}, i64 0, metadata !66) nounwind, !dbg !65 ; [debug line = 11:66@31:11] [debug variable = i]
  br label %.preheader, !dbg !65                  ; [debug line = 11:66@31:11]

; <label>:4                                       ; preds = %0
  %tmp = sext i8 %indexOutputData_read to i64, !dbg !67 ; [#uses=1 type=i64] [debug line = 32:12]
  %A_addr = getelementptr inbounds [16 x i16]* @A, i64 0, i64 %tmp, !dbg !67 ; [#uses=1 type=i16*] [debug line = 32:12]
  %A_load = load i16* %A_addr, align 2, !dbg !67  ; [#uses=1 type=i16] [debug line = 32:12]
  br label %bubbleAlgorithm.exit, !dbg !67        ; [debug line = 32:12]

bubbleAlgorithm.exit:                             ; preds = %4, %.preheader
  %p_0 = phi i16 [ %A_load, %4 ], [ 0, %.preheader ] ; [#uses=1 type=i16]
  ret i16 %p_0, !dbg !68                          ; [debug line = 35:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5                     ; [#uses=1 type=i5]
  %empty_3 = shl i5 1, %empty                     ; [#uses=1 type=i5]
  %empty_4 = and i5 %0, %empty_3                  ; [#uses=1 type=i5]
  %empty_5 = icmp ne i5 %empty_4, 0               ; [#uses=1 type=i1]
  ret i1 %empty_5
}

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
!31 = metadata !{i32 786689, metadata !32, metadata !"indexOutputData", metadata !33, i32 16777242, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 786478, i32 0, metadata !33, metadata !"bubbleSort", metadata !"bubbleSort", metadata !"_Z10bubbleSortc", metadata !33, i32 26, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i8)* @bubbleSort, null, null, metadata !39, i32 27} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786473, metadata !"bubbleSort/bubbleSort.cpp", metadata !"C:\5CUsers\5Caaron\5CDesktop", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !36, metadata !38}
!36 = metadata !{i32 786454, null, metadata !"data_inp", metadata !33, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!37 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 26, i32 26, metadata !32, null}
!42 = metadata !{i32 29, i32 2, metadata !43, null}
!43 = metadata !{i32 786443, metadata !32, i32 27, i32 1, metadata !33, i32 6} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 11, i32 13, metadata !45, metadata !50}
!45 = metadata !{i32 786443, metadata !46, i32 11, i32 9, metadata !33, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !47, i32 8, i32 1, metadata !33, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786478, i32 0, metadata !33, metadata !"bubbleAlgorithm", metadata !"bubbleAlgorithm", metadata !"_Z15bubbleAlgorithmv", metadata !33, i32 7, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 8} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null}
!50 = metadata !{i32 31, i32 11, metadata !51, null}
!51 = metadata !{i32 786443, metadata !43, i32 30, i32 2, metadata !33, i32 7} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 13, i32 17, metadata !53, metadata !50}
!53 = metadata !{i32 786443, metadata !54, i32 13, i32 13, metadata !33, i32 3} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786443, metadata !45, i32 12, i32 9, metadata !33, i32 2} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 15, i32 17, metadata !56, metadata !50}
!56 = metadata !{i32 786443, metadata !53, i32 14, i32 13, metadata !33, i32 4} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 786688, metadata !58, metadata !"temp", metadata !33, i32 18, metadata !36, i32 0, metadata !50} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 786443, metadata !56, i32 16, i32 17, metadata !33, i32 5} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 18, i32 38, metadata !58, metadata !50}
!60 = metadata !{i32 19, i32 21, metadata !58, metadata !50}
!61 = metadata !{i32 20, i32 21, metadata !58, metadata !50}
!62 = metadata !{i32 21, i32 17, metadata !58, metadata !50}
!63 = metadata !{i32 786688, metadata !46, metadata !"j", metadata !33, i32 9, metadata !37, i32 0, metadata !50} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 13, i32 31, metadata !53, metadata !50}
!65 = metadata !{i32 11, i32 66, metadata !45, metadata !50}
!66 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !33, i32 9, metadata !37, i32 0, metadata !50} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 32, i32 12, metadata !51, null}
!68 = metadata !{i32 35, i32 1, metadata !43, null}
