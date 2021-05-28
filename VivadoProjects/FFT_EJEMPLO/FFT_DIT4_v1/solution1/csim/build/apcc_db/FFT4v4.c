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
void FFT_DIT4_FUNC(float *llvm_cbe_xcr, float *llvm_cbe_xci);
unsigned short four_raised_to_x(signed short );
unsigned short div_floor(signed short , signed short );
unsigned short calc_index(signed short , signed short , signed short );


/* Global Variable Definitions and Initialization */
static float aesl_internal_FFT_DIT4_FUNC_OC_wnr[16] = { 0x1p0, 0x1.d906ccp-1, 0x1.6a09eep-1, 0x1.87de0ep-2, 0x0p0, -0x1.87de0ep-2, -0x1.6a09eep-1, -0x1.d906ccp-1, -0x1p0, -0x1.d906ccp-1, -0x1.6a09eep-1, -0x1.87de0ep-2, 0x0p0, 0x1.87de0ep-2, 0x1.6a09eep-1, 0x1.d906ccp-1 };
static float aesl_internal_FFT_DIT4_FUNC_OC_wni[16] = { 0x0p0, -0x1.87de0ep-2, -0x1.6a09eep-1, -0x1.d906ccp-1, -0x1p0, -0x1.d906ccp-1, -0x1.6a09eep-1, -0x1.87de0ep-2, 0x0p0, 0x1.87de0ep-2, 0x1.6a09eep-1, 0x1.d906ccp-1, 0x1p0, 0x1.d906ccp-1, 0x1.6a09eep-1, 0x1.87de0ep-2 };


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

