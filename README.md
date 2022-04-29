# Command Console Demo

This is a Command Console Demo which ports https://wokwi.com/projects/324879108372693587 to the STM32F429 Discovery Kit and adds a few additional user commands.

STM32CubeMX was used to generate the initial pin configurations and project files for the STM32F429 Discovery Kit.  I did not configure the individual pins myself and used the default pin settings for this project board. Only change needed was to set the project output for STM32CubeIDE which was then used to compile and debug the project.

In order to port the demo from wokwi, the following changes were made:
- Implementation added for `__io_putchar(int ch)` in *main.c* using `HAL_UART_Transmit()` to remap UART to stdout
- Implementation added for `__io_getchar(void)` in *main.c* using `HAL_UART_Receive()` to remap UART to stdin
- Once stdin/stdout remapped which enables use of C stdio functions such as `printf`, disable buffering via  `setvbuf(stdin, NULL, _IONBF, 0)` and `setvbuf(stdout, NULL, _IONBF, 0)` to avoid blocking buffering delays
- Unzipped *RPi Pico with Elecia's CLI.zip* from wokwi and added to *CommandConsoleDemo/Core/Src/Console*
- Removed from *CommandConsoleDemo/Core/Src/Console*: **main.c, diagram.json**
- Change uart0 to huart1
- Remap `uart_is_readable(uart0)` to `_HAL_UART_GET_FLAG(&huart1, UART_FLAG_RXNE)` in *CommandConsoleDemo/Core/Src/Console/consoleio.c:ConsoleIoReceive()* 
- Remap `uart_getc(uart0)` to `getchar()` in `ConsoleIoReceive()`
- Remap `uart_putc(uart0, ch)` to `putchar(ch)` in `ConsoleIoReceive()`
- Move `ConsoleInit()` and `ConsoleProcess()` loop into *CommandConsoleDemo/Core/Src/main.c*

Added 3 new user functions to the demo:
- led_delay : set led flashing delay in milliseconds
- led_sel : select red or green led to flash
- led_set : set non-flashing led to on or off