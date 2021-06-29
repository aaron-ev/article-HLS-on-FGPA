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
extern float A[48];

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void swap(float *llvm_cbe_A, signed int llvm_cbe_i, signed int llvm_cbe_j);
void heapSort_noRecurv(float *llvm_cbe_A);
void maxHeapify_noRecurv(float *llvm_cbe_A, signed int llvm_cbe_startA, signed int llvm_cbe_endA);


/* Global Variable Definitions and Initialization */
float A[48] __ATTRIBUTE_WEAK__;


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

void swap(float *llvm_cbe_A, signed int llvm_cbe_i, signed int llvm_cbe_j) {
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
  unsigned long long llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  float *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  float llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  unsigned long long llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  float *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  float llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  float llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @swap\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = zext i32 %%i to i64, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_12_count);
  llvm_cbe_tmp__1 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_i&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds float* %%A, i64 %%1, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_13_count);
  llvm_cbe_tmp__2 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load float* %%2, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__3 = (float )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__3, *(int*)(&llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = fptosi float %%3 to i32, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__4 = (unsigned int )((signed int )llvm_cbe_tmp__3&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i32 %%j to i64, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__5 = (unsigned long long )((signed long long )(signed int )llvm_cbe_j);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds float* %%A, i64 %%5, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__6 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__5))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__5));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load float* %%6, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__7 = (float )*llvm_cbe_tmp__6;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__7, *(int*)(&llvm_cbe_tmp__7));
if (AESL_DEBUG_TRACE)
printf("\n  store float %%7, float* %%2, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_21_count);
  *llvm_cbe_tmp__2 = llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = sitofp i32 %%4 to float, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_22_count);
  llvm_cbe_tmp__8 = (float )((float )(signed int )llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__8, *(int*)(&llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n  store float %%8, float* %%6, align 4, !dbg !3 for 0x%I64xth hint within @swap  --> \n", ++aesl_llvm_cbe_23_count);
  *llvm_cbe_tmp__6 = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__8);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @swap}\n");
  return;
}


void heapSort_noRecurv(float *llvm_cbe_A) {
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned int llvm_cbe_storemerge3;
  unsigned int llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned int llvm_cbe_storemerge12;
  unsigned int llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @heapSort_noRecurv\n");
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )23u;   /* for PHI node */
  goto llvm_cbe_tmp__11;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__11:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i32 [ 23, %%0 ], [ %%2, %%1  for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned int )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",23u);
printf("\n = 0x%X",llvm_cbe_tmp__9);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @maxHeapify_noRecurv(float* %%A, i32 %%storemerge3, i32 48), !dbg !3 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_38_count);
   /*tail*/ maxHeapify_noRecurv((float *)llvm_cbe_A, llvm_cbe_storemerge3, 48u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nArgument  = 0x%X",48u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = add nsw i32 %%storemerge3, -1, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__9&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge3) > ((signed int )0u))) {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__9;   /* for PHI node */
    goto llvm_cbe_tmp__11;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )47u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i32 [ %%4, %%.preheader ], [ 47, %%1  for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned int )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",llvm_cbe_tmp__10);
printf("\n = 0x%X",47u);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @swap(float* %%A, i32 %%storemerge12, i32 0), !dbg !3 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_50_count);
   /*tail*/ swap((float *)llvm_cbe_A, llvm_cbe_storemerge12, 0u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\nArgument  = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @maxHeapify_noRecurv(float* %%A, i32 0, i32 %%storemerge12), !dbg !3 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_51_count);
   /*tail*/ maxHeapify_noRecurv((float *)llvm_cbe_A, 0u, llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument storemerge12 = 0x%X",llvm_cbe_storemerge12);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = add nsw i32 %%storemerge12, -1, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge12) > ((signed int )0u))) {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__10;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe_tmp__12;
  }

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__12:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @heapSort_noRecurv}\n");
  return;
}


