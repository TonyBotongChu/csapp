#include <stdio.h>
#include <math.h>

long long a( long long x)
{
    x = x & 0xFF;
    return x;
}

long long b( long long x)
{
    x = x ^ (~0xFF);
    return x;
}

long long c( long long x)
{
    x = x | 0xFF;
    return x;
}

int main()
{
    long long x;
    long long w;
    scanf("%llx%lld", &x, &w);
    printf("0x%llx\n", a(x));
    printf("0x%llx\n", b(x)<<(64-w)>>(64-w));
    printf("0x%llx\n", c(x));
    return 0;
}
