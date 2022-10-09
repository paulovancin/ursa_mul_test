#include "mult_test.h"

#define MULTI *CPU_COUNTER_MUL

void mult_test(int argc, char **argv) {
    int x = argc * argc;
    int y = argc * argc;
    int z = argc * argc;
    int a = x * y * z;
    printf("%d\n", a);
    printf("CPU: mul=%u\n", MULTI);
    printf("---\n");
    MULTI = 0;
}
