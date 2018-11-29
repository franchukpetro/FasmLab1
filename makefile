GCC = gcc

all: example asm_example

asm_example: func_call.o progression.o
	$(GCC) $^ -o $@ -g

example: example.o progression.o
	$(GCC) $^ -o $@ -g

example.o: example.c example.h
	$(GCC) -c $< -g

progression.o: progression.asm
	fasm $<

func_call.o: func_call.asm
	fasm $<

.PHONY: clean
clean:
	rm *.o

