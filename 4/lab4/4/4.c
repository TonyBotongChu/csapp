#include <stdio.h>

struct prob {
    int *p;
    struct {
        int x;
        int y;
    }s;
    struct prob *next;
};

void sp_init(struct prob *sp)
{
    sp->s.x = sp->s.y;
    sp->p = &(sp->s.x);
    sp->next = sp;
}

int main()
{
    struct prob test;
    printf("%p\n", &(test.p));
    printf("%p\n", &(test.s.x));
    printf("%p\n", &(test.s.y));
    printf("%p\n", &(test.next));
    return 0;
}

/*
 *A.
 *偏移量：
 *0,4,8,12
 *求解过程：
 *指针的字节为4，int字节也为4
 *B.
 *16
 *求解过程：
 *由A可知使用字节数为16
 *C.
 *答案见函数源代码
 *求解过程：
 *将汇编解读如下：
 *%eax保存sp，%edx保存s.y，故%eax+4为s.x，第三行的作用为将s.y的值存入s.x中
 *4，5行的作用为将s.x的地址存入%eax指向的地址即sp->p中
 *第六行的作用为将sp存入sp->next
 */
