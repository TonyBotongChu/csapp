#include <stdio.h>

int main()
{
    int id = -15211036;
    int k;
    while(~scanf("%d", &k))
    {
        printf("left : %d\n", id<<k);
        printf("right : %d\n", id>>k);
        printf("\n");
    }
}
