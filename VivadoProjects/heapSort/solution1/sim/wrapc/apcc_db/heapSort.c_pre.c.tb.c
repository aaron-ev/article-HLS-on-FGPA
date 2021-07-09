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
void heapSort_noRecurv(signed short *llvm_cbe_A);
void maxHeapify_noRecurv(signed short *llvm_cbe_A, signed short llvm_cbe_startA, signed short llvm_cbe_endA);
signed short AESL_ORIG_DUT_heapSort(signed short llvm_cbe_dataIn,  char llvm_cbe_posOutData);


/* Global Variable Definitions and Initialization */
static signed short *aesl_internal_AESL_ORIG_DUT_heapSort_OC_ptr;
static signed short aesl_internal_AESL_ORIG_DUT_heapSort_OC_A[256];
static unsigned int aesl_internal_AESL_ORIG_DUT_heapSort_OC_flagFill;
static unsigned int aesl_internal_AESL_ORIG_DUT_heapSort_OC_count;


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

void heapSort_noRecurv(signed short *llvm_cbe_A) {
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
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned short llvm_cbe_storemerge3;
  unsigned short llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  unsigned short llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned short llvm_cbe_storemerge12;
  unsigned short llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  unsigned short llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned long long llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  signed short *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned short llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned short llvm_cbe_tmp__6;
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
  static  unsigned long long aesl_llvm_cbe_52_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @heapSort_noRecurv\n");
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned short )((unsigned short )127);   /* for PHI node */
  goto llvm_cbe_tmp__7;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__7:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i16 [ 127, %%0 ], [ %%2, %%1  for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned short )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",((unsigned short )127));
printf("\n = 0x%X",llvm_cbe_tmp__1);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @maxHeapify_noRecurv(i16* %%A, i16 signext %%storemerge3, i16 signext 256), !dbg !3 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_18_count);
   /*tail*/ maxHeapify_noRecurv((signed short *)llvm_cbe_A, llvm_cbe_storemerge3, ((unsigned short )256));
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nArgument  = 0x%X",((unsigned short )256));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = add i16 %%storemerge3, -1, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__1 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge3&65535ull)) + ((unsigned short )(((unsigned short )-1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__1&65535ull)));
  if ((((signed short )llvm_cbe_tmp__1) > ((signed short )((unsigned short )-1)))) {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__1;   /* for PHI node */
    goto llvm_cbe_tmp__7;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned short )((unsigned short )255);   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i16 [ %%8, %%.preheader ], [ 255, %%1  for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned short )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",llvm_cbe_tmp__6);
printf("\n = 0x%X",((unsigned short )255));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i16* %%A, align 2, !dbg !3 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__2 = (unsigned short )*llvm_cbe_A;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i16 %%storemerge12 to i64, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__3 = (unsigned long long )((signed long long )(signed short )llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds i16* %%A, i64 %%5, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__4 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__3))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__3));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i16* %%6, align 2, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__5 = (unsigned short )*llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%7, i16* %%A, align 2, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_37_count);
  *llvm_cbe_A = llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%4, i16* %%6, align 2, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_38_count);
  *llvm_cbe_tmp__4 = llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @maxHeapify_noRecurv(i16* %%A, i16 signext 0, i16 signext %%storemerge12), !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_39_count);
   /*tail*/ maxHeapify_noRecurv((signed short *)llvm_cbe_A, ((unsigned short )0), llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned short )0));
printf("\nArgument storemerge12 = 0x%X",llvm_cbe_storemerge12);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add i16 %%storemerge12, -1, !dbg !4 for 0x%I64xth hint within @heapSort_noRecurv  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__6 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge12&65535ull)) + ((unsigned short )(((unsigned short )-1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__6&65535ull)));
  if ((((signed short )llvm_cbe_tmp__6) > ((signed short )((unsigned short )-1)))) {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__6;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe_tmp__8;
  }

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__8:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @heapSort_noRecurv}\n");
  return;
}


