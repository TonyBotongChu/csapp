int fun_a(unsigned x) {
    int val = 0;
    while (x) {
        val ^= x;
        x >>= 1;
    }
    return val & 0x1;
}
//如果x中有奇数个1，返回1；如果x中有偶数个1，返回0
