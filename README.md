# Hello World Assembly Program

This project contains a simple "Hello, World!" program written in x86 assembly language for Linux. It demonstrates basic assembly language syntax and system calls for writing to standard output and exiting a program.

## Prerequisites

To assemble and run this program, you need to have the Netwide Assembler (NASM) and the GNU linker (ld) installed on your Linux system.

- Install NASM: `sudo apt-get install nasm` (Debian/Ubuntu) or `sudo dnf install nasm` (Fedora/RHEL).
- The GNU linker (ld) is typically installed by default with the build-essential package on Linux.

## Files

- `hello.asm`: The assembly source code.
- `Makefile`: A makefile to assemble and link the program with a single command.

## Building the Program

To build the program, run the following command in the terminal:

```bash
make
```

This command will use the Makefile to assemble `hello.asm` into an object file and then link it to create an executable named `hello`.

## Running the Program

After building the program, you can run it by executing:

```bash
./hello
```

This will print `Hello, World!` to the console.

## Cleaning Up

To remove the object file and the executable, run:

```bash
make clean
```

This command will clean up the build artifacts, leaving only the source files.

## License

This project is open source and available under the MIT License.