void maxHeapify_noRecurv(signed short *llvm_cbe_A, signed short llvm_cbe_startA, signed short llvm_cbe_endA) {
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
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned int llvm_cbe_tmp__9;
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
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned short llvm_cbe_tmp__11;
  unsigned short llvm_cbe_tmp__11__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned int llvm_cbe_tmp__12;
  unsigned int llvm_cbe_tmp__12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  unsigned short llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned short llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned short llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  unsigned short llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  unsigned long long llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  signed short *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  unsigned short llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned long long llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  signed short *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  unsigned short llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned int llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned int llvm_cbe_tmp__24;
  unsigned int llvm_cbe_tmp__24__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  signed short *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  unsigned short llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  signed short *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  unsigned short llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_1_count = 0;
  unsigned int llvm_cbe__2e_1;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned int llvm_cbe_tmp__32;
  unsigned int llvm_cbe_tmp__32__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  unsigned long long llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  signed short *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned short llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  unsigned long long llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  signed short *llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  unsigned short llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  unsigned short llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  unsigned short llvm_cbe_tmp__41;
  unsigned short llvm_cbe_tmp__41__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  unsigned int llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @maxHeapify_noRecurv\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = sext i16 %%startA to i32, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__9 = (unsigned int )((signed int )(signed short )llvm_cbe_startA);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
  if ((((signed short )llvm_cbe_endA) > ((signed short )((unsigned short )0)))) {
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sext i16 %%endA to i3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__10 = (unsigned int )((signed int )(signed short )llvm_cbe_endA);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__11__PHI_TEMPORARY = (unsigned short )llvm_cbe_startA;   /* for PHI node */
  llvm_cbe_tmp__12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__9;   /* for PHI node */
  goto llvm_cbe_tmp__43;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__43:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ 0, %%.lr.ph ], [ %%47, %%45  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__42);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = phi i16 [ %%startA, %%.lr.ph ], [ %%46, %%45  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__11 = (unsigned short )llvm_cbe_tmp__11__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__11);
printf("\nstartA = 0x%X",llvm_cbe_startA);
printf("\n = 0x%X",llvm_cbe_tmp__41);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = phi i32 [ %%1, %%.lr.ph ], [ %%34, %%45  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__12 = (unsigned int )llvm_cbe_tmp__12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__12);
printf("\n = 0x%X",llvm_cbe_tmp__9);
printf("\n = 0x%X",llvm_cbe_tmp__32);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = trunc i32 %%6 to i16, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__13 = (unsigned short )((unsigned short )llvm_cbe_tmp__12&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = shl i16 %%7, 1, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__14 = (unsigned short )((unsigned short )(llvm_cbe_tmp__13 << ((unsigned short )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = or i16 %%8, 1, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__15 = (unsigned short )((unsigned short )(llvm_cbe_tmp__14 | ((unsigned short )1)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = add i16 %%8, 2, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_97_count);
  llvm_cbe_tmp__16 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__14&65535ull)) + ((unsigned short )(((unsigned short )2)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__16&65535ull)));
  if ((((signed short )llvm_cbe_tmp__15) < ((signed short )llvm_cbe_endA))) {
    goto llvm_cbe_tmp__44;
  } else {
    llvm_cbe_tmp__24__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__12;   /* for PHI node */
    goto llvm_cbe_tmp__45;
  }

llvm_cbe_tmp__46:
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = phi i16 [ %%44, %%37 ], [ %%5, %%33  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__41 = (unsigned short )llvm_cbe_tmp__41__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__41);
printf("\n = 0x%X",llvm_cbe_tmp__40);
printf("\n = 0x%X",llvm_cbe_tmp__11);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = add nsw i32 %%storemerge2, 1, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__42 = (unsigned int )((unsigned int )(llvm_cbe_storemerge2&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__42&4294967295ull)));
  if (((llvm_cbe_tmp__42&4294967295U) == (llvm_cbe_tmp__10&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__42;   /* for PHI node */
    llvm_cbe_tmp__11__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__41;   /* for PHI node */
    llvm_cbe_tmp__12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__32;   /* for PHI node */
    goto llvm_cbe_tmp__43;
  }

llvm_cbe_tmp__47:
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = phi i32 [ %%22, %%21 ], [ %%.1, %%24  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__32 = (unsigned int )llvm_cbe_tmp__32__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__32);
printf("\n = 0x%X",llvm_cbe_tmp__24);
printf("\n.1 = 0x%X",llvm_cbe__2e_1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = sext i16 %%5 to i32, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__33 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
  if (((llvm_cbe_tmp__32&4294967295U) == (llvm_cbe_tmp__33&4294967295U))) {
    llvm_cbe_tmp__41__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__11;   /* for PHI node */
    goto llvm_cbe_tmp__46;
  } else {
    goto llvm_cbe_tmp__48;
  }

llvm_cbe_tmp__45:
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = phi i32 [ %%6, %%4 ], [ %%., %%12  for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__24 = (unsigned int )llvm_cbe_tmp__24__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__24);
printf("\n = 0x%X",llvm_cbe_tmp__12);
printf("\n. = 0x%X",llvm_cbe__2e_);
}
  if ((((signed short )llvm_cbe_tmp__16) < ((signed short )llvm_cbe_endA))) {
    goto llvm_cbe_tmp__49;
  } else {
    llvm_cbe_tmp__32__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
    goto llvm_cbe_tmp__47;
  }

llvm_cbe_tmp__44:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = sext i32 %%6 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_104_count);
  llvm_cbe_tmp__17 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i16* %%A, i64 %%13, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_105_count);
  llvm_cbe_tmp__18 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__17))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__17));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i16* %%14, align 2, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__19 = (unsigned short )*llvm_cbe_tmp__18;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = sext i16 %%9 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__20 = (unsigned long long )((signed long long )(signed short )llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds i16* %%A, i64 %%16, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__21 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i16* %%17, align 2, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__22 = (unsigned short )*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = sext i16 %%9 to i32, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__23 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%19, i32 %%20, i32 %%6, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned int )(((((signed short )llvm_cbe_tmp__19) < ((signed short )llvm_cbe_tmp__22))) ? ((unsigned int )llvm_cbe_tmp__23) : ((unsigned int )llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
  llvm_cbe_tmp__24__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_;   /* for PHI node */
  goto llvm_cbe_tmp__45;

llvm_cbe_tmp__49:
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = sext i32 %%22 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__25 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds i16* %%A, i64 %%25, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_126_count);
  llvm_cbe_tmp__26 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i16* %%26, align 2, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_127_count);
  llvm_cbe_tmp__27 = (unsigned short )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = sext i16 %%10 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_128_count);
  llvm_cbe_tmp__28 = (unsigned long long )((signed long long )(signed short )llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds i16* %%A, i64 %%28, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__29 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i16* %%29, align 2, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__30 = (unsigned short )*llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = sext i16 %%10 to i32, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__31 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%.1 = select i1 %%31, i32 %%32, i32 %%22, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe__2e_1_count);
  llvm_cbe__2e_1 = (unsigned int )(((((signed short )llvm_cbe_tmp__27) < ((signed short )llvm_cbe_tmp__30))) ? ((unsigned int )llvm_cbe_tmp__31) : ((unsigned int )llvm_cbe_tmp__24));
