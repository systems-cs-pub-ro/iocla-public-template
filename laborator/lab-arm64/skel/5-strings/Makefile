AS=aarch64-linux-gnu-as
LD=aarch64-linux-gnu-ld
CC=aarch64-linux-gnu-gcc -static

L_PATH=/opt/gcc-aarch64/aarch64-linux-gnu/libc/

build:
	@$(AS) strings.asm -o strings.o
	@$(CC) -o strings strings.o

run: build
	@qemu-aarch64 -L $(L_PATH) strings || true

clean:
	rm -f strings.o strings
