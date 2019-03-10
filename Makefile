CC=gcc
AS=nasm

.PHONY: all clean

myprelib32: myprelib.c
	$(CC) -o myprelib32.so -fPIC -shared -D_GNU_SOURCE myprelib.c -ldl -m32

myprelib: myprelib.c
	$(CC) -o myprelib.so -fPIC -shared -D_GNU_SOURCE myprelib.c -ldl

clean:
	rm -f $(OBJ)

