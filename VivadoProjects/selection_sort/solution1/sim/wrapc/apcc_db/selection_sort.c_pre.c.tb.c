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
void selectionAlgorithm(signed short *llvm_cbe_A);
signed short AESL_ORIG_DUT_selectionSort(signed short llvm_cbe_dataIn,  char llvm_cbe_posOutData);


/* Global Variable Definitions and Initialization */
static signed short *aesl_internal_AESL_ORIG_DUT_selectionSort_OC_ptr;
static signed short aesl_internal_AESL_ORIG_DUT_selectionSort_OC_A[256];
static unsigned int aesl_internal_AESL_ORIG_DUT_selectionSort_OC_flagFill;
static unsigned int aesl_internal_AESL_ORIG_DUT_selectionSort_OC_count;


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

void selectionAlgorithm(signed short *llvm_cbe_A) {
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
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned short llvm_cbe_storemerge5;
  unsigned short llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  unsigned long long llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  signed short *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned short llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge13_count = 0;
  unsigned short llvm_cbe_storemerge13;
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
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  unsigned long long llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  signed short *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned short llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge14_count = 0;
  unsigned short llvm_cbe_storemerge14;
  unsigned short llvm_cbe_storemerge14__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned int llvm_cbe_tmp__9;
  unsigned int llvm_cbe_tmp__9__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned int llvm_cbe_tmp__10;
  unsigned int llvm_cbe_tmp__10__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  signed short *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned short llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned int llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe__2e_2_count = 0;
  unsigned int llvm_cbe__2e_2;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned short llvm_cbe_storemerge1;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  unsigned long long llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  signed short *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned short llvm_cbe_tmp__18;
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
  static  unsigned long long aesl_llvm_cbe_exitcond6_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @selectionAlgorithm\n");
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
  goto llvm_cbe_tmp__19;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__19:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i16 [ 0, %%0 ], [ %%storemerge13, %%._crit_edge ], [ %%storemerge13, %%._crit_edge.thread  for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned short )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",((unsigned short )0));
printf("\nstoremerge13 = 0x%X",llvm_cbe_storemerge13);
printf("\nstoremerge13 = 0x%X",llvm_cbe_storemerge13);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i16 %%storemerge5 to i64, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__1 = (unsigned long long )((signed long long )(signed short )llvm_cbe_storemerge5);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i16* %%A, i64 %%2, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__2 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i16* %%3, align 2, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__3 = (unsigned short )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i16 %%4 to i32, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__4 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sext i16 %%storemerge5 to i32, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__5 = (unsigned int )((signed int )(signed short )llvm_cbe_storemerge5);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge13 = add i16 %%storemerge5, 1, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_storemerge13_count);
  llvm_cbe_storemerge13 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge5&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge13 = 0x%X\n", ((unsigned short )(llvm_cbe_storemerge13&65535ull)));
  if ((((signed short )llvm_cbe_storemerge13) < ((signed short )((unsigned short )256)))) {
    llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned short )llvm_cbe_storemerge13;   /* for PHI node */
    llvm_cbe_tmp__9__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__4;   /* for PHI node */
    llvm_cbe_tmp__10__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__5;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge_2e_thread;
  }

llvm_cbe__2e__crit_edge_2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = zext i32 %%6 to i64, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__6 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__5&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds i16* %%A, i64 %%8, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__7 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__6))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__6));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i16* %%9, align 2, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__8 = (unsigned short )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%10, i16* %%3, align 2, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_41_count);
  *llvm_cbe_tmp__2 = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%4, i16* %%9, align 2, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_42_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned short )llvm_cbe_storemerge13;   /* for PHI node */
  goto llvm_cbe_tmp__19;

llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = zext i32 %%. to i64, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__16 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe__2e_&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds i16* %%A, i64 %%19, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__17 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__16))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__16));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i16* %%20, align 2, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__18 = (unsigned short )*llvm_cbe_tmp__17;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%21, i16* %%3, align 2, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_77_count);
  *llvm_cbe_tmp__2 = llvm_cbe_tmp__18;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%4, i16* %%20, align 2, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_78_count);
  *llvm_cbe_tmp__17 = llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
  if (((llvm_cbe_storemerge13&65535U) == (((unsigned short )255)&65535U))) {
    goto llvm_cbe_tmp__20;
  } else {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned short )llvm_cbe_storemerge13;   /* for PHI node */
    goto llvm_cbe_tmp__19;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge14 = phi i16 [ %%storemerge1, %%.lr.ph ], [ %%storemerge13, %%1  for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_storemerge14_count);
  llvm_cbe_storemerge14 = (unsigned short )llvm_cbe_storemerge14__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge14 = 0x%X",llvm_cbe_storemerge14);
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\nstoremerge13 = 0x%X",llvm_cbe_storemerge13);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = phi i32 [ %%.2, %%.lr.ph ], [ %%5, %%1  for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__9 = (unsigned int )llvm_cbe_tmp__9__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__9);
printf("\n.2 = 0x%X",llvm_cbe__2e_2);
printf("\n = 0x%X",llvm_cbe_tmp__4);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = phi i32 [ %%., %%.lr.ph ], [ %%6, %%1  for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__10 = (unsigned int )llvm_cbe_tmp__10__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__10);
printf("\n. = 0x%X",llvm_cbe__2e_);
printf("\n = 0x%X",llvm_cbe_tmp__5);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = sext i16 %%storemerge14 to i64, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__11 = (unsigned long long )((signed long long )(signed short )llvm_cbe_storemerge14);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i16* %%A, i64 %%13, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_55_count);
  llvm_cbe_tmp__12 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__11))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i16* %%14, align 2, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__13 = (unsigned short )*llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = sext i16 %%15 to i32, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__14 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = sext i16 %%storemerge14 to i32, !dbg !5 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__15 = (unsigned int )((signed int )(signed short )llvm_cbe_storemerge14);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%17, i32 %%18, i32 %%12, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned int )(((((unsigned int )llvm_cbe_tmp__14&4294967295U) < ((unsigned int )llvm_cbe_tmp__9&4294967295U))) ? ((unsigned int )llvm_cbe_tmp__15) : ((unsigned int )llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
if (AESL_DEBUG_TRACE)
printf("\n  %%.2 = select i1 %%17, i32 %%16, i32 %%11, !dbg !3 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe__2e_2_count);
  llvm_cbe__2e_2 = (unsigned int )(((((unsigned int )llvm_cbe_tmp__14&4294967295U) < ((unsigned int )llvm_cbe_tmp__9&4294967295U))) ? ((unsigned int )llvm_cbe_tmp__14) : ((unsigned int )llvm_cbe_tmp__9));
if (AESL_DEBUG_TRACE)
printf("\n.2 = 0x%X\n", llvm_cbe__2e_2);
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = add i16 %%storemerge14, 1, !dbg !4 for 0x%I64xth hint within @selectionAlgorithm  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge14&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge1 = 0x%X\n", ((unsigned short )(llvm_cbe_storemerge1&65535ull)));
  if (((llvm_cbe_storemerge1&65535U) == (((unsigned short )256)&65535U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned short )llvm_cbe_storemerge1;   /* for PHI node */
    llvm_cbe_tmp__9__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_2;   /* for PHI node */
    llvm_cbe_tmp__10__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__20:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @selectionAlgorithm}\n");
  return;
}


signed short AESL_ORIG_DUT_selectionSort(signed short llvm_cbe_dataIn,  char llvm_cbe_posOutData) {
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  unsigned long long llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  signed short *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned int llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  unsigned long long llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  signed short *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  signed short *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  unsigned short llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned short llvm_cbe_storemerge;
  unsigned short llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @AESL_ORIG_DUT_selectionSort\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* @aesl_internal_AESL_ORIG_DUT_selectionSort.count, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__21 = (unsigned int )*(&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_count);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__21);
  if ((((signed int )llvm_cbe_tmp__21) < ((signed int )256u))) {
    goto llvm_cbe_tmp__30;
  } else {
    goto llvm_cbe_tmp__31;
  }

llvm_cbe_tmp__30:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sext i32 %%1 to i64, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__22 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [256 x i16]* @aesl_internal_AESL_ORIG_DUT_selectionSort.A, i64 0, i64 %%4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_97_count);
  llvm_cbe_tmp__23 = (signed short *)(&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_A[(((signed long long )llvm_cbe_tmp__22))
#ifdef AESL_BC_SIM
 % 256
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__22));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__22) < 256 && "Write access out of array 'aesl_internal_AESL_ORIG_DUT_selectionSort.A' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%dataIn, i16* %%5, align 2, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_98_count);
  *llvm_cbe_tmp__23 = llvm_cbe_dataIn;
if (AESL_DEBUG_TRACE)
printf("\ndataIn = 0x%X\n", llvm_cbe_dataIn);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add nsw i32 %%1, 1, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_tmp__21&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%6, i32* @aesl_internal_AESL_ORIG_DUT_selectionSort.count, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_100_count);
  *(&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_count) = llvm_cbe_tmp__24;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
  goto llvm_cbe_tmp__32;

llvm_cbe_tmp__31:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* @aesl_internal_AESL_ORIG_DUT_selectionSort.flagFill, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__25 = (unsigned int )*(&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_flagFill);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
  if (((llvm_cbe_tmp__25&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__33;
  } else {
    goto llvm_cbe_tmp__34;
  }

llvm_cbe_tmp__33:
if (AESL_DEBUG_TRACE)
printf("\n  store i16* getelementptr inbounds ([256 x i16]* @aesl_internal_AESL_ORIG_DUT_selectionSort.A, i64 0, i64 0), i16** @aesl_internal_AESL_ORIG_DUT_selectionSort.ptr, align 8, !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_105_count);
  *(&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_ptr) = (signed short *)((&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_A[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 256
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @selectionAlgorithm(i16* getelementptr inbounds ([256 x i16]* @aesl_internal_AESL_ORIG_DUT_selectionSort.A, i64 0, i64 0)), !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_106_count);
   /*tail*/ selectionAlgorithm((signed short *)((&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_A[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 256
#endif
])));
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* @aesl_internal_AESL_ORIG_DUT_selectionSort.flagFill, align 4, !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_107_count);
  *(&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_flagFill) = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__34;

llvm_cbe_tmp__34:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sext i8 %%posOutData to i64, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__26 = (unsigned long long )((signed long long )( char )llvm_cbe_posOutData);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i16** @aesl_internal_AESL_ORIG_DUT_selectionSort.ptr, align 8, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__27 = (signed short *)*(&aesl_internal_AESL_ORIG_DUT_selectionSort_OC_ptr);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i16* %%13, i64 %%12, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__28 = (signed short *)(&llvm_cbe_tmp__27[(((signed long long )llvm_cbe_tmp__26))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__26));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i16* %%14, align 2, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__29 = (unsigned short )*llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__29;   /* for PHI node */
  goto llvm_cbe_tmp__32;

llvm_cbe_tmp__32:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i16 [ 0, %%3 ], [ %%15, %%11  for 0x%I64xth hint within @AESL_ORIG_DUT_selectionSort  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned short )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",((unsigned short )0));
printf("\n = 0x%X",llvm_cbe_tmp__29);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @AESL_ORIG_DUT_selectionSort}\n");
  return llvm_cbe_storemerge;
}

