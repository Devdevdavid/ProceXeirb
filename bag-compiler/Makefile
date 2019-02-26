TARGET          = bag-compiler

SRCDIR          = src
OBJDIR          = obj
BINDIR          = bin

BINTARG         = $(BINDIR)/$(TARGET)

CC				= g++
LINKER		 	= g++ -o

CFLAGS          = -std=gnu++11 -Wall
LFLAGS          = 
LIBS            = 

SOURCES         := $(shell find $(SRCDIR) -name '*.cpp')
HEADERS         := $(shell find $(SRCDIR) -name '*.hpp')
OBJECTS         := $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

RM 				= rm -f

all: $(BINTARG)

$(BINTARG): $(OBJECTS) 
	$(LINKER) $@ $(OBJECTS) $(LFLAGS) $(LIBS) 

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY:	clean
clean:
	rm -f $(BINTARG) $(OBJECTS)

install: all
	cp $(BINTARG) /usr/local/bin
