AS=aarch64-linux-gnu-as
LD=aarch64-linux-gnu-ld
CC=aarch64-linux-gnu-gcc -static

L_PATH=/opt/gcc-aarch64/aarch64-linux-gnu/libc/

build:
	@$(AS) mem.asm -o mem.o
	@$(CC) -o mem mem.o

run: build
	@qemu-aarch64 -L $(L_PATH) mem || true

clean:
	rm -f mem.o mem
