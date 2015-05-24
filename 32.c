/* 先求排列数，再按144 234两种方式切分 */
/* 验证两边是否相等。 */

/* 最后 sort |uniq|awk 'n+=$1;END {print n}' 得出结果 */
/* OR */
/* \C-xg grab the result to calc */
/* v+ to remove the duplicates */
/* VR+ to sum */

#include <stdio.h>
#include <stdlib.h>
#define N 9
void permute(int *, int *, int);
int main(int argc, char *argv[])
{
     int B[N]={1,2,3,4,5,6,7,8,9};
     int C[N];

     permute(B,C,N);
     return 0;
}

void permute(int *B, int *C, int n)
{
     int i, j;
     if (n < 1)
     {
	  int a = (10*C[0]+C[1])*(100*C[2]+10*C[3]+C[4]);
	  int b = 1000*C[5]+100*C[6]+10*C[7]+C[8];
	  if (a == b)
	       printf("%d\n", a);
	  a = C[0]*(1000*C[1]+100*C[2]+10*C[3]+C[4]);
	  b = 1000*C[5]+100*C[6]+10*C[7]+C[8];
	  if (a == b)
	       printf("%d\n", a);
	  return;
     }
     

     for (i = 0; i < N; i++)
     {
	  if (B[i] + 1)
	  {
	       C[N-n] = B[i];
	       B[i] = -1;
	       permute(B, C, n - 1);
	       B[i] = C[N-n];
	  }
     }
     
}
