#gdbstub_blinky

This esp8266 project builds on the [source code
example](https://github.com/esp8266/source-code-examples) for a blinky
project and the
[esp-gdbstub](https://github.com/espressif/esp-gdbstub) from
Espressif.

The project is intended for use with the
[esp-open-sdk](https://github.com/pfalcon/esp-open-sdk).

##Use

1. Setup the SDK as per the esp-open-sdk
[instructions](https://github.com/pfalcon/esp-open-sdk).

2. Build and flash:

   ```
   make clean
   make
   make flash
   ```

3. Restart the esp8266

4. Start gdb
   ```
   xtensa-lx106-elf-gdb -x gdbstub/gdbcmds
   ```
   This assumes your esp8266 is connected to /dev/ttyUSB0.

