#include <stdio.h>

unsigned f2u( float f)
{
    return *((unsigned *) &f);
}

int float_ge(float x, float y) {
    unsigned ux = f2u(x);
    unsigned uy = f2u(y);
    /* get the sign bits */
    unsigned sx = ux >> 31;
    unsigned sy = uy >> 31;
    return((ux<<1)==0 && (uy<<1)==0) || (!sx && sy) || (!sx && !sy && ux >= uy) ||(sx && sy && ux <= uy);
}

int main()
{
    float x, y;
    while(~scanf("%f%f", &x, &y))
    {
        printf("%d\n", float_ge(x,y));
    }
    return 0;
}
