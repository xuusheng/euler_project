/* if x is hexagonal, then x is triangle */
#include <stdio.h>
int isp(long long x);
#define M 100000
int main(int argc, char *argv[])
{
	long long i;
	for (i = 144; i <= M; i++)
		if (isp(i*(2*i-1))) {
			printf("%lld\n", i);
			return 0;
		}
	return 1;
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