void FFT_DIT4_FUNC(float *llvm_cbe_xcr, float *llvm_cbe_xci) {
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
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned short llvm_cbe_storemerge3;
  unsigned short llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  unsigned short llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned short llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned short llvm_cbe_storemerge12;
  unsigned short llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  unsigned short llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  unsigned short llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  unsigned short llvm_cbe_tmp__5;
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
  unsigned short llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  unsigned short llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned short llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned short llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  unsigned short llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  float *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  float llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  float *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  float llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned short llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  unsigned long long llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  float *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  float llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  unsigned long long llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  float *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  float llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  float llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  unsigned short llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  float *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  float llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  float *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  float llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  float llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  float llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned short llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  unsigned long long llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  float *llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  float llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  float llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  unsigned short llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned long long llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  float *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  float llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  float llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  float llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned short llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  unsigned long long llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  float *llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  float llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  unsigned long long llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  float *llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  float llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  float llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  unsigned short llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  unsigned long long llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  float *llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  float llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  float *llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  float llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  float llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  float llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  unsigned short llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  unsigned long long llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  float *llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  float llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  float llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  unsigned short llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  unsigned long long llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  float *llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  float llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  float llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  float llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  unsigned short llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  unsigned long long llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  float *llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  float llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  unsigned int llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  unsigned long long llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  float *llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  float llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  float llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  unsigned short llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  unsigned long long llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  float *llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  float llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  float *llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  float llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  float llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  float llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  unsigned short llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  unsigned long long llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  float *llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  float llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  float llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  unsigned short llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  unsigned long long llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  float *llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  float llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  float llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  float llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  float llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  float llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  float llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  float llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  float llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  float llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  float llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  float llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  float llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  unsigned short llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  unsigned long long llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  float *llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  float llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  float llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  float llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  unsigned short llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  unsigned long long llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  float *llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  float llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  float llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  float llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  unsigned short llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  unsigned long long llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  float *llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  float llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  float llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  float llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  unsigned short llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  unsigned long long llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  float *llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  float llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  float llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  float llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  unsigned short llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  unsigned long long llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  float *llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  float llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  float llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  float llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  unsigned short llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  unsigned long long llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  float *llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  unsigned short llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond4_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @FFT_DIT4_FUNC\n");
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i16 [ 0, %%0 ], [ %%2, %%144  for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned short )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",((unsigned short )0));
printf("\n = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = sub i16 1, %%storemerge3, !dbg !6 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_55_count);
  llvm_cbe_tmp__1 = (unsigned short )((unsigned short )(((unsigned short )(((unsigned short )1)&65535ull)) - ((unsigned short )(llvm_cbe_storemerge3&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__1&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = add i16 %%storemerge3, 1, !dbg !6 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__2 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge3&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__2&65535ull)));
  llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned short )((unsigned short )0);   /* for PHI node */
  goto llvm_cbe_tmp__143;

llvm_cbe_tmp__144:
  if (((llvm_cbe_tmp__2&65535U) == (((unsigned short )2)&65535U))) {
    goto llvm_cbe_tmp__145;
  } else {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__2;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__143:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i16 [ 0, %%.preheader ], [ %%143, %%3  for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned short )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",((unsigned short )0));
printf("\n = 0x%X",llvm_cbe_tmp__142);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call zeroext i16 @four_raised_to_x(i16 zeroext %%1) nounwind, !dbg !6 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__3 = (unsigned short ) /*tail*/ four_raised_to_x(llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__1);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__3);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call zeroext i16 @div_floor(i16 zeroext %%storemerge12, i16 zeroext %%4) nounwind, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__4 = (unsigned short ) /*tail*/ div_floor(llvm_cbe_storemerge12, llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__4);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = mul i16 %%5, %%4, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__5 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__4&65535ull)) * ((unsigned short )(llvm_cbe_tmp__3&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__5&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sub i16 %%storemerge12, %%6, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__6 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge12&65535ull)) - ((unsigned short )(llvm_cbe_tmp__5&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__6&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = tail call zeroext i16 @four_raised_to_x(i16 zeroext %%2) nounwind, !dbg !6 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__7 = (unsigned short ) /*tail*/ four_raised_to_x(llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__2);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__7);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = mul i16 %%7, %%8, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__8 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__6&65535ull)) * ((unsigned short )(llvm_cbe_tmp__7&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__8&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = tail call zeroext i16 @div_floor(i16 zeroext %%storemerge12, i16 zeroext %%4) nounwind, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__9 = (unsigned short ) /*tail*/ div_floor(llvm_cbe_storemerge12, llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__9);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i16 %%9, %%10, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_83_count);
  llvm_cbe_tmp__10 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__8&65535ull)) + ((unsigned short )(llvm_cbe_tmp__9&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__10&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = zext i16 %%11 to i64, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__11 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__10&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds float* %%xcr, i64 %%12, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__12 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__11))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load float* %%13, align 4, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__13 = (float )*llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__13, *(int*)(&llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds float* %%xci, i64 %%12, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__14 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__11))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load float* %%15, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_116_count);
  llvm_cbe_tmp__15 = (float )*llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__15, *(int*)(&llvm_cbe_tmp__15));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 1, i16 zeroext %%storemerge3) nounwind, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__16 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )1), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )1));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__16);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = zext i16 %%17 to i64, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__17 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__16&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds float* %%xcr, i64 %%18, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_124_count);
  llvm_cbe_tmp__18 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__17))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__17));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = load float* %%19, align 4, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__19 = (float )*llvm_cbe_tmp__18;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__19, *(int*)(&llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = zext i16 %%6 to i64, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_126_count);
  llvm_cbe_tmp__20 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__5&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [16 x float]* @aesl_internal_FFT_DIT4_FUNC.wnr, i64 0, i64 %%21, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_127_count);
  llvm_cbe_tmp__21 = (float *)(&aesl_internal_FFT_DIT4_FUNC_OC_wnr[(((signed long long )llvm_cbe_tmp__20))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__20) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_FFT_DIT4_FUNC.wnr' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load float* %%22, align 4, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_128_count);
  llvm_cbe_tmp__22 = (float )*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__22, *(int*)(&llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = fmul float %%20, %%23, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__23 = (float )((float )(llvm_cbe_tmp__19 * llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__23, *(int*)(&llvm_cbe_tmp__23));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 1, i16 zeroext %%storemerge3) nounwind, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__24 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )1), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )1));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__24);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = zext i16 %%25 to i64, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__25 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__24&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds float* %%xci, i64 %%26, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__26 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load float* %%27, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__27 = (float )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__27, *(int*)(&llvm_cbe_tmp__27));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds [16 x float]* @aesl_internal_FFT_DIT4_FUNC.wni, i64 0, i64 %%21, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__28 = (float *)(&aesl_internal_FFT_DIT4_FUNC_OC_wni[(((signed long long )llvm_cbe_tmp__20))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__20) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_FFT_DIT4_FUNC.wni' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load float* %%29, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__29 = (float )*llvm_cbe_tmp__28;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__29, *(int*)(&llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = fmul float %%28, %%30, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__30 = (float )((float )(llvm_cbe_tmp__27 * llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__30, *(int*)(&llvm_cbe_tmp__30));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = fsub float %%24, %%31, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__31 = (float )((float )(llvm_cbe_tmp__23 - llvm_cbe_tmp__30));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__31, *(int*)(&llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 1, i16 zeroext %%storemerge3) nounwind, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__32 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )1), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )1));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__32);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = zext i16 %%33 to i64, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__33 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__32&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds float* %%xcr, i64 %%34, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__34 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__33))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__33));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = load float* %%35, align 4, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__35 = (float )*llvm_cbe_tmp__34;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__35, *(int*)(&llvm_cbe_tmp__35));
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = fmul float %%36, %%30, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__36 = (float )((float )(llvm_cbe_tmp__35 * llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__36, *(int*)(&llvm_cbe_tmp__36));
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 1, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_148_count);
  llvm_cbe_tmp__37 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )1), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )1));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__37);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = zext i16 %%38 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__38 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__37&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds float* %%xci, i64 %%39, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_150_count);
  llvm_cbe_tmp__39 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__38))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__38));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load float* %%40, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_151_count);
  llvm_cbe_tmp__40 = (float )*llvm_cbe_tmp__39;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__40, *(int*)(&llvm_cbe_tmp__40));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = fmul float %%41, %%23, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_152_count);
  llvm_cbe_tmp__41 = (float )((float )(llvm_cbe_tmp__40 * llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__41, *(int*)(&llvm_cbe_tmp__41));
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = fadd float %%37, %%42, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__42 = (float )((float )(llvm_cbe_tmp__36 + llvm_cbe_tmp__41));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__42, *(int*)(&llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 2, i16 zeroext %%storemerge3) nounwind, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__43 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )2), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )2));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__43);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = zext i16 %%44 to i64, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__44 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__43&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = getelementptr inbounds float* %%xcr, i64 %%45, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_161_count);
  llvm_cbe_tmp__45 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__44))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__44));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = load float* %%46, align 4, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_162_count);
  llvm_cbe_tmp__46 = (float )*llvm_cbe_tmp__45;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__46, *(int*)(&llvm_cbe_tmp__46));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = zext i16 %%6 to i32, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_163_count);
  llvm_cbe_tmp__47 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__5&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = shl nuw nsw i32 %%48, 1, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__48 = (unsigned int )llvm_cbe_tmp__47 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = zext i32 %%49 to i64, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__49 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__48&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = getelementptr inbounds [16 x float]* @aesl_internal_FFT_DIT4_FUNC.wnr, i64 0, i64 %%50, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__50 = (float *)(&aesl_internal_FFT_DIT4_FUNC_OC_wnr[(((signed long long )llvm_cbe_tmp__49))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__49));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__49) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_FFT_DIT4_FUNC.wnr' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = load float* %%51, align 8, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__51 = (float )*llvm_cbe_tmp__50;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__51, *(int*)(&llvm_cbe_tmp__51));
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = fmul float %%47, %%52, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__52 = (float )((float )(llvm_cbe_tmp__46 * llvm_cbe_tmp__51));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__52, *(int*)(&llvm_cbe_tmp__52));
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 2, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_169_count);
  llvm_cbe_tmp__53 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )2), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )2));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__53);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = zext i16 %%54 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__54 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__53&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = getelementptr inbounds float* %%xci, i64 %%55, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__55 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__54))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__54));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = load float* %%56, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__56 = (float )*llvm_cbe_tmp__55;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__56, *(int*)(&llvm_cbe_tmp__56));
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = getelementptr inbounds [16 x float]* @aesl_internal_FFT_DIT4_FUNC.wni, i64 0, i64 %%50, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_173_count);
  llvm_cbe_tmp__57 = (float *)(&aesl_internal_FFT_DIT4_FUNC_OC_wni[(((signed long long )llvm_cbe_tmp__49))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__49));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__49) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_FFT_DIT4_FUNC.wni' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = load float* %%58, align 8, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_174_count);
  llvm_cbe_tmp__58 = (float )*llvm_cbe_tmp__57;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__58, *(int*)(&llvm_cbe_tmp__58));
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = fmul float %%57, %%59, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__59 = (float )((float )(llvm_cbe_tmp__56 * llvm_cbe_tmp__58));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__59, *(int*)(&llvm_cbe_tmp__59));
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = fsub float %%53, %%60, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_176_count);
  llvm_cbe_tmp__60 = (float )((float )(llvm_cbe_tmp__52 - llvm_cbe_tmp__59));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__60, *(int*)(&llvm_cbe_tmp__60));
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 2, i16 zeroext %%storemerge3) nounwind, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__61 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )2), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )2));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__61);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = zext i16 %%62 to i64, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_183_count);
  llvm_cbe_tmp__62 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__61&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__62);
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds float* %%xcr, i64 %%63, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__63 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__62))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__62));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = load float* %%64, align 4, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__64 = (float )*llvm_cbe_tmp__63;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__64, *(int*)(&llvm_cbe_tmp__64));
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = fmul float %%65, %%59, !dbg !3 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_186_count);
  llvm_cbe_tmp__65 = (float )((float )(llvm_cbe_tmp__64 * llvm_cbe_tmp__58));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__65, *(int*)(&llvm_cbe_tmp__65));
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 2, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_187_count);
  llvm_cbe_tmp__66 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )2), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )2));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__66);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = zext i16 %%67 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_188_count);
  llvm_cbe_tmp__67 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__66&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds float* %%xci, i64 %%68, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_189_count);
  llvm_cbe_tmp__68 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__67))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__67));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = load float* %%69, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_190_count);
  llvm_cbe_tmp__69 = (float )*llvm_cbe_tmp__68;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__69, *(int*)(&llvm_cbe_tmp__69));
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = fmul float %%70, %%52, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_191_count);
  llvm_cbe_tmp__70 = (float )((float )(llvm_cbe_tmp__69 * llvm_cbe_tmp__51));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__70, *(int*)(&llvm_cbe_tmp__70));
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = fadd float %%66, %%71, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_192_count);
  llvm_cbe_tmp__71 = (float )((float )(llvm_cbe_tmp__65 + llvm_cbe_tmp__70));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__71, *(int*)(&llvm_cbe_tmp__71));
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 3, i16 zeroext %%storemerge3) nounwind, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_198_count);
  llvm_cbe_tmp__72 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )3), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )3));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__72);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = zext i16 %%73 to i64, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_199_count);
  llvm_cbe_tmp__73 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__72&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = getelementptr inbounds float* %%xcr, i64 %%74, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_200_count);
  llvm_cbe_tmp__74 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__73))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__73));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = load float* %%75, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_201_count);
  llvm_cbe_tmp__75 = (float )*llvm_cbe_tmp__74;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__75, *(int*)(&llvm_cbe_tmp__75));
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = mul nsw i32 %%48, 3, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_202_count);
  llvm_cbe_tmp__76 = (unsigned int )((unsigned int )(llvm_cbe_tmp__47&4294967295ull)) * ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__76&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = zext i32 %%77 to i64, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_203_count);
  llvm_cbe_tmp__77 = (unsigned long long )((unsigned long long )(unsigned int )llvm_cbe_tmp__76&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__77);
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = getelementptr inbounds [16 x float]* @aesl_internal_FFT_DIT4_FUNC.wnr, i64 0, i64 %%78, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_204_count);
  llvm_cbe_tmp__78 = (float *)(&aesl_internal_FFT_DIT4_FUNC_OC_wnr[(((signed long long )llvm_cbe_tmp__77))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__77));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__77) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_FFT_DIT4_FUNC.wnr' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = load float* %%79, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_205_count);
  llvm_cbe_tmp__79 = (float )*llvm_cbe_tmp__78;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__79, *(int*)(&llvm_cbe_tmp__79));
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = fmul float %%76, %%80, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_206_count);
  llvm_cbe_tmp__80 = (float )((float )(llvm_cbe_tmp__75 * llvm_cbe_tmp__79));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__80, *(int*)(&llvm_cbe_tmp__80));
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 3, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_207_count);
  llvm_cbe_tmp__81 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )3), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )3));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__81);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = zext i16 %%82 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_208_count);
  llvm_cbe_tmp__82 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__81&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__82);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = getelementptr inbounds float* %%xci, i64 %%83, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_209_count);
  llvm_cbe_tmp__83 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__82))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__82));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = load float* %%84, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_210_count);
  llvm_cbe_tmp__84 = (float )*llvm_cbe_tmp__83;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__84, *(int*)(&llvm_cbe_tmp__84));
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = getelementptr inbounds [16 x float]* @aesl_internal_FFT_DIT4_FUNC.wni, i64 0, i64 %%78, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_211_count);
  llvm_cbe_tmp__85 = (float *)(&aesl_internal_FFT_DIT4_FUNC_OC_wni[(((signed long long )llvm_cbe_tmp__77))
#ifdef AESL_BC_SIM
 % 16
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__77));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__77) < 16)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_FFT_DIT4_FUNC.wni' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = load float* %%86, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_212_count);
  llvm_cbe_tmp__86 = (float )*llvm_cbe_tmp__85;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__86, *(int*)(&llvm_cbe_tmp__86));
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = fmul float %%85, %%87, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_213_count);
  llvm_cbe_tmp__87 = (float )((float )(llvm_cbe_tmp__84 * llvm_cbe_tmp__86));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__87, *(int*)(&llvm_cbe_tmp__87));
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = fsub float %%81, %%88, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__88 = (float )((float )(llvm_cbe_tmp__80 - llvm_cbe_tmp__87));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__88, *(int*)(&llvm_cbe_tmp__88));
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 3, i16 zeroext %%storemerge3) nounwind, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_220_count);
  llvm_cbe_tmp__89 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )3), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )3));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__89);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = zext i16 %%90 to i64, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_221_count);
  llvm_cbe_tmp__90 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__89&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = getelementptr inbounds float* %%xcr, i64 %%91, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_222_count);
  llvm_cbe_tmp__91 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__90))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__90));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = load float* %%92, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_223_count);
  llvm_cbe_tmp__92 = (float )*llvm_cbe_tmp__91;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__92, *(int*)(&llvm_cbe_tmp__92));
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = fmul float %%93, %%87, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_224_count);
  llvm_cbe_tmp__93 = (float )((float )(llvm_cbe_tmp__92 * llvm_cbe_tmp__86));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__93, *(int*)(&llvm_cbe_tmp__93));
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 3, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_225_count);
  llvm_cbe_tmp__94 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )3), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )3));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__94);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = zext i16 %%95 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__95 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__94&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__95);
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = getelementptr inbounds float* %%xci, i64 %%96, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__96 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__95))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__95));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = load float* %%97, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__97 = (float )*llvm_cbe_tmp__96;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__97, *(int*)(&llvm_cbe_tmp__97));
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = fmul float %%98, %%80, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_229_count);
  llvm_cbe_tmp__98 = (float )((float )(llvm_cbe_tmp__97 * llvm_cbe_tmp__79));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__98, *(int*)(&llvm_cbe_tmp__98));
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = fadd float %%94, %%99, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__99 = (float )((float )(llvm_cbe_tmp__93 + llvm_cbe_tmp__98));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__99, *(int*)(&llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = fadd float %%14, %%32, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_236_count);
  llvm_cbe_tmp__100 = (float )((float )(llvm_cbe_tmp__13 + llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__100, *(int*)(&llvm_cbe_tmp__100));
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = fadd float %%101, %%61, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_237_count);
  llvm_cbe_tmp__101 = (float )((float )(llvm_cbe_tmp__100 + llvm_cbe_tmp__60));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__101, *(int*)(&llvm_cbe_tmp__101));
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = fadd float %%102, %%89, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_238_count);
  llvm_cbe_tmp__102 = (float )((float )(llvm_cbe_tmp__101 + llvm_cbe_tmp__88));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__102, *(int*)(&llvm_cbe_tmp__102));
