AS=aarch64-linux-gnu-as
LD=aarch64-linux-gnu-ld
CC=aarch64-linux-gnu-gcc -static

L_PATH=/opt/gcc-aarch64/aarch64-linux-gnu/libc/

build:
	@$(AS) mul.asm -o mul.o
	@$(CC) -o mul mul.o

run: build
	@qemu-aarch64  -L $(L_PATH) mul || true

clean:
	rm -f mul.o mul
