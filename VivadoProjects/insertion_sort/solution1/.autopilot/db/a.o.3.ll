; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@insertion_sort_str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00" ; [#uses=1 type=[15 x i8]*]
@A = common global [48 x float] zeroinitializer, align 16 ; [#uses=0 type=[48 x float]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @insertion_sort([48 x float]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !1
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort_str) nounwind
  call void @llvm.dbg.value(metadata !{[48 x float]* %A}, i64 0, metadata !7), !dbg !19 ; [debug line = 11:28] [debug variable = A]
  br label %1, !dbg !20                           ; [debug line = 14:10]

; <label>:1                                       ; preds = %4, %0
  %i = phi i6 [ 1, %0 ], [ %i_1, %4 ]             ; [#uses=3 type=i6]
  %i_cast = zext i6 %i to i7, !dbg !20            ; [#uses=1 type=i7] [debug line = 14:10]
  %exitcond = icmp eq i6 %i, -16, !dbg !20        ; [#uses=1 type=i1] [debug line = 14:10]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 47, i64 47, i64 47) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %.preheader, !dbg !20 ; [debug line = 14:10]

.preheader:                                       ; preds = %._crit_edge, %1
  %j_0_in = phi i7 [ %j, %._crit_edge ], [ %i_cast, %1 ] ; [#uses=3 type=i7]
  %j_0_in_cast = sext i7 %j_0_in to i32, !dbg !23 ; [#uses=1 type=i32] [debug line = 16:13]
  %j = add i7 %j_0_in, -1, !dbg !23               ; [#uses=2 type=i7] [debug line = 16:13]
  %j_cast = sext i7 %j to i32, !dbg !23           ; [#uses=1 type=i32] [debug line = 16:13]
  call void @llvm.dbg.value(metadata !{i7 %j}, i64 0, metadata !26), !dbg !23 ; [debug line = 16:13] [debug variable = j]
  %tmp = icmp sgt i7 %j_0_in, 0, !dbg !23         ; [#uses=1 type=i1] [debug line = 16:13]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 47, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %2, label %4, !dbg !23        ; [debug line = 16:13]

; <label>:2                                       ; preds = %.preheader
  %tmp_1 = zext i32 %j_cast to i64, !dbg !28      ; [#uses=1 type=i64] [debug line = 18:13]
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp_1, !dbg !28 ; [#uses=2 type=float*] [debug line = 18:13]
  %temp = load float* %A_addr, align 4, !dbg !28  ; [#uses=3 type=float] [debug line = 18:13]
  %tmp_2 = zext i32 %j_0_in_cast to i64, !dbg !28 ; [#uses=1 type=i64] [debug line = 18:13]
  %A_addr_1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_2, !dbg !28 ; [#uses=2 type=float*] [debug line = 18:13]
  %A_load_1 = load float* %A_addr_1, align 4, !dbg !28 ; [#uses=3 type=float] [debug line = 18:13]
  %temp_to_int = bitcast float %temp to i32       ; [#uses=2 type=i32]
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_4 = trunc i32 %temp_to_int to i23          ; [#uses=1 type=i23]
  %A_load_1_to_int = bitcast float %A_load_1 to i32 ; [#uses=2 type=i32]
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_6 = trunc i32 %A_load_1_to_int to i23      ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_3, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_4, 0                 ; [#uses=1 type=i1]
  %tmp_7 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp_5, -1                ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_6, 0                ; [#uses=1 type=i1]
  %tmp_8 = or i1 %notrhs2, %notlhs1               ; [#uses=1 type=i1]
  %tmp_9 = and i1 %tmp_7, %tmp_8                  ; [#uses=1 type=i1]
  %tmp_s = fcmp ogt float %temp, %A_load_1, !dbg !28 ; [#uses=1 type=i1] [debug line = 18:13]
  %tmp_10 = and i1 %tmp_9, %tmp_s, !dbg !28       ; [#uses=1 type=i1] [debug line = 18:13]
  br i1 %tmp_10, label %3, label %._crit_edge, !dbg !28 ; [debug line = 18:13]

; <label>:3                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !30), !dbg !32 ; [debug line = 21:34] [debug variable = temp]
  store float %A_load_1, float* %A_addr, align 4, !dbg !33 ; [debug line = 22:17]
  store float %temp, float* %A_addr_1, align 4, !dbg !34 ; [debug line = 23:17]
  br label %._crit_edge, !dbg !35                 ; [debug line = 24:13]

._crit_edge:                                      ; preds = %3, %2
  br label %.preheader, !dbg !36                  ; [debug line = 16:30]

; <label>:4                                       ; preds = %.preheader
  %i_1 = add i6 %i, 1, !dbg !37                   ; [#uses=1 type=i6] [debug line = 14:58]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !38), !dbg !37 ; [debug line = 14:58] [debug variable = i]
  br label %1, !dbg !37                           ; [debug line = 14:58]

; <label>:5                                       ; preds = %1
  ret void, !dbg !39                              ; [debug line = 27:2]
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
!7 = metadata !{i32 786689, metadata !8, metadata !"A", null, i32 11, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!8 = metadata !{i32 786478, i32 0, metadata !9, metadata !"insertion_sort", metadata !"insertion_sort", metadata !"", metadata !9, i32 11, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !14, i32 12} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!10 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{null, metadata !12}
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !13, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 47}       ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 11, i32 28, metadata !8, null}
!20 = metadata !{i32 14, i32 10, metadata !21, null}
!21 = metadata !{i32 786443, metadata !22, i32 14, i32 6, metadata !9, i32 1} ; [ DW_TAG_lexical_block ]
!22 = metadata !{i32 786443, metadata !8, i32 12, i32 2, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!23 = metadata !{i32 16, i32 13, metadata !24, null}
!24 = metadata !{i32 786443, metadata !25, i32 16, i32 9, metadata !9, i32 3} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 786443, metadata !21, i32 15, i32 6, metadata !9, i32 2} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 786688, metadata !22, metadata !"j", metadata !9, i32 13, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!27 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 18, i32 13, metadata !29, null}
!29 = metadata !{i32 786443, metadata !24, i32 17, i32 9, metadata !9, i32 4} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 786688, metadata !31, metadata !"temp", metadata !9, i32 21, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 786443, metadata !29, i32 19, i32 13, metadata !9, i32 5} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 21, i32 34, metadata !31, null}
!33 = metadata !{i32 22, i32 17, metadata !31, null}
!34 = metadata !{i32 23, i32 17, metadata !31, null}
!35 = metadata !{i32 24, i32 13, metadata !31, null}
!36 = metadata !{i32 16, i32 30, metadata !24, null}
!37 = metadata !{i32 14, i32 58, metadata !21, null}
!38 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !9, i32 13, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 27, i32 2, metadata !22, null}
