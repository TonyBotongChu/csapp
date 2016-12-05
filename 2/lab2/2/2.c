#include <stdio.h>

int sra(int x, int k)
{
    int xsrl = (unsigned) x >> k;
    int w = sizeof(int) << 3;
    unsigned z = 1 << (w-k-1);
    unsigned mask = z - 1;
    unsigned right = mask & xsrl;
    unsigned left = ~mask & (~(z&xsrl) + z);
    return left | right;
}

unsigned srl(unsigned x, int k)
{
    int xsra = (int) x >> k;
    int w = sizeof(int)*8;
    unsigned z = 2 << (w-k-1);
    return (z - 1) & xsra;
}

int main()
{
    int x, k;
    scanf("%d%d", &x, &k);
    int ans = sra(x, k);
    unsigned ans2 = srl(x,k);
    printf("sra = %d, srl = %u\n", ans,ans2);
    return 0;
}