void maxHeapify_noRecurv(float *llvm_cbe_A, signed int llvm_cbe_startA, signed int llvm_cbe_endA) {
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned int llvm_cbe_tmp__13;
  unsigned int llvm_cbe_tmp__13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned int llvm_cbe_tmp__14;
  unsigned int llvm_cbe_tmp__14__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  unsigned long long llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  float *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  unsigned long long llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  float *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  float llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  unsigned int llvm_cbe_tmp__24;
  unsigned int llvm_cbe_tmp__24__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  float *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  float llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  float *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  float llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned int llvm_cbe_tmp__31;
  unsigned int llvm_cbe_tmp__31__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  unsigned int llvm_cbe_tmp__32;
  unsigned int llvm_cbe_tmp__32__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @maxHeapify_noRecurv\n");
  if (((llvm_cbe_endA&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__13__PHI_TEMPORARY = (unsigned int )llvm_cbe_startA;   /* for PHI node */
    llvm_cbe_tmp__14__PHI_TEMPORARY = (unsigned int )llvm_cbe_startA;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ %%35, %%33 ], [ 0, %%0  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",llvm_cbe_tmp__33);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = phi i32 [ %%34, %%33 ], [ %%startA, %%0  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__13 = (unsigned int )llvm_cbe_tmp__13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__13);
printf("\n = 0x%X",llvm_cbe_tmp__32);
printf("\nstartA = 0x%X",llvm_cbe_startA);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = phi i32 [ %%30, %%33 ], [ %%startA, %%0  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__14 = (unsigned int )llvm_cbe_tmp__14__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__14);
printf("\n = 0x%X",llvm_cbe_tmp__31);
printf("\nstartA = 0x%X",llvm_cbe_startA);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = shl nsw i32 %%3, 1, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__15 = (unsigned int )llvm_cbe_tmp__14 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = or i32 %%4, 1, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__16 = (unsigned int )llvm_cbe_tmp__15 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add nsw i32 %%4, 2, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_tmp__15&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__16&4294967295U) < ((unsigned int )llvm_cbe_endA&4294967295U))) {
    goto llvm_cbe_tmp__34;
  } else {
    llvm_cbe_tmp__24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__14;   /* for PHI node */
    goto llvm_cbe_tmp__35;
  }

llvm_cbe_tmp__36:
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = phi i32 [ %%30, %%32 ], [ %%2, %%29  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__32 = (unsigned int )llvm_cbe_tmp__32__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__32);
printf("\n = 0x%X",llvm_cbe_tmp__31);
printf("\n = 0x%X",llvm_cbe_tmp__13);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add nsw i32 %%storemerge1, 1, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__33 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__33&4294967295ull)));
  if (((llvm_cbe_tmp__33&4294967295U) == (llvm_cbe_endA&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__33;   /* for PHI node */
    llvm_cbe_tmp__13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__32;   /* for PHI node */
    llvm_cbe_tmp__14__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__31;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

llvm_cbe_tmp__37:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = phi i32 [ %%6, %%28 ], [ %%18, %%20 ], [ %%18, %%17  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__31 = (unsigned int )llvm_cbe_tmp__31__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__31);
printf("\n = 0x%X",llvm_cbe_tmp__17);
printf("\n = 0x%X",llvm_cbe_tmp__24);
printf("\n = 0x%X",llvm_cbe_tmp__24);
}
  if (((llvm_cbe_tmp__31&4294967295U) == (llvm_cbe_tmp__13&4294967295U))) {
    llvm_cbe_tmp__32__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__13;   /* for PHI node */
    goto llvm_cbe_tmp__36;
  } else {
    goto llvm_cbe_tmp__38;
  }

llvm_cbe_tmp__35:
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = phi i32 [ %%5, %%16 ], [ %%3, %%8 ], [ %%3, %%.lr.ph  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__24 = (unsigned int )llvm_cbe_tmp__24__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__24);
printf("\n = 0x%X",llvm_cbe_tmp__16);
printf("\n = 0x%X",llvm_cbe_tmp__14);
printf("\n = 0x%X",llvm_cbe_tmp__14);
}
  if ((((unsigned int )llvm_cbe_tmp__17&4294967295U) < ((unsigned int )llvm_cbe_endA&4294967295U))) {
    goto llvm_cbe_tmp__39;
  } else {
    llvm_cbe_tmp__31__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
    goto llvm_cbe_tmp__37;
  }

llvm_cbe_tmp__34:
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = sext i32 %%3 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__18 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds float* %%A, i64 %%9, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__19 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__18))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load float* %%10, align 4, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__20 = (float )*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = zext i32 %%5 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__21 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__16&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds float* %%A, i64 %%12, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__22 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__21))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__21));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load float* %%13, align 4, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__23 = (float )*llvm_cbe_tmp__22;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__23, *(int*)(&llvm_cbe_tmp__23));
  if ((llvm_fcmp_olt(llvm_cbe_tmp__20, llvm_cbe_tmp__23))) {
    goto llvm_cbe_tmp__40;
  } else {
    llvm_cbe_tmp__24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__14;   /* for PHI node */
    goto llvm_cbe_tmp__35;
  }

llvm_cbe_tmp__40:
  llvm_cbe_tmp__24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__16;   /* for PHI node */
  goto llvm_cbe_tmp__35;

llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = sext i32 %%18 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_126_count);
  llvm_cbe_tmp__25 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds float* %%A, i64 %%21, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_127_count);
  llvm_cbe_tmp__26 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load float* %%22, align 4, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_128_count);
  llvm_cbe_tmp__27 = (float )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__27, *(int*)(&llvm_cbe_tmp__27));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = zext i32 %%6 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__28 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__17&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds float* %%A, i64 %%24, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__29 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load float* %%25, align 4, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__30 = (float )*llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__30, *(int*)(&llvm_cbe_tmp__30));
  if ((llvm_fcmp_olt(llvm_cbe_tmp__27, llvm_cbe_tmp__30))) {
    goto llvm_cbe_tmp__41;
  } else {
    llvm_cbe_tmp__31__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
    goto llvm_cbe_tmp__37;
  }

llvm_cbe_tmp__41:
  llvm_cbe_tmp__31__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__17;   /* for PHI node */
  goto llvm_cbe_tmp__37;

llvm_cbe_tmp__38:
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @swap(float* %%A, i32 %%30, i32 %%2), !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_146_count);
   /*tail*/ swap((float *)llvm_cbe_A, llvm_cbe_tmp__31, llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__31);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__13);
}
  llvm_cbe_tmp__32__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__31;   /* for PHI node */
  goto llvm_cbe_tmp__36;

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @maxHeapify_noRecurv}\n");
  return;
}

