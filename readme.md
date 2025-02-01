### Build
```
arm-none-eabi-gcc loader.s main.c -T linkscript.ld -o main.elf -nostartfiles

OR

arm-none-eabi-gcc loader.c main.c -T linkscript.ld -o main.elf -nostartfiles
```

### Run
Just select `main.elf` file in your favorite gba emulator (I'm using VisualBoyAdvance).

### Helpers

Disassemble ELF file:
```
arm-none-eabi-objdump main.elf --disassemble --demangle --architecture=armv4t --no-show-raw-insn -Mreg-names-st
```

Read all details of ELF file:
```
readelf -a main.elf
```

Show memory segments:
```
arm-none-eabi-size main.elf
```

