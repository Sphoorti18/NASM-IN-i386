-- PDF: `E-AP_Material_Unit-2_11112014_054024AM.pdf`

-- 1. Explain system address and system segment registers of 80386.
-- System address registers include GDTR, LDTR, IDTR, and TR. These registers hold the base addresses of their respective 
-- descriptor tables. Segment registers (CS, DS, SS, ES, FS, GS) hold segment selectors that index into descriptor tables 
-- to get the base address, limit, and access rights of segments.

-- 2. Write a short note on Physical Address Space of an 80386 system.
-- The physical address space of 80386 can address up to 4 GB of memory. It is formed by combining the base address from 
-- a segment descriptor with an offset value. This address is then mapped to physical memory through paging mechanisms.

-- 3. How is the virtual address translated into physical address when paging is disabled?
-- When paging is disabled, the virtual address is directly the same as the physical address. The segmentation mechanism 
-- is used to translate a logical address to a linear address, which in turn is treated as the physical address.

-- 4. Draw the general segment descriptor format. Explain the significance of each field in it.
-- The segment descriptor format includes fields for the base address, segment limit, segment type, descriptor type, 
-- DPL (Descriptor Privilege Level), S (System segment bit), and G (Granularity bit). Each field specifies different 
-- aspects of the segment's properties and access control.

-- 5. What is the function of the granularity bit?
-- The granularity bit (G) in a segment descriptor determines the scaling of the segment limit. If G=0, the limit is in bytes; 
-- if G=1, the limit is in 4KB pages.

-- 6. State how the granularity bit affects the limit field.
-- If the granularity bit is set (G=1), the segment limit is multiplied by 4KB. For example, a limit value of 0xFFFF with 
-- G=1 means the segment is 4GB in size. If G=0, the limit specifies the exact number of bytes.

-- 7. Give the classification of segment descriptors.
-- Segment descriptors are classified into code segments, data segments, system segments (including task state segments 
-- and descriptor tables), and gate descriptors (call gates, interrupt gates, trap gates).

-- 8. Define the purpose of each debug register in 80386.
-- DR0-DR3 are breakpoint registers that hold linear addresses for breakpoints. DR6 is the debug status register, and 
-- DR7 is the debug control register, which controls the conditions under which breakpoints are triggered.

-- 9. Explain CR0 register with significance of each bit.
-- The CR0 register includes bits like PE (Protection Enable), MP (Monitor Coprocessor), EM (Emulation), TS (Task Switched), 
-- ET (Extension Type), and PG (Paging). Each bit controls a specific system-level feature like enabling protected mode, 
-- paging, and coprocessor functions.

-- 10. Define the purpose of each control register in 80386.
-- CR0: Controls system-wide operations like enabling protected mode and paging.
-- CR2: Holds the page-fault linear address.
-- CR3: Contains the base address of the page directory used in paging operations.

-- 11. What is the function of test registers?
-- Test registers (TR6 and TR7) are used for testing the Translation Lookaside Buffer (TLB). They provide mechanisms to 
-- write and read test patterns to and from the TLB.

-- 12. Explain the function of the segment registers in 80386DX.
-- Segment registers (CS, DS, SS, ES, FS, GS) in the 80386DX hold segment selectors that point to segment descriptors. 
-- These registers are used to access different memory segments and manage the protection and privilege levels of code and data.


