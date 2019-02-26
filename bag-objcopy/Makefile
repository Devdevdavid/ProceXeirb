TARGET          = bag-objcopy

SRCDIR          = src
OBJDIR          = obj
BINDIR          = bin

BINTARG         = $(BINDIR)/$(TARGET)

CC				= gcc
LINKER		 	= gcc -o

CFLAGS          = -std=c99 -Wall
LFLAGS          = 
LIBS            = 

SOURCES         := $(shell find $(SRCDIR) -name '*.c')
HEADERS         := $(shell find $(SRCDIR) -name '*.h')
OBJECTS         := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

RM 				= rm -f

all: $(BINTARG)

$(BINTARG): $(OBJECTS) 
	$(LINKER) $@ $(OBJECTS) $(LFLAGS) $(LIBS) 

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY:	clean
clean:
	rm -f $(BINTARG) $(OBJECTS)

install: all
	cp $(BINTARG) /usr/local/bin
