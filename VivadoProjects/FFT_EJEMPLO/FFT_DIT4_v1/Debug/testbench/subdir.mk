################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Clarodrive/Adaviv_proy/FFT4v4_test.c 

OBJS += \
./testbench/FFT4v4_test.o 

C_DEPS += \
./testbench/FFT4v4_test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/FFT4v4_test.o: D:/Clarodrive/Adaviv_proy/FFT4v4_test.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/systemc/include -IE:/Xilinx/Vivado_HLS/2016.1/include/ap_sysc -IE:/Xilinx/Vivado_HLS/2016.1/include/etc -IE:/Xilinx/Vivado_HLS/2016.1/include -ID:/Clarodrive/Adaviv_proy -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


