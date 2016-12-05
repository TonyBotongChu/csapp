#include <stdio.h>

#define M 31
#define N 8

int arith( int x, int y)
{
    int result = 0;
    result = x*M + y/N;
    return result;
}

int main()
{
    int x, y;
    while(~scanf("%d%d", &x, &y))
    {
        printf("%d\n", arith(x, y));
    }
    return 0;
}
