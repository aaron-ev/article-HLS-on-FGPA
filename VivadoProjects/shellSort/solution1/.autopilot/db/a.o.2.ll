; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/shellSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shellSort.str = internal unnamed_addr constant [10 x i8] c"shellSort\00" ; [#uses=1 type=[10 x i8]*]
@A = common global [48 x float] zeroinitializer, align 16 ; [#uses=0 type=[48 x float]*]

; [#uses=0]
define void @shellSort([48 x float]* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !1
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @shellSort.str) nounwind
  call void @llvm.dbg.value(metadata !{[48 x float]* %A}, i64 0, metadata !16), !dbg !24 ; [debug line = 50:22] [debug variable = A]
  br label %.backedge, !dbg !25                   ; [debug line = 56:10]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %i = phi i32 [ 0, %0 ], [ %i.be, %.backedge.backedge ] ; [#uses=4 type=i32]
  %tmp = icmp slt i32 %i, 48, !dbg !25            ; [#uses=1 type=i1] [debug line = 56:10]
  br i1 %tmp, label %1, label %4, !dbg !25        ; [debug line = 56:10]

; <label>:1                                       ; preds = %.backedge
  %tmp.2 = icmp eq i32 %i, 0, !dbg !28            ; [#uses=1 type=i1] [debug line = 58:9]
  %index = add nsw i32 %i, 1, !dbg !30            ; [#uses=1 type=i32] [debug line = 59:13]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !31), !dbg !30 ; [debug line = 59:13] [debug variable = index]
  %i.assign = select i1 %tmp.2, i32 %index, i32 %i, !dbg !28 ; [#uses=4 type=i32] [debug line = 58:9]
  %tmp.4 = sext i32 %i.assign to i64, !dbg !33    ; [#uses=1 type=i64] [debug line = 60:9]
  %A.addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp.4, !dbg !33 ; [#uses=1 type=float*] [debug line = 60:9]
  %A.load = load float* %A.addr, align 4, !dbg !33 ; [#uses=2 type=float] [debug line = 60:9]
  %j.assign = add nsw i32 %i.assign, -1, !dbg !33 ; [#uses=2 type=i32] [debug line = 60:9]
  %tmp.6 = sext i32 %j.assign to i64, !dbg !33    ; [#uses=1 type=i64] [debug line = 60:9]
  %A.addr.1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp.6, !dbg !33 ; [#uses=2 type=float*] [debug line = 60:9]
  %A.load.1 = load float* %A.addr.1, align 4, !dbg !33 ; [#uses=3 type=float] [debug line = 60:9]
  %A.load_to_int = bitcast float %A.load to i32   ; [#uses=2 type=i32]
  %tmp.1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A.load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.3 = trunc i32 %A.load_to_int to i23        ; [#uses=1 type=i23]
  %A.load.1_to_int = bitcast float %A.load.1 to i32 ; [#uses=2 type=i32]
  %tmp.5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A.load.1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.7 = trunc i32 %A.load.1_to_int to i23      ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.3, 0                 ; [#uses=1 type=i1]
  %tmp.8 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp.5, -1                ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp.7, 0                ; [#uses=1 type=i1]
  %tmp.9 = or i1 %notrhs2, %notlhs1               ; [#uses=1 type=i1]
  %tmp.10 = and i1 %tmp.8, %tmp.9                 ; [#uses=1 type=i1]
  %tmp.11 = fcmp oge float %A.load, %A.load.1, !dbg !33 ; [#uses=1 type=i1] [debug line = 60:9]
  %tmp.12 = and i1 %tmp.10, %tmp.11, !dbg !33     ; [#uses=1 type=i1] [debug line = 60:9]
  br i1 %tmp.12, label %2, label %3, !dbg !33     ; [debug line = 60:9]

; <label>:2                                       ; preds = %1
  %index.1 = add nsw i32 %i.assign, 1, !dbg !34   ; [#uses=1 type=i32] [debug line = 61:13]
  call void @llvm.dbg.value(metadata !{i32 %index.1}, i64 0, metadata !31), !dbg !34 ; [debug line = 61:13] [debug variable = index]
  br label %.backedge.backedge, !dbg !34          ; [debug line = 61:13]

; <label>:3                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{[48 x float]* %A}, i64 0, metadata !35) nounwind, !dbg !44 ; [debug line = 43:18@63:13] [debug variable = A]
  call void @llvm.dbg.value(metadata !{i32 %i.assign}, i64 0, metadata !45) nounwind, !dbg !46 ; [debug line = 43:29@63:13] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %j.assign}, i64 0, metadata !47) nounwind, !dbg !48 ; [debug line = 43:40@63:13] [debug variable = j]
  %tmp.i = zext i32 %i.assign to i64, !dbg !49    ; [#uses=1 type=i64] [debug line = 46:5@63:13]
  %A.addr.2 = getelementptr [48 x float]* %A, i64 0, i64 %tmp.i, !dbg !49 ; [#uses=2 type=float*] [debug line = 46:5@63:13]
  %temp = load float* %A.addr.2, align 4, !dbg !49 ; [#uses=1 type=float] [debug line = 46:5@63:13]
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !51) nounwind, !dbg !49 ; [debug line = 46:5@63:13] [debug variable = temp]
  store float %A.load.1, float* %A.addr.2, align 4, !dbg !52 ; [debug line = 47:5@63:13]
  store float %temp, float* %A.addr.1, align 4, !dbg !53 ; [debug line = 48:5@63:13]
  call void @llvm.dbg.value(metadata !{i32 %j.assign}, i64 0, metadata !31), !dbg !54 ; [debug line = 64:13] [debug variable = index]
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %3, %2
  %i.be = phi i32 [ %index.1, %2 ], [ %j.assign, %3 ] ; [#uses=1 type=i32]
  br label %.backedge

; <label>:4                                       ; preds = %.backedge
  ret void, !dbg !55                              ; [debug line = 68:1]
}

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

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
!7 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/aaron/Desktop/git_article/vivadoProjects/shellSort/solution1/.autopilot/db/shellSort.pragma.2.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !8} ; [ DW_TAG_compile_unit ]
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786484, i32 0, null, metadata !"A", metadata !"A", metadata !"", metadata !11, i32 8, metadata !12, i32 0, i32 1, [48 x float]* @A} ; [ DW_TAG_variable ]
!11 = metadata !{i32 786473, metadata !"./shellSort.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!12 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !13, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!13 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 47}       ; [ DW_TAG_subrange_type ]
!16 = metadata !{i32 786689, metadata !17, metadata !"A", null, i32 50, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"shellSort", metadata !"shellSort", metadata !"", metadata !18, i32 50, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 51} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"shellSort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{i32 50, i32 22, metadata !17, null}
!25 = metadata !{i32 56, i32 10, metadata !26, null}
!26 = metadata !{i32 786443, metadata !27, i32 56, i32 6, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 786443, metadata !17, i32 51, i32 1, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 58, i32 9, metadata !29, null}
!29 = metadata !{i32 786443, metadata !26, i32 57, i32 9, metadata !18, i32 3} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 59, i32 13, metadata !29, null}
!31 = metadata !{i32 786688, metadata !27, metadata !"index", metadata !18, i32 52, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!33 = metadata !{i32 60, i32 9, metadata !29, null}
!34 = metadata !{i32 61, i32 13, metadata !29, null}
!35 = metadata !{i32 786689, metadata !36, metadata !"A", null, i32 43, metadata !12, i32 0, metadata !42} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 786478, i32 0, metadata !18, metadata !"swap", metadata !"swap", metadata !"", metadata !18, i32 43, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 44} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !21, metadata !39, metadata !41}
!39 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !18, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786454, null, metadata !"int32_t", metadata !18, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 63, i32 13, metadata !43, null}
!43 = metadata !{i32 786443, metadata !29, i32 62, i32 14, metadata !18, i32 4} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 43, i32 18, metadata !36, metadata !42}
!45 = metadata !{i32 786689, metadata !36, metadata !"i", metadata !18, i32 33554475, metadata !39, i32 0, metadata !42} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 43, i32 29, metadata !36, metadata !42}
!47 = metadata !{i32 786689, metadata !36, metadata !"j", metadata !18, i32 50331691, metadata !41, i32 0, metadata !42} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 43, i32 40, metadata !36, metadata !42}
!49 = metadata !{i32 46, i32 5, metadata !50, metadata !42}
!50 = metadata !{i32 786443, metadata !36, i32 44, i32 1, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786688, metadata !50, metadata !"temp", metadata !18, i32 45, metadata !13, i32 0, metadata !42} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 47, i32 5, metadata !50, metadata !42}
!53 = metadata !{i32 48, i32 5, metadata !50, metadata !42}
!54 = metadata !{i32 64, i32 13, metadata !43, null}
!55 = metadata !{i32 68, i32 1, metadata !27, null}
