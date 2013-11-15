/* 注意，最大中间结果为O(M^2)，因此要用64位整型 */
/* 猜想一：2到M的最大中间结果为O(M^2) */

/* 猜想二： 由具有下列性质的数构成一数列 */
/*   比N小的数的链长都比N小。 */
/* 则这个数列后一项与前一项之比不大于2。 */

/* 9232这个数经常作为中间结果出现 */
#include <stdio.h>
#include <stdint.h>

#define M 1000000

int64_t max;

int64_t collatz(int64_t);
int64_t main(int64_t argc, char *argv[])
{
     int64_t i;
     int64_t r, result = 0;

     for (i = M/2; i < M; i++)
     	  if ((r = collatz(i)) > max)
     	  {
     	       max = r;
     	       result = i;
     	  }
     printf("%lld,%lld\n", result, max);


     return 0;
}

int64_t collatz(int64_t n)
{
     int64_t r = 1;

     while (n > 1)
     {
	  if (n & 1)
	       n = 3*n+1;
	  else
	       n >>= 1;
	  r++;
     }
     return r;
}

