CREATE TABLE ProcessorInitialization (
    Section VARCHAR(255),
    Details TEXT
);

-- Insert the data into the table
INSERT INTO ProcessorInitialization (Section, Details) VALUES
('PROCESSOR AFTER RESET', 'Reset == Past <-- Present <----|--------|---------|-----> Past    Present  Future\n\nPROCESSOR Chip has several pins, the main pins are #BUSY and #RESET PINS in this scenario.\n\nWhen the signal is ON for RESET pin then certain registers are set to pre-defined values.\nThis is done for bootstrap program (initialising OS program, OS is the middleman b/t hardware and software)\nbut additional initialisation is required before utilizing all the features of the processor.\nDX register is the main player which holds the number associated with processor type.\nBut why? There are thousands of microprocessor chips and to keep track of them we use number ID.\n\nHOW THIS IS DONE in CIRCUIT NOTATION? :(\n1) '),

('SOFTWARE INITIALIZATION for REAL-ADDRESSING MODE', '1) After RESET, data structures are set up for i86 processor to use it for handling interrupts or exceptions.\n2) While processor remains in real addressing mode then it sets up the data structures to utilize i286 and i386\nplayers for protected mode.\n\nSYSTEM TABLES\n1) NO to descripter tables!\n2) The INT VECTOR TABLE is initialised with pointers to interrupt and exception handlers at index 0,\nbefore it can handle interrupts\nor exceptions.\n3)NMI is always enabled.\n4) To load maskable interrupts or NMI handlers in RAM or memory, there will be time slot after RESET,\nwhere NMI interrupts are disabled.\n\nNMI INTERRUPTS\nHardware must provide a mechanism to prevent NMIs from lurking in, while the processor is in time slot.\n1) SOLUTIONS are ...\n\n1st INSTRUCTION'),

('SWITCHING TO PROTECTED MODE (i286 and i386)', '1) The data structures is dependent on memory management features.\n2) The processor supports segmented models like ...\n\nSYSTEM TABLES\n1) To ACCESS software program, it needs to load at least one of the descriptors, i.e GDT mainly\n(coz, processor never uses index 0) and 2 descripters must be created out of 2^13 descripters.\n2) Descriptors are used for code and data segments (CS + DS, ES, GS).\n3) The stack is in read/write mode, so no descriptors.\n\nNMI INTERRUPTS\nIf the hardware allows NMI, the it should provide LDT and a gate for NMI Interrupt handler routine is enabled.\nBefore using LDT, the base address and limit (size) of LDT must be stored in LDTR register.'),

('SOFTWARE INITIALIZATION for VIRTUAL Addressing Mode (i86)', 'Supports older versions like i88, i188, etc\nThe purpose is to execute Virtual i86 task.\n\n1) The processor is in virtual mode when VM bit in EFLAGS CRed or Green) is set (responsible for status and control).'),

('DEBUGGING', 'The process of identifying and removing bugs in the software programs.\nIt gives the power to programmer to look at dynamic (complicated) state of the processor.\nIt gives step by step on which code is being executed so that the fault can be detected.\nThe DEBUGGING hardware provides breakpoints so that the fault can be easily found.\n\nDEBUGGING Features of i386');

-- Comments:
-- PROCESSOR AFTER RESET
-- Reset == Past <-- Present 
-- <----|--------|---------|----->
--    Past    Present  Future

-- PROCESSOR Chip has several pins, the main pins are #BUSY and #RESET PINS in this scenario.

-- When the signal is ON for RESET pin then certain registers are set to pre-defined values.
-- This is done for bootstrap program (initialising OS program, OS is the middleman b/t hardware and software) 
-- but additional initialisation is required before utilizing all the features of the processor.
-- DX register is the main player which holds the number associated with processor type.
-- But why? There are thousands of microprocessor chips and to keep track of them we use number ID.

-- HOW THIS IS DONE in CIRCUIT NOTATION? :(
-- 1) 

-- SOFTWARE INITIALIZATION for REAL-ADDRESSING MODE
-- 1) After RESET, data structures are set up for i86 processor to use it for handling interrupts or exceptions.
-- 2) While processor remains in real addressing mode then it sets up the data structures to utilize i286 and i386 
-- players for protected mode.

-- SYSTEM TABLES
-- 1) NO to descripter tables!
-- 2) The INT VECTOR TABLE is initialised with pointers to interrupt and exception handlers at index 0, 
-- before it can handle interrupts
-- or exceptions.
-- 3)NMI is always enabled.
-- 4) To load maskable interrupts or NMI handlers in RAM or memory, there will be time slot after RESET,
-- where NMI interrupts are disabled.

-- NMI INTERRUPTS
-- Hardware must provide a mechanism to prevent NMIs from lurking in, while the processor is in time slot.
-- 1) SOLUTIONS are ...

-- 1st INSTRUCTION

-- SWITCHING TO PROTECTED MODE (i286 and i386)
-- 1) The data structures is dependent on memory management features.
-- 2) The processor supports segmented models like ...

-- SYSTEM TABLES
-- 1) To ACCESS software program, it needs to load at least one of the descriptors, i.e GDT mainly 
-- (coz, processor never uses index 0) and 2 descripters must be created out of 2^13 descripters.
-- 2) Descriptors are used for code and data segments (CS + DS, ES, GS).
-- 3) The stack is in read/write mode, so no descriptors.

-- NMI INTERRUPTS
-- If the hardware allows NMI, the it should provide LDT and a gate for NMI Interrupt handler routine is enabled.
-- Before using LDT, the base address and limit (size) of LDT must be stored in LDTR register.

-- SOFTWARE INITIALIZATION for VIRTUAL Addressing Mode (i86)
-- Supports older versions like i88, i188, etc
-- The purpose is to excute Virtual i86 task.

-- 1) The processor is in virtual mode when VM bit in EFLAGS is set (responsible for status and control).

-- DEBUGGING
-- The process of identifying and removing bugs in the software programs.
-- It gives the power to programmer to look at dynamic (complicated) state of the processor.
-- It gives step by step on which code is being executed so that the fault can be detected.
-- The DEBUGGING hardware provides breakpoints so that the fault can be easily found. 

-- DEBUGGING Features of i386

