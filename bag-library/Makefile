TARGET          = bag-library

SRCDIR          = src
OBJDIR          = obj

CC				= gcc
LINKER		 	= gcc -o

# Additional CFLAG passing by make argument
CFLAGS          = -std=c99 -Wall $(ADD_CFLAGS)
#CFLAGS          = -std=gnu++11 -Wall
LFLAGS          = 
LIBS            = 

SOURCES         := $(shell find $(SRCDIR) -name '*.c')
HEADERS         := $(shell find $(SRCDIR) -name '*.h')
OBJECTS         := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

RM 				= rm -f

all: $(OBJECTS) install

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY:	install
install:
	cp $(HEADERS) /usr/local/include

.PHONY:	clean
clean:
	rm -f $(OBJECTS)
