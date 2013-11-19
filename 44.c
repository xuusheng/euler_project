/* 解这道题，收获良多。 */
/* 一是。%lld一定不能与%d相混。 */
/* %lld会读取8字节内存，而%d会读取4字节内存，如果一个数声明为long long型。 */
/* 但只用%d输出，会导致下一个%d读取的是上一个数的高4字节，从而出错。 */

/* 二、这个算法没有明确的终点，终点是由运算时确定的，通过对问题周密的分析， */
/* 可以使算法尽快终止 */

/* 三、从网上获得了一个快速求某数整数平方根的算法。通过自己的改造，可以高效的 */
/* 判断一个数是否是形数n*(3n-1)/2等类似形式的数 */

#include <stdio.h>
long long d = 30000000;

long long P(long long);
int isp(long long);

int main(int argc, char *argv[])
{
     long long i, j, pi, pj, di;
     for (i = 2; i < (d+7) / 3; i++)
     	  for (j = i - 1; j >= 1; j--)
     	  {
     	       pi = P(i);
     	       pj = P(j);
     	       if ((di = pi - pj) >= d)
     		    break;
     	       if (isp(di) && isp(pi + pj))
     	       {
     		    d = di;
		    printf("%lld, %lld, %lld\n", d,i,j);
     		    break;
     	       }
     	  }

     return 0;
}
     

long long P(long long x)
{
     return x*(3*x-1)/2;
}

int isp(long long x)
{
     long long m = 6*x;
     long long p;
     long long q = m/2;
     do
     {
	  p = q;
	  q = (p + m/p)/2;
     } while (q < p);

     return ((q%3)==2 && q*(q+1)==m);
}
