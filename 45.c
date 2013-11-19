/* pipe the output to "sort -n |uniq -c |grep "3 " */

#include <stdio.h>
#define M 100000
int main(int argc, char *argv[])
{
     long long i, j, k;
     for (i = 1; i < M; i++)
     {
	  printf("%lld\n", i*(i+1)/2);
     }
     for (j = 1; j < M; j++)
     {
	  printf("%lld\n", j*(3*j-1)/2);
     }
     for (k = 1; k < M; k++)
     {
	  printf("%lld\n", k*(2*k-1));
     }

     return 0;
}