if (AESL_DEBUG_TRACE)
printf("\n  store float %%103, float* %%13, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_239_count);
  *llvm_cbe_tmp__12 = llvm_cbe_tmp__102;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%104 = fadd float %%16, %%43, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_240_count);
  llvm_cbe_tmp__103 = (float )((float )(llvm_cbe_tmp__15 + llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__103, *(int*)(&llvm_cbe_tmp__103));
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = fadd float %%104, %%72, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_241_count);
  llvm_cbe_tmp__104 = (float )((float )(llvm_cbe_tmp__103 + llvm_cbe_tmp__71));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__104, *(int*)(&llvm_cbe_tmp__104));
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = fadd float %%105, %%100, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_242_count);
  llvm_cbe_tmp__105 = (float )((float )(llvm_cbe_tmp__104 + llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__105, *(int*)(&llvm_cbe_tmp__105));
if (AESL_DEBUG_TRACE)
printf("\n  store float %%106, float* %%15, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_243_count);
  *llvm_cbe_tmp__14 = llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = fadd float %%14, %%43, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_244_count);
  llvm_cbe_tmp__106 = (float )((float )(llvm_cbe_tmp__13 + llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__106, *(int*)(&llvm_cbe_tmp__106));
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = fsub float %%107, %%61, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_245_count);
  llvm_cbe_tmp__107 = (float )((float )(llvm_cbe_tmp__106 - llvm_cbe_tmp__60));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__107, *(int*)(&llvm_cbe_tmp__107));
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = fsub float %%108, %%100, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_246_count);
  llvm_cbe_tmp__108 = (float )((float )(llvm_cbe_tmp__107 - llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__108, *(int*)(&llvm_cbe_tmp__108));
if (AESL_DEBUG_TRACE)
printf("\n  %%110 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 1, i16 zeroext %%storemerge3) nounwind, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__109 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )1), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )1));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__109);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = zext i16 %%110 to i64, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_248_count);
  llvm_cbe_tmp__110 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__109&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__110);
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = getelementptr inbounds float* %%xcr, i64 %%111, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_249_count);
  llvm_cbe_tmp__111 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__110))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__110));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%109, float* %%112, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_250_count);
  *llvm_cbe_tmp__111 = llvm_cbe_tmp__108;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__108);
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = fsub float %%16, %%32, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_251_count);
  llvm_cbe_tmp__112 = (float )((float )(llvm_cbe_tmp__15 - llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__112, *(int*)(&llvm_cbe_tmp__112));
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = fsub float %%113, %%72, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_252_count);
  llvm_cbe_tmp__113 = (float )((float )(llvm_cbe_tmp__112 - llvm_cbe_tmp__71));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__113, *(int*)(&llvm_cbe_tmp__113));
