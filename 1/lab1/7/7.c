#include <stdio.h>

int main()
{
    char a, b;
    a = 0x36;
    b = 0x36 ^  (~0x7f);
    printf("char A = %d\n", a);
    printf("char B = %d\n", b);
    printf("unsigned char A = %u\n", a);
    printf("unsigned char B = %u\n", b);
    return 0;
}
