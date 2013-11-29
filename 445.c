/* 等价于 a*(a-1) =- 0, a*b =- 0.  */
/* a必含有n的至少一个因子。 */
/* 第一个条件限制较强。 */
/* 先计算10，然以逐渐放大10倍 */

#include <stdio.h>
#define M 9
int A[M] = {10, 45, 120, 210, 252, 210, 120, 45, 10};
int B[M];
int R(int);
int main(int argc, char *argv[])
{
     int i;
     for (i = 0; i < M; i++)
	  B[i] = R(A[i]);

     for (i = 0; i < M; i++)
	  printf("%d ", B[i]);

     
     return 0;
}

int R(int n)
{
     int a, b;
     int aN = 0;
     int bN = 0;
		     
     for (a = 1; a < n; a++)
	  if (a*(a-1) % n == 0)
	  {
	       aN++;
	       for (b = 0; b <n; b++)
	       {
		    if (a*b % n == 0)
		    {
			 bN++;
			 printf("%d %d %d\n", n, a, b);
		    }
	       }
	       
	  }
     return bN;

}
