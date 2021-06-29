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
void mergeSort(float *llvm_cbe_A);
void mergeRecurv(float *llvm_cbe_A, signed int llvm_cbe_p, signed int llvm_cbe_r);
void mergee(float *llvm_cbe_A, signed int llvm_cbe_p, signed int llvm_cbe_q, signed int llvm_cbe_r);


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

void mergeSort(float *llvm_cbe_A) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @mergeSort\n");
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @mergeRecurv(float* %%A, i32 0, i32 47), !dbg !3 for 0x%I64xth hint within @mergeSort  --> \n", ++aesl_llvm_cbe_3_count);
   /*tail*/ mergeRecurv((float *)llvm_cbe_A, 0u, 47u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",47u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @mergeSort}\n");
  return;
}


void mergeRecurv(float *llvm_cbe_A, signed int llvm_cbe_p, signed int llvm_cbe_r) {
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
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @mergeRecurv\n");
  if ((((unsigned int )llvm_cbe_p&4294967295U) < ((unsigned int )llvm_cbe_r&4294967295U))) {
    goto llvm_cbe_tmp__5;
  } else {
    goto llvm_cbe_tmp__6;
  }

llvm_cbe_tmp__5:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = add i32 %%r, %%p, !dbg !3 for 0x%I64xth hint within @mergeRecurv  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__1 = (unsigned int )((unsigned int )(llvm_cbe_r&4294967295ull)) + ((unsigned int )(llvm_cbe_p&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__1&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = lshr i32 %%3, 1, !dbg !3 for 0x%I64xth hint within @mergeRecurv  --> \n", ++aesl_llvm_cbe_22_count);
  llvm_cbe_tmp__2 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__1&4294967295ull)) >> ((unsigned int )(1u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__2&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call i32 bitcast (i32 (...)* @floor to i32 (i32)*)(i32 %%4) nounwind, !dbg !3 for 0x%I64xth hint within @mergeRecurv  --> \n", ++aesl_llvm_cbe_23_count);
  llvm_cbe_tmp__3 = (unsigned int ) /*tail*/ floor(llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__2);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__3);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @mergeRecurv(float* %%A, i32 %%p, i32 %%5), !dbg !3 for 0x%I64xth hint within @mergeRecurv  --> \n", ++aesl_llvm_cbe_28_count);
   /*tail*/ mergeRecurv((float *)llvm_cbe_A, llvm_cbe_p, llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument p = 0x%X",llvm_cbe_p);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add i32 %%5, 1, !dbg !3 for 0x%I64xth hint within @mergeRecurv  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__4 = (unsigned int )((unsigned int )(llvm_cbe_tmp__3&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__4&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @mergeRecurv(float* %%A, i32 %%6, i32 %%r), !dbg !3 for 0x%I64xth hint within @mergeRecurv  --> \n", ++aesl_llvm_cbe_30_count);
   /*tail*/ mergeRecurv((float *)llvm_cbe_A, llvm_cbe_tmp__4, llvm_cbe_r);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__4);
printf("\nArgument r = 0x%X",llvm_cbe_r);
}
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @mergee(float* %%A, i32 %%p, i32 %%5, i32 %%r), !dbg !3 for 0x%I64xth hint within @mergeRecurv  --> \n", ++aesl_llvm_cbe_31_count);
   /*tail*/ mergee((float *)llvm_cbe_A, llvm_cbe_p, llvm_cbe_tmp__3, llvm_cbe_r);
if (AESL_DEBUG_TRACE) {
printf("\nArgument p = 0x%X",llvm_cbe_p);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
printf("\nArgument r = 0x%X",llvm_cbe_r);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @mergeRecurv}\n");
  return;
llvm_cbe_tmp__6:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @mergeRecurv}\n");
  return;
}


