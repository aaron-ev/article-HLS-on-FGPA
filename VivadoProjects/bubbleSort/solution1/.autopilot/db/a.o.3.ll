; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/bubbleSort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@bubbleSort_str = internal unnamed_addr constant [11 x i8] c"bubbleSort\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define signext i16 @bubbleSort([5 x i16]* %A, i8 signext %indexOutputData, i8 signext %operation) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap([5 x i16]* %A) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %indexOutputData) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %operation) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @bubbleSort_str) nounwind
  %operation_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %operation) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %operation_read}, i64 0, metadata !29), !dbg !40 ; [debug line = 29:94] [debug variable = operation]
  %indexOutputData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %indexOutputData) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %indexOutputData_read}, i64 0, metadata !41), !dbg !42 ; [debug line = 29:73] [debug variable = indexOutputData]
  call void @llvm.dbg.value(metadata !{[5 x i16]* %A}, i64 0, metadata !43), !dbg !47 ; [debug line = 29:30] [debug variable = A]
  call void @llvm.dbg.value(metadata !{i8 %indexOutputData}, i64 0, metadata !41), !dbg !42 ; [debug line = 29:73] [debug variable = indexOutputData]
  call void @llvm.dbg.value(metadata !{i8 %operation}, i64 0, metadata !29), !dbg !40 ; [debug line = 29:94] [debug variable = operation]
  switch i8 %operation_read, label %._crit_edge8 [
    i8 0, label %.preheader
    i8 1, label %3
  ], !dbg !48                                     ; [debug line = 37:2]

