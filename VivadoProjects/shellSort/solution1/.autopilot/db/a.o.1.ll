; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/shellSort/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shellSort.str = internal unnamed_addr constant [10 x i8] c"shellSort\00" ; [#uses=1 type=[10 x i8]*]
@A = common global [48 x float] zeroinitializer, align 16 ; [#uses=0 type=[48 x float]*]

; [#uses=1]
define internal fastcc void @swap(float* %A, i32 %i, i32 %j) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float* %A}, i64 0, metadata !27), !dbg !28 ; [debug line = 43:18] [debug variable = A]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !29), !dbg !30 ; [debug line = 43:29] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !31), !dbg !32 ; [debug line = 43:40] [debug variable = j]
  %tmp = zext i32 %i to i64, !dbg !33             ; [#uses=1 type=i64] [debug line = 46:5]
  %A.addr = getelementptr inbounds float* %A, i64 %tmp, !dbg !33 ; [#uses=2 type=float*] [debug line = 46:5]
  %temp = load float* %A.addr, align 4, !dbg !33  ; [#uses=2 type=float] [debug line = 46:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %temp) nounwind
  call void @llvm.dbg.value(metadata !{float %temp}, i64 0, metadata !35), !dbg !33 ; [debug line = 46:5] [debug variable = temp]
  %tmp.1 = sext i32 %j to i64, !dbg !36           ; [#uses=1 type=i64] [debug line = 47:5]
  %A.addr.1 = getelementptr inbounds float* %A, i64 %tmp.1, !dbg !36 ; [#uses=2 type=float*] [debug line = 47:5]
  %A.load = load float* %A.addr.1, align 4, !dbg !36 ; [#uses=2 type=float] [debug line = 47:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load) nounwind
  store float %A.load, float* %A.addr, align 4, !dbg !36 ; [debug line = 47:5]
  store float %temp, float* %A.addr.1, align 4, !dbg !37 ; [debug line = 48:5]
  ret void, !dbg !38                              ; [debug line = 49:1]
}

; [#uses=0]
define void @shellSort(float* %A) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @shellSort.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %A}, i64 0, metadata !39), !dbg !40 ; [debug line = 50:22] [debug variable = A]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %A, i32 48), !dbg !41 ; [debug line = 51:2]
  br label %.backedge, !dbg !43                   ; [debug line = 56:10]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %i = phi i32 [ 0, %0 ], [ %i.0.be, %.backedge.backedge ] ; [#uses=4 type=i32]
  %tmp = icmp slt i32 %i, 48, !dbg !43            ; [#uses=1 type=i1] [debug line = 56:10]
  br i1 %tmp, label %1, label %4, !dbg !43        ; [debug line = 56:10]

; <label>:1                                       ; preds = %.backedge
  %tmp.2 = icmp eq i32 %i, 0, !dbg !45            ; [#uses=1 type=i1] [debug line = 58:9]
  %index = add nsw i32 %i, 1, !dbg !47            ; [#uses=1 type=i32] [debug line = 59:13]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !48), !dbg !47 ; [debug line = 59:13] [debug variable = index]
  %.i = select i1 %tmp.2, i32 %index, i32 %i, !dbg !45 ; [#uses=4 type=i32] [debug line = 58:9]
  %tmp.4 = sext i32 %.i to i64, !dbg !49          ; [#uses=1 type=i64] [debug line = 60:9]
  %A.addr = getelementptr inbounds float* %A, i64 %tmp.4, !dbg !49 ; [#uses=1 type=float*] [debug line = 60:9]
  %A.load = load float* %A.addr, align 4, !dbg !49 ; [#uses=2 type=float] [debug line = 60:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load) nounwind
  %index.1 = add nsw i32 %.i, -1, !dbg !49        ; [#uses=3 type=i32] [debug line = 60:9]
  %tmp.6 = sext i32 %index.1 to i64, !dbg !49     ; [#uses=1 type=i64] [debug line = 60:9]
  %A.addr.2 = getelementptr inbounds float* %A, i64 %tmp.6, !dbg !49 ; [#uses=1 type=float*] [debug line = 60:9]
  %A.load.1 = load float* %A.addr.2, align 4, !dbg !49 ; [#uses=2 type=float] [debug line = 60:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load.1) nounwind
  %tmp.7 = fcmp ult float %A.load, %A.load.1, !dbg !49 ; [#uses=1 type=i1] [debug line = 60:9]
  br i1 %tmp.7, label %3, label %2, !dbg !49      ; [debug line = 60:9]

; <label>:2                                       ; preds = %1
  %index.2 = add nsw i32 %.i, 1, !dbg !50         ; [#uses=1 type=i32] [debug line = 61:13]
  call void @llvm.dbg.value(metadata !{i32 %index.2}, i64 0, metadata !48), !dbg !50 ; [debug line = 61:13] [debug variable = index]
  br label %.backedge.backedge, !dbg !50          ; [debug line = 61:13]

.backedge.backedge:                               ; preds = %3, %2
  %i.0.be = phi i32 [ %index.2, %2 ], [ %index.1, %3 ] ; [#uses=1 type=i32]
  br label %.backedge

; <label>:3                                       ; preds = %1
  call fastcc void @swap(float* %A, i32 %.i, i32 %index.1), !dbg !51 ; [debug line = 63:13]
  call void @llvm.dbg.value(metadata !{i32 %index.1}, i64 0, metadata !48), !dbg !53 ; [debug line = 64:13] [debug variable = index]
  br label %.backedge.backedge

; <label>:4                                       ; preds = %.backedge
  ret void, !dbg !54                              ; [debug line = 68:1]
}

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/aaron/Desktop/git_article/vivadoProjects/shellSort/solution1/.autopilot/db/shellSort.pragma.2.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !20} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !17}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"swap", metadata !"swap", metadata !"", metadata !6, i32 43, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32)* @swap, null, null, metadata !15, i32 44} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"shellSort.c", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !13}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786454, null, metadata !"int32_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!14 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"shellSort", metadata !"shellSort", metadata !"", metadata !6, i32 50, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*)* @shellSort, null, null, metadata !15, i32 51} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !9}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786484, i32 0, null, metadata !"A", metadata !"A", metadata !"", metadata !23, i32 8, metadata !24, i32 0, i32 1, [48 x float]* @A} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786473, metadata !"./shellSort.h", metadata !"C:\5CUsers\5Caaron\5CDesktop\5Cgit_article\5CvivadoProjects", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !10, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 47}       ; [ DW_TAG_subrange_type ]
!27 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777259, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 43, i32 18, metadata !5, null}
!29 = metadata !{i32 786689, metadata !5, metadata !"i", metadata !6, i32 33554475, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 43, i32 29, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"j", metadata !6, i32 50331691, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 43, i32 40, metadata !5, null}
!33 = metadata !{i32 46, i32 5, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, i32 44, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786688, metadata !34, metadata !"temp", metadata !6, i32 45, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 47, i32 5, metadata !34, null}
!37 = metadata !{i32 48, i32 5, metadata !34, null}
!38 = metadata !{i32 49, i32 1, metadata !34, null}
!39 = metadata !{i32 786689, metadata !17, metadata !"A", metadata !6, i32 16777266, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 50, i32 22, metadata !17, null}
!41 = metadata !{i32 51, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !17, i32 51, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 56, i32 10, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 56, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 58, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !44, i32 57, i32 9, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 59, i32 13, metadata !46, null}
!48 = metadata !{i32 786688, metadata !42, metadata !"index", metadata !6, i32 52, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 60, i32 9, metadata !46, null}
!50 = metadata !{i32 61, i32 13, metadata !46, null}
!51 = metadata !{i32 63, i32 13, metadata !52, null}
!52 = metadata !{i32 786443, metadata !46, i32 62, i32 14, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 64, i32 13, metadata !52, null}
!54 = metadata !{i32 68, i32 1, metadata !42, null}