void mergee(float *llvm_cbe_A, signed int llvm_cbe_p, signed int llvm_cbe_q, signed int llvm_cbe_r) {
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
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  signed int *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  unsigned long long llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  signed int *llvm_cbe_tmp__15;
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
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  unsigned int llvm_cbe_tmp__17;
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
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge13_count = 0;
  unsigned int llvm_cbe_storemerge13;
  unsigned int llvm_cbe_storemerge13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  unsigned long long llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  float *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  float llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  unsigned long long llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  signed int *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge110_count = 0;
  unsigned int llvm_cbe_storemerge110;
  unsigned int llvm_cbe_storemerge110__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  float *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  float llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  unsigned long long llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  signed int *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  unsigned long long llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  signed int *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned long long llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  signed int *llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge29_count = 0;
  unsigned int llvm_cbe_storemerge29;
  unsigned int llvm_cbe_storemerge29__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge48_count = 0;
  unsigned int llvm_cbe_storemerge48;
  unsigned int llvm_cbe_storemerge48__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge167_count = 0;
  unsigned int llvm_cbe_storemerge167;
  unsigned int llvm_cbe_storemerge167__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned long long llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  signed int *llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  unsigned int llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  unsigned long long llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  signed int *llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  unsigned int llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  float llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned long long llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  float *llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  float llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  unsigned long long llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  float *llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  unsigned int llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge15_count = 0;
  unsigned int llvm_cbe_storemerge15;
  unsigned int llvm_cbe_storemerge15__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned int llvm_cbe_storemerge3;
  unsigned int llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  unsigned int llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @mergee\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = sub i32 %%q, %%p, !dbg !4 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__7 = (unsigned int )((unsigned int )(llvm_cbe_q&4294967295ull)) - ((unsigned int )(llvm_cbe_p&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__7&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = add i32 %%1, 1, !dbg !4 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__8 = (unsigned int )((unsigned int )(llvm_cbe_tmp__7&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__8&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sub i32 %%r, %%q, !dbg !4 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_r&4294967295ull)) - ((unsigned int )(llvm_cbe_q&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__9&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = add i32 %%1, 2, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_tmp__7&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = zext i32 %%4 to i64, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__11 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__10&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = alloca i32, i64 %%5, align 16, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__12 = (signed int *)(signed int *) alloca(sizeof(unsigned int ) * llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = add i32 %%3, 1, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__13 = (unsigned int )((unsigned int )(llvm_cbe_tmp__9&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__13&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = zext i32 %%7 to i64, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__14 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__13&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = alloca i32, i64 %%8, align 16, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__15 = (signed int *)(signed int *) alloca(sizeof(unsigned int ) * llvm_cbe_tmp__14);
  if (((llvm_cbe_tmp__8&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe__2e_lr_2e_ph15;
  }

llvm_cbe__2e_lr_2e_ph15:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i32 %%q, 1, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__16 = (unsigned int )((unsigned int )(llvm_cbe_q&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__16&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sub i32 %%11, %%p, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_tmp__16&4294967295ull)) - ((unsigned int )(llvm_cbe_p&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
  llvm_cbe_storemerge13__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__54;

llvm_cbe__2e_preheader:
  if (((llvm_cbe_r&4294967295U) == (llvm_cbe_q&4294967295U))) {
    goto llvm_cbe__2e__crit_edge12;
  } else {
    goto llvm_cbe__2e_lr_2e_ph11;
  }

llvm_cbe__2e_lr_2e_ph11:
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add i32 %%q, 1, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__18 = (unsigned int )((unsigned int )(llvm_cbe_q&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__18&4294967295ull)));
  llvm_cbe_storemerge110__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__55;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__54:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge13 = phi i32 [ 0, %%.lr.ph15 ], [ %%23, %%15  for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_storemerge13_count);
  llvm_cbe_storemerge13 = (unsigned int )llvm_cbe_storemerge13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge13 = 0x%X",llvm_cbe_storemerge13);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__26);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add i32 %%storemerge13, %%p, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(llvm_cbe_storemerge13&4294967295ull)) + ((unsigned int )(llvm_cbe_p&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__19&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = zext i32 %%16 to i64, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__20 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__19&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds float* %%A, i64 %%17, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__21 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load float* %%18, align 4, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__22 = (float )*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__22, *(int*)(&llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = fptosi float %%19 to i32, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_97_count);
  llvm_cbe_tmp__23 = (unsigned int )((signed int )llvm_cbe_tmp__22&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = zext i32 %%storemerge13 to i64, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__24 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge13&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds i32* %%6, i64 %%21, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__25 = (signed int *)(&llvm_cbe_tmp__12[(((signed long long )llvm_cbe_tmp__24))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__24));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%20, i32* %%22, align 4, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_100_count);
  *llvm_cbe_tmp__25 = llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add i32 %%storemerge13, 1, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__26 = (unsigned int )((unsigned int )(llvm_cbe_storemerge13&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__26&4294967295ull)));
  if (((llvm_cbe_tmp__26&4294967295U) == (llvm_cbe_tmp__17&4294967295U))) {
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe_storemerge13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__26;   /* for PHI node */
    goto llvm_cbe_tmp__54;
  }

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__55:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge110 = phi i32 [ 0, %%.lr.ph11 ], [ %%32, %%24  for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_storemerge110_count);
  llvm_cbe_storemerge110 = (unsigned int )llvm_cbe_storemerge110__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge110 = 0x%X",llvm_cbe_storemerge110);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__34);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = add i32 %%14, %%storemerge110, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__27 = (unsigned int )((unsigned int )(llvm_cbe_tmp__18&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge110&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__27&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = zext i32 %%25 to i64, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__28 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__27&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds float* %%A, i64 %%26, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_113_count);
  llvm_cbe_tmp__29 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load float* %%27, align 4, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_114_count);
  llvm_cbe_tmp__30 = (float )*llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__30, *(int*)(&llvm_cbe_tmp__30));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = fptosi float %%28 to i32, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__31 = (unsigned int )((signed int )llvm_cbe_tmp__30&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = zext i32 %%storemerge110 to i64, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_116_count);
  llvm_cbe_tmp__32 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge110&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = getelementptr inbounds i32* %%9, i64 %%30, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_117_count);
  llvm_cbe_tmp__33 = (signed int *)(&llvm_cbe_tmp__15[(((signed long long )llvm_cbe_tmp__32))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__32));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%29, i32* %%31, align 4, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_118_count);
  *llvm_cbe_tmp__33 = llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = add i32 %%storemerge110, 1, !dbg !7 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_119_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(llvm_cbe_storemerge110&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__34&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__34&4294967295U) < ((unsigned int )llvm_cbe_tmp__9&4294967295U))) {
    llvm_cbe_storemerge110__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__34;   /* for PHI node */
    goto llvm_cbe_tmp__55;
  } else {
    goto llvm_cbe__2e__crit_edge12;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e__crit_edge12:
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = zext i32 %%2 to i64, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__35 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__8&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds i32* %%6, i64 %%34, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__36 = (signed int *)(&llvm_cbe_tmp__12[(((signed long long )llvm_cbe_tmp__35))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__35));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 2147483647, i32* %%35, align 4, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_132_count);
  *llvm_cbe_tmp__36 = 2147483647u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 2147483647u);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = zext i32 %%3 to i64, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__37 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__9&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds i32* %%9, i64 %%36, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__38 = (signed int *)(&llvm_cbe_tmp__15[(((signed long long )llvm_cbe_tmp__37))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__37));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 2147483647, i32* %%37, align 4, !dbg !5 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_135_count);
  *llvm_cbe_tmp__38 = 2147483647u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 2147483647u);
  if ((((unsigned int )llvm_cbe_p&4294967295U) > ((unsigned int )llvm_cbe_r&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge29__PHI_TEMPORARY = (unsigned int )llvm_cbe_p;   /* for PHI node */
    llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_storemerge167__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge29 = phi i32 [ %%57, %%56 ], [ %%p, %%._crit_edge12  for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_storemerge29_count);
  llvm_cbe_storemerge29 = (unsigned int )llvm_cbe_storemerge29__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge29 = 0x%X",llvm_cbe_storemerge29);
printf("\n = 0x%X",llvm_cbe_tmp__53);
printf("\np = 0x%X",llvm_cbe_p);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge48 = phi i32 [ %%storemerge3, %%56 ], [ 0, %%._crit_edge12  for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_storemerge48_count);
  llvm_cbe_storemerge48 = (unsigned int )llvm_cbe_storemerge48__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge48 = 0x%X",llvm_cbe_storemerge48);
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge167 = phi i32 [ %%storemerge15, %%56 ], [ 0, %%._crit_edge12  for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_storemerge167_count);
  llvm_cbe_storemerge167 = (unsigned int )llvm_cbe_storemerge167__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge167 = 0x%X",llvm_cbe_storemerge167);
printf("\nstoremerge15 = 0x%X",llvm_cbe_storemerge15);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = zext i32 %%storemerge48 to i64, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__39 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge48&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds i32* %%6, i64 %%39, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__40 = (signed int *)(&llvm_cbe_tmp__12[(((signed long long )llvm_cbe_tmp__39))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__39));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load i32* %%40, align 4, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_161_count);
  llvm_cbe_tmp__41 = (unsigned int )*llvm_cbe_tmp__40;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = zext i32 %%storemerge167 to i64, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_162_count);
  llvm_cbe_tmp__42 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge167&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__42);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds i32* %%9, i64 %%42, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_163_count);
  llvm_cbe_tmp__43 = (signed int *)(&llvm_cbe_tmp__15[(((signed long long )llvm_cbe_tmp__42))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__42));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = load i32* %%43, align 4, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__44 = (unsigned int )*llvm_cbe_tmp__43;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
  if ((((signed int )llvm_cbe_tmp__41) > ((signed int )llvm_cbe_tmp__44))) {
    goto llvm_cbe_tmp__56;
  } else {
    goto llvm_cbe_tmp__57;
  }

