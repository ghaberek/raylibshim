
ifeq ($(OS),Windows_NT)
    LIBPRE := 
    LIBEXT := .dll
else
    LIBPRE := lib
    LIBEXT := .so
endif

override CFLAGS += -O2 -s

TARGET = $(LIBPRE)raylibshim$(LIBEXT)

all : $(TARGET)

$(TARGET) : raylibshim.c
	$(CC) -shared $(CFLAGS) -o $@ $< -I$(RAYLIBDIR) $(RAYLIBDIR)\raylib.dll

clean :
	@del $(TARGET)
