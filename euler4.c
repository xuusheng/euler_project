#include <stdio.h>
void findpal(void);
int palindrome(int);
int max;

int main(int argc, char *argv[])
{
     findpal();
     printf("%d\n", max);

     return 0;
}

void findpal(void)
{
     int i, j;
     for (i = 100; i < 1000; i++)
	  for(j = 100; j <= i;  j++)
	       if (palindrome(i * j) && i * j > max)
		    max = i * j;
}

int palindrome(int n)
{
     int n1,n2,n3,n4,n5,n6;
     n1 = n % 10;
     n/=10;
     n2 = n  % 10;
     n/= 10;
     n3 = n % 10;
     n/=10;
     n4 = n % 10;
     n/=10;
     n5 = n % 10;
     n/=10;
     n6 = n;

     if (n6 != 0)
     {
	  if (n1 == n6 && n2 == n5 && n3 == n4)
	       return 1;
     }
     else
     {
	  if (n1 == n5 && n2 == n4)
	       return 1;
     }
     return 0;

}