if (AESL_DEBUG_TRACE)
printf("\n  %%115 = fadd float %%114, %%89, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_253_count);
  llvm_cbe_tmp__114 = (float )((float )(llvm_cbe_tmp__113 + llvm_cbe_tmp__88));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__114, *(int*)(&llvm_cbe_tmp__114));
if (AESL_DEBUG_TRACE)
printf("\n  %%116 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 1, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_254_count);
  llvm_cbe_tmp__115 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )1), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )1));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__115);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%117 = zext i16 %%116 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_255_count);
  llvm_cbe_tmp__116 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__115&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = getelementptr inbounds float* %%xci, i64 %%117, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_256_count);
  llvm_cbe_tmp__117 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__116))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__116));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%115, float* %%118, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_257_count);
  *llvm_cbe_tmp__117 = llvm_cbe_tmp__114;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__114);
if (AESL_DEBUG_TRACE)
printf("\n  %%119 = fsub float %%14, %%32, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_258_count);
  llvm_cbe_tmp__118 = (float )((float )(llvm_cbe_tmp__13 - llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__118, *(int*)(&llvm_cbe_tmp__118));
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = fadd float %%119, %%61, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_259_count);
  llvm_cbe_tmp__119 = (float )((float )(llvm_cbe_tmp__118 + llvm_cbe_tmp__60));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__119, *(int*)(&llvm_cbe_tmp__119));
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = fsub float %%120, %%89, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_260_count);
  llvm_cbe_tmp__120 = (float )((float )(llvm_cbe_tmp__119 - llvm_cbe_tmp__88));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__120, *(int*)(&llvm_cbe_tmp__120));
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 2, i16 zeroext %%storemerge3) nounwind, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_261_count);
  llvm_cbe_tmp__121 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )2), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )2));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__121);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%123 = zext i16 %%122 to i64, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_262_count);
  llvm_cbe_tmp__122 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__121&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%124 = getelementptr inbounds float* %%xcr, i64 %%123, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_263_count);
  llvm_cbe_tmp__123 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__122))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__122));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%121, float* %%124, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_264_count);
  *llvm_cbe_tmp__123 = llvm_cbe_tmp__120;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__120);
