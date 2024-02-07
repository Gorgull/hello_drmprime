ifndef FFINSTALL
FFINSTALL=/usr
endif
CFLAGS=-I$(FFINSTALL)/include/arm-linux-gnueabihf -I/usr/include/libdrm 
LDFLAGS=-L$(FFINSTALL)/lib/arm-linux-gnueabihf
LDLIBS=-lavcodec -lavfilter -lavutil -lavformat -ldrm -lpthread

# Pierre: make DEBUG=1 to build in Debug
DEBUG ?= 1
ifeq ($(DEBUG), 1)
    CFLAGS += -DDEBUG -g
else
    CFLAGS += -DNDEBUG
endif

hello_drmprime: hello_drmprime.o drmprime_out.o

