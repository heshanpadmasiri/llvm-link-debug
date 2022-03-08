export CFLAGS

all: runtime_inline.bc
	llvm-link-12 -o result.bc main.ll runtime_inline.bc

runtime_inline.bc: runtime.h runtime_inline.c
	clang $(CFLAGS) -O2 -emit-llvm runtime_inline.c -c -o runtime_inline.bc

clean:
	rm -rf runtime_inline.bc
	rm -rf result.bc