if (AESL_DEBUG_TRACE)
printf("\n.1 = 0x%X\n", llvm_cbe__2e_1);
  llvm_cbe_tmp__32__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_1;   /* for PHI node */
  goto llvm_cbe_tmp__47;

llvm_cbe_tmp__48:
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = sext i32 %%34 to i64, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__34 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds i16* %%A, i64 %%38, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_148_count);
  llvm_cbe_tmp__35 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__34))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__34));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load i16* %%39, align 2, !dbg !3 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__36 = (unsigned short )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = sext i16 %%5 to i64, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__37 = (unsigned long long )((signed long long )(signed short )llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = getelementptr inbounds i16* %%A, i64 %%41, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__38 = (signed short *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__37))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__37));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = load i16* %%42, align 2, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_154_count);
  llvm_cbe_tmp__39 = (unsigned short )*llvm_cbe_tmp__38;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%43, i16* %%39, align 2, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_155_count);
  *llvm_cbe_tmp__35 = llvm_cbe_tmp__39;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%40, i16* %%42, align 2, !dbg !4 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_156_count);
  *llvm_cbe_tmp__38 = llvm_cbe_tmp__36;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = trunc i32 %%34 to i16, !dbg !5 for 0x%I64xth hint within @maxHeapify_noRecurv  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__40 = (unsigned short )((unsigned short )llvm_cbe_tmp__32&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__40);
  llvm_cbe_tmp__41__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__40;   /* for PHI node */
  goto llvm_cbe_tmp__46;

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e__crit_edge:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @maxHeapify_noRecurv}\n");
  return;
}


signed short AESL_ORIG_DUT_heapSort(signed short llvm_cbe_dataIn,  char llvm_cbe_posOutData) {
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  unsigned long long llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  signed short *llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  unsigned int llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  unsigned long long llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  signed short *llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  signed short *llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  unsigned short llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned short llvm_cbe_storemerge;
  unsigned short llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @AESL_ORIG_DUT_heapSort\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load i32* @aesl_internal_AESL_ORIG_DUT_heapSort.count, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__50 = (unsigned int )*(&aesl_internal_AESL_ORIG_DUT_heapSort_OC_count);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);
  if ((((signed int )llvm_cbe_tmp__50) < ((signed int )256u))) {
    goto llvm_cbe_tmp__59;
  } else {
    goto llvm_cbe_tmp__60;
  }