if (AESL_DEBUG_TRACE)
printf("\n  %%125 = fsub float %%16, %%43, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_265_count);
  llvm_cbe_tmp__124 = (float )((float )(llvm_cbe_tmp__15 - llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__124, *(int*)(&llvm_cbe_tmp__124));
if (AESL_DEBUG_TRACE)
printf("\n  %%126 = fadd float %%125, %%72, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_266_count);
  llvm_cbe_tmp__125 = (float )((float )(llvm_cbe_tmp__124 + llvm_cbe_tmp__71));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__125, *(int*)(&llvm_cbe_tmp__125));
if (AESL_DEBUG_TRACE)
printf("\n  %%127 = fsub float %%126, %%100, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_267_count);
  llvm_cbe_tmp__126 = (float )((float )(llvm_cbe_tmp__125 - llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__126, *(int*)(&llvm_cbe_tmp__126));
if (AESL_DEBUG_TRACE)
printf("\n  %%128 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 2, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_268_count);
  llvm_cbe_tmp__127 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )2), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )2));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__127);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%129 = zext i16 %%128 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_269_count);
  llvm_cbe_tmp__128 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__127&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__128);
if (AESL_DEBUG_TRACE)
printf("\n  %%130 = getelementptr inbounds float* %%xci, i64 %%129, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_270_count);
  llvm_cbe_tmp__129 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__128))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__128));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%127, float* %%130, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_271_count);
  *llvm_cbe_tmp__129 = llvm_cbe_tmp__126;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__126);
