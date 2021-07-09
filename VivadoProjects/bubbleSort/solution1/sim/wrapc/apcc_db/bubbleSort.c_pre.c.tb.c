/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void bubbleAlgorithm(signed short *llvm_cbe_A);
signed short AESL_ORIG_DUT_bubbleSort(signed short llvm_cbe_dataIn,  char llvm_cbe_posOutData);


/* Global Variable Definitions and Initialization */
static signed short *aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_ptr;
static signed short aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_A[256];
static unsigned int aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_flagFill;
static unsigned int aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_count;


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void bubbleAlgorithm(signed short *llvm_cbe_A) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_indvars_2e_iv_count = 0;
  unsigned int llvm_cbe_indvars_2e_iv;
  unsigned int llvm_cbe_indvars_2e_iv__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned int llvm_cbe_storemerge12;
  unsigned int llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  unsigned long long llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  signed short *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  unsigned short llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned long long llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  signed short *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  unsigned short llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_indvars_2e_iv_2e_next_count = 0;
  unsigned int llvm_cbe_indvars_2e_iv_2e_next;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @bubbleAlgorithm\n");
  llvm_cbe_indvars_2e_iv__PHI_TEMPORARY = (unsigned int )255u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%indvars.iv = phi i32 [ 255, %%0 ], [ %%indvars.iv.next, %%._crit_edge  for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_indvars_2e_iv_count);
  llvm_cbe_indvars_2e_iv = (unsigned int )llvm_cbe_indvars_2e_iv__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nindvars.iv = 0x%X",llvm_cbe_indvars_2e_iv);
printf("\n = 0x%X",255u);
printf("\nindvars.iv.next = 0x%X",llvm_cbe_indvars_2e_iv_2e_next);
}
  if ((((signed int )llvm_cbe_indvars_2e_iv) > ((signed int )0u))) {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge_2e_thread;
  }

llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%indvars.iv.next = add i32 %%indvars.iv, -1, !dbg !4 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_indvars_2e_iv_2e_next_count);
  llvm_cbe_indvars_2e_iv_2e_next = (unsigned int )((unsigned int )(llvm_cbe_indvars_2e_iv&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\nindvars.iv.next = 0x%X\n", ((unsigned int )(llvm_cbe_indvars_2e_iv_2e_next&4294967295ull)));
  if ((((signed int )llvm_cbe_indvars_2e_iv) > ((signed int )0u))) {
    llvm_cbe_indvars_2e_iv__PHI_TEMPORARY = (unsigned int )llvm_cbe_indvars_2e_iv_2e_next;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e__crit_edge_2e_thread;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i32 [ %%5, %%11 ], [ 0, %%.preheader  for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned int )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",llvm_cbe_tmp__4);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%storemerge12 to i64, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_23_count);
  llvm_cbe_tmp__1 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i16* %%A, i64 %%2, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__2 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i16* %%3, align 2, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__3 = (unsigned short )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add nsw i32 %%storemerge12, 1, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__4 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__4&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sext i32 %%5 to i64, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__5 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i16* %%A, i64 %%6, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__6 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__5))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__5));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i16* %%7, align 2, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__7 = (unsigned short )*llvm_cbe_tmp__6;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
  if ((((signed short )llvm_cbe_tmp__3) > ((signed short )llvm_cbe_tmp__7))) {
    goto llvm_cbe_tmp__8;
  } else {
    goto llvm_cbe_tmp__9;
  }

