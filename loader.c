// The file has same purpose as loader.s file
// Implementation in C - but generated more complicated assebly code
// ASM:
//  08000000 <_start>:
//   8000000:	b	800002c <main>
//
// vs C (no optimization):
// 08000000 <_start>:
//  8000000:	push	{r11, lr}
//  8000004:	add	r11, sp, #4
//  8000008:	bl	8000044 <main>
//  800000c:	nop			; (mov r0, r0)
//  8000010:	sub	sp, r11, #4
//  8000014:	pop	{r11, lr}
//  8000018:	bx	lr

#pragma GCC diagnostic ignored "-Wimplicit-function-declaration"

void _start() {
    main();
}
