; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@insertion_sort.str = internal unnamed_addr constant [15 x i8] c"insertion_sort\00" ; [#uses=1 type=[15 x i8]*]
@A = common global [48 x float] zeroinitializer, align 16 ; [#uses=0 type=[48 x float]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @insertion_sort([48 x float]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !1
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @insertion_sort.str) nounwind
  call void @llvm.dbg.value(metadata !{[48 x float]* %A}, i64 0, metadata !16), !dbg !24 ; [debug line = 11:28] [debug variable = A]
  br label %1, !dbg !25                           ; [debug line = 14:10]

; <label>:1                                       ; preds = %6, %0
  %i = phi i6 [ 1, %0 ], [ %i.1, %6 ]             ; [#uses=3 type=i6]
  %i.cast = zext i6 %i to i7, !dbg !25            ; [#uses=1 type=i7] [debug line = 14:10]
  %exitcond = icmp eq i6 %i, -16, !dbg !25        ; [#uses=1 type=i1] [debug line = 14:10]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 47, i64 47, i64 47) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %7, label %.preheader.preheader, !dbg !25 ; [debug line = 14:10]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !28                  ; [debug line = 16:13]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %j.0.in = phi i7 [ %j, %._crit_edge ], [ %i.cast, %.preheader.preheader ] ; [#uses=3 type=i7]
  %j.0.in.cast = sext i7 %j.0.in to i32, !dbg !28 ; [#uses=1 type=i32] [debug line = 16:13]
  %j = add i7 %j.0.in, -1, !dbg !28               ; [#uses=2 type=i7] [debug line = 16:13]
  %j.cast = sext i7 %j to i32, !dbg !28           ; [#uses=1 type=i32] [debug line = 16:13]
  call void @llvm.dbg.value(metadata !{i7 %j}, i64 0, metadata !31), !dbg !28 ; [debug line = 16:13] [debug variable = j]
  %tmp = icmp sgt i7 %j.0.in, 0, !dbg !28         ; [#uses=1 type=i1] [debug line = 16:13]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 47, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %6, !dbg !28        ; [debug line = 16:13]

; <label>:4                                       ; preds = %.preheader
  %tmp.1 = zext i32 %j.cast to i64, !dbg !33      ; [#uses=1 type=i64] [debug line = 18:13]
  %A.addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp.1, !dbg !33 ; [#uses=2 type=float*] [debug line = 18:13]
  %temp = load float* %A.addr, align 4, !dbg !33  ; [#uses=3 type=float] [debug line = 18:13]
  %tmp.2 = zext i32 %j.0.in.cast to i64, !dbg !33 ; [#uses=1 type=i64] [debug line = 18:13]
  %A.addr.1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp.2, !dbg !33 ; [#uses=2 type=float*] [debug line = 18:13]
  %A.load.1 = load float* %A.addr.1, align 4, !dbg !33 ; [#uses=3 type=float] [debug line = 18:13]
  %temp_to_int = bitcast float %temp to i32       ; [#uses=2 type=i32]
  %tmp.3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.4 = trunc i32 %temp_to_int to i23          ; [#uses=1 type=i23]
  %A.load.1_to_int = bitcast float %A.load.1 to i32 ; [#uses=2 type=i32]
  %tmp.5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A.load.1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.6 = trunc i32 %A.load.1_to_int to i23      ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.3, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.4, 0                 ; [#uses=1 type=i1]
  %tmp.7 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp.5, -1                ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp.6, 0                ; [#uses=1 type=i1]
  %tmp.8 = or i1 %notrhs2, %notlhs1               ; [#uses=1 type=i1]
  %tmp.9 = and i1 %tmp.7, %tmp.8                  ; [#uses=1 type=i1]
  %tmp.10 = fcmp ogt float %temp, %A.load.1, !dbg !33 ; [#uses=1 type=i1] [debug line = 18:13]
  %tmp.11 = and i1 %tmp.9, %tmp.10, !dbg !33      ; [#uses=1 type=i1] [debug line = 18:13]
  br i1 %tmp.11, label %5, label %._crit_edge, !dbg !33 ; [debug line = 18:13]

; <label>:5                                       ; preds = %4
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !35), !dbg !37 ; [debug line = 21:34] [debug variable = temp]
  store float %A.load.1, float* %A.addr, align 4, !dbg !38 ; [debug line = 22:17]
  store float %temp, float* %A.addr.1, align 4, !dbg !39 ; [debug line = 23:17]
  br label %._crit_edge, !dbg !40                 ; [debug line = 24:13]

._crit_edge:                                      ; preds = %5, %4
  br label %.preheader, !dbg !41                  ; [debug line = 16:30]

; <label>:6                                       ; preds = %.preheader
  %i.1 = add i6 %i, 1, !dbg !42                   ; [#uses=1 type=i6] [debug line = 14:58]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !43), !dbg !42 ; [debug line = 14:58] [debug variable = i]
  br label %1, !dbg !42                           ; [debug line = 14:58]

; <label>:7                                       ; preds = %1
  ret void, !dbg !44                              ; [debug line = 27:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}
!llvm.dbg.cu = !{!7}

!0 = metadata !{metadata !1, [48 x float]* @A}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"A", metadata !5, metadata !"float", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 47, i32 1}
!7 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/insertion_sort.pragma.2.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !8} ; [ DW_TAG_compile_unit ]
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786484, i32 0, null, metadata !"A", metadata !"A", metadata !"", metadata !11, i32 8, metadata !12, i32 0, i32 1, [48 x float]* @A} ; [ DW_TAG_variable ]
!11 = metadata !{i32 786473, metadata !"./insertion_sort.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!12 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !13, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!13 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 47}       ; [ DW_TAG_subrange_type ]
!16 = metadata !{i32 786689, metadata !17, metadata !"A", null, i32 11, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"insertion_sort", metadata !"insertion_sort", metadata !"", metadata !18, i32 11, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 12} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{i32 11, i32 28, metadata !17, null}
!25 = metadata !{i32 14, i32 10, metadata !26, null}
!26 = metadata !{i32 786443, metadata !27, i32 14, i32 6, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 786443, metadata !17, i32 12, i32 2, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 16, i32 13, metadata !29, null}
!29 = metadata !{i32 786443, metadata !30, i32 16, i32 9, metadata !18, i32 3} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 786443, metadata !26, i32 15, i32 6, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 786688, metadata !27, metadata !"j", metadata !18, i32 13, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!33 = metadata !{i32 18, i32 13, metadata !34, null}
!34 = metadata !{i32 786443, metadata !29, i32 17, i32 9, metadata !18, i32 4} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786688, metadata !36, metadata !"temp", metadata !18, i32 21, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 786443, metadata !34, i32 19, i32 13, metadata !18, i32 5} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 21, i32 34, metadata !36, null}
!38 = metadata !{i32 22, i32 17, metadata !36, null}
!39 = metadata !{i32 23, i32 17, metadata !36, null}
!40 = metadata !{i32 24, i32 13, metadata !36, null}
!41 = metadata !{i32 16, i32 30, metadata !29, null}
!42 = metadata !{i32 14, i32 58, metadata !26, null}
!43 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !18, i32 13, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 27, i32 2, metadata !27, null}
