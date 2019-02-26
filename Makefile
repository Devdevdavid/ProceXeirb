TARGET          = test_conditions

SRCDIR          = prog
OBJDIR          = obj
BINDIR          = bin

COMPORT         = COM1

OBJTARG         = $(OBJDIR)/$(TARGET)
BINTARG         = $(BINDIR)/$(TARGET)

SOURCES         := $(SRCDIR)/$(TARGET).bag

RM 				= @rm -f
MAKE			= @make

.PHONY: all
all: $(BINTARG).bytes

# Build ASM file
$(OBJTARG).asm: $(SOURCES)
	bag-compiler $(SOURCES) $(OBJTARG).asm

# Build Bytes file
$(BINTARG).bytes: $(OBJTARG).asm
	$(RM) $(BINTARG).bytes
	bag-objcopy $(OBJTARG).asm $(BINTARG).bytes

.PHONY: load
load: all
	bag-upload $(BINTARG).bytes $(COMPORT)

# Build all the tools used by this toolchain
.PHONY: tools
tools: 
	$(MAKE) -C bag-upload
	$(MAKE) -C bag-objcopy
	$(MAKE) -C bag-compiler

.PHONY: clean
clean:
	$(RM) $(BINTARG).bytes $(BINTARG).asm
