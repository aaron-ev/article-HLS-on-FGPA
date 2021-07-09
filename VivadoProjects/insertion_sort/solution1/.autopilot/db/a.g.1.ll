; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ptr = internal unnamed_addr global i16* null, align 8 ; [#uses=2 type=i16**]
@insertionSort.str = internal unnamed_addr constant [14 x i8] c"insertionSort\00" ; [#uses=1 type=[14 x i8]*]
@flagFill = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@count = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@A = internal global [256 x i16] zeroinitializer, align 16 ; [#uses=2 type=[256 x i16]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define signext i16 @insertionSort(i16 signext %dataIn, i8 signext %posOutData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @insertionSort.str) nounwind
  call void @llvm.dbg.value(metadata !{i16 %dataIn}, i64 0, metadata !37), !dbg !38 ; [debug line = 34:33] [debug variable = dataIn]
  call void @llvm.dbg.value(metadata !{i8 %posOutData}, i64 0, metadata !39), !dbg !40 ; [debug line = 34:45] [debug variable = posOutData]
  %count.load = load i32* @count, align 4, !dbg !41 ; [#uses=3 type=i32] [debug line = 40:2]
  %tmp = icmp slt i32 %count.load, 256, !dbg !41  ; [#uses=1 type=i1] [debug line = 40:2]
  br i1 %tmp, label %1, label %2, !dbg !41        ; [debug line = 40:2]

; <label>:1                                       ; preds = %0
  %tmp.1 = sext i32 %count.load to i64, !dbg !43  ; [#uses=1 type=i64] [debug line = 42:3]
  %A.addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp.1, !dbg !43 ; [#uses=1 type=i16*] [debug line = 42:3]
  store i16 %dataIn, i16* %A.addr, align 2, !dbg !43 ; [debug line = 42:3]
  %tmp.2 = add nsw i32 %count.load, 1, !dbg !45   ; [#uses=1 type=i32] [debug line = 43:3]
  store i32 %tmp.2, i32* @count, align 4, !dbg !45 ; [debug line = 43:3]
  br label %4, !dbg !46                           ; [debug line = 44:3]

; <label>:2                                       ; preds = %0
  %flagFill.load = load i32* @flagFill, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 48:3]
  %tmp.3 = icmp eq i32 %flagFill.load, 0, !dbg !47 ; [#uses=1 type=i1] [debug line = 48:3]
  br i1 %tmp.3, label %3, label %._crit_edge, !dbg !47 ; [debug line = 48:3]

; <label>:3                                       ; preds = %2
  store i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), i16** @ptr, align 8, !dbg !49 ; [debug line = 50:4]
  call fastcc void @insertionAlgorithm(i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0)), !dbg !51 ; [debug line = 51:4]
  store i32 1, i32* @flagFill, align 4, !dbg !52  ; [debug line = 52:4]
  br label %._crit_edge, !dbg !53                 ; [debug line = 53:3]

._crit_edge:                                      ; preds = %3, %2
  %tmp.4 = sext i8 %posOutData to i64, !dbg !54   ; [#uses=1 type=i64] [debug line = 55:2]
  %ptr.load = load i16** @ptr, align 8, !dbg !54  ; [#uses=1 type=i16*] [debug line = 55:2]
  %ptr.load.addr = getelementptr inbounds i16* %ptr.load, i64 %tmp.4, !dbg !54 ; [#uses=1 type=i16*] [debug line = 55:2]
  %ptr.load.1 = load i16* %ptr.load.addr, align 2, !dbg !54 ; [#uses=2 type=i16] [debug line = 55:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %ptr.load.1) nounwind
  br label %4, !dbg !54                           ; [debug line = 55:2]

; <label>:4                                       ; preds = %._crit_edge, %1
  %.0 = phi i16 [ 0, %1 ], [ %ptr.load.1, %._crit_edge ] ; [#uses=1 type=i16]
  ret i16 %.0, !dbg !55                           ; [debug line = 56:1]
}

; [#uses=1]
define internal fastcc void @insertionAlgorithm(i16* %A) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i16* %A}, i64 0, metadata !56), !dbg !57 ; [debug line = 15:34] [debug variable = A]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %A, i32 256), !dbg !58 ; [debug line = 16:3]
  br label %1, !dbg !60                           ; [debug line = 19:10]

; <label>:1                                       ; preds = %4, %0
  %i = phi i32 [ 1, %0 ], [ %i.1, %4 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 256, !dbg !60       ; [#uses=1 type=i1] [debug line = 19:10]
  br i1 %exitcond, label %5, label %.preheader.preheader, !dbg !60 ; [debug line = 19:10]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !62                  ; [debug line = 21:13]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %j.0.in = phi i32 [ %j, %._crit_edge ], [ %i, %.preheader.preheader ] ; [#uses=3 type=i32]
  %j = add nsw i32 %j.0.in, -1, !dbg !62          ; [#uses=2 type=i32] [debug line = 21:13]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !65), !dbg !62 ; [debug line = 21:13] [debug variable = j]
  %tmp = icmp sgt i32 %j.0.in, 0, !dbg !62        ; [#uses=1 type=i1] [debug line = 21:13]
  br i1 %tmp, label %2, label %4, !dbg !62        ; [debug line = 21:13]

; <label>:2                                       ; preds = %.preheader
  %tmp.5 = sext i32 %j to i64, !dbg !66           ; [#uses=1 type=i64] [debug line = 23:13]
  %A.addr = getelementptr inbounds i16* %A, i64 %tmp.5, !dbg !66 ; [#uses=2 type=i16*] [debug line = 23:13]
  %temp = load i16* %A.addr, align 2, !dbg !66    ; [#uses=4 type=i16] [debug line = 23:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %temp) nounwind
  %tmp.6 = sext i32 %j.0.in to i64, !dbg !66      ; [#uses=1 type=i64] [debug line = 23:13]
  %A.addr.1 = getelementptr inbounds i16* %A, i64 %tmp.6, !dbg !66 ; [#uses=2 type=i16*] [debug line = 23:13]
  %A.load.1 = load i16* %A.addr.1, align 2, !dbg !66 ; [#uses=4 type=i16] [debug line = 23:13]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %A.load.1) nounwind
  %tmp.7 = icmp sgt i16 %temp, %A.load.1, !dbg !66 ; [#uses=1 type=i1] [debug line = 23:13]
  br i1 %tmp.7, label %3, label %._crit_edge, !dbg !66 ; [debug line = 23:13]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %temp) nounwind
  call void @llvm.dbg.value(metadata !{i16 %temp}, i64 0, metadata !68), !dbg !70 ; [debug line = 26:34] [debug variable = temp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %A.load.1) nounwind
  store i16 %A.load.1, i16* %A.addr, align 2, !dbg !71 ; [debug line = 27:17]
  store i16 %temp, i16* %A.addr.1, align 2, !dbg !72 ; [debug line = 28:17]
  br label %._crit_edge, !dbg !73                 ; [debug line = 29:13]

._crit_edge:                                      ; preds = %3, %2
  br label %.preheader, !dbg !74                  ; [debug line = 21:30]

; <label>:4                                       ; preds = %.preheader
  %i.1 = add nsw i32 %i, 1, !dbg !75              ; [#uses=1 type=i32] [debug line = 19:59]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !76), !dbg !75 ; [debug line = 19:59] [debug variable = i]
  br label %1, !dbg !75                           ; [debug line = 19:59]

; <label>:5                                       ; preds = %1
  ret void, !dbg !77                              ; [debug line = 32:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=5]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/insertion_sort.pragma.2.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !22} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !18}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"printArray", metadata !"printArray", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"data_inp", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"insertionAlgorithm", metadata !"insertionAlgorithm", metadata !"", metadata !6, i32 15, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*)* @insertionAlgorithm, null, null, metadata !13, i32 16} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !9}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"insertionSort", metadata !"insertionSort", metadata !"", metadata !6, i32 34, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16, i8)* @insertionSort, null, null, metadata !13, i32 35} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{metadata !10, metadata !10, metadata !21}
!21 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !24, metadata !25, metadata !29, metadata !30}
!24 = metadata !{i32 786484, i32 0, metadata !18, metadata !"ptr", metadata !"ptr", metadata !"", metadata !6, i32 36, metadata !9, i32 1, i32 1, i16** @ptr} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, metadata !18, metadata !"A", metadata !"A", metadata !"", metadata !6, i32 37, metadata !26, i32 1, i32 1, [256 x i16]* @A} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 16, i32 0, i32 0, metadata !10, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 786484, i32 0, metadata !18, metadata !"flagFill", metadata !"flagFill", metadata !"", metadata !6, i32 38, metadata !12, i32 1, i32 1, i32* @flagFill} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, metadata !18, metadata !"count", metadata !"count", metadata !"", metadata !6, i32 39, metadata !12, i32 1, i32 1, i32* @count} ; [ DW_TAG_variable ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 15, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"return", metadata !35, metadata !"data_inp", i32 0, i32 15}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 1, i32 0}
!37 = metadata !{i32 786689, metadata !18, metadata !"dataIn", metadata !6, i32 16777250, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 34, i32 33, metadata !18, null}
!39 = metadata !{i32 786689, metadata !18, metadata !"posOutData", metadata !6, i32 33554466, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 34, i32 45, metadata !18, null}
!41 = metadata !{i32 40, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !18, i32 35, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 42, i32 3, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 41, i32 2, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 43, i32 3, metadata !44, null}
!46 = metadata !{i32 44, i32 3, metadata !44, null}
!47 = metadata !{i32 48, i32 3, metadata !48, null}
!48 = metadata !{i32 786443, metadata !42, i32 47, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 50, i32 4, metadata !50, null}
!50 = metadata !{i32 786443, metadata !48, i32 49, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 51, i32 4, metadata !50, null}
!52 = metadata !{i32 52, i32 4, metadata !50, null}
!53 = metadata !{i32 53, i32 3, metadata !50, null}
!54 = metadata !{i32 55, i32 2, metadata !42, null}
!55 = metadata !{i32 56, i32 1, metadata !42, null}
!56 = metadata !{i32 786689, metadata !15, metadata !"A", metadata !6, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 15, i32 34, metadata !15, null}
!58 = metadata !{i32 16, i32 3, metadata !59, null}
!59 = metadata !{i32 786443, metadata !15, i32 16, i32 2, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 19, i32 10, metadata !61, null}
!61 = metadata !{i32 786443, metadata !59, i32 19, i32 6, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 21, i32 13, metadata !63, null}
!63 = metadata !{i32 786443, metadata !64, i32 21, i32 9, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !61, i32 20, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786688, metadata !59, metadata !"j", metadata !6, i32 17, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 23, i32 13, metadata !67, null}
!67 = metadata !{i32 786443, metadata !63, i32 22, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 786688, metadata !69, metadata !"temp", metadata !6, i32 26, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786443, metadata !67, i32 24, i32 13, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 26, i32 34, metadata !69, null}
!71 = metadata !{i32 27, i32 17, metadata !69, null}
!72 = metadata !{i32 28, i32 17, metadata !69, null}
!73 = metadata !{i32 29, i32 13, metadata !69, null}
!74 = metadata !{i32 21, i32 30, metadata !63, null}
!75 = metadata !{i32 19, i32 59, metadata !61, null}
!76 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !6, i32 17, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 32, i32 2, metadata !59, null}
