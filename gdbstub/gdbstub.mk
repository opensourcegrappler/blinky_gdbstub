XTENSA_TOOLS_ROOT = /home/simon/esp-open-sdk/xtensa-lx106-elf/bin

CC := $(XTENSA_TOOLS_ROOT)/xtensa-lx106-elf-gcc
AR := $(XTENSA_TOOLS_ROOT)/xtensa-lx106-elf-ar

#CFLAGS = -Og -g -Wpointer-arith -Wundef -Wl,-EL -fno-inline-functions \
-nostdlib -mlongcalls -mtext-section-literals -D__ets__		      \
-DICACHE_FLASH

CFLAGS = -g -Wall

OBJS = gdbstub/gdbstub.o gdbstub/gdbstub-entry.o

gdbstub/libgdbstub.a: $(OBJS)
	$(CC) -c gdbstub/gdbstub-entry.S $(CFLAGS)
	$(CC) -c gdbstub/gdbstub.c $(CFLAGS)
	$(AR) cru libgdbstub.a $(OBJS) 