if (AESL_DEBUG_TRACE)
printf("\n  %%131 = fsub float %%14, %%43, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_272_count);
  llvm_cbe_tmp__130 = (float )((float )(llvm_cbe_tmp__13 - llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__130, *(int*)(&llvm_cbe_tmp__130));
if (AESL_DEBUG_TRACE)
printf("\n  %%132 = fsub float %%131, %%61, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_273_count);
  llvm_cbe_tmp__131 = (float )((float )(llvm_cbe_tmp__130 - llvm_cbe_tmp__60));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__131, *(int*)(&llvm_cbe_tmp__131));
if (AESL_DEBUG_TRACE)
printf("\n  %%133 = fadd float %%132, %%100, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_274_count);
  llvm_cbe_tmp__132 = (float )((float )(llvm_cbe_tmp__131 + llvm_cbe_tmp__99));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__132, *(int*)(&llvm_cbe_tmp__132));
if (AESL_DEBUG_TRACE)
printf("\n  %%134 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 3, i16 zeroext %%storemerge3) nounwind, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_275_count);
  llvm_cbe_tmp__133 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )3), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )3));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__133);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%135 = zext i16 %%134 to i64, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_276_count);
  llvm_cbe_tmp__134 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__133&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__134);
if (AESL_DEBUG_TRACE)
printf("\n  %%136 = getelementptr inbounds float* %%xcr, i64 %%135, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_277_count);
  llvm_cbe_tmp__135 = (float *)(&llvm_cbe_xcr[(((signed long long )llvm_cbe_tmp__134))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__134));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%133, float* %%136, align 4, !dbg !4 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_278_count);
  *llvm_cbe_tmp__135 = llvm_cbe_tmp__132;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__132);
