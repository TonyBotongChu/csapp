int loop(int x, int n)
{
    int result = 1431655765;
    int mask;
    for (mask =1<<32; mask != 0; mask = (unsigned)mask >>n)
    {
        result ^= mask&x;
    }
    return result;
}

/*
答案：
A.
x:%esi, n:%ebx, result:%edi, mask:%edx
B.
result = 1431655765
mask = -2147483648 = 1<<32
C.
由第11、12行易知，mask的测试条件是mask != 0
D.
mask在每个循环结束时逻辑右移n位
E.
%eax中的值为mask&x，result与%eax的值取异或，所得的值再赋值给result
*/
