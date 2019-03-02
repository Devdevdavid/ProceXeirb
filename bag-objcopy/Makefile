TARGET          = bag-objcopy

SRCDIR          = src
OBJDIR          = obj
BINDIR          = bin
BAG_LIB_DIR     = ../bag-library/obj

BINTARG         = $(BINDIR)/$(TARGET)

CC				= gcc
LINKER		 	= gcc -o

CFLAGS          = -std=c99 -Wall -D IS_BINARY_MODE
LFLAGS          = 
LIBS            = 

SOURCES         := $(shell find $(SRCDIR) -name '*.c')
HEADERS         := $(shell find $(SRCDIR) -name '*.h')
OBJECTS         := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
BAG_LIB     	:= bag_devlib

RM 				= rm -f

all: library $(BINTARG)

library: 
	$(MAKE) -C ../bag-library

$(BINTARG): $(OBJECTS) $(addsuffix .o, $(BAG_LIB_DIR)/$(BAG_LIB))
	$(LINKER) $@ $^ $(LFLAGS) $(LIBS) 

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@
	
.PHONY:	clean
clean:
	rm -f $(OBJECTS)

install: all
	cp $(BINTARG) /usr/local/bin