llvm_cbe_tmp__59:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sext i32 %%1 to i64, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_178_count);
  llvm_cbe_tmp__51 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__51);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [256 x i16]* @aesl_internal_AESL_ORIG_DUT_heapSort.A, i64 0, i64 %%4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_179_count);
  llvm_cbe_tmp__52 = (signed short *)(&aesl_internal_AESL_ORIG_DUT_heapSort_OC_A[(((signed long long )llvm_cbe_tmp__51))
#ifdef AESL_BC_SIM
 % 256
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__51));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__51) < 256 && "Write access out of array 'aesl_internal_AESL_ORIG_DUT_heapSort.A' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%dataIn, i16* %%5, align 2, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_180_count);
  *llvm_cbe_tmp__52 = llvm_cbe_dataIn;
if (AESL_DEBUG_TRACE)
printf("\ndataIn = 0x%X\n", llvm_cbe_dataIn);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add nsw i32 %%1, 1, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_181_count);
  llvm_cbe_tmp__53 = (unsigned int )((unsigned int )(llvm_cbe_tmp__50&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__53&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%6, i32* @aesl_internal_AESL_ORIG_DUT_heapSort.count, align 4, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_182_count);
  *(&aesl_internal_AESL_ORIG_DUT_heapSort_OC_count) = llvm_cbe_tmp__53;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
  goto llvm_cbe_tmp__61;

llvm_cbe_tmp__60:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* @aesl_internal_AESL_ORIG_DUT_heapSort.flagFill, align 4, !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__54 = (unsigned int )*(&aesl_internal_AESL_ORIG_DUT_heapSort_OC_flagFill);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
  if (((llvm_cbe_tmp__54&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__62;
  } else {
    goto llvm_cbe_tmp__63;
  }

llvm_cbe_tmp__62:
if (AESL_DEBUG_TRACE)
printf("\n  store i16* getelementptr inbounds ([256 x i16]* @aesl_internal_AESL_ORIG_DUT_heapSort.A, i64 0, i64 0), i16** @aesl_internal_AESL_ORIG_DUT_heapSort.ptr, align 8, !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_187_count);
  *(&aesl_internal_AESL_ORIG_DUT_heapSort_OC_ptr) = (signed short *)((&aesl_internal_AESL_ORIG_DUT_heapSort_OC_A[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 256
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @heapSort_noRecurv(i16* getelementptr inbounds ([256 x i16]* @aesl_internal_AESL_ORIG_DUT_heapSort.A, i64 0, i64 0)), !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_188_count);
   /*tail*/ heapSort_noRecurv((signed short *)((&aesl_internal_AESL_ORIG_DUT_heapSort_OC_A[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 256
#endif
])));
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* @aesl_internal_AESL_ORIG_DUT_heapSort.flagFill, align 4, !dbg !4 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_189_count);
  *(&aesl_internal_AESL_ORIG_DUT_heapSort_OC_flagFill) = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__63;

llvm_cbe_tmp__63:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sext i8 %%posOutData to i64, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__55 = (unsigned long long )((signed long long )( char )llvm_cbe_posOutData);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i16** @aesl_internal_AESL_ORIG_DUT_heapSort.ptr, align 8, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_192_count);
  llvm_cbe_tmp__56 = (signed short *)*(&aesl_internal_AESL_ORIG_DUT_heapSort_OC_ptr);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds i16* %%13, i64 %%12, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_193_count);
  llvm_cbe_tmp__57 = (signed short *)(&llvm_cbe_tmp__56[(((signed long long )llvm_cbe_tmp__55))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__55));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i16* %%14, align 2, !dbg !3 for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_194_count);
  llvm_cbe_tmp__58 = (unsigned short )*llvm_cbe_tmp__57;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__58);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__58;   /* for PHI node */
  goto llvm_cbe_tmp__61;

llvm_cbe_tmp__61:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i16 [ 0, %%3 ], [ %%15, %%11  for 0x%I64xth hint within @AESL_ORIG_DUT_heapSort  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned short )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",((unsigned short )0));
printf("\n = 0x%X",llvm_cbe_tmp__58);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @AESL_ORIG_DUT_heapSort}\n");
  return llvm_cbe_storemerge;
}

