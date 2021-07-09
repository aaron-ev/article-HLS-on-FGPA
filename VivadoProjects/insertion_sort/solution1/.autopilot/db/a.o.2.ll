; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ptr = internal unnamed_addr global i16* null, align 8 ; [#uses=2 type=i16**]
@insertionSort.str = internal unnamed_addr constant [14 x i8] c"insertionSort\00" ; [#uses=1 type=[14 x i8]*]
@flagFill = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@count = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@A = internal global [256 x i16] zeroinitializer, align 16 ; [#uses=4 type=[256 x i16]*]

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define signext i16 @insertionSort(i16 signext %dataIn, i8 signext %posOutData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData) nounwind, !map !27
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
  br label %10, !dbg !46                          ; [debug line = 44:3]

; <label>:2                                       ; preds = %0
  %flagFill.load = load i1* @flagFill, align 1    ; [#uses=1 type=i1]
  br i1 %flagFill.load, label %._crit_edge, label %3, !dbg !47 ; [debug line = 48:3]

; <label>:3                                       ; preds = %2
  store i16* getelementptr inbounds ([256 x i16]* @A, i64 0, i64 0), i16** @ptr, align 8, !dbg !49 ; [debug line = 50:4]
  br label %4, !dbg !51                           ; [debug line = 19:10@51:4]

; <label>:4                                       ; preds = %9, %3
  %i.i = phi i9 [ 1, %3 ], [ %i, %9 ]             ; [#uses=3 type=i9]
  %exitcond.i = icmp eq i9 %i.i, -256, !dbg !51   ; [#uses=1 type=i1] [debug line = 19:10@51:4]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 255, i64 255, i64 255) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %insertionAlgorithm.exit, label %.preheader.i.preheader, !dbg !51 ; [debug line = 19:10@51:4]

.preheader.i.preheader:                           ; preds = %4
  br label %.preheader.i, !dbg !58                ; [debug line = 21:13@51:4]

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i.preheader
  %j.0.in.i = phi i9 [ %j, %._crit_edge.i ], [ %i.i, %.preheader.i.preheader ] ; [#uses=3 type=i9]
  %j.0.in.i.cast = sext i9 %j.0.in.i to i32, !dbg !58 ; [#uses=1 type=i32] [debug line = 21:13@51:4]
  %j = add i9 %j.0.in.i, -1, !dbg !58             ; [#uses=2 type=i9] [debug line = 21:13@51:4]
  %j.cast = sext i9 %j to i32, !dbg !58           ; [#uses=1 type=i32] [debug line = 21:13@51:4]
  call void @llvm.dbg.value(metadata !{i9 %j}, i64 0, metadata !61) nounwind, !dbg !58 ; [debug line = 21:13@51:4] [debug variable = j]
  %tmp.i = icmp sgt i9 %j.0.in.i, 0, !dbg !58     ; [#uses=1 type=i1] [debug line = 21:13@51:4]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 255, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.i, label %7, label %9, !dbg !58      ; [debug line = 21:13@51:4]

; <label>:7                                       ; preds = %.preheader.i
  %tmp.5.i = zext i32 %j.cast to i64, !dbg !62    ; [#uses=1 type=i64] [debug line = 23:13@51:4]
  %A.addr.1 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp.5.i, !dbg !62 ; [#uses=2 type=i16*] [debug line = 23:13@51:4]
  %temp = load i16* %A.addr.1, align 2, !dbg !62  ; [#uses=2 type=i16] [debug line = 23:13@51:4]
  %tmp.6.i = zext i32 %j.0.in.i.cast to i64, !dbg !62 ; [#uses=1 type=i64] [debug line = 23:13@51:4]
  %A.addr.2 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp.6.i, !dbg !62 ; [#uses=2 type=i16*] [debug line = 23:13@51:4]
  %A.load.1 = load i16* %A.addr.2, align 2, !dbg !62 ; [#uses=2 type=i16] [debug line = 23:13@51:4]
  %tmp.7.i = icmp sgt i16 %temp, %A.load.1, !dbg !62 ; [#uses=1 type=i1] [debug line = 23:13@51:4]
  br i1 %tmp.7.i, label %8, label %._crit_edge.i, !dbg !62 ; [debug line = 23:13@51:4]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.value(metadata !{i16 %temp}, i64 0, metadata !64) nounwind, !dbg !66 ; [debug line = 26:34@51:4] [debug variable = temp]
  store i16 %A.load.1, i16* %A.addr.1, align 2, !dbg !67 ; [debug line = 27:17@51:4]
  store i16 %temp, i16* %A.addr.2, align 2, !dbg !68 ; [debug line = 28:17@51:4]
  br label %._crit_edge.i, !dbg !69               ; [debug line = 29:13@51:4]

._crit_edge.i:                                    ; preds = %8, %7
  br label %.preheader.i, !dbg !70                ; [debug line = 21:30@51:4]

; <label>:9                                       ; preds = %.preheader.i
  %i = add i9 %i.i, 1, !dbg !71                   ; [#uses=1 type=i9] [debug line = 19:59@51:4]
  call void @llvm.dbg.value(metadata !{i9 %i}, i64 0, metadata !72) nounwind, !dbg !71 ; [debug line = 19:59@51:4] [debug variable = i]
  br label %4, !dbg !71                           ; [debug line = 19:59@51:4]

insertionAlgorithm.exit:                          ; preds = %4
  store i1 true, i1* @flagFill, align 1, !dbg !73 ; [debug line = 52:4]
  br label %._crit_edge, !dbg !74                 ; [debug line = 53:3]

._crit_edge:                                      ; preds = %insertionAlgorithm.exit, %2
  %tmp.4 = sext i8 %posOutData to i64, !dbg !75   ; [#uses=1 type=i64] [debug line = 55:2]
  %ptr.load = load i16** @ptr, align 8, !dbg !75  ; [#uses=1 type=i16*] [debug line = 55:2]
  %ptr.load.addr = getelementptr inbounds i16* %ptr.load, i64 %tmp.4, !dbg !75 ; [#uses=1 type=i16*] [debug line = 55:2]
  %ptr.load.1 = load i16* %ptr.load.addr, align 2, !dbg !75 ; [#uses=1 type=i16] [debug line = 55:2]
  br label %10, !dbg !75                          ; [debug line = 55:2]

; <label>:10                                      ; preds = %._crit_edge, %1
  %.0 = phi i16 [ 0, %1 ], [ %ptr.load.1, %._crit_edge ] ; [#uses=1 type=i16]
  ret i16 %.0, !dbg !76                           ; [debug line = 56:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/aaron/Desktop/git_article/vivadoProjects/insertion_sort/solution1/.autopilot/db/insertion_sort.pragma.2.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !6, metadata !16, metadata !17}
!3 = metadata !{i32 786484, i32 0, null, metadata !"flagFill", metadata !"flagFill", metadata !"flagFill", metadata !4, i32 38, metadata !5, i32 1, i32 1, i1* @flagFill} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786473, metadata !"insertion_sort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 786484, i32 0, metadata !7, metadata !"ptr", metadata !"ptr", metadata !"", metadata !4, i32 36, metadata !15, i32 1, i32 1, i16** @ptr} ; [ DW_TAG_variable ]
!7 = metadata !{i32 786478, i32 0, metadata !4, metadata !"insertionSort", metadata !"insertionSort", metadata !"", metadata !4, i32 34, metadata !8, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i16, i8)* @insertionSort, null, null, metadata !13, i32 35} ; [ DW_TAG_subprogram ]
!8 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !9, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!9 = metadata !{metadata !10, metadata !10, metadata !12}
!10 = metadata !{i32 786454, null, metadata !"data_inp", metadata !4, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786484, i32 0, metadata !7, metadata !"count", metadata !"count", metadata !"", metadata !4, i32 39, metadata !5, i32 1, i32 1, i32* @count} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786484, i32 0, metadata !7, metadata !"A", metadata !"A", metadata !"", metadata !4, i32 37, metadata !18, i32 1, i32 1, [256 x i16]* @A} ; [ DW_TAG_variable ]
!18 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 16, i32 0, i32 0, metadata !10, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 15, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"dataIn", metadata !25, metadata !"short", i32 0, i32 15}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 7, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"posOutData", metadata !25, metadata !"char", i32 0, i32 7}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 15, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"return", metadata !35, metadata !"data_inp", i32 0, i32 15}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 1, i32 0}
!37 = metadata !{i32 786689, metadata !7, metadata !"dataIn", metadata !4, i32 16777250, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 34, i32 33, metadata !7, null}
!39 = metadata !{i32 786689, metadata !7, metadata !"posOutData", metadata !4, i32 33554466, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 34, i32 45, metadata !7, null}
!41 = metadata !{i32 40, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !7, i32 35, i32 1, metadata !4, i32 9} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 42, i32 3, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 41, i32 2, metadata !4, i32 10} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 43, i32 3, metadata !44, null}
!46 = metadata !{i32 44, i32 3, metadata !44, null}
!47 = metadata !{i32 48, i32 3, metadata !48, null}
!48 = metadata !{i32 786443, metadata !42, i32 47, i32 2, metadata !4, i32 11} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 50, i32 4, metadata !50, null}
!50 = metadata !{i32 786443, metadata !48, i32 49, i32 3, metadata !4, i32 12} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 19, i32 10, metadata !52, metadata !57}
!52 = metadata !{i32 786443, metadata !53, i32 19, i32 6, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !54, i32 16, i32 2, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786478, i32 0, metadata !4, metadata !"insertionAlgorithm", metadata !"insertionAlgorithm", metadata !"", metadata !4, i32 15, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 16} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !15}
!57 = metadata !{i32 51, i32 4, metadata !50, null}
!58 = metadata !{i32 21, i32 13, metadata !59, metadata !57}
!59 = metadata !{i32 786443, metadata !60, i32 21, i32 9, metadata !4, i32 6} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !52, i32 20, i32 6, metadata !4, i32 5} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786688, metadata !53, metadata !"j", metadata !4, i32 17, metadata !5, i32 0, metadata !57} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 23, i32 13, metadata !63, metadata !57}
!63 = metadata !{i32 786443, metadata !59, i32 22, i32 9, metadata !4, i32 7} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786688, metadata !65, metadata !"temp", metadata !4, i32 26, metadata !10, i32 0, metadata !57} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 786443, metadata !63, i32 24, i32 13, metadata !4, i32 8} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 26, i32 34, metadata !65, metadata !57}
!67 = metadata !{i32 27, i32 17, metadata !65, metadata !57}
!68 = metadata !{i32 28, i32 17, metadata !65, metadata !57}
!69 = metadata !{i32 29, i32 13, metadata !65, metadata !57}
!70 = metadata !{i32 21, i32 30, metadata !59, metadata !57}
!71 = metadata !{i32 19, i32 59, metadata !52, metadata !57}
!72 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !4, i32 17, metadata !5, i32 0, metadata !57} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 52, i32 4, metadata !50, null}
!74 = metadata !{i32 53, i32 3, metadata !50, null}
!75 = metadata !{i32 55, i32 2, metadata !42, null}
!76 = metadata !{i32 56, i32 1, metadata !42, null}
