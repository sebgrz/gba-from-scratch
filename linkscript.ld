/*
 * Setup entry point to _start label which is exist in loader.s file
 * */
ENTRY(_start)

MEMORY
{
	rom  (rx) : ORIGIN = 0x08000000, LENGTH = 32M
	iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
	ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
}

SECTIONS {
	.text : {
		*(.text.loader) /* Load loader section at the first address of ROM memory */
		*(.text*) /* Load remaining source code */
	} > rom

  .rodata : {
		*(.rodata*)
	} > ewram

	.bss : {
		*(.bss*)
	} > ewram

  .data : {
		*(.data*)
	} > ewram
}
