TARGET=openpcd2-emulator
ARCH=LPC13
CPU=$(ARCH)42
DEBUG=-g
OPTIM=-O3 -mword-relocations

APP_CFLAGS=-Iinc -std=gnu99 -fgnu89-inline -D__USE_CMSIS
APP_LDFLAGS=-lm

APP_SRC= \
  src/main.c \
  src/pmu.c \
  src/usbserial.c

APP_SRC+=$(IMAGES_C)

all: $(TARGET).bin

app_clean:
	find src -name '*.o' -exec rm \{\} \;

include ../core/Makefile.rules
