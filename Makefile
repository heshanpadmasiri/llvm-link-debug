export CFLAGS ?= -O2

all: runtime.ll
	llvm-link-12 -o result.bc main.ll runtime.ll

runtime.ll: runtime.c
	clang $(CFLAGS) -S -emit-llvm runtime.c

clean:
	rm -rf runtime.ll
	rm -rf result.bc
