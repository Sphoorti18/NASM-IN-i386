CREATE TABLE ArchitectureComparison (
    Feature VARCHAR(255),
    i386 VARCHAR(255),
    i387 VARCHAR(255),
    i85 VARCHAR(255)
);

INSERT INTO ArchitectureComparison (Feature, i386, i387, i85) VALUES
('Type', 'CPU', 'Math Coprocessor', 'Microcontroller'),
('Instruction Set', 'x86', 'x87 (Floating-point unit)', '8085 instruction set'),
('Register File', '32-bit General purpose registers', '64KB registers for floating-point operations', '8-bit registers (Accumulator, B, C, D, E, H, L, Flag register)'),
('Memory Architecture', 'Segmented memory management', 'No dedicated memory (only registers)', 'Harvard architecture (Separate program and data memory)'),
('Addressing Modes', 'Multiple addressing modes (Register direct, register indirect, immediate, etc.)', 'Limited addressing modes', 'Simple addressing modes (direct, indirect, immediate)'),
('ALU', '32-bit Arithmetic Logic Unit', 'Not applicable', '8-bit ALU'),
('Instruction Pipeline', 'No pipeline (early models) or Simple pipeline (later models)', 'Not applicable', 'No pipeline'),
('Coprocessor Support', 'Can integrate a math coprocessor (i387)', 'Not applicable', 'No coprocessor support');

-- Notes:
-- i386 is a general-purpose microprocessor with a complex x86 instruction set and memory management features.
-- i387 is a specialized coprocessor that extends the i386's capabilities for floating-point math.
-- i85 is a microcontroller with a simpler 8-bit instruction set and Harvard architecture for memory efficiency in embedded systems.

-- i85 Architecture Details (if needed):
-- While a detailed table for i85 architecture might be beyond the scope of this comparison, here are some key points:
-- Instruction set: Based on the 8085 instruction set, it includes instructions for arithmetic, logical operations, data transfer, program control, and I/O interfacing.
-- Addressing modes: Limited addressing modes compared to i386, including direct, indirect, and immediate addressing.
-- Stack: Some versions of the i85 might have a small stack for subroutine calls and temporary data storage.
-- Interrupts: Supports a limited number of interrupt sources for handling external events.