if (AESL_DEBUG_TRACE)
printf("\n  %%137 = fadd float %%16, %%32, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_279_count);
  llvm_cbe_tmp__136 = (float )((float )(llvm_cbe_tmp__15 + llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__136, *(int*)(&llvm_cbe_tmp__136));
if (AESL_DEBUG_TRACE)
printf("\n  %%138 = fsub float %%137, %%72, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_280_count);
  llvm_cbe_tmp__137 = (float )((float )(llvm_cbe_tmp__136 - llvm_cbe_tmp__71));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__137, *(int*)(&llvm_cbe_tmp__137));
if (AESL_DEBUG_TRACE)
printf("\n  %%139 = fsub float %%138, %%89, !dbg !8 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_281_count);
  llvm_cbe_tmp__138 = (float )((float )(llvm_cbe_tmp__137 - llvm_cbe_tmp__88));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__138, *(int*)(&llvm_cbe_tmp__138));
if (AESL_DEBUG_TRACE)
printf("\n  %%140 = tail call zeroext i16 @calc_index(i16 zeroext %%11, i16 zeroext 3, i16 zeroext %%storemerge3) nounwind, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_282_count);
  llvm_cbe_tmp__139 = (unsigned short ) /*tail*/ calc_index(llvm_cbe_tmp__10, ((unsigned short )3), llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__10);
printf("\nArgument  = 0x%X",((unsigned short )3));
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__139);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%141 = zext i16 %%140 to i64, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_283_count);
  llvm_cbe_tmp__140 = (unsigned long long )((unsigned long long )(unsigned short )llvm_cbe_tmp__139&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  %%142 = getelementptr inbounds float* %%xci, i64 %%141, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_284_count);
  llvm_cbe_tmp__141 = (float *)(&llvm_cbe_xci[(((signed long long )llvm_cbe_tmp__140))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__140));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%139, float* %%142, align 4, !dbg !5 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_285_count);
  *llvm_cbe_tmp__141 = llvm_cbe_tmp__138;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__138);
if (AESL_DEBUG_TRACE)
printf("\n  %%143 = add i16 %%storemerge12, 1, !dbg !7 for 0x%I64xth hint within @FFT_DIT4_FUNC  --> \n", ++aesl_llvm_cbe_286_count);
  llvm_cbe_tmp__142 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_storemerge12&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__142&65535ull)));
  if (((llvm_cbe_tmp__142&65535U) == (((unsigned short )4)&65535U))) {
    goto llvm_cbe_tmp__144;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned short )llvm_cbe_tmp__142;   /* for PHI node */
    goto llvm_cbe_tmp__143;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__145:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @FFT_DIT4_FUNC}\n");
  return;
}

