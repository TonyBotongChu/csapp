#include <stdio.h>

int main()
{
    short a, b;
    a = 0x36;
    b = 0x36 ^  (~0x7f);
    printf("Dec : \n");
    printf("short A = %hd\n", a);
    printf("short B = %hd\n", b);
    printf("unsigned short A = %hu\n", a);
    printf("unsigned short B = %hu\n", b);
    printf("Hex : \n");
    printf("short A = %hx\n", a);
    printf("short B = %hx\n", b);
    printf("unsigned short A = %hx\n", a);
    printf("unsigned short B = %hx\n", b);
    return 0;
}
