# Makefile for assembling and linking an x86 assembly program

# Name of the assembly source file without extension
SOURCE=hello
# Name of the output executable
OUTPUT=hello

# Assembler and linker
AS=nasm
LD=ld

# Assembly format (elf for Linux)
FORMAT=elf
# Linker options (i386 architecture, silent)
LDFLAGS=-m elf_i386 -s

# Default target
all: $(OUTPUT)

# Rule to assemble the .asm file
$(SOURCE).o: $(SOURCE).asm
	$(AS) -f $(FORMAT) $< -o $@

# Rule to link the object file and create the executable
$(OUTPUT): $(SOURCE).o
	$(LD) $(LDFLAGS) -o $@ $<

# Clean up build files
clean:
	rm -f $(SOURCE).o $(OUTPUT)
