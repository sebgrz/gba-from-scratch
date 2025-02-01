MEMORY
{
	rom  (rx) : ORIGIN = 0x08000000, LENGTH = 32M
	ivram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
	evram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
}

SECTIONS {
	.text : {
		*(.text)
	} > rom
}
