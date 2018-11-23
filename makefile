GCC = gcc
OBJECTS = example.o progression.o


all: example

example: $(OBJECTS)
	$(GCC) $^ -o $@

example.o: example.c example.h
	$(GCC) -c $<


progression.o: progression.asm
	fasm $<

.PHONY: clean
clean:
	rm *.o

