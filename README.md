# Learn Assembly Language Programming

1. Use `nasm` to create object files from .asm file
```
nasm -f elf64 -o output/HelloWorld.o FirstSteps/HelloWorld.asm
```

2. Use `linker` to generating the binary file to execute
```
ld -s -o targets/HelloWorld  output/HelloWorld.o
```

3. Execute the generated file
```
./HelloWorld
```
