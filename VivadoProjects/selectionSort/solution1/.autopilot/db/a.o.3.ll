; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/selectionSort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@selectionSort_str = internal unnamed_addr constant [14 x i8] c"selectionSort\00" ; [#uses=1 type=[14 x i8]*]
@sOutData_done_V = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@sOutData_data = internal unnamed_addr global i16 0 ; [#uses=2 type=i16*]
@ptr_index = internal global i1 false             ; [#uses=0 type=i1*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@flagFill = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@count = internal unnamed_addr global i16 0, align 2 ; [#uses=2 type=i16*]
@A = internal global [256 x i16] zeroinitializer, align 16 ; [#uses=5 type=[256 x i16]*]

; [#uses=0]
define void @selectionSort(i16* noalias %agg_result_data, i1* noalias %agg_result_done_V, i16 signext %dataIn, i8 signext %posOutData) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %agg_result_data), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %agg_result_done_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData), !map !21
  %posOutData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %posOutData) ; [#uses=2 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %posOutData_read}, i64 0, metadata !25), !dbg !456 ; [debug line = 30:46] [debug variable = posOutData]
  %dataIn_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %dataIn) ; [#uses=1 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %dataIn_read}, i64 0, metadata !457), !dbg !458 ; [debug line = 30:34] [debug variable = dataIn]
  call void @llvm.dbg.value(metadata !{i16* %agg_result_data}, i64 0, metadata !459) ; [debug variable = agg.result.data]
  call void @llvm.dbg.value(metadata !{i1* %agg_result_done_V}, i64 0, metadata !465) ; [debug variable = agg.result.done.V]
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @selectionSort_str) nounwind
  call void @llvm.dbg.value(metadata !{i16 %dataIn}, i64 0, metadata !457), !dbg !458 ; [debug line = 30:34] [debug variable = dataIn]
  call void @llvm.dbg.value(metadata !{i8 %posOutData}, i64 0, metadata !25), !dbg !456 ; [debug line = 30:46] [debug variable = posOutData]
  %count_load = load i16* @count, align 2, !dbg !475 ; [#uses=3 type=i16] [debug line = 38:2]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %count_load, i32 8, i32 15), !dbg !475 ; [#uses=1 type=i8] [debug line = 38:2]
  %icmp = icmp slt i8 %tmp, 1, !dbg !475          ; [#uses=1 type=i1] [debug line = 38:2]
  %sOutData_done_V_load = load i1* @sOutData_done_V, align 1, !dbg !477 ; [#uses=2 type=i1] [debug line = 42:3]
  br i1 %icmp, label %0, label %1, !dbg !475      ; [debug line = 38:2]

; <label>:0                                       ; preds = %codeRepl
  %tmp_1 = sext i16 %count_load to i64, !dbg !479 ; [#uses=1 type=i64] [debug line = 40:3]
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_1, !dbg !479 ; [#uses=1 type=i16*] [debug line = 40:3]
  store i16 %dataIn_read, i16* %A_addr, align 2, !dbg !479 ; [debug line = 40:3]
  %tmp_2 = add i16 %count_load, 1, !dbg !480      ; [#uses=1 type=i16] [debug line = 41:3]
  store i16 %tmp_2, i16* @count, align 2, !dbg !480 ; [debug line = 41:3]
  %sOutData_data_load = load i16* @sOutData_data, align 2, !dbg !477 ; [#uses=1 type=i16] [debug line = 42:3]
  br label %4, !dbg !477                          ; [debug line = 42:3]

; <label>:1                                       ; preds = %codeRepl
  %flagFill_load = load i1* @flagFill, align 1    ; [#uses=1 type=i1]
  br i1 %flagFill_load, label %._crit_edge7, label %.preheader, !dbg !481 ; [debug line = 46:3]

.preheader:                                       ; preds = %3, %1
  %index_min = phi i8 [ %i, %3 ], [ 0, %1 ]       ; [#uses=4 type=i8]
  %index_min_cast1 = zext i8 %index_min to i16, !dbg !483 ; [#uses=2 type=i16] [debug line = 8:10@49:20]
  %exitcond3_i = icmp eq i8 %index_min, -1, !dbg !483 ; [#uses=1 type=i1] [debug line = 8:10@49:20]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 255, i64 255, i64 255) ; [#uses=0 type=i32]
  %i = add i8 %index_min, 1, !dbg !492            ; [#uses=1 type=i8] [debug line = 8:63@49:20]
  br i1 %exitcond3_i, label %selectionAlgorithm.exit, label %2, !dbg !483 ; [debug line = 8:10@49:20]

; <label>:2                                       ; preds = %.preheader
  %tmp_i = zext i8 %index_min to i64, !dbg !493   ; [#uses=1 type=i64] [debug line = 10:25@49:20]
  %A_addr_1 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_i, !dbg !493 ; [#uses=2 type=i16*] [debug line = 10:25@49:20]
  %min_2 = load i16* %A_addr_1, align 2, !dbg !493 ; [#uses=2 type=i16] [debug line = 10:25@49:20]
  call void @llvm.dbg.value(metadata !{i16 %min_2}, i64 0, metadata !495), !dbg !493 ; [debug line = 10:25@49:20] [debug variable = min]
  call void @llvm.dbg.value(metadata !{i8 %index_min}, i64 0, metadata !496), !dbg !497 ; [debug line = 11:28@49:20] [debug variable = index_min]
  br label %.backedge.i, !dbg !498                ; [debug line = 12:14@49:20]

.backedge.i:                                      ; preds = %.backedge.i.backedge, %2
  %j_0_in_i = phi i16 [ %index_min_cast1, %2 ], [ %index_min_2, %.backedge.i.backedge ] ; [#uses=2 type=i16]
  %min1_i = phi i16 [ %min_2, %2 ], [ %min_i_min1_i, %.backedge.i.backedge ] ; [#uses=2 type=i16]
  %index_min1_i = phi i16 [ %index_min_cast1, %2 ], [ %j_i_index_min1_i, %.backedge.i.backedge ] ; [#uses=2 type=i16]
  %index_min_2 = add i16 %j_0_in_i, 1, !dbg !498  ; [#uses=3 type=i16] [debug line = 12:14@49:20]
  call void @llvm.dbg.value(metadata !{i16 %index_min_2}, i64 0, metadata !496), !dbg !500 ; [debug line = 16:17@49:20] [debug variable = index_min]
  call void @llvm.dbg.value(metadata !{i16 %index_min_2}, i64 0, metadata !503), !dbg !498 ; [debug line = 12:14@49:20] [debug variable = j]
  %exitcond_i = icmp eq i16 %j_0_in_i, 255, !dbg !498 ; [#uses=1 type=i1] [debug line = 12:14@49:20]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 255, i64 0) ; [#uses=0 type=i32]
  br i1 %exitcond_i, label %3, label %.backedge.i.backedge, !dbg !498 ; [debug line = 12:14@49:20]

.backedge.i.backedge:                             ; preds = %.backedge.i
  %tmp_7_i = sext i16 %index_min_2 to i64, !dbg !504 ; [#uses=1 type=i64] [debug line = 14:13@49:20]
  %A_addr_3 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_7_i, !dbg !504 ; [#uses=1 type=i16*] [debug line = 14:13@49:20]
  %min = load i16* %A_addr_3, align 2, !dbg !504  ; [#uses=2 type=i16] [debug line = 14:13@49:20]
  call void @llvm.dbg.value(metadata !{i16 %min}, i64 0, metadata !495), !dbg !505 ; [debug line = 17:17@49:20] [debug variable = min]
  %tmp_8_i = icmp slt i16 %min, %min1_i, !dbg !504 ; [#uses=2 type=i1] [debug line = 14:13@49:20]
  %min_i_min1_i = select i1 %tmp_8_i, i16 %min, i16 %min1_i, !dbg !504 ; [#uses=1 type=i16] [debug line = 14:13@49:20]
  %j_i_index_min1_i = select i1 %tmp_8_i, i16 %index_min_2, i16 %index_min1_i, !dbg !504 ; [#uses=1 type=i16] [debug line = 14:13@49:20]
  br label %.backedge.i

; <label>:3                                       ; preds = %.backedge.i
  call void @llvm.dbg.value(metadata !{i16 %min_2}, i64 0, metadata !506), !dbg !507 ; [debug line = 21:29@49:20] [debug variable = temp]
  %tmp_5_i = sext i16 %index_min1_i to i64, !dbg !508 ; [#uses=1 type=i64] [debug line = 22:9@49:20]
  %A_addr_2 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_5_i, !dbg !508 ; [#uses=2 type=i16*] [debug line = 22:9@49:20]
  %A_load = load i16* %A_addr_2, align 2, !dbg !508 ; [#uses=1 type=i16] [debug line = 22:9@49:20]
  store i16 %A_load, i16* %A_addr_1, align 2, !dbg !508 ; [debug line = 22:9@49:20]
  store i16 %min_2, i16* %A_addr_2, align 2, !dbg !509 ; [debug line = 23:9@49:20]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !510), !dbg !492 ; [debug line = 8:63@49:20] [debug variable = i]
  br label %.preheader, !dbg !492                 ; [debug line = 8:63@49:20]

selectionAlgorithm.exit:                          ; preds = %.preheader
  store i1 true, i1* @sOutData_done_V, align 2, !dbg !511 ; [debug line = 382:9@49:20]
  store i1 true, i1* @flagFill, align 1, !dbg !514 ; [debug line = 50:4]
  br label %._crit_edge7, !dbg !515               ; [debug line = 51:3]

._crit_edge7:                                     ; preds = %selectionAlgorithm.exit, %1
  %sOutData_done_V_loc = phi i1 [ true, %selectionAlgorithm.exit ], [ %sOutData_done_V_load, %1 ] ; [#uses=1 type=i1]
  %mem_index_gep5_cast = sext i8 %posOutData_read to i11 ; [#uses=1 type=i11]
  %adjSize = zext i11 %mem_index_gep5_cast to i64 ; [#uses=1 type=i64]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %posOutData_read, i32 7) ; [#uses=1 type=i1]
  %gepindex2 = select i1 %tmp_3, i64 255, i64 %adjSize ; [#uses=1 type=i64]
  %A_addr_4 = getelementptr [256 x i16]* @A, i64 0, i64 %gepindex2 ; [#uses=1 type=i16*]
  %A_load_2 = load i16* %A_addr_4, align 2        ; [#uses=2 type=i16]
  store i16 %A_load_2, i16* @sOutData_data, align 2, !dbg !516 ; [debug line = 53:2]
  br label %4, !dbg !517                          ; [debug line = 55:2]

; <label>:4                                       ; preds = %._crit_edge7, %0
  %storemerge1 = phi i16 [ %A_load_2, %._crit_edge7 ], [ %sOutData_data_load, %0 ] ; [#uses=1 type=i16]
  %storemerge = phi i1 [ %sOutData_done_V_loc, %._crit_edge7 ], [ %sOutData_done_V_load, %0 ] ; [#uses=1 type=i1]
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %agg_result_data, i16 %storemerge1), !dbg !477 ; [debug line = 42:3]
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %agg_result_done_V, i1 %storemerge), !dbg !477 ; [debug line = 42:3]
  ret void, !dbg !518                             ; [debug line = 56:1]
}

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
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

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_5 = trunc i16 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_5
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_6 = shl i8 1, %empty                     ; [#uses=1 type=i8]
  %empty_7 = and i8 %0, %empty_6                  ; [#uses=1 type=i8]
  %empty_8 = icmp ne i8 %empty_7, 0               ; [#uses=1 type=i1]
  ret i1 %empty_8
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
!25 = metadata !{i32 786689, metadata !26, metadata !"posOutData", metadata !27, i32 33554462, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 786478, i32 0, metadata !27, metadata !"selectionSort", metadata !"selectionSort", metadata !"_Z13selectionSortsc", metadata !27, i32 30, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !56, i32 31} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786473, metadata !"selectionSort.cpp", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{metadata !30, metadata !35, metadata !119}
!30 = metadata !{i32 786454, null, metadata !"outData_s", metadata !27, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786434, null, metadata !"", metadata !32, i32 14, i64 32, i64 16, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_class_type ]
!32 = metadata !{i32 786473, metadata !"./selectionSort.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!33 = metadata !{metadata !34, metadata !37, metadata !450}
!34 = metadata !{i32 786445, metadata !31, metadata !"data", metadata !32, i32 16, i64 16, i64 16, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 786454, null, metadata !"data_inp", metadata !27, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ]
!36 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!37 = metadata !{i32 786445, metadata !31, metadata !"done", metadata !32, i32 17, i64 8, i64 8, i64 16, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 786454, null, metadata !"fp_bit1", metadata !27, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 786434, null, metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !40, i32 287, i64 8, i64 8, i32 0, i32 0, null, metadata !41, i32 0, null, metadata !449} ; [ DW_TAG_class_type ]
!40 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot\5Cap_int.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!41 = metadata !{metadata !42, metadata !370, metadata !374, metadata !380, metadata !386, metadata !389, metadata !392, metadata !395, metadata !398, metadata !401, metadata !404, metadata !407, metadata !410, metadata !413, metadata !416, metadata !419, metadata !422, metadata !425, metadata !428, metadata !431, metadata !434, metadata !438, metadata !441, metadata !445, metadata !448}
!42 = metadata !{i32 786460, metadata !39, null, metadata !40, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_inheritance ]
!43 = metadata !{i32 786434, null, metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !44, i32 510, i64 8, i64 8, i32 0, i32 0, null, metadata !45, i32 0, null, metadata !364} ; [ DW_TAG_class_type ]
!44 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot/ap_fixed_syn.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!45 = metadata !{metadata !46, metadata !68, metadata !72, metadata !75, metadata !78, metadata !107, metadata !113, metadata !116, metadata !120, metadata !124, metadata !128, metadata !131, metadata !135, metadata !138, metadata !142, metadata !146, metadata !150, metadata !155, metadata !160, metadata !165, metadata !168, metadata !173, metadata !177, metadata !180, metadata !183, metadata !186, metadata !190, metadata !193, metadata !197, metadata !200, metadata !203, metadata !206, metadata !210, metadata !213, metadata !216, metadata !219, metadata !222, metadata !225, metadata !228, metadata !229, metadata !230, metadata !233, metadata !236, metadata !239, metadata !242, metadata !245, metadata !246, metadata !247, metadata !250, metadata !253, metadata !256, metadata !259, metadata !260, metadata !263, metadata !266, metadata !267, metadata !270, metadata !271, metadata !274, metadata !278, metadata !279, metadata !282, metadata !285, metadata !288, metadata !291, metadata !292, metadata !293, metadata !296, metadata !299, metadata !300, metadata !301, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !313, metadata !316, metadata !317, metadata !318, metadata !321, metadata !324, metadata !328, metadata !329, metadata !332, metadata !333, metadata !336, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !346, metadata !349, metadata !350, metadata !360, metadata !363}
!46 = metadata !{i32 786460, metadata !43, null, metadata !44, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_inheritance ]
!47 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, true>", metadata !48, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, metadata !63} ; [ DW_TAG_class_type ]
!48 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot/etc/autopilot_dt.def", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!49 = metadata !{metadata !50, metadata !52, metadata !58}
!50 = metadata !{i32 786445, metadata !47, metadata !"V", metadata !48, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 786468, null, metadata !"int1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !48, i32 3, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 3} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !55}
!55 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !47} ; [ DW_TAG_pointer_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!58 = metadata !{i32 786478, i32 0, metadata !47, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !48, i32 3, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !56, i32 3} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !55, metadata !61}
!61 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_reference_type ]
!62 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!63 = metadata !{metadata !64, metadata !66}
!64 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !65, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!65 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!66 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !67, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!67 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786478, i32 0, metadata !43, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !44, i32 520, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 520} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !71, metadata !67, metadata !67, metadata !67, metadata !67}
!71 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !43} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786478, i32 0, metadata !43, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !44, i32 593, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 593} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{metadata !67, metadata !71, metadata !67, metadata !67, metadata !67}
!75 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 651, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 651} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !71}
!78 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"", metadata !44, i32 661, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !83, i32 0, metadata !56, i32 661} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !71, metadata !81}
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_reference_type ]
!82 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_const_type ]
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87, metadata !98, metadata !106}
!84 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !65, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!85 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !65, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!86 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !67, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!87 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !88, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!88 = metadata !{i32 786436, null, metadata !"ap_q_mode", metadata !89, i32 656, i64 3, i64 4, i32 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!89 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.1/common/technology/autopilot/ap_int_syn.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!91 = metadata !{i32 786472, metadata !"SC_RND", i64 0} ; [ DW_TAG_enumerator ]
!92 = metadata !{i32 786472, metadata !"SC_RND_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!93 = metadata !{i32 786472, metadata !"SC_RND_MIN_INF", i64 2} ; [ DW_TAG_enumerator ]
!94 = metadata !{i32 786472, metadata !"SC_RND_INF", i64 3} ; [ DW_TAG_enumerator ]
!95 = metadata !{i32 786472, metadata !"SC_RND_CONV", i64 4} ; [ DW_TAG_enumerator ]
!96 = metadata !{i32 786472, metadata !"SC_TRN", i64 5} ; [ DW_TAG_enumerator ]
!97 = metadata !{i32 786472, metadata !"SC_TRN_ZERO", i64 6} ; [ DW_TAG_enumerator ]
!98 = metadata !{i32 786480, null, metadata !"_AP_O2", metadata !99, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!99 = metadata !{i32 786436, null, metadata !"ap_o_mode", metadata !89, i32 666, i64 3, i64 4, i32 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!101 = metadata !{i32 786472, metadata !"SC_SAT", i64 0} ; [ DW_TAG_enumerator ]
!102 = metadata !{i32 786472, metadata !"SC_SAT_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!103 = metadata !{i32 786472, metadata !"SC_SAT_SYM", i64 2} ; [ DW_TAG_enumerator ]
!104 = metadata !{i32 786472, metadata !"SC_WRAP", i64 3} ; [ DW_TAG_enumerator ]
!105 = metadata !{i32 786472, metadata !"SC_WRAP_SM", i64 4} ; [ DW_TAG_enumerator ]
!106 = metadata !{i32 786480, null, metadata !"_AP_N2", metadata !65, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!107 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !"", metadata !44, i32 775, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !83, i32 0, metadata !56, i32 775} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !71, metadata !110}
!110 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_reference_type ]
!111 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_const_type ]
!112 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_volatile_type ]
!113 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 787, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 787} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !71, metadata !67}
!116 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 788, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 788} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !71, metadata !119}
!119 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!120 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 789, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 789} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{null, metadata !71, metadata !123}
!123 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!124 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 790, metadata !125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 790} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{null, metadata !71, metadata !127}
!127 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 791, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 791} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{null, metadata !71, metadata !36}
!131 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 792, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 792} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !71, metadata !134}
!134 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 793, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 793} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !71, metadata !65}
!138 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 794, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 794} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{null, metadata !71, metadata !141}
!141 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!142 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 796, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 796} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !71, metadata !145}
!145 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 797, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 797} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !71, metadata !149}
!149 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!150 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 802, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 802} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !71, metadata !153}
!153 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !44, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ]
!154 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!155 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 803, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 803} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !71, metadata !158}
!158 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !44, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ]
!159 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!160 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 804, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 804} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{null, metadata !71, metadata !163}
!163 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ]
!164 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_const_type ]
!165 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 811, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 811} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{null, metadata !71, metadata !163, metadata !123}
!168 = metadata !{i32 786478, i32 0, metadata !43, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !44, i32 847, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 847} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{metadata !159, metadata !171, metadata !172}
!171 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !82} ; [ DW_TAG_pointer_type ]
!172 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!173 = metadata !{i32 786478, i32 0, metadata !43, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !44, i32 855, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 855} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !141, metadata !171, metadata !176}
!176 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!177 = metadata !{i32 786478, i32 0, metadata !43, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !44, i32 864, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 864} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{metadata !172, metadata !171, metadata !159}
!180 = metadata !{i32 786478, i32 0, metadata !43, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !44, i32 873, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 873} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !176, metadata !171, metadata !141}
!183 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 882, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 882} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{null, metadata !71, metadata !172}
!186 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !44, i32 995, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 995} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{metadata !189, metadata !71, metadata !81}
!189 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_reference_type ]
!190 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !44, i32 1002, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1002} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !189, metadata !71, metadata !110}
!193 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !44, i32 1009, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1009} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{null, metadata !196, metadata !81}
!196 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !112} ; [ DW_TAG_pointer_type ]
!197 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !44, i32 1015, metadata !198, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1015} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!199 = metadata !{null, metadata !196, metadata !110}
!200 = metadata !{i32 786478, i32 0, metadata !43, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !44, i32 1024, metadata !201, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1024} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!202 = metadata !{metadata !189, metadata !71, metadata !159}
!203 = metadata !{i32 786478, i32 0, metadata !43, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !44, i32 1030, metadata !204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1030} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!205 = metadata !{metadata !43, metadata !159}
!206 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !44, i32 1039, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1039} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{metadata !209, metadata !171, metadata !67}
!209 = metadata !{i32 786434, null, metadata !"ap_int_base<1, true, true>", metadata !89, i32 650, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!210 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !44, i32 1074, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1074} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{metadata !65, metadata !171}
!213 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !44, i32 1077, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1077} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{metadata !141, metadata !171}
!216 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !44, i32 1080, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1080} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !153, metadata !171}
!219 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !44, i32 1083, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1083} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{metadata !158, metadata !171}
!222 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !44, i32 1086, metadata !223, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1086} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!224 = metadata !{metadata !172, metadata !171}
!225 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !44, i32 1139, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1139} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !176, metadata !171}
!228 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !44, i32 1190, metadata !223, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1190} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !44, i32 1194, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1194} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !44, i32 1198, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1198} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !119, metadata !171}
!233 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !44, i32 1202, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1202} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !123, metadata !171}
!236 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !44, i32 1206, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1206} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !127, metadata !171}
!239 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !44, i32 1210, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1210} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !36, metadata !171}
!242 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !44, i32 1214, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1214} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !134, metadata !171}
!245 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !44, i32 1219, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1219} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !44, i32 1223, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1223} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !44, i32 1228, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1228} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{metadata !145, metadata !171}
!250 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !44, i32 1232, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1232} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{metadata !149, metadata !171}
!253 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !44, i32 1245, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1245} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !159, metadata !171}
!256 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !44, i32 1249, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1249} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{metadata !154, metadata !171}
!259 = metadata !{i32 786478, i32 0, metadata !43, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !44, i32 1253, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1253} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786478, i32 0, metadata !43, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !44, i32 1257, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1257} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{metadata !65, metadata !71}
!263 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !44, i32 1358, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1358} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{metadata !189, metadata !71}
!266 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !44, i32 1362, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1362} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !44, i32 1370, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1370} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !82, metadata !71, metadata !65}
!270 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !44, i32 1376, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1376} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !44, i32 1384, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1384} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !43, metadata !71}
!274 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !44, i32 1388, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1388} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !277, metadata !171}
!277 = metadata !{i32 786434, null, metadata !"ap_fixed_base<2, 1, true, 5, 3, 0>", metadata !44, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!278 = metadata !{i32 786478, i32 0, metadata !43, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !44, i32 1394, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1394} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !44, i32 1402, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1402} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{metadata !67, metadata !171}
!282 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !44, i32 1408, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1408} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{metadata !43, metadata !171}
!285 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !44, i32 1431, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1431} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!287 = metadata !{metadata !43, metadata !171, metadata !65}
!288 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !44, i32 1490, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1490} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!290 = metadata !{metadata !43, metadata !171, metadata !141}
!291 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !44, i32 1534, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1534} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !44, i32 1592, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1592} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !44, i32 1644, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1644} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{metadata !189, metadata !71, metadata !65}
!296 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !44, i32 1707, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1707} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{metadata !189, metadata !71, metadata !141}
!299 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !44, i32 1754, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1754} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !44, i32 1816, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1816} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !44, i32 1894, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1894} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!303 = metadata !{metadata !67, metadata !171, metadata !172}
!304 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !44, i32 1895, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1895} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !44, i32 1896, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1896} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !44, i32 1897, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1897} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !44, i32 1898, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1898} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !44, i32 1899, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1899} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !44, i32 1902, metadata !310, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1902} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!311 = metadata !{metadata !312, metadata !71, metadata !141}
!312 = metadata !{i32 786434, null, metadata !"af_bit_ref<1, 0, true, 5, 3, 0>", metadata !44, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!313 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !44, i32 1914, metadata !314, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1914} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!315 = metadata !{metadata !67, metadata !171, metadata !141}
!316 = metadata !{i32 786478, i32 0, metadata !43, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !44, i32 1919, metadata !310, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1919} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786478, i32 0, metadata !43, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !44, i32 1932, metadata !314, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1932} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786478, i32 0, metadata !43, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !44, i32 1944, metadata !319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1944} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!320 = metadata !{metadata !67, metadata !171, metadata !65}
!321 = metadata !{i32 786478, i32 0, metadata !43, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !44, i32 1950, metadata !322, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1950} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!323 = metadata !{metadata !312, metadata !71, metadata !65}
!324 = metadata !{i32 786478, i32 0, metadata !43, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !44, i32 1965, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1965} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{metadata !327, metadata !71, metadata !65, metadata !65}
!327 = metadata !{i32 786434, null, metadata !"af_range_ref<1, 0, true, 5, 3, 0>", metadata !44, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!328 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !44, i32 1971, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1971} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786478, i32 0, metadata !43, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !44, i32 1977, metadata !330, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 1977} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !331, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!331 = metadata !{metadata !327, metadata !171, metadata !65, metadata !65}
!332 = metadata !{i32 786478, i32 0, metadata !43, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !44, i32 2026, metadata !330, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2026} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 786478, i32 0, metadata !43, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !44, i32 2031, metadata !334, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2031} ; [ DW_TAG_subprogram ]
!334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!335 = metadata !{metadata !327, metadata !71}
!336 = metadata !{i32 786478, i32 0, metadata !43, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !44, i32 2036, metadata !337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2036} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!338 = metadata !{metadata !327, metadata !171}
!339 = metadata !{i32 786478, i32 0, metadata !43, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !44, i32 2040, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2040} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786478, i32 0, metadata !43, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !44, i32 2044, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2044} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786478, i32 0, metadata !43, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !44, i32 2050, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2050} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786478, i32 0, metadata !43, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !44, i32 2054, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2054} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 786478, i32 0, metadata !43, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !44, i32 2058, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2058} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{metadata !88, metadata !171}
!346 = metadata !{i32 786478, i32 0, metadata !43, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !44, i32 2062, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2062} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{metadata !99, metadata !171}
!349 = metadata !{i32 786478, i32 0, metadata !43, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !44, i32 2066, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2066} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !44, i32 2070, metadata !351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2070} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!352 = metadata !{metadata !353, metadata !71, metadata !354}
!353 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ]
!354 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !89, i32 602, i64 5, i64 8, i32 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!355 = metadata !{metadata !356, metadata !357, metadata !358, metadata !359}
!356 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!357 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!358 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!359 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!360 = metadata !{i32 786478, i32 0, metadata !43, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi1ELi0ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !44, i32 2074, metadata !361, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 2074} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!362 = metadata !{metadata !353, metadata !71, metadata !123}
!363 = metadata !{i32 786478, i32 0, metadata !43, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !44, i32 510, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !56, i32 510} ; [ DW_TAG_subprogram ]
!364 = metadata !{metadata !365, metadata !366, metadata !66, metadata !367, metadata !368, metadata !369}
!365 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !65, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!366 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !65, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!367 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !88, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!368 = metadata !{i32 786480, null, metadata !"_AP_O", metadata !99, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!369 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !65, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!370 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 290, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 290} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!372 = metadata !{null, metadata !373}
!373 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !39} ; [ DW_TAG_pointer_type ]
!374 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"", metadata !40, i32 294, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !379, i32 0, metadata !56, i32 294} ; [ DW_TAG_subprogram ]
!375 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!376 = metadata !{null, metadata !373, metadata !377}
!377 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !378} ; [ DW_TAG_reference_type ]
!378 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ]
!379 = metadata !{metadata !84, metadata !85, metadata !87, metadata !98, metadata !106}
!380 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !"", metadata !40, i32 313, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !379, i32 0, metadata !56, i32 313} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{null, metadata !373, metadata !383}
!383 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_reference_type ]
!384 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_const_type ]
!385 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_volatile_type ]
!386 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed<1, 0, true, 5, 3, 0>", metadata !"ap_fixed<1, 0, true, 5, 3, 0>", metadata !"", metadata !40, i32 332, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !83, i32 0, metadata !56, i32 332} ; [ DW_TAG_subprogram ]
!387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!388 = metadata !{null, metadata !373, metadata !81}
!389 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 362, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 362} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!391 = metadata !{null, metadata !373, metadata !67}
!392 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 363, metadata !393, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 363} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!394 = metadata !{null, metadata !373, metadata !123}
!395 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 364, metadata !396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 364} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !397, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!397 = metadata !{null, metadata !373, metadata !127}
!398 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 365, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 365} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{null, metadata !373, metadata !36}
!401 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 366, metadata !402, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 366} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!403 = metadata !{null, metadata !373, metadata !134}
!404 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 367, metadata !405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 367} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!406 = metadata !{null, metadata !373, metadata !65}
!407 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 368, metadata !408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 368} ; [ DW_TAG_subprogram ]
!408 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!409 = metadata !{null, metadata !373, metadata !141}
!410 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 369, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 369} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{null, metadata !373, metadata !145}
!413 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 370, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 370} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{null, metadata !373, metadata !149}
!416 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 371, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 371} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!418 = metadata !{null, metadata !373, metadata !159}
!419 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 372, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 372} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{null, metadata !373, metadata !154}
!422 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 373, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 373} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{null, metadata !373, metadata !176}
!425 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 374, metadata !426, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 374} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!427 = metadata !{null, metadata !373, metadata !172}
!428 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 376, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 376} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{null, metadata !373, metadata !163}
!431 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 377, metadata !432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 377} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!433 = metadata !{null, metadata !373, metadata !163, metadata !123}
!434 = metadata !{i32 786478, i32 0, metadata !39, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !40, i32 380, metadata !435, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 380} ; [ DW_TAG_subprogram ]
!435 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!436 = metadata !{metadata !437, metadata !373, metadata !377}
!437 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_reference_type ]
!438 = metadata !{i32 786478, i32 0, metadata !39, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !40, i32 386, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 386} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{metadata !437, metadata !373, metadata !383}
!441 = metadata !{i32 786478, i32 0, metadata !39, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !40, i32 391, metadata !442, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 391} ; [ DW_TAG_subprogram ]
!442 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!443 = metadata !{null, metadata !444, metadata !377}
!444 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !385} ; [ DW_TAG_pointer_type ]
!445 = metadata !{i32 786478, i32 0, metadata !39, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !40, i32 396, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 396} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{null, metadata !444, metadata !383}
!448 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !40, i32 287, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !56, i32 287} ; [ DW_TAG_subprogram ]
!449 = metadata !{metadata !365, metadata !366, metadata !367, metadata !368, metadata !369}
!450 = metadata !{i32 786478, i32 0, metadata !31, metadata !"", metadata !"", metadata !"", metadata !32, i32 14, metadata !451, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !56, i32 14} ; [ DW_TAG_subprogram ]
!451 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !452, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!452 = metadata !{null, metadata !453, metadata !454}
!453 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !31} ; [ DW_TAG_pointer_type ]
!454 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !455} ; [ DW_TAG_reference_type ]
!455 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ]
!456 = metadata !{i32 30, i32 46, metadata !26, null}
!457 = metadata !{i32 786689, metadata !26, metadata !"dataIn", metadata !27, i32 16777246, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!458 = metadata !{i32 30, i32 34, metadata !26, null}
!459 = metadata !{i32 790530, metadata !460, metadata !"agg.result.data", null, i32 30, metadata !462, i32 0, i32 0} ; [ DW_TAG_return_variable_field ]
!460 = metadata !{i32 786690, metadata !26, metadata !"agg.result", metadata !27, i32 30, metadata !461, i32 0, i32 0} ; [ DW_TAG_return_variable ]
!461 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ]
!462 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !463} ; [ DW_TAG_pointer_type ]
!463 = metadata !{i32 786438, null, metadata !"", metadata !32, i32 14, i64 16, i64 16, i32 0, i32 0, null, metadata !464, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!464 = metadata !{metadata !34}
!465 = metadata !{i32 790530, metadata !460, metadata !"agg.result.done.V", null, i32 30, metadata !466, i32 0, i32 0} ; [ DW_TAG_return_variable_field ]
!466 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !467} ; [ DW_TAG_pointer_type ]
!467 = metadata !{i32 786438, null, metadata !"", metadata !32, i32 14, i64 1, i64 16, i32 0, i32 0, null, metadata !468, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!468 = metadata !{metadata !469}
!469 = metadata !{i32 786438, null, metadata !"ap_fixed<1, 0, 5, 3, 0>", metadata !40, i32 287, i64 1, i64 8, i32 0, i32 0, null, metadata !470, i32 0, null, metadata !449} ; [ DW_TAG_class_field_type ]
!470 = metadata !{metadata !471}
!471 = metadata !{i32 786438, null, metadata !"ap_fixed_base<1, 0, true, 5, 3, 0>", metadata !44, i32 510, i64 1, i64 8, i32 0, i32 0, null, metadata !472, i32 0, null, metadata !364} ; [ DW_TAG_class_field_type ]
!472 = metadata !{metadata !473}
!473 = metadata !{i32 786438, null, metadata !"ssdm_int<1 + 1024 * 0, true>", metadata !48, i32 3, i64 1, i64 8, i32 0, i32 0, null, metadata !474, i32 0, null, metadata !63} ; [ DW_TAG_class_field_type ]
!474 = metadata !{metadata !50}
!475 = metadata !{i32 38, i32 2, metadata !476, null}
!476 = metadata !{i32 786443, metadata !26, i32 31, i32 1, metadata !27, i32 6} ; [ DW_TAG_lexical_block ]
!477 = metadata !{i32 42, i32 3, metadata !478, null}
!478 = metadata !{i32 786443, metadata !476, i32 39, i32 2, metadata !27, i32 7} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 40, i32 3, metadata !478, null}
!480 = metadata !{i32 41, i32 3, metadata !478, null}
!481 = metadata !{i32 46, i32 3, metadata !482, null}
!482 = metadata !{i32 786443, metadata !476, i32 45, i32 2, metadata !27, i32 8} ; [ DW_TAG_lexical_block ]
!483 = metadata !{i32 8, i32 10, metadata !484, metadata !490}
!484 = metadata !{i32 786443, metadata !485, i32 8, i32 5, metadata !27, i32 1} ; [ DW_TAG_lexical_block ]
!485 = metadata !{i32 786443, metadata !486, i32 6, i32 1, metadata !27, i32 0} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 786478, i32 0, metadata !27, metadata !"selectionAlgorithm", metadata !"selectionAlgorithm", metadata !"_Z18selectionAlgorithmPs", metadata !27, i32 5, metadata !487, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !56, i32 6} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!488 = metadata !{metadata !38, metadata !489}
!489 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!490 = metadata !{i32 49, i32 20, metadata !491, null}
!491 = metadata !{i32 786443, metadata !482, i32 47, i32 3, metadata !27, i32 9} ; [ DW_TAG_lexical_block ]
!492 = metadata !{i32 8, i32 63, metadata !484, metadata !490}
!493 = metadata !{i32 10, i32 25, metadata !494, metadata !490}
!494 = metadata !{i32 786443, metadata !484, i32 9, i32 5, metadata !27, i32 2} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 786688, metadata !494, metadata !"min", metadata !27, i32 10, metadata !35, i32 0, metadata !490} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 786688, metadata !494, metadata !"index_min", metadata !27, i32 11, metadata !35, i32 0, metadata !490} ; [ DW_TAG_auto_variable ]
!497 = metadata !{i32 11, i32 28, metadata !494, metadata !490}
!498 = metadata !{i32 12, i32 14, metadata !499, metadata !490}
!499 = metadata !{i32 786443, metadata !494, i32 12, i32 9, metadata !27, i32 3} ; [ DW_TAG_lexical_block ]
!500 = metadata !{i32 16, i32 17, metadata !501, metadata !490}
!501 = metadata !{i32 786443, metadata !502, i32 15, i32 13, metadata !27, i32 5} ; [ DW_TAG_lexical_block ]
!502 = metadata !{i32 786443, metadata !499, i32 13, i32 9, metadata !27, i32 4} ; [ DW_TAG_lexical_block ]
!503 = metadata !{i32 786688, metadata !485, metadata !"j", metadata !27, i32 7, metadata !35, i32 0, metadata !490} ; [ DW_TAG_auto_variable ]
!504 = metadata !{i32 14, i32 13, metadata !502, metadata !490}
!505 = metadata !{i32 17, i32 17, metadata !501, metadata !490}
!506 = metadata !{i32 786688, metadata !494, metadata !"temp", metadata !27, i32 21, metadata !35, i32 0, metadata !490} ; [ DW_TAG_auto_variable ]
!507 = metadata !{i32 21, i32 29, metadata !494, metadata !490}
!508 = metadata !{i32 22, i32 9, metadata !494, metadata !490}
!509 = metadata !{i32 23, i32 9, metadata !494, metadata !490}
!510 = metadata !{i32 786688, metadata !485, metadata !"i", metadata !27, i32 7, metadata !35, i32 0, metadata !490} ; [ DW_TAG_auto_variable ]
!511 = metadata !{i32 382, i32 9, metadata !512, metadata !490}
!512 = metadata !{i32 786443, metadata !513, i32 381, i32 53, metadata !40, i32 10} ; [ DW_TAG_lexical_block ]
!513 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi1ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !40, i32 380, metadata !435, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !434, metadata !56, i32 381} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 50, i32 4, metadata !491, null}
!515 = metadata !{i32 51, i32 3, metadata !491, null}
!516 = metadata !{i32 53, i32 2, metadata !476, null}
!517 = metadata !{i32 55, i32 2, metadata !476, null}
!518 = metadata !{i32 56, i32 1, metadata !476, null}
