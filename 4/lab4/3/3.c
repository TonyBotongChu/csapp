#define M 5
#define N 7

int mat1[M][N];
int mat2[N][M];

int sum_element(int i, int j) {
    return mat1[i][j] + mat2[j][i];
}

/*
 *答案：M=5，N=7
 *求解过程：
 *首先经过计算可知%eax中的值为7*i+j，%edx中的值为5*j+i
 *也就是说mat1有7列，mat2有5列，可得M=5，N=7
 */
