###Exceptions and Interrupts
Special type of control transfer (Conditional and loop statements in programming languages), behind the scenes procedure calls. 
Change the normal flow of the code execution to handle interrupts or exceptions.

###Difference b/t Exceptions and Interrupts
**Exceptions** ==> TYPES/ SRC's |--> PROCESSOR DETECTED ==> Faults, traps and aborts.
                                |--> SOFTWARE INTERRUPTS/ PROGRAMMED == INTO, INT 3, INT n and BOUND can trigger exceptions
               ==> IDENTIFYING |--> Associating ID numbers to different interrupts 
               
**Interrupts** ==> TYPES/ SRC's |--> MASKABLE ==> Signalled via INTR pin
                                |--> NON-MASKABLE ==> Signalled via NMI pin
               ==> IDENTIFYING |--> Associating ID numbers to different interrupts 
                         
               
