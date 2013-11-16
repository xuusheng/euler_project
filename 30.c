/* 至少2位数，至多6位数。百万次迭代 */ 

#include <stdio.h>
#define MIN 10
#define MAX 1000000
int fif(int n)
{
     int m = n;
     int a[6]={0};
     int i = 0;
     do {
	  a[i++] = n % 10;
     }
     while (n /= 10);

     int sum = 0;
     for (i = 0; i < 6; i++)
	  sum += a[i]*a[i]*a[i]*a[i]*a[i];
//     printf("%d\n", sum);
     return m == sum;
}

int main(int argc, char *argv[])
{
     int i;
     for (i = MIN; i < MAX; i++)
	  if(fif(i))
	       printf("%d\n", i);
     return 0;
}