llvm_cbe_tmp__58:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge15 = phi i32 [ %%storemerge167, %%46 ], [ %%55, %%51  for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_storemerge15_count);
  llvm_cbe_storemerge15 = (unsigned int )llvm_cbe_storemerge15__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge15 = 0x%X",llvm_cbe_storemerge15);
printf("\nstoremerge167 = 0x%X",llvm_cbe_storemerge167);
printf("\n = 0x%X",llvm_cbe_tmp__52);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i32 [ %%50, %%46 ], [ %%storemerge48, %%51  for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned int )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",llvm_cbe_tmp__48);
printf("\nstoremerge48 = 0x%X",llvm_cbe_storemerge48);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = add i32 %%storemerge29, 1, !dbg !7 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_195_count);
  llvm_cbe_tmp__53 = (unsigned int )((unsigned int )(llvm_cbe_storemerge29&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__53&4294967295ull)));
  if ((((unsigned int )llvm_cbe_tmp__53&4294967295U) > ((unsigned int )llvm_cbe_r&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge29__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__53;   /* for PHI node */
    llvm_cbe_storemerge48__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge3;   /* for PHI node */
    llvm_cbe_storemerge167__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge15;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

llvm_cbe_tmp__57:
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = sitofp i32 %%41 to float, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__45 = (float )((float )(signed int )llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__45, *(int*)(&llvm_cbe_tmp__45));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = zext i32 %%storemerge29 to i64, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__46 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge29&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = getelementptr inbounds float* %%A, i64 %%48, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_169_count);
  llvm_cbe_tmp__47 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__46))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__46));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%47, float* %%49, align 4, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_170_count);
  *llvm_cbe_tmp__47 = llvm_cbe_tmp__45;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__45);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = add i32 %%storemerge48, 1, !dbg !6 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__48 = (unsigned int )((unsigned int )(llvm_cbe_storemerge48&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__48&4294967295ull)));
  llvm_cbe_storemerge15__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge167;   /* for PHI node */
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__48;   /* for PHI node */
  goto llvm_cbe_tmp__58;

llvm_cbe_tmp__56:
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = sitofp i32 %%44 to float, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_181_count);
  llvm_cbe_tmp__49 = (float )((float )(signed int )llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__49, *(int*)(&llvm_cbe_tmp__49));
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = zext i32 %%storemerge29 to i64, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__50 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_storemerge29&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = getelementptr inbounds float* %%A, i64 %%53, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_183_count);
  llvm_cbe_tmp__51 = (float *)(&llvm_cbe_A[(((signed long long )llvm_cbe_tmp__50))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__50));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%52, float* %%54, align 4, !dbg !3 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_184_count);
  *llvm_cbe_tmp__51 = llvm_cbe_tmp__49;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = add i32 %%storemerge167, 1, !dbg !7 for 0x%I64xth hint within @mergee  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__52 = (unsigned int )((unsigned int )(llvm_cbe_storemerge167&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__52&4294967295ull)));
  llvm_cbe_storemerge15__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__52;   /* for PHI node */
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge48;   /* for PHI node */
  goto llvm_cbe_tmp__58;

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @mergee}\n");
  return;
}

