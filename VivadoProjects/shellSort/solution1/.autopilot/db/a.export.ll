; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/shellSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@shellSort_str = internal unnamed_addr constant [10 x i8] c"shellSort\00"
@A = common global [48 x float] zeroinitializer, align 16

define void @shellSort([48 x float]* %A) nounwind uwtable {
  %index_3 = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([48 x float]* %A) nounwind, !map !1
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @shellSort_str) nounwind
  store i32 0, i32* %index_3
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %0
  %index_3_load = load i32* %index_3
  %tmp = icmp slt i32 %index_3_load, 48
  br i1 %tmp, label %1, label %4

; <label>:1                                       ; preds = %.backedge
  %tmp_2 = icmp eq i32 %index_3_load, 0
  %index = add nsw i32 1, %index_3_load
  %i_assign = select i1 %tmp_2, i32 %index, i32 %index_3_load
  %tmp_4 = sext i32 %i_assign to i64
  %A_addr = getelementptr [48 x float]* %A, i64 0, i64 %tmp_4
  %A_load = load float* %A_addr, align 4
  %index_2 = add nsw i32 -1, %i_assign
  %tmp_6 = sext i32 %index_2 to i64
  %A_addr_1 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_6
  %A_load_1 = load float* %A_addr_1, align 4
  %A_load_to_int = bitcast float %A_load to i32
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_to_int, i32 23, i32 30)
  %tmp_3 = trunc i32 %A_load_to_int to i23
  %A_load_1_to_int = bitcast float %A_load_1 to i32
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %A_load_1_to_int, i32 23, i32 30)
  %tmp_7 = trunc i32 %A_load_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_1, -1
  %notrhs = icmp eq i23 %tmp_3, 0
  %tmp_8 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_5, -1
  %notrhs2 = icmp eq i23 %tmp_7, 0
  %tmp_9 = or i1 %notrhs2, %notlhs1
  %tmp_s = and i1 %tmp_8, %tmp_9
  %tmp_10 = fcmp oge float %A_load, %A_load_1
  %tmp_11 = and i1 %tmp_s, %tmp_10
  br i1 %tmp_11, label %2, label %3

; <label>:2                                       ; preds = %1
  %index_1 = add nsw i32 %i_assign, 1
  store i32 %index_1, i32* %index_3
  br label %.backedge.backedge

; <label>:3                                       ; preds = %1
  %tmp_i = zext i32 %i_assign to i64
  %A_addr_2 = getelementptr [48 x float]* %A, i64 0, i64 %tmp_i
  %temp = load float* %A_addr_2, align 4
  store float %A_load_1, float* %A_addr_2, align 4
  store float %temp, float* %A_addr_1, align 4
  store i32 %index_2, i32* %index_3
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %3, %2
  br label %.backedge

; <label>:4                                       ; preds = %.backedge
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i8
  ret i8 %empty_5
}

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
