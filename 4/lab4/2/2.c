int rfun(unsigned x) {
    if (x == 0)
        return x;
    unsigned nx = x>>1;
    int rv = rfun(nx);
    return (x & 1) + rv;
}

/*
 *A.
 *%ebx中保存x的值
 *求解过程：
 *由第一行汇编代码可知%ebx保存传入函数的参数
 *
 *C.
 *代码的功能是计算x二进制格式下各位的数字之和。
 *其中递归过程计算除了x的最低位之外所有位之和,x&1是x的最低位的值
 *求解过程：
 *第三行汇编代码testl %ebx, %ebx
 *显然是在判断x是否为0，如果为0直接结束。此时%ebx的值未被修改，也就是返回x
 *5,6,7行对应unsigned nx = x>>1;
 *9,10行表示x&1
 *11行表示返回值为两数相加。查找之前的代码，可以发现%edx为x&1，%eax为rfun的返回值，即rv
 */
