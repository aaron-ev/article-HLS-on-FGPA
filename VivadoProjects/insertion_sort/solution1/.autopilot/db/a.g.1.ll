; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@insertion_sort.str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00" ; [#uses=1 type=[15 x i8]*]
@A = common global [48 x float] zeroinitializer, align 16 ; [#uses=0 type=[48 x float]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @insertion_sort(float* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %A}, i64 0, metadata !20), !dbg !21 ; [debug line = 11:28] [debug variable = A]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %A, i32 48), !dbg !22 ; [debug line = 12:3]
  br label %1, !dbg !24                           ; [debug line = 14:10]

; <label>:1                                       ; preds = %4, %0
  %i = phi i32 [ 1, %0 ], [ %i.1, %4 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 48, !dbg !24        ; [#uses=1 type=i1] [debug line = 14:10]
  br i1 %exitcond, label %5, label %.preheader.preheader, !dbg !24 ; [debug line = 14:10]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !26                  ; [debug line = 16:13]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %j.0.in = phi i32 [ %j, %._crit_edge ], [ %i, %.preheader.preheader ] ; [#uses=3 type=i32]
  %j = add nsw i32 %j.0.in, -1, !dbg !26          ; [#uses=2 type=i32] [debug line = 16:13]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !29), !dbg !26 ; [debug line = 16:13] [debug variable = j]
  %tmp = icmp sgt i32 %j.0.in, 0, !dbg !26        ; [#uses=1 type=i1] [debug line = 16:13]
  br i1 %tmp, label %2, label %4, !dbg !26        ; [debug line = 16:13]

; <label>:2                                       ; preds = %.preheader
  %tmp.1 = sext i32 %j to i64, !dbg !31           ; [#uses=1 type=i64] [debug line = 18:13]
  %A.addr = getelementptr inbounds float* %A, i64 %tmp.1, !dbg !31 ; [#uses=2 type=float*] [debug line = 18:13]
  %temp = load float* %A.addr, align 4, !dbg !31  ; [#uses=4 type=float] [debug line = 18:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp) nounwind
  %tmp.2 = sext i32 %j.0.in to i64, !dbg !31      ; [#uses=1 type=i64] [debug line = 18:13]
  %A.addr.1 = getelementptr inbounds float* %A, i64 %tmp.2, !dbg !31 ; [#uses=2 type=float*] [debug line = 18:13]
  %A.load.1 = load float* %A.addr.1, align 4, !dbg !31 ; [#uses=4 type=float] [debug line = 18:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load.1) nounwind
  %tmp.3 = fcmp ogt float %temp, %A.load.1, !dbg !31 ; [#uses=1 type=i1] [debug line = 18:13]
  br i1 %tmp.3, label %3, label %._crit_edge, !dbg !31 ; [debug line = 18:13]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp) nounwind
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !33), !dbg !35 ; [debug line = 21:34] [debug variable = temp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load.1) nounwind
  store float %A.load.1, float* %A.addr, align 4, !dbg !36 ; [debug line = 22:17]
  store float %temp, float* %A.addr.1, align 4, !dbg !37 ; [debug line = 23:17]
  br label %._crit_edge, !dbg !38                 ; [debug line = 24:13]

._crit_edge:                                      ; preds = %3, %2
  br label %.preheader, !dbg !39                  ; [debug line = 16:30]

; <label>:4                                       ; preds = %.preheader
  %i.1 = add nsw i32 %i, 1, !dbg !40              ; [#uses=1 type=i32] [debug line = 14:58]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !41), !dbg !40 ; [debug line = 14:58] [debug variable = i]
  br label %1, !dbg !40                           ; [debug line = 14:58]

; <label>:5                                       ; preds = %1
  ret void, !dbg !42                              ; [debug line = 27:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/insertion_sort.pragma.2.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"insertion_sort", metadata !"insertion_sort", metadata !"", metadata !6, i32 11, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*)* @insertion_sort, null, null, metadata !11, i32 12} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786484, i32 0, null, metadata !"A", metadata !"A", metadata !"", metadata !16, i32 8, metadata !17, i32 0, i32 1, [48 x float]* @A} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"./insertion_sort.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !10, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 47}       ; [ DW_TAG_subrange_type ]
!20 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 11, i32 28, metadata !5, null}
!22 = metadata !{i32 12, i32 3, metadata !23, null}
!23 = metadata !{i32 786443, metadata !5, i32 12, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 14, i32 10, metadata !25, null}
!25 = metadata !{i32 786443, metadata !23, i32 14, i32 6, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 16, i32 13, metadata !27, null}
!27 = metadata !{i32 786443, metadata !28, i32 16, i32 9, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 786443, metadata !25, i32 15, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !6, i32 13, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 18, i32 13, metadata !32, null}
!32 = metadata !{i32 786443, metadata !27, i32 17, i32 9, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 786688, metadata !34, metadata !"temp", metadata !6, i32 21, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!34 = metadata !{i32 786443, metadata !32, i32 19, i32 13, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 21, i32 34, metadata !34, null}
!36 = metadata !{i32 22, i32 17, metadata !34, null}
!37 = metadata !{i32 23, i32 17, metadata !34, null}
!38 = metadata !{i32 24, i32 13, metadata !34, null}
!39 = metadata !{i32 16, i32 30, metadata !27, null}
!40 = metadata !{i32 14, i32 58, metadata !25, null}
!41 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 13, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 27, i32 2, metadata !23, null}