.preheader:                                       ; preds = %2, %codeRepl
  %indvars_iv_i = phi i4 [ %i, %2 ], [ 4, %codeRepl ] ; [#uses=3 type=i4]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %indvars_iv_i, i32 3), !dbg !50 ; [#uses=1 type=i1] [debug line = 11:13@39:11]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %._crit_edge8, label %.preheader.i, !dbg !50 ; [debug line = 11:13@39:11]

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader
  %j_i = phi i3 [ %j, %._crit_edge.i ], [ 0, %.preheader ] ; [#uses=3 type=i3]
  %j_i_cast = zext i3 %j_i to i4, !dbg !467       ; [#uses=1 type=i4] [debug line = 13:17@39:11]
  %exitcond_i = icmp eq i4 %j_i_cast, %indvars_iv_i, !dbg !467 ; [#uses=1 type=i1] [debug line = 13:17@39:11]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 4, i64 0) nounwind ; [#uses=0 type=i32]
  %j = add i3 %j_i, 1, !dbg !470                  ; [#uses=2 type=i3] [debug line = 15:17@39:11]
  br i1 %exitcond_i, label %2, label %0, !dbg !467 ; [debug line = 13:17@39:11]

; <label>:0                                       ; preds = %.preheader.i
  %tmp_2_i = zext i3 %j_i to i64, !dbg !470       ; [#uses=1 type=i64] [debug line = 15:17@39:11]
  %A_addr_1 = getelementptr [5 x i16]* %A, i64 0, i64 %tmp_2_i, !dbg !470 ; [#uses=2 type=i16*] [debug line = 15:17@39:11]
  %temp = load i16* %A_addr_1, align 2, !dbg !470 ; [#uses=2 type=i16] [debug line = 15:17@39:11]
  %tmp_5_i = zext i3 %j to i64, !dbg !470         ; [#uses=1 type=i64] [debug line = 15:17@39:11]
  %A_addr_2 = getelementptr [5 x i16]* %A, i64 0, i64 %tmp_5_i, !dbg !470 ; [#uses=2 type=i16*] [debug line = 15:17@39:11]
  %A_load_2 = load i16* %A_addr_2, align 2, !dbg !470 ; [#uses=2 type=i16] [debug line = 15:17@39:11]
  %tmp_6_i = icmp sgt i16 %temp, %A_load_2, !dbg !470 ; [#uses=1 type=i1] [debug line = 15:17@39:11]
  br i1 %tmp_6_i, label %1, label %._crit_edge.i, !dbg !470 ; [debug line = 15:17@39:11]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i16 %temp}, i64 0, metadata !472) nounwind, !dbg !474 ; [debug line = 18:38@39:11] [debug variable = temp]
  store i16 %A_load_2, i16* %A_addr_1, align 2, !dbg !475 ; [debug line = 19:21@39:11]
  store i16 %temp, i16* %A_addr_2, align 2, !dbg !476 ; [debug line = 20:21@39:11]
  br label %._crit_edge.i, !dbg !477              ; [debug line = 21:17@39:11]

._crit_edge.i:                                    ; preds = %1, %0
  call void @llvm.dbg.value(metadata !{i3 %j}, i64 0, metadata !478) nounwind, !dbg !479 ; [debug line = 13:31@39:11] [debug variable = j]
  br label %.preheader.i, !dbg !479               ; [debug line = 13:31@39:11]

; <label>:2                                       ; preds = %.preheader.i
  %i = add i4 %indvars_iv_i, -1, !dbg !480        ; [#uses=1 type=i4] [debug line = 11:65@39:11]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !481) nounwind, !dbg !480 ; [debug line = 11:65@39:11] [debug variable = i]
  br label %.preheader, !dbg !480                 ; [debug line = 11:65@39:11]

; <label>:3                                       ; preds = %codeRepl
  %tmp_1 = sext i8 %indexOutputData_read to i64, !dbg !482 ; [#uses=1 type=i64] [debug line = 40:11]
  %A_addr = getelementptr [5 x i16]* %A, i64 0, i64 %tmp_1, !dbg !482 ; [#uses=1 type=i16*] [debug line = 40:11]
  %A_load = load i16* %A_addr, align 2, !dbg !482 ; [#uses=1 type=i16] [debug line = 40:11]
  br label %._crit_edge8, !dbg !482               ; [debug line = 40:11]

._crit_edge8:                                     ; preds = %3, %.preheader, %codeRepl
  %p_s = phi i16 [ %A_load, %3 ], [ undef, %codeRepl ], [ 0, %.preheader ] ; [#uses=1 type=i16]
  ret i16 %p_s, !dbg !483                         ; [debug line = 43:1]
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

; [#uses=4]
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
define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4                     ; [#uses=1 type=i4]
  %empty_3 = shl i4 1, %empty                     ; [#uses=1 type=i4]
  %empty_4 = and i4 %0, %empty_3                  ; [#uses=1 type=i4]
  %empty_5 = icmp ne i4 %empty_4, 0               ; [#uses=1 type=i1]
  ret i1 %empty_5
}

; [#uses=1]
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
!29 = metadata !{i32 786689, metadata !30, metadata !"operation", metadata !31, i32 50331677, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 786478, i32 0, metadata !31, metadata !"bubbleSort", metadata !"bubbleSort", metadata !"_Z10bubbleSortPscc", metadata !31, i32 29, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !38, i32 30} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786473, metadata !"bubbleSort/bubbleSort.cpp", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{metadata !34, metadata !36, metadata !37, metadata !37}
!34 = metadata !{i32 786454, null, metadata !"data_inp", metadata !31, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!37 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!40 = metadata !{i32 29, i32 94, metadata !30, null}
!41 = metadata !{i32 786689, metadata !30, metadata !"indexOutputData", metadata !31, i32 33554461, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 29, i32 73, metadata !30, null}
!43 = metadata !{i32 786689, metadata !30, metadata !"A", null, i32 29, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !34, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 29, i32 30, metadata !30, null}
!48 = metadata !{i32 37, i32 2, metadata !49, null}
!49 = metadata !{i32 786443, metadata !30, i32 30, i32 1, metadata !31, i32 6} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 11, i32 13, metadata !51, metadata !465}
!51 = metadata !{i32 786443, metadata !52, i32 11, i32 9, metadata !31, i32 1} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !53, i32 8, i32 1, metadata !31, i32 0} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786478, i32 0, metadata !31, metadata !"bubbleAlgorithm", metadata !"bubbleAlgorithm", metadata !"_Z15bubbleAlgorithmPs", metadata !31, i32 7, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !38, i32 8} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{metadata !56, metadata !36}
!56 = metadata !{i32 786454, null, metadata !"fp_bit1", metadata !31, i32 23, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ]
!57 = metadata !{i32 786434, null, metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !58, i32 287, i64 8, i64 8, i32 0, i32 0, null, metadata !59, i32 0, null, metadata !464} ; [ DW_TAG_class_type ]
!58 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot\5Cap_int.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!59 = metadata !{metadata !60, metadata !385, metadata !389, metadata !395, metadata !401, metadata !404, metadata !407, metadata !410, metadata !413, metadata !416, metadata !419, metadata !422, metadata !425, metadata !428, metadata !431, metadata !434, metadata !437, metadata !440, metadata !443, metadata !446, metadata !449, metadata !453, metadata !456, metadata !460, metadata !463}
!60 = metadata !{i32 786460, metadata !57, null, metadata !58, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_inheritance ]
!61 = metadata !{i32 786434, null, metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !62, i32 510, i64 8, i64 8, i32 0, i32 0, null, metadata !63, i32 0, null, metadata !379} ; [ DW_TAG_class_type ]
!62 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot/ap_fixed_syn.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!63 = metadata !{metadata !64, metadata !84, metadata !88, metadata !91, metadata !94, metadata !123, metadata !129, metadata !132, metadata !135, metadata !139, metadata !143, metadata !146, metadata !150, metadata !153, metadata !157, metadata !161, metadata !165, metadata !170, metadata !175, metadata !180, metadata !183, metadata !188, metadata !192, metadata !195, metadata !198, metadata !201, metadata !205, metadata !208, metadata !212, metadata !215, metadata !218, metadata !221, metadata !225, metadata !228, metadata !231, metadata !234, metadata !237, metadata !240, metadata !243, metadata !244, metadata !245, metadata !248, metadata !251, metadata !254, metadata !257, metadata !260, metadata !261, metadata !262, metadata !265, metadata !268, metadata !271, metadata !274, metadata !275, metadata !278, metadata !281, metadata !282, metadata !285, metadata !286, metadata !289, metadata !293, metadata !294, metadata !297, metadata !300, metadata !303, metadata !306, metadata !307, metadata !308, metadata !311, metadata !314, metadata !315, metadata !316, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !328, metadata !331, metadata !332, metadata !333, metadata !336, metadata !339, metadata !343, metadata !344, metadata !347, metadata !348, metadata !351, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !361, metadata !364, metadata !365, metadata !375, metadata !378}
!64 = metadata !{i32 786460, metadata !61, null, metadata !62, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_inheritance ]
!65 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, true>", metadata !66, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !67, i32 0, null, metadata !79} ; [ DW_TAG_class_type ]
!66 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot/etc/autopilot_dt.def", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!67 = metadata !{metadata !68, metadata !70, metadata !74}
!68 = metadata !{i32 786445, metadata !65, metadata !"V", metadata !66, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ]
!69 = metadata !{i32 786468, null, metadata !"int1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !65, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 3, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 3} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !73}
!73 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !65} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786478, i32 0, metadata !65, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !66, i32 3, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !38, i32 3} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{null, metadata !73, metadata !77}
!77 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_reference_type ]
!78 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_const_type ]
!79 = metadata !{metadata !80, metadata !82}
!80 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !81, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!81 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!82 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !83, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!83 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 786478, i32 0, metadata !61, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !62, i32 520, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 520} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !87, metadata !83, metadata !83, metadata !83, metadata !83}
!87 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !61} ; [ DW_TAG_pointer_type ]
!88 = metadata !{i32 786478, i32 0, metadata !61, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !62, i32 593, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 593} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !83, metadata !87, metadata !83, metadata !83, metadata !83}
!91 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 651, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 651} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !87}
!94 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"", metadata !62, i32 661, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !99, i32 0, metadata !38, i32 661} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !87, metadata !97}
!97 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_reference_type ]
!98 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_const_type ]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !114, metadata !122}
!100 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !81, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!101 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !81, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!102 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !83, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!103 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !104, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!104 = metadata !{i32 786436, null, metadata !"ap_q_mode", metadata !105, i32 656, i64 3, i64 4, i32 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!105 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot/ap_int_syn.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113}
!107 = metadata !{i32 786472, metadata !"SC_RND", i64 0} ; [ DW_TAG_enumerator ]
!108 = metadata !{i32 786472, metadata !"SC_RND_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!109 = metadata !{i32 786472, metadata !"SC_RND_MIN_INF", i64 2} ; [ DW_TAG_enumerator ]
!110 = metadata !{i32 786472, metadata !"SC_RND_INF", i64 3} ; [ DW_TAG_enumerator ]
!111 = metadata !{i32 786472, metadata !"SC_RND_CONV", i64 4} ; [ DW_TAG_enumerator ]
!112 = metadata !{i32 786472, metadata !"SC_TRN", i64 5} ; [ DW_TAG_enumerator ]
!113 = metadata !{i32 786472, metadata !"SC_TRN_ZERO", i64 6} ; [ DW_TAG_enumerator ]
!114 = metadata !{i32 786480, null, metadata !"_AP_O2", metadata !115, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!115 = metadata !{i32 786436, null, metadata !"ap_o_mode", metadata !105, i32 666, i64 3, i64 4, i32 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!117 = metadata !{i32 786472, metadata !"SC_SAT", i64 0} ; [ DW_TAG_enumerator ]
!118 = metadata !{i32 786472, metadata !"SC_SAT_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!119 = metadata !{i32 786472, metadata !"SC_SAT_SYM", i64 2} ; [ DW_TAG_enumerator ]
!120 = metadata !{i32 786472, metadata !"SC_WRAP", i64 3} ; [ DW_TAG_enumerator ]
!121 = metadata !{i32 786472, metadata !"SC_WRAP_SM", i64 4} ; [ DW_TAG_enumerator ]
!122 = metadata !{i32 786480, null, metadata !"_AP_N2", metadata !81, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!123 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"", metadata !62, i32 775, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !99, i32 0, metadata !38, i32 775} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !87, metadata !126}
!126 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_reference_type ]
!127 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_const_type ]
!128 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_volatile_type ]
!129 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 787, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 787} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{null, metadata !87, metadata !83}
!132 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 788, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 788} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{null, metadata !87, metadata !37}
!135 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 789, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 789} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !87, metadata !138}
!138 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!139 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 790, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 790} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{null, metadata !87, metadata !142}
!142 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!143 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 791, metadata !144, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 791} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{null, metadata !87, metadata !35}
!146 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 792, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 792} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !87, metadata !149}
!149 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!150 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 793, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 793} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !87, metadata !81}
!153 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 794, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 794} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{null, metadata !87, metadata !156}
!156 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!157 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 796, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 796} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{null, metadata !87, metadata !160}
!160 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!161 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 797, metadata !162, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 797} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!163 = metadata !{null, metadata !87, metadata !164}
!164 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!165 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 802, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 802} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{null, metadata !87, metadata !168}
!168 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !62, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ]
!169 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!170 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 803, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 803} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{null, metadata !87, metadata !173}
!173 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !62, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ]
!174 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!175 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 804, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 804} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{null, metadata !87, metadata !178}
!178 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ]
!179 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ]
!180 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 811, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 811} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{null, metadata !87, metadata !178, metadata !138}
!183 = metadata !{i32 786478, i32 0, metadata !61, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !62, i32 847, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 847} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{metadata !174, metadata !186, metadata !187}
!186 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !98} ; [ DW_TAG_pointer_type ]
!187 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!188 = metadata !{i32 786478, i32 0, metadata !61, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !62, i32 855, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 855} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{metadata !156, metadata !186, metadata !191}
!191 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!192 = metadata !{i32 786478, i32 0, metadata !61, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !62, i32 864, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 864} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{metadata !187, metadata !186, metadata !174}
!195 = metadata !{i32 786478, i32 0, metadata !61, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !62, i32 873, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 873} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !191, metadata !186, metadata !156}
!198 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 882, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 882} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{null, metadata !87, metadata !187}
!201 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 995, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 995} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !204, metadata !87, metadata !97}
!204 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_reference_type ]
!205 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1002, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1002} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !204, metadata !87, metadata !126}
!208 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !62, i32 1009, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1009} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{null, metadata !211, metadata !97}
!211 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !128} ; [ DW_TAG_pointer_type ]
!212 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !62, i32 1015, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1015} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{null, metadata !211, metadata !126}
!215 = metadata !{i32 786478, i32 0, metadata !61, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !62, i32 1024, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1024} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !204, metadata !87, metadata !174}
!218 = metadata !{i32 786478, i32 0, metadata !61, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !62, i32 1030, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1030} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !61, metadata !174}
!221 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !62, i32 1039, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1039} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !224, metadata !186, metadata !83}
!224 = metadata !{i32 786434, null, metadata !"ap_int_base<1, true, true>", metadata !105, i32 650, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!225 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !62, i32 1074, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1074} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !81, metadata !186}
!228 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !62, i32 1077, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1077} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!230 = metadata !{metadata !156, metadata !186}
!231 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !62, i32 1080, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1080} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!233 = metadata !{metadata !168, metadata !186}
!234 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !62, i32 1083, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1083} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{metadata !173, metadata !186}
!237 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !62, i32 1086, metadata !238, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1086} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!239 = metadata !{metadata !187, metadata !186}
!240 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !62, i32 1139, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1139} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{metadata !191, metadata !186}
!243 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !62, i32 1190, metadata !238, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1190} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !62, i32 1194, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1194} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !62, i32 1198, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1198} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{metadata !37, metadata !186}
!248 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !62, i32 1202, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1202} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{metadata !138, metadata !186}
!251 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !62, i32 1206, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1206} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!253 = metadata !{metadata !142, metadata !186}
!254 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !62, i32 1210, metadata !255, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1210} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{metadata !35, metadata !186}
!257 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !62, i32 1214, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1214} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !149, metadata !186}
!260 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !62, i32 1219, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1219} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !62, i32 1223, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1223} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !62, i32 1228, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1228} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{metadata !160, metadata !186}
!265 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !62, i32 1232, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1232} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{metadata !164, metadata !186}
!268 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !62, i32 1245, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1245} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{metadata !174, metadata !186}
!271 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !62, i32 1249, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1249} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !169, metadata !186}
!274 = metadata !{i32 786478, i32 0, metadata !61, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !62, i32 1253, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1253} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786478, i32 0, metadata !61, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !62, i32 1257, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1257} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{metadata !81, metadata !87}
!278 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !62, i32 1358, metadata !279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1358} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!280 = metadata !{metadata !204, metadata !87}
!281 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !62, i32 1362, metadata !279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1362} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !62, i32 1370, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1370} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{metadata !98, metadata !87, metadata !81}
!285 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !62, i32 1376, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1376} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !62, i32 1384, metadata !287, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1384} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!288 = metadata !{metadata !61, metadata !87}
!289 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !62, i32 1388, metadata !290, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1388} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!291 = metadata !{metadata !292, metadata !186}
!292 = metadata !{i32 786434, null, metadata !"ap_fixed_base<2, 1, true, 5, 3, 0>", metadata !62, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!293 = metadata !{i32 786478, i32 0, metadata !61, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !62, i32 1394, metadata !287, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1394} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !62, i32 1402, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1402} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{metadata !83, metadata !186}
!297 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !62, i32 1408, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1408} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!299 = metadata !{metadata !61, metadata !186}
!300 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !62, i32 1431, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1431} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!302 = metadata !{metadata !61, metadata !186, metadata !81}
!303 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !62, i32 1490, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1490} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!305 = metadata !{metadata !61, metadata !186, metadata !156}
!306 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !62, i32 1534, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1534} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !62, i32 1592, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1592} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !62, i32 1644, metadata !309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1644} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!310 = metadata !{metadata !204, metadata !87, metadata !81}
!311 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !62, i32 1707, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1707} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{metadata !204, metadata !87, metadata !156}
!314 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !62, i32 1754, metadata !309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1754} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !62, i32 1816, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1816} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !62, i32 1894, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1894} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{metadata !83, metadata !186, metadata !187}
!319 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !62, i32 1895, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1895} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !62, i32 1896, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1896} ; [ DW_TAG_subprogram ]
!321 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !62, i32 1897, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1897} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !62, i32 1898, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1898} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !62, i32 1899, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1899} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1902, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1902} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{metadata !327, metadata !87, metadata !156}
!327 = metadata !{i32 786434, null, metadata !"af_bit_ref<1, 0, true, 5, 3, 0>", metadata !62, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!328 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !62, i32 1914, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1914} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{metadata !83, metadata !186, metadata !156}
!331 = metadata !{i32 786478, i32 0, metadata !61, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 1919, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1919} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786478, i32 0, metadata !61, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !62, i32 1932, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1932} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 786478, i32 0, metadata !61, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 1944, metadata !334, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1944} ; [ DW_TAG_subprogram ]
!334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!335 = metadata !{metadata !83, metadata !186, metadata !81}
!336 = metadata !{i32 786478, i32 0, metadata !61, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !62, i32 1950, metadata !337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1950} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!338 = metadata !{metadata !327, metadata !87, metadata !81}
!339 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 1965, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1965} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!341 = metadata !{metadata !342, metadata !87, metadata !81, metadata !81}
!342 = metadata !{i32 786434, null, metadata !"af_range_ref<1, 0, true, 5, 3, 0>", metadata !62, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!343 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 1971, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1971} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !62, i32 1977, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 1977} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!346 = metadata !{metadata !342, metadata !186, metadata !81, metadata !81}
!347 = metadata !{i32 786478, i32 0, metadata !61, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !62, i32 2026, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2026} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2031, metadata !349, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2031} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!350 = metadata !{metadata !342, metadata !87}
!351 = metadata !{i32 786478, i32 0, metadata !61, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !62, i32 2036, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2036} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!353 = metadata !{metadata !342, metadata !186}
!354 = metadata !{i32 786478, i32 0, metadata !61, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !62, i32 2040, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2040} ; [ DW_TAG_subprogram ]
!355 = metadata !{i32 786478, i32 0, metadata !61, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !62, i32 2044, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2044} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786478, i32 0, metadata !61, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !62, i32 2050, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2050} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786478, i32 0, metadata !61, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !62, i32 2054, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2054} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 786478, i32 0, metadata !61, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !62, i32 2058, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2058} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{metadata !104, metadata !186}
!361 = metadata !{i32 786478, i32 0, metadata !61, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !62, i32 2062, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2062} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!363 = metadata !{metadata !115, metadata !186}
!364 = metadata !{i32 786478, i32 0, metadata !61, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !62, i32 2066, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2066} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !62, i32 2070, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2070} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{metadata !368, metadata !87, metadata !369}
!368 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ]
!369 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !105, i32 602, i64 5, i64 8, i32 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!370 = metadata !{metadata !371, metadata !372, metadata !373, metadata !374}
!371 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!372 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!373 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!374 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!375 = metadata !{i32 786478, i32 0, metadata !61, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !62, i32 2074, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 2074} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{metadata !368, metadata !87, metadata !138}
!378 = metadata !{i32 786478, i32 0, metadata !61, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !62, i32 510, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !38, i32 510} ; [ DW_TAG_subprogram ]
!379 = metadata !{metadata !380, metadata !381, metadata !82, metadata !382, metadata !383, metadata !384}
!380 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !81, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!381 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !81, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!382 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !104, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!383 = metadata !{i32 786480, null, metadata !"_AP_O", metadata !115, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!384 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !81, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!385 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 290, metadata !386, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 290} ; [ DW_TAG_subprogram ]
!386 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!387 = metadata !{null, metadata !388}
!388 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !57} ; [ DW_TAG_pointer_type ]
!389 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"", metadata !58, i32 294, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !394, i32 0, metadata !38, i32 294} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!391 = metadata !{null, metadata !388, metadata !392}
!392 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !393} ; [ DW_TAG_reference_type ]
!393 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_const_type ]
!394 = metadata !{metadata !100, metadata !101, metadata !103, metadata !114, metadata !122}
!395 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"", metadata !58, i32 313, metadata !396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !394, i32 0, metadata !38, i32 313} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !397, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!397 = metadata !{null, metadata !388, metadata !398}
!398 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !399} ; [ DW_TAG_reference_type ]
!399 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !400} ; [ DW_TAG_const_type ]
!400 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_volatile_type ]
!401 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed<1, 0, true, 5, 3, 0>", metadata !"ap_fixed<1, 0, true, 5, 3, 0>", metadata !"", metadata !58, i32 332, metadata !402, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !99, i32 0, metadata !38, i32 332} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!403 = metadata !{null, metadata !388, metadata !97}
!404 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 362, metadata !405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 362} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!406 = metadata !{null, metadata !388, metadata !83}
!407 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 363, metadata !408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 363} ; [ DW_TAG_subprogram ]
!408 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!409 = metadata !{null, metadata !388, metadata !138}
!410 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 364, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 364} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{null, metadata !388, metadata !142}
!413 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 365, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 365} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{null, metadata !388, metadata !35}
!416 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 366, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 366} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!418 = metadata !{null, metadata !388, metadata !149}
!419 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 367, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 367} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{null, metadata !388, metadata !81}
!422 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 368, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 368} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{null, metadata !388, metadata !156}
!425 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 369, metadata !426, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 369} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!427 = metadata !{null, metadata !388, metadata !160}
!428 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 370, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 370} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{null, metadata !388, metadata !164}
!431 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 371, metadata !432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 371} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!433 = metadata !{null, metadata !388, metadata !174}
!434 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 372, metadata !435, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 372} ; [ DW_TAG_subprogram ]
!435 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!436 = metadata !{null, metadata !388, metadata !169}
!437 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 373, metadata !438, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 373} ; [ DW_TAG_subprogram ]
!438 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!439 = metadata !{null, metadata !388, metadata !191}
!440 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 374, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 374} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{null, metadata !388, metadata !187}
!443 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 376, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 376} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!445 = metadata !{null, metadata !388, metadata !178}
!446 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 377, metadata !447, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 377} ; [ DW_TAG_subprogram ]
!447 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !448, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!448 = metadata !{null, metadata !388, metadata !178, metadata !138}
!449 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !58, i32 380, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 380} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!451 = metadata !{metadata !452, metadata !388, metadata !392}
!452 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_reference_type ]
!453 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !58, i32 386, metadata !454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 386} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!455 = metadata !{metadata !452, metadata !388, metadata !398}
!456 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !58, i32 391, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 391} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!458 = metadata !{null, metadata !459, metadata !392}
!459 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !400} ; [ DW_TAG_pointer_type ]
!460 = metadata !{i32 786478, i32 0, metadata !57, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !58, i32 396, metadata !461, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !38, i32 396} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!462 = metadata !{null, metadata !459, metadata !398}
!463 = metadata !{i32 786478, i32 0, metadata !57, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !58, i32 287, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !38, i32 287} ; [ DW_TAG_subprogram ]
!464 = metadata !{metadata !380, metadata !381, metadata !382, metadata !383, metadata !384}
!465 = metadata !{i32 39, i32 11, metadata !466, null}
!466 = metadata !{i32 786443, metadata !49, i32 38, i32 2, metadata !31, i32 7} ; [ DW_TAG_lexical_block ]
!467 = metadata !{i32 13, i32 17, metadata !468, metadata !465}
!468 = metadata !{i32 786443, metadata !469, i32 13, i32 13, metadata !31, i32 3} ; [ DW_TAG_lexical_block ]
!469 = metadata !{i32 786443, metadata !51, i32 12, i32 9, metadata !31, i32 2} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 15, i32 17, metadata !471, metadata !465}
!471 = metadata !{i32 786443, metadata !468, i32 14, i32 13, metadata !31, i32 4} ; [ DW_TAG_lexical_block ]
!472 = metadata !{i32 786688, metadata !473, metadata !"temp", metadata !31, i32 18, metadata !34, i32 0, metadata !465} ; [ DW_TAG_auto_variable ]
!473 = metadata !{i32 786443, metadata !471, i32 16, i32 17, metadata !31, i32 5} ; [ DW_TAG_lexical_block ]
!474 = metadata !{i32 18, i32 38, metadata !473, metadata !465}
!475 = metadata !{i32 19, i32 21, metadata !473, metadata !465}
!476 = metadata !{i32 20, i32 21, metadata !473, metadata !465}
!477 = metadata !{i32 21, i32 17, metadata !473, metadata !465}
!478 = metadata !{i32 786688, metadata !52, metadata !"j", metadata !31, i32 9, metadata !35, i32 0, metadata !465} ; [ DW_TAG_auto_variable ]
!479 = metadata !{i32 13, i32 31, metadata !468, metadata !465}
!480 = metadata !{i32 11, i32 65, metadata !51, metadata !465}
!481 = metadata !{i32 786688, metadata !52, metadata !"i", metadata !31, i32 9, metadata !35, i32 0, metadata !465} ; [ DW_TAG_auto_variable ]
!482 = metadata !{i32 40, i32 11, metadata !466, null}
!483 = metadata !{i32 43, i32 1, metadata !49, null}
