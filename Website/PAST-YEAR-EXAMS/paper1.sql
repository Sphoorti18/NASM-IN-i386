-- Here are the answer keys for the questions from both PDFs.

-- PDF: `pcp-micro-theory-question-bank-unitwise.pdf`

-- 1. List the different registers in 80386.
-- The 80386 has several types of registers including general-purpose registers (EAX, EBX, ECX, EDX, ESI, EDI, EBP, ESP), 
-- segment registers (CS, DS, SS, ES, FS, GS), control registers (CR0, CR2, CR3), debug registers (DR0-DR7), 
-- test registers (TR6, TR7), and instruction pointer (EIP) and flags register (EFLAGS).

-- 2. Describe 80386 flag register with significance of each bit in detail.
-- The 80386 flag register (EFLAGS) includes bits like CF (Carry Flag), PF (Parity Flag), AF (Auxiliary Carry Flag), 
-- ZF (Zero Flag), SF (Sign Flag), TF (Trap Flag), IF (Interrupt Enable Flag), DF (Direction Flag), OF (Overflow Flag), 
-- IOPL (I/O Privilege Level), NT (Nested Task), RF (Resume Flag), VM (Virtual Mode), and AC (Alignment Check). 
-- Each bit has a specific role in controlling processor operations and indicating statuses.

-- 3. Explain the data types supported by 80386.
-- The 80386 supports various data types including bytes (8 bits), words (16 bits), double words (32 bits), and quad words (64 bits). 
-- It also supports pointers and BCD (Binary Coded Decimal) data types.

-- 4. Explain GDT, LDT, and IDT.
-- The Global Descriptor Table (GDT) holds global descriptors that define the characteristics of various memory segments. 
-- The Local Descriptor Table (LDT) is similar to the GDT but is used for defining segments local to a particular task. 
-- The Interrupt Descriptor Table (IDT) is used by the processor to determine the correct response to interrupts and exceptions.

-- 5. What is descriptor table? Explain in detail.
-- Descriptor tables in 80386 include the GDT, LDT, and IDT, which store segment descriptors that define the size, base address, 
-- and access privileges of memory segments. These tables are crucial for the processor's memory management and protection mechanisms.

-- 6. Explain various types of descriptor tables with their functions.
-- The GDT defines global memory segments, the LDT defines task-specific segments, and the IDT handles interrupt vectors. 
-- Each type of table plays a key role in the 80386’s memory management and task switching mechanisms.

-- 7. What is the use of the following instructions? i)WAIT ii)LOCK
-- i) WAIT: Pauses the processor until the TEST input pin is asserted. It’s used for synchronization with coprocessors.
-- ii) LOCK: Prefix used to ensure exclusive use of shared memory in multi-processor environments.

-- 8. What is the use of the Direction Flag?
-- The Direction Flag (DF) in the EFLAGS register controls the direction of string operations. If DF is set, string operations 
-- decrement the index registers; if clear, they increment them.

-- 9. Explain the following instructions, mention flags affected: i) CWD ii) BT iii) LAHF
-- i) CWD (Convert Word to Doubleword): Converts a signed word in AX to a signed doubleword in DX:AX.
-- ii) BT (Bit Test): Tests a specific bit in a register or memory.
-- iii) LAHF (Load AH from Flags): Loads the lower byte of the flag register into AH. Flags affected depend on the operation being performed.

-- 10. Explain immediate and register addressing mode with an example.
-- Immediate addressing mode uses a constant value as an operand. Example: `MOV AX, 5` loads the value 5 into AX.
-- Register addressing mode uses a register as an operand. Example: `MOV AX, BX` moves the value in BX into AX.

-- 11. Explain with example SHL and ROL instructions.
-- SHL (Shift Left): Shifts bits in a register left, filling the least significant bit with 0. Example: `SHL AX, 1` shifts AX left by one bit.
-- ROL (Rotate Left): Rotates bits in a register left, with the highest bit rotated into the lowest bit position. Example: `ROL AX, 1` rotates AX left by one bit.

-- 12. Explain the following instructions, mention flags affected: i) LIDT ii) CLD iii)MOVS
-- i) LIDT (Load Interrupt Descriptor Table): Loads the IDTR with the address and limit of the IDT.
-- ii) CLD (Clear Direction Flag): Clears the DF in EFLAGS, causing string operations to increment the index registers.
-- iii) MOVS (Move String): Moves data from memory addressed by DS:SI to ES:DI. DF affects the direction of the operation.

