// LLVM readonly attribute corresponds to clang pure
#define READONLY __attribute__((pure))

extern int foo(int arg1, int arg2) {
    return arg1 + arg2;
}
