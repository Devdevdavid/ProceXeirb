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
	bag-compiler $(SOURCES) -o $(OBJTARG).asm

# Build Bytes file
$(BINTARG).bytes: $(OBJTARG).asm
	$(RM) $(BINTARG).bytes
	bag-objcopy -i $(OBJTARG).asm -o $(BINTARG).bytes

.PHONY: load
load: all
	bag-upload $(BINTARG).bytes -p $(COMPORT)

# Build all the tools used by this toolchain
.PHONY: tools
tools: 
	$(MAKE) -C bag-upload install
	$(MAKE) -C bag-objcopy install
	$(MAKE) -C bag-compiler install

.PHONY: clean
clean:
	$(RM) $(OBJTARG).asm
	$(MAKE) -C bag-library clean
	$(MAKE) -C bag-upload clean
	$(MAKE) -C bag-objcopy clean
	$(MAKE) -C bag-compiler clean
