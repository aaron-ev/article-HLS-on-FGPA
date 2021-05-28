################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Clarodrive/Adaviv_proy/FFT4v4.c \
D:/Clarodrive/Adaviv_proy/calc_index.c \
D:/Clarodrive/Adaviv_proy/div_floor.c \
D:/Clarodrive/Adaviv_proy/four_raised_to_x.c 

OBJS += \
./source/FFT4v4.o \
./source/calc_index.o \
./source/div_floor.o \
./source/four_raised_to_x.o 

C_DEPS += \
./source/FFT4v4.d \
./source/calc_index.d \
./source/div_floor.d \
./source/four_raised_to_x.d 


# Each subdirectory must supply rules for building sources it contributes
source/FFT4v4.o: D:/Clarodrive/Adaviv_proy/FFT4v4.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/systemc/include -IE:/Xilinx/Vivado_HLS/2016.1/include/ap_sysc -IE:/Xilinx/Vivado_HLS/2016.1/include/etc -IE:/Xilinx/Vivado_HLS/2016.1/include -ID:/Clarodrive/Adaviv_proy -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/calc_index.o: D:/Clarodrive/Adaviv_proy/calc_index.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/systemc/include -IE:/Xilinx/Vivado_HLS/2016.1/include/ap_sysc -IE:/Xilinx/Vivado_HLS/2016.1/include/etc -IE:/Xilinx/Vivado_HLS/2016.1/include -ID:/Clarodrive/Adaviv_proy -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/div_floor.o: D:/Clarodrive/Adaviv_proy/div_floor.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/systemc/include -IE:/Xilinx/Vivado_HLS/2016.1/include/ap_sysc -IE:/Xilinx/Vivado_HLS/2016.1/include/etc -IE:/Xilinx/Vivado_HLS/2016.1/include -ID:/Clarodrive/Adaviv_proy -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/four_raised_to_x.o: D:/Clarodrive/Adaviv_proy/four_raised_to_x.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/systemc/include -IE:/Xilinx/Vivado_HLS/2016.1/include/ap_sysc -IE:/Xilinx/Vivado_HLS/2016.1/include/etc -IE:/Xilinx/Vivado_HLS/2016.1/include -ID:/Clarodrive/Adaviv_proy -IE:/Xilinx/Vivado_HLS/2016.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


