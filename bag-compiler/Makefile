TARGET          = bag-compiler

SRCDIR          = src
OBJDIR          = obj
BINDIR          = bin
BAG_LIB_DIR     = ../bag-library/obj

BINTARG         = $(BINDIR)/$(TARGET)

CC				= g++
LINKER		 	= g++ -o

CFLAGS          = -std=gnu++11 -Wall
LFLAGS          = 
LIBS            = 

SOURCES         := $(shell find $(SRCDIR) -name '*.cpp')
HEADERS         := $(shell find $(SRCDIR) -name '*.hpp')
OBJECTS         := $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
BAG_LIB     	:= bag_devlib

RM 				= rm -f

all: library $(BINTARG)

library: 
	$(MAKE) -C ../bag-library

$(BINTARG): $(OBJECTS) $(addsuffix .o, $(BAG_LIB_DIR)/$(BAG_LIB))
	$(LINKER) $@ $^ $(LFLAGS) $(LIBS) 

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY:	clean
clean:
	rm -f $(OBJECTS)

install: all
	cp $(BINTARG) /usr/local/bin
