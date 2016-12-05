#include <stdio.h>

int transpose(int M, int A[M][M])
{
    int i,j;   
    for(i=0; i<M; ++i)
    {
        int *a = A[i];
        int *b = &A[0][i];
        for(j = 0; j < i; j++)
        {
            int t = *(a+j);
            *(a+j) = *b;
            *b = t;
            b += M;
        }
    }
}

int main()
{
    return 0;
}

/*
A.
M = 19
B.
i:%edi, j:%ecx
*/
