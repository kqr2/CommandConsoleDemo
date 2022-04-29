################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/Console/console.c \
../Core/Src/Console/consoleCommands.c \
../Core/Src/Console/consoleIo.c 

OBJS += \
./Core/Src/Console/console.o \
./Core/Src/Console/consoleCommands.o \
./Core/Src/Console/consoleIo.o 

C_DEPS += \
./Core/Src/Console/console.d \
./Core/Src/Console/consoleCommands.d \
./Core/Src/Console/consoleIo.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/Console/%.o Core/Src/Console/%.su: ../Core/Src/Console/%.c Core/Src/Console/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-Console

clean-Core-2f-Src-2f-Console:
	-$(RM) ./Core/Src/Console/console.d ./Core/Src/Console/console.o ./Core/Src/Console/console.su ./Core/Src/Console/consoleCommands.d ./Core/Src/Console/consoleCommands.o ./Core/Src/Console/consoleCommands.su ./Core/Src/Console/consoleIo.d ./Core/Src/Console/consoleIo.o ./Core/Src/Console/consoleIo.su

.PHONY: clean-Core-2f-Src-2f-Console

