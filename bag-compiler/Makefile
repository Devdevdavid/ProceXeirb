TARGET          = bag-compiler

SRCDIR          = ./src
OBJDIR          = ./obj
BINDIR          = ./bin
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
BAG_LIB_CFLAG   = -DLOG_SUPPORT_COLOR

RM 				= rm -f

all: updtVersion library $(BINTARG)

debug: CFLAGS += -DDEBUG -g
debug: BAG_LIB_CFLAG += -DDEBUG -g
debug: all

library: 
	$(MAKE) -C ../bag-library -B ADD_CFLAGS="$(BAG_LIB_CFLAG)" USE_GPP=true

$(BINTARG): $(OBJECTS) $(addsuffix .o, $(BAG_LIB_DIR)/$(BAG_LIB))
	$(LINKER) $@ $^ $(LFLAGS) $(LIBS) 

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

updtVersion:
	SESVersionIncrementer -i ./src/global.hpp -d APP_VERSION

.PHONY:	clean
clean:
	rm -f $(OBJECTS)

install: all
	cp $(BINTARG) /usr/local/bin
