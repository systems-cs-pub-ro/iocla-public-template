AS=aarch64-linux-gnu-as
LD=aarch64-linux-gnu-ld
CC=aarch64-linux-gnu-gcc -static

L_PATH=/opt/gcc-aarch64/aarch64-linux-gnu/libc/

build:
	@$(AS) flags.asm -o flags.o
	@$(CC) -o flags flags.o

run: build
	@qemu-aarch64 -L $(L_PATH) flags || true

clean:
	rm -f flags.o flags
