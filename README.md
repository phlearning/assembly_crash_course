
<h1> Assembly Crash Course </h1>

> https://pwn.college/fundamentals/assembly-crash-course/

The course is part of the fundamentals series offered by pwn.college, designed to provide a comprehensive introduction to assembly language programming.

<h2> Table of Content </h2>

- [Course Overview](#course-overview)
- [Key Topics Covered](#key-topics-covered)
- [Learning Format](#learning-format)
- [Target Audience](#target-audience)
- [Some registers](#some-registers)
	- [General-Purpose Registers](#general-purpose-registers)
	- [Extended General-Purpose Registers](#extended-general-purpose-registers)
	- [Instruction Pointer](#instruction-pointer)
	- [Flags Register](#flags-register)
	- [Instruction Pointer and Flags](#instruction-pointer-and-flags)

## Course Overview

The Assembly Crash Course covers a wide range of topics, from basic register operations to more advanced concepts like control flow and library function usage. It's structured to provide hands-on experience through a series of challenges, allowing learners to practice and apply their knowledge.

## Key Topics Covered

- **Register Operations**: Setting single and multiple registers
- **Arithmetic Operations**: Addition, multiplication, division, and modulus
- **Register Sizes**: Understanding different register sizes and their implications
- **Bitwise Operations**: Shift, AND, and other logical operations
- **Memory Operations**: Reading from and writing to memory
- **Stack Usage**: Manipulating the stack for various operations
- **Control Flow**: Jumps, conditional branches, and jump tables
- **Practical Applications**: Computing averages, implementing strlen, and using library functions
- **Advanced Concepts**: Computing the most common byte

## Learning Format

The course is structured around hands-on challenges. Each topic includes practical exercises that reinforce the concepts learned. This approach allows students to immediately apply their knowledge and gain practical experience in assembly programming.

## Target Audience

This crash course is ideal for:
- Students learning malware analysis
- Programmers looking to understand low-level operations
- Anyone interested in computer architecture and assembly language

## Some registers

### General-Purpose Registers
1. **RAX** - Accumulator register, often used for arithmetic operations and return values from functions.
2. **RBX** - Base register, typically used as a base pointer for data access in memory.
3. **RCX** - Counter register, often used for loop counters and shift operations.
4. **RDX** - Data register, used for I/O operations and as a secondary accumulator.
5. **RSI** - Source Index register, used for string operations and as a source pointer in memory.
6. **RDI** - Destination Index register, used for string operations and as a destination pointer in memory.
7. **RBP** - Base Pointer register, used to point to the base of the stack frame.
8. **RSP** - Stack Pointer register, points to the top of the stack.

### Extended General-Purpose Registers
- **R8** through **R15** - Additional general-purpose registers introduced in the x86-64 architecture, providing more options for holding data or addresses.

### Instruction Pointer
- **RIP** - Instruction Pointer register, holds the address of the next instruction to be executed.

### Flags Register
- **RFLAGS** - The Flags register contains status flags, control flags, and system flags. Some key flags include:
  - **ZF** (Zero Flag) - Set if the result of an operation is zero.
  - **CF** (Carry Flag) - Set if an arithmetic operation generates a carry out of the most significant bit.
  - **OF** (Overflow Flag) - Set if an arithmetic operation generates an overflow.
  - **SF** (Sign Flag) - Set if the result of an operation is negative.
  - **PF** (Parity Flag) - Set if the number of set bits in the result is even.

### Instruction Pointer and Flags
- **RIP** - Holds the address of the next instruction to be executed.
- **RFLAGS** - Contains the status and control flags for various operations.
