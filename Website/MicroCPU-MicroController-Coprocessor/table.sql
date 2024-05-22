CREATE TABLE ComparativeAnalysis (
    Feature VARCHAR(255),
    Microcontroller VARCHAR(255),
    Microprocessor VARCHAR(255),
    Coprocessor VARCHAR(255)
);

INSERT INTO ComparativeAnalysis (Feature, Microcontroller, Microprocessor, Coprocessor) VALUES
('Type', 'Integrated Circuit (IC)', 'Integrated Circuit (IC)', 'Integrated Circuit (IC)'),
('Functionality', 'Self-contained computer for embedded systems', 'Central processing unit for general-purpose computers', 'Specialized processor for offloading tasks from the main CPU'),
('Components', 'CPU, Memory (RAM & ROM), Input/Output (I/O) peripherals - all on a single chip', 'CPU only', 'Math coprocessor: Performs floating-point calculations; Other types exist for specific tasks'),
('Complexity', 'Less complex, designed for specific tasks', 'More complex, designed for broader functionality', 'Varies depending on the coprocessor type'),
('Applications', 'Toys, appliances, robots, industrial control systems', 'Personal computers, servers, workstations', 'Math calculations (i387), Graphics processing (GPU), etc.'),
('Cost', 'Lower due to integration', 'Higher due to higher complexity', 'Varies depending on the coprocessor type'),
('Memory', 'Limited on-chip memory', 'Requires external memory (RAM & ROM)', 'No dedicated memory'),
('Usage', 'Single chip solution for embedded systems', 'Requires additional components (memory, I/O)', 'Works alongside the main CPU');
