@ Setup loader section with _start label in order to
@ load main function from C code
@ Thanks to the linker script, the loader is assigned to the first position of the ROM memory

.global _start
.section .text.loader, "ax"

_start:
@ The b instruction for the ARM CPU is nearly the same as the jmp instruction for the x86 CPU: A jump instruction
@ https://stackoverflow.com/a/48085090
b main
