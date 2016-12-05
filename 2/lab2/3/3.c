#include <stdio.h>

long long K_5(int x)
{
    long long tmp = x;
    return (tmp<<2) + tmp;
}

long long K_9(int x)
{
    long long tmp = x;
    return (tmp<<3) + tmp;
}

long long K_30(int x)
{
     long long tmp = x;
     return (tmp<<5) - (tmp<<1);
}

long long K_negative56(int x)
{
     long long tmp = x;
     return (tmp<<3) - (tmp<<6);
}

long long Normal_K_5(int x)
{
    long long tmp = x;
    return tmp*5;
}

long long Normal_K_9(int x)
{
    long long tmp = x;
    return tmp*9;
}

long long Normal_K_30(int x)
{
    long long tmp = x;
    return tmp * 30;
}

long long Normal_K_negative_56(int x)
{
    long long tmp = x;
    return tmp*(-56);
}

int main()
{
    int x = 2;
    printf("x = %lld\n", x);
    printf("x*5 = %lld\n", K_5(x));
    printf("x*9 = %lld\n", K_9(x));
    printf("x*30 = %lld\n", K_30(x));
    printf("x*(-56) = %lld\n", K_negative56(x));
    return 0;
}
