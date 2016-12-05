#include <stdio.h>

int main()
{
    int x = 0x66;
    int y = 0x39;
    printf("x&y = 0x%x\n", x&y);
    printf("x|y = 0x%x\n", x|y);
    printf("~x|~y = 0x%x\n", ~x|~y);
    printf("x& !y = 0x%x\n", x& !y);
    printf("\n");
    printf("x&&y = 0x%x\n", x&&y);
    printf("x||y = 0x%x\n", x||y);
    printf("!x||!y = 0x%x\n", !x||!y);
    printf("x&&~y = 0x%x\n", x&&~y);
    return 0;
}
