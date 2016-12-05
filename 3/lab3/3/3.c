int fun_b(unsigned x) {
    int val = 0;
    int i;
    for (i = 0; i < 32; i++) {
        val = (val << 1) | (x & 0x1);
	x >>= 1;
    }
    return val;
}
//本函数的作用是将x中的位成镜像
