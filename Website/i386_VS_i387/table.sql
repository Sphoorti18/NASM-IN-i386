CREATE TABLE i386_i387_Comparison (
    Feature VARCHAR(255),
    i386 VARCHAR(255),
    i387 VARCHAR(255)
);

INSERT INTO i386_i387_Comparison (Feature, i386, i387) VALUES
('Type', 'Central Processing Unit (CPU)', 'Math Coprocessor'),
('Function', 'Performs integer operations and basic instructions', 'Performs floating-point arithmetic and mathematical functions'),
('Necessity', 'Main CPU for the system', 'Optional for enhanced floating-point performance'),
('Released', '1985', '1987 (2 years after i386)'),
('Compatibility', 'Requires a separate math coprocessor slot (i387) for some models. Later i386 models integrated the FPU.', 'Works only with the standard i386 CPU (32-bit bus). Incompatible with i386SX (16-bit bus).'),
('Performance', 'Slower for floating-point calculations (handled by software emulation)', 'Significantly faster floating-point performance compared to software emulation'),
('Notes', 'Early i386 motherboards might have had a socket for the older 80287 coprocessor.', '');

 
