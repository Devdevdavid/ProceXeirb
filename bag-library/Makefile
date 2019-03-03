TARGET          = bag-library

SRCDIR          = src
OBJDIR          = obj

# Define USE_GPP=true is you want to use g++ instead of the default gcc
# This is needed by bag-compiler 
ifeq ($(USE_GPP),true)
	CC				= g++
	LINKER		 	= g++ -o
	CC_STD			= -std=gnu++11
else
	CC				= gcc
	LINKER		 	= gcc -o
	CC_STD			= -std=c99
endif

# Additional CFLAG passing by make argument
CFLAGS          = $(CC_STD) -Wall $(ADD_CFLAGS)
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
