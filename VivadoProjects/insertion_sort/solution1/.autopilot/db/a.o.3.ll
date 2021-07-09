; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ptr_index = internal global i1 false             ; [#uses=0 type=i1*]
@insertionSort_str = internal unnamed_addr constant [14 x i8] c"insertionSort\00" ; [#uses=1 type=[14 x i8]*]
@flagFill = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@count = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@A = internal global [256 x i16] zeroinitializer, align 16 ; [#uses=4 type=[256 x i16]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define signext i16 @insertionSort(i16 signext %dataIn, i8 signext %posOutData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @insertionSort_str) nounwind
  %posOutData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %posOutData) nounwind ; [#uses=2 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %posOutData_read}, i64 0, metadata !16), !dbg !26 ; [debug line = 34:45] [debug variable = posOutData]
  %dataIn_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %dataIn) nounwind ; [#uses=1 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %dataIn_read}, i64 0, metadata !27), !dbg !28 ; [debug line = 34:33] [debug variable = dataIn]
  call void @llvm.dbg.value(metadata !{i16 %dataIn}, i64 0, metadata !27), !dbg !28 ; [debug line = 34:33] [debug variable = dataIn]
  call void @llvm.dbg.value(metadata !{i8 %posOutData}, i64 0, metadata !16), !dbg !26 ; [debug line = 34:45] [debug variable = posOutData]
  %count_load = load i32* @count, align 4, !dbg !29 ; [#uses=3 type=i32] [debug line = 40:2]
  %tmp = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %count_load, i32 8, i32 31), !dbg !29 ; [#uses=1 type=i24] [debug line = 40:2]
  %icmp = icmp slt i24 %tmp, 1, !dbg !29          ; [#uses=1 type=i1] [debug line = 40:2]
  br i1 %icmp, label %1, label %2, !dbg !29       ; [debug line = 40:2]

; <label>:1                                       ; preds = %0
  %tmp_1 = sext i32 %count_load to i64, !dbg !31  ; [#uses=1 type=i64] [debug line = 42:3]
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_1, !dbg !31 ; [#uses=1 type=i16*] [debug line = 42:3]
  store i16 %dataIn_read, i16* %A_addr, align 2, !dbg !31 ; [debug line = 42:3]
  %tmp_2 = add nsw i32 %count_load, 1, !dbg !33   ; [#uses=1 type=i32] [debug line = 43:3]
  store i32 %tmp_2, i32* @count, align 4, !dbg !33 ; [debug line = 43:3]
  br label %6, !dbg !34                           ; [debug line = 44:3]

; <label>:2                                       ; preds = %0
  %flagFill_load = load i1* @flagFill, align 1    ; [#uses=1 type=i1]
  br i1 %flagFill_load, label %._crit_edge, label %.preheader, !dbg !35 ; [debug line = 48:3]

.preheader:                                       ; preds = %5, %2
  %i_i = phi i9 [ %i, %5 ], [ 1, %2 ]             ; [#uses=3 type=i9]
  %exitcond_i = icmp eq i9 %i_i, -256, !dbg !37   ; [#uses=1 type=i1] [debug line = 19:10@51:4]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 255, i64 255, i64 255) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond_i, label %insertionAlgorithm.exit, label %.preheader.i, !dbg !37 ; [debug line = 19:10@51:4]

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader
  %j_0_in_i = phi i9 [ %j, %._crit_edge.i ], [ %i_i, %.preheader ] ; [#uses=3 type=i9]
  %j_0_in_i_cast = sext i9 %j_0_in_i to i32, !dbg !46 ; [#uses=1 type=i32] [debug line = 21:13@51:4]
  %j = add i9 %j_0_in_i, -1, !dbg !46             ; [#uses=2 type=i9] [debug line = 21:13@51:4]
  %j_cast = sext i9 %j to i32, !dbg !46           ; [#uses=1 type=i32] [debug line = 21:13@51:4]
  call void @llvm.dbg.value(metadata !{i9 %j}, i64 0, metadata !49) nounwind, !dbg !46 ; [debug line = 21:13@51:4] [debug variable = j]
  %tmp_i = icmp sgt i9 %j_0_in_i, 0, !dbg !46     ; [#uses=1 type=i1] [debug line = 21:13@51:4]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 255, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_i, label %3, label %5, !dbg !46      ; [debug line = 21:13@51:4]

; <label>:3                                       ; preds = %.preheader.i
  %tmp_5_i = zext i32 %j_cast to i64, !dbg !51    ; [#uses=1 type=i64] [debug line = 23:13@51:4]
  %A_addr_1 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_5_i, !dbg !51 ; [#uses=2 type=i16*] [debug line = 23:13@51:4]
  %temp = load i16* %A_addr_1, align 2, !dbg !51  ; [#uses=2 type=i16] [debug line = 23:13@51:4]
  %tmp_6_i = zext i32 %j_0_in_i_cast to i64, !dbg !51 ; [#uses=1 type=i64] [debug line = 23:13@51:4]
  %A_addr_2 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_6_i, !dbg !51 ; [#uses=2 type=i16*] [debug line = 23:13@51:4]
  %A_load_1 = load i16* %A_addr_2, align 2, !dbg !51 ; [#uses=2 type=i16] [debug line = 23:13@51:4]
  %tmp_7_i = icmp sgt i16 %temp, %A_load_1, !dbg !51 ; [#uses=1 type=i1] [debug line = 23:13@51:4]
  br i1 %tmp_7_i, label %4, label %._crit_edge.i, !dbg !51 ; [debug line = 23:13@51:4]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i16 %temp}, i64 0, metadata !53) nounwind, !dbg !55 ; [debug line = 26:34@51:4] [debug variable = temp]
  store i16 %A_load_1, i16* %A_addr_1, align 2, !dbg !56 ; [debug line = 27:17@51:4]
  store i16 %temp, i16* %A_addr_2, align 2, !dbg !57 ; [debug line = 28:17@51:4]
  br label %._crit_edge.i, !dbg !58               ; [debug line = 29:13@51:4]

._crit_edge.i:                                    ; preds = %4, %3
  br label %.preheader.i, !dbg !59                ; [debug line = 21:30@51:4]

; <label>:5                                       ; preds = %.preheader.i
  %i = add i9 %i_i, 1, !dbg !60                   ; [#uses=1 type=i9] [debug line = 19:59@51:4]
  call void @llvm.dbg.value(metadata !{i9 %i}, i64 0, metadata !61) nounwind, !dbg !60 ; [debug line = 19:59@51:4] [debug variable = i]
  br label %.preheader, !dbg !60                  ; [debug line = 19:59@51:4]

insertionAlgorithm.exit:                          ; preds = %.preheader
  store i1 true, i1* @flagFill, align 1, !dbg !62 ; [debug line = 52:4]
  br label %._crit_edge, !dbg !63                 ; [debug line = 53:3]

._crit_edge:                                      ; preds = %insertionAlgorithm.exit, %2
  %mem_index_gep4_cast = sext i8 %posOutData_read to i11 ; [#uses=1 type=i11]
  %adjSize = zext i11 %mem_index_gep4_cast to i64 ; [#uses=1 type=i64]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %posOutData_read, i32 7) ; [#uses=1 type=i1]
  %gepindex2 = select i1 %tmp_3, i64 255, i64 %adjSize ; [#uses=1 type=i64]
  %A_addr_3 = getelementptr [256 x i16]* @A, i64 0, i64 %gepindex2 ; [#uses=1 type=i16*]
  %A_load = load i16* %A_addr_3, align 2          ; [#uses=1 type=i16]
  br label %6, !dbg !64                           ; [debug line = 55:2]

; <label>:6                                       ; preds = %._crit_edge, %1
  %p_0 = phi i16 [ 0, %1 ], [ %A_load, %._crit_edge ] ; [#uses=1 type=i16]
  ret i16 %p_0, !dbg !65                          ; [debug line = 56:1]
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

; [#uses=3]
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
define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i24              ; [#uses=1 type=i24]
  ret i24 %empty_5
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
!16 = metadata !{i32 786689, metadata !17, metadata !"posOutData", metadata !18, i32 33554466, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"insertionSort", metadata !"insertionSort", metadata !"", metadata !18, i32 34, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16, i8)* @insertionSort, null, null, metadata !24, i32 35} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{metadata !21, metadata !21, metadata !23}
!21 = metadata !{i32 786454, null, metadata !"data_inp", metadata !18, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!26 = metadata !{i32 34, i32 45, metadata !17, null}
!27 = metadata !{i32 786689, metadata !17, metadata !"dataIn", metadata !18, i32 16777250, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 34, i32 33, metadata !17, null}
!29 = metadata !{i32 40, i32 2, metadata !30, null}
!30 = metadata !{i32 786443, metadata !17, i32 35, i32 1, metadata !18, i32 9} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 42, i32 3, metadata !32, null}
!32 = metadata !{i32 786443, metadata !30, i32 41, i32 2, metadata !18, i32 10} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 43, i32 3, metadata !32, null}
!34 = metadata !{i32 44, i32 3, metadata !32, null}
!35 = metadata !{i32 48, i32 3, metadata !36, null}
!36 = metadata !{i32 786443, metadata !30, i32 47, i32 2, metadata !18, i32 11} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 19, i32 10, metadata !38, metadata !44}
!38 = metadata !{i32 786443, metadata !39, i32 19, i32 6, metadata !18, i32 4} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786443, metadata !40, i32 16, i32 2, metadata !18, i32 3} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786478, i32 0, metadata !18, metadata !"insertionAlgorithm", metadata !"insertionAlgorithm", metadata !"", metadata !18, i32 15, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !24, i32 16} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !43}
!43 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ]
!44 = metadata !{i32 51, i32 4, metadata !45, null}
!45 = metadata !{i32 786443, metadata !36, i32 49, i32 3, metadata !18, i32 12} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 21, i32 13, metadata !47, metadata !44}
!47 = metadata !{i32 786443, metadata !48, i32 21, i32 9, metadata !18, i32 6} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !38, i32 20, i32 6, metadata !18, i32 5} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786688, metadata !39, metadata !"j", metadata !18, i32 17, metadata !50, i32 0, metadata !44} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 23, i32 13, metadata !52, metadata !44}
!52 = metadata !{i32 786443, metadata !47, i32 22, i32 9, metadata !18, i32 7} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786688, metadata !54, metadata !"temp", metadata !18, i32 26, metadata !21, i32 0, metadata !44} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786443, metadata !52, i32 24, i32 13, metadata !18, i32 8} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 26, i32 34, metadata !54, metadata !44}
!56 = metadata !{i32 27, i32 17, metadata !54, metadata !44}
!57 = metadata !{i32 28, i32 17, metadata !54, metadata !44}
!58 = metadata !{i32 29, i32 13, metadata !54, metadata !44}
!59 = metadata !{i32 21, i32 30, metadata !47, metadata !44}
!60 = metadata !{i32 19, i32 59, metadata !38, metadata !44}
!61 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !18, i32 17, metadata !50, i32 0, metadata !44} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 52, i32 4, metadata !45, null}
!63 = metadata !{i32 53, i32 3, metadata !45, null}
!64 = metadata !{i32 55, i32 2, metadata !30, null}
!65 = metadata !{i32 56, i32 1, metadata !30, null}