llvm_cbe_tmp__9:
  if (((llvm_cbe_tmp__4&4294967295U) == (llvm_cbe_indvars_2e_iv&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__4;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

llvm_cbe_tmp__8:
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%8, i16* %%3, align 2, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_34_count);
  *llvm_cbe_tmp__2 = llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%4, i16* %%7, align 2, !dbg !3 for 0x%I64xth hint within @bubbleAlgorithm  --> \n", ++aesl_llvm_cbe_35_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
  goto llvm_cbe_tmp__9;

  } while (1); /* end of syntactic loop '.lr.ph' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe__2e__crit_edge_2e_thread:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @bubbleAlgorithm}\n");
  return;
}


signed short AESL_ORIG_DUT_bubbleSort(signed short llvm_cbe_dataIn,  char llvm_cbe_posOutData) {
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  signed short *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned long long llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  signed short *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  signed short *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  unsigned short llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned short llvm_cbe_storemerge;
  unsigned short llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @AESL_ORIG_DUT_bubbleSort\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* @aesl_internal_AESL_ORIG_DUT_bubbleSort.count, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__10 = (unsigned int )*(&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_count);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
  if ((((signed int )llvm_cbe_tmp__10) < ((signed int )256u))) {
    goto llvm_cbe_tmp__19;
  } else {
    goto llvm_cbe_tmp__20;
  }

llvm_cbe_tmp__19:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sext i32 %%1 to i64, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__11 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [256 x i16]* @aesl_internal_AESL_ORIG_DUT_bubbleSort.A, i64 0, i64 %%4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__12 = (signed short *)(&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_A[(((signed long long )llvm_cbe_tmp__11))
#ifdef AESL_BC_SIM
 % 256
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__11) < 256 && "Write access out of array 'aesl_internal_AESL_ORIG_DUT_bubbleSort.A' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%dataIn, i16* %%5, align 2, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_66_count);
  *llvm_cbe_tmp__12 = llvm_cbe_dataIn;
if (AESL_DEBUG_TRACE)
printf("\ndataIn = 0x%X\n", llvm_cbe_dataIn);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add nsw i32 %%1, 1, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__13 = (unsigned int )((unsigned int )(llvm_cbe_tmp__10&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__13&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%6, i32* @aesl_internal_AESL_ORIG_DUT_bubbleSort.count, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_68_count);
  *(&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_count) = llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
  goto llvm_cbe_tmp__21;

llvm_cbe_tmp__20:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* @aesl_internal_AESL_ORIG_DUT_bubbleSort.flagFill, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__14 = (unsigned int )*(&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_flagFill);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
  if (((llvm_cbe_tmp__14&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__22;
  } else {
    goto llvm_cbe_tmp__23;
  }

llvm_cbe_tmp__22:
if (AESL_DEBUG_TRACE)
printf("\n  store i16* getelementptr inbounds ([256 x i16]* @aesl_internal_AESL_ORIG_DUT_bubbleSort.A, i64 0, i64 0), i16** @aesl_internal_AESL_ORIG_DUT_bubbleSort.ptr, align 8, !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_73_count);
  *(&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_ptr) = (signed short *)((&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_A[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 256
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @bubbleAlgorithm(i16* getelementptr inbounds ([256 x i16]* @aesl_internal_AESL_ORIG_DUT_bubbleSort.A, i64 0, i64 0)), !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_74_count);
   /*tail*/ bubbleAlgorithm((signed short *)((&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_A[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 256
#endif
])));
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* @aesl_internal_AESL_ORIG_DUT_bubbleSort.flagFill, align 4, !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_75_count);
  *(&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_flagFill) = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__23;

llvm_cbe_tmp__23:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sext i8 %%posOutData to i64, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__15 = (unsigned long long )((signed long long )( char )llvm_cbe_posOutData);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i16** @aesl_internal_AESL_ORIG_DUT_bubbleSort.ptr, align 8, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__16 = (signed short *)*(&aesl_internal_AESL_ORIG_DUT_bubbleSort_OC_ptr);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i16* %%13, i64 %%12, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__17 = (signed short *)(&llvm_cbe_tmp__16[(((signed long long )llvm_cbe_tmp__15))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__15));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i16* %%14, align 2, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__18 = (unsigned short )*llvm_cbe_tmp__17;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__18;   /* for PHI node */
  goto llvm_cbe_tmp__21;

llvm_cbe_tmp__21:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i16 [ 0, %%3 ], [ %%15, %%11  for 0x%I64xth hint within @AESL_ORIG_DUT_bubbleSort  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned short )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",((unsigned short )0));
printf("\n = 0x%X",llvm_cbe_tmp__18);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @AESL_ORIG_DUT_bubbleSort}\n");
  return llvm_cbe_storemerge;
}

