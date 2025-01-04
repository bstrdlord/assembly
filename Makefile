build:
	nasm -f elf64 for-loop.nasm -o main.o
	ld main.o -o main
	./main
