/*  用10^n依次去除i，求其余数，构成一数列，如果新产生的数 */
/* 在原数列中出现过，则数列将循环。此数列的循环节与小数循环节一致。 */
/* 利用余数性质，及时对中间结果取余，操作数将不大小i，利用普通整形即可 */

/* 另外，1/i的循环节长度必小于i，最长为i-1。目标是求最长循环数，因此不必 */
/* 遍历1-999。当i已经小于求得的最大循环节时，就可退出。因此，效率大增。 */

#include <stdio.h>

int main(int argc, char *argv[])
{
     int min = 1;
     int i;
     int c, r, p;
     
     int B[1000];		/* 保存产生的余数数列 */

     for (i = 999; i > min; i--)
     {
	  c = 0; r = 1; 
	  
	  while (!(p = old(B, c, r)))
	  {
	       B[c++] = r;
	       r = r * 10 % i;
	  }
	  if (p > min)
	       min = p;
	  printf("%d %d\n", i, p);
     }


     return 0;
}

int old(int *B, int c, int r)
{
     int i;
     for (i = 0; i < c ; i++)
     {
	  if (B[i] == r)
	       return c-i;	/* 循环节长度 */

     }
     return 0;
}
