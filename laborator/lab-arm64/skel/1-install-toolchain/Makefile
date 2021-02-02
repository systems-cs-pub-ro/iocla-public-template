AS=aarch64-linux-gnu-as
LD=aarch64-linux-gnu-ld
CC=aarch64-linux-gnu-gcc -static

L_PATH=/opt/gcc-aarch64/aarch64-linux-gnu/libc/

build:
	@$(AS) helloworld.asm -o helloworld.o
	@$(LD) -o hello helloworld.o

run: build
	@qemu-aarch64 -L $(L_PATH) hello || true

clean:
	rm -f helloworld.o hello
