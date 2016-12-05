#include <stdio.h>

unsigned replace_byte(unsigned x, unsigned char b, int i)
{
    return (x & ~(0xFF<<(i*8))) | (b << (i*8));
}

int main()
{
    unsigned test = 0x12345678;
    int i;
    while(~scanf("%d", &i))
    {
        unsigned show = replace_byte(test, 0xAB, i);
        printf("0x%X\n", show);
    }
}
