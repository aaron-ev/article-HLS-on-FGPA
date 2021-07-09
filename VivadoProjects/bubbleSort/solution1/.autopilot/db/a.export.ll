; ModuleID = 'C:/Users/aaron/Desktop/git_article/vivadoProjects/bubbleSort/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ptr_index = internal global i1 false
@flagFill = internal unnamed_addr global i1 false
@count = internal unnamed_addr global i32 0, align 4
@bubbleSort_str = internal unnamed_addr constant [11 x i8] c"bubbleSort\00"
@A = internal global [256 x i16] zeroinitializer, align 16

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define signext i16 @bubbleSort(i16 signext %dataIn, i8 signext %posOutData) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %dataIn) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %posOutData) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @bubbleSort_str) nounwind
  %posOutData_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %posOutData) nounwind
  %dataIn_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %dataIn) nounwind
  %count_load = load i32* @count, align 4
  %tmp = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %count_load, i32 8, i32 31)
  %icmp = icmp slt i24 %tmp, 1
  br i1 %icmp, label %1, label %2

; <label>:1                                       ; preds = %0
  %tmp_1 = sext i32 %count_load to i64
  %A_addr = getelementptr inbounds [256 x i16]* @A, i64 0, i64 %tmp_1
  store i16 %dataIn_read, i16* %A_addr, align 2
  %tmp_2 = add nsw i32 %count_load, 1
  store i32 %tmp_2, i32* @count, align 4
  br label %6

; <label>:2                                       ; preds = %0
  %flagFill_load = load i1* @flagFill, align 1
  br i1 %flagFill_load, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %2, %5
  %indvars_iv_i = phi i9 [ %i, %5 ], [ 255, %2 ]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %indvars_iv_i, i32 8)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  br i1 %tmp_3, label %bubbleAlgorithm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader, %._crit_edge.i
  %j_i = phi i8 [ %j, %._crit_edge.i ], [ 0, %.preheader ]
  %j_i_cast = zext i8 %j_i to i9
  %exitcond_i = icmp eq i9 %j_i_cast, %indvars_iv_i
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 255, i64 0) nounwind
  %j = add i8 %j_i, 1
  br i1 %exitcond_i, label %5, label %3

; <label>:3                                       ; preds = %.preheader.i
  %tmp_5_i = zext i8 %j_i to i64
  %A_addr_1 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_5_i
  %temp = load i16* %A_addr_1, align 2
  %tmp_8_i = zext i8 %j to i64
  %A_addr_2 = getelementptr [256 x i16]* @A, i64 0, i64 %tmp_8_i
  %A_load_1 = load i16* %A_addr_2, align 2
  %tmp_9_i = icmp sgt i16 %temp, %A_load_1
  br i1 %tmp_9_i, label %4, label %._crit_edge.i

; <label>:4                                       ; preds = %3
  store i16 %A_load_1, i16* %A_addr_1, align 2
  store i16 %temp, i16* %A_addr_2, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %4, %3
  br label %.preheader.i

; <label>:5                                       ; preds = %.preheader.i
  %i = add i9 %indvars_iv_i, -1
  br label %.preheader

bubbleAlgorithm.exit:                             ; preds = %.preheader
  store i1 true, i1* @flagFill, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bubbleAlgorithm.exit, %2
  %mem_index_gep4_cast = sext i8 %posOutData_read to i11
  %adjSize = zext i11 %mem_index_gep4_cast to i64
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %posOutData_read, i32 7)
  %gepindex2 = select i1 %tmp_4, i64 255, i64 %adjSize
  %A_addr_3 = getelementptr [256 x i16]* @A, i64 0, i64 %gepindex2
  %A_load = load i16* %A_addr_3, align 2
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %1
  %p_0 = phi i16 [ 0, %1 ], [ %A_load, %._crit_edge ]
  ret i16 %p_0
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i24
  ret i24 %empty_5
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_6 = shl i9 1, %empty
  %empty_7 = and i9 %0, %empty_6
  %empty_8 = icmp ne i9 %empty_7, 0
  ret i1 %empty_8
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_9 = shl i8 1, %empty
  %empty_10 = and i8 %0, %empty_9
  %empty_11 = icmp ne i8 %empty_10, 0
  ret i1 %empty_11
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
