; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/shellSort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shellSort_str = internal unnamed_addr constant [10 x i8] c"shellSort\00" ; [#uses=1 type=[10 x i8]*]
@A = common global [48 x float] zeroinitializer, align 16 ; [#uses=0 type=[48 x float]*]

; [#uses=0]
define void @shellSort([48 x float]* %A) nounwind uwtable {
  %index_3 = alloca i32                           ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %index_3}, metadata !7) ; [debug variable = index]
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !1
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @shellSort_str) nounwind
  call void @llvm.dbg.value(metadata !{[48 x float]* %A}, i64 0, metadata !18), !dbg !22 ; [debug line = 50:22] [debug variable = A]
  store i32 0, i32* %index_3
  br label %.backedge, !dbg !23                   ; [debug line = 56:10]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %index_3_load = load i32* %index_3, !dbg !25    ; [#uses=4 type=i32] [debug line = 59:13]
  %tmp = icmp slt i32 %index_3_load, 48, !dbg !23 ; [#uses=1 type=i1] [debug line = 56:10]
  br i1 %tmp, label %1, label %4, !dbg !23        ; [debug line = 56:10]

; <label>:1                                       ; preds = %.backedge
  %tmp_2 = icmp eq i32 %index_3_load, 0, !dbg !27 ; [#uses=1 type=i1] [debug line = 58:9]
  %index = add nsw i32 1, %index_3_load, !dbg !25 ; [#uses=1 type=i32] [debug line = 59:13]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !7), !dbg !25 ; [debug line = 59:13] [debug variable = index]
  %i_assign = select i1 %tmp_2, i32 %index, i32 %index_3_load, !dbg !27 ; [#uses=4 type=i32] [debug line = 58:9]
  %tmp_4 = sext i32 %i_assign to i64, !dbg !28    ; [#uses=1 type=i64] [debug line = 60:9]
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp_4, !dbg !28 ; [#uses=1 type=float*] [debug line = 60:9]
  %A_load = load float* %A_addr, align 4, !dbg !28 ; [#uses=2 type=float] [debug line = 60:9]
  %index_2 = add nsw i32 -1, %i_assign, !dbg !28  ; [#uses=2 type=i32] [debug line = 60:9]
  %tmp_6 = sext i32 %index_2 to i64, !dbg !28     ; [#uses=1 type=i64] [debug line = 60:9]
  %A_addr_1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_6, !dbg !28 ; [#uses=2 type=float*] [debug line = 60:9]
  %A_load_1 = load float* %A_addr_1, align 4, !dbg !28 ; [#uses=3 type=float] [debug line = 60:9]
  %A_load_to_int = bitcast float %A_load to i32   ; [#uses=2 type=i32]
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_3 = trunc i32 %A_load_to_int to i23        ; [#uses=1 type=i23]
  %A_load_1_to_int = bitcast float %A_load_1 to i32 ; [#uses=2 type=i32]
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_7 = trunc i32 %A_load_1_to_int to i23      ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_3, 0                 ; [#uses=1 type=i1]
  %tmp_8 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp_5, -1                ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_7, 0                ; [#uses=1 type=i1]
  %tmp_9 = or i1 %notrhs2, %notlhs1               ; [#uses=1 type=i1]
  %tmp_s = and i1 %tmp_8, %tmp_9                  ; [#uses=1 type=i1]
  %tmp_10 = fcmp oge float %A_load, %A_load_1, !dbg !28 ; [#uses=1 type=i1] [debug line = 60:9]
  %tmp_11 = and i1 %tmp_s, %tmp_10, !dbg !28      ; [#uses=1 type=i1] [debug line = 60:9]
  br i1 %tmp_11, label %2, label %3, !dbg !28     ; [debug line = 60:9]

; <label>:2                                       ; preds = %1
  %index_1 = add nsw i32 %i_assign, 1, !dbg !29   ; [#uses=1 type=i32] [debug line = 61:13]
  call void @llvm.dbg.value(metadata !{i32 %index_1}, i64 0, metadata !7), !dbg !29 ; [debug line = 61:13] [debug variable = index]
  store i32 %index_1, i32* %index_3, !dbg !29     ; [debug line = 61:13]
  br label %.backedge.backedge, !dbg !29          ; [debug line = 61:13]

; <label>:3                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{[48 x float]* %A}, i64 0, metadata !30) nounwind, !dbg !39 ; [debug line = 43:18@63:13] [debug variable = A]
  call void @llvm.dbg.value(metadata !{i32 %i_assign}, i64 0, metadata !40) nounwind, !dbg !41 ; [debug line = 43:29@63:13] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %index_2}, i64 0, metadata !42) nounwind, !dbg !43 ; [debug line = 43:40@63:13] [debug variable = j]
  %tmp_i = zext i32 %i_assign to i64, !dbg !44    ; [#uses=1 type=i64] [debug line = 46:5@63:13]
  %A_addr_2 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_i, !dbg !44 ; [#uses=2 type=float*] [debug line = 46:5@63:13]
  %temp = load float* %A_addr_2, align 4, !dbg !44 ; [#uses=1 type=float] [debug line = 46:5@63:13]
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !46) nounwind, !dbg !44 ; [debug line = 46:5@63:13] [debug variable = temp]
  store float %A_load_1, float* %A_addr_2, align 4, !dbg !47 ; [debug line = 47:5@63:13]
  store float %temp, float* %A_addr_1, align 4, !dbg !48 ; [debug line = 48:5@63:13]
  call void @llvm.dbg.value(metadata !{i32 %index_2}, i64 0, metadata !7), !dbg !49 ; [debug line = 64:13] [debug variable = index]
  store i32 %index_2, i32* %index_3, !dbg !49     ; [debug line = 64:13]
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %3, %2
  br label %.backedge

; <label>:4                                       ; preds = %.backedge
  ret void, !dbg !50                              ; [debug line = 68:1]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_5
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [48 x float]* @A}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"A", metadata !5, metadata !"float", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 47, i32 1}
!7 = metadata !{i32 786688, metadata !8, metadata !"index", metadata !10, i32 52, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!8 = metadata !{i32 786443, metadata !9, i32 51, i32 1, metadata !10, i32 1} ; [ DW_TAG_lexical_block ]
!9 = metadata !{i32 786478, i32 0, metadata !10, metadata !"shellSort", metadata !"shellSort", metadata !"", metadata !10, i32 50, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 51} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 786473, metadata !"shellSort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{null, metadata !13}
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786689, metadata !9, metadata !"A", null, i32 50, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !14, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 47}       ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 50, i32 22, metadata !9, null}
!23 = metadata !{i32 56, i32 10, metadata !24, null}
!24 = metadata !{i32 786443, metadata !8, i32 56, i32 6, metadata !10, i32 2} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 59, i32 13, metadata !26, null}
!26 = metadata !{i32 786443, metadata !24, i32 57, i32 9, metadata !10, i32 3} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 58, i32 9, metadata !26, null}
!28 = metadata !{i32 60, i32 9, metadata !26, null}
!29 = metadata !{i32 61, i32 13, metadata !26, null}
!30 = metadata !{i32 786689, metadata !31, metadata !"A", null, i32 43, metadata !19, i32 0, metadata !37} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 786478, i32 0, metadata !10, metadata !"swap", metadata !"swap", metadata !"", metadata !10, i32 43, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 44} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !13, metadata !34, metadata !36}
!34 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !10, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786454, null, metadata !"int32_t", metadata !10, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!37 = metadata !{i32 63, i32 13, metadata !38, null}
!38 = metadata !{i32 786443, metadata !26, i32 62, i32 14, metadata !10, i32 4} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 43, i32 18, metadata !31, metadata !37}
!40 = metadata !{i32 786689, metadata !31, metadata !"i", metadata !10, i32 33554475, metadata !34, i32 0, metadata !37} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 43, i32 29, metadata !31, metadata !37}
!42 = metadata !{i32 786689, metadata !31, metadata !"j", metadata !10, i32 50331691, metadata !36, i32 0, metadata !37} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 43, i32 40, metadata !31, metadata !37}
!44 = metadata !{i32 46, i32 5, metadata !45, metadata !37}
!45 = metadata !{i32 786443, metadata !31, i32 44, i32 1, metadata !10, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786688, metadata !45, metadata !"temp", metadata !10, i32 45, metadata !14, i32 0, metadata !37} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 47, i32 5, metadata !45, metadata !37}
!48 = metadata !{i32 48, i32 5, metadata !45, metadata !37}
!49 = metadata !{i32 64, i32 13, metadata !38, null}
!50 = metadata !{i32 68, i32 1, metadata !8, null}
