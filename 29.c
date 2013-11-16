/* dirty work. */

/* use "sort -n |uniq |wc -l" to count. but it does work */

/* i originally use analsis method, it take too much time. */

/* pipe the result to "sort -n |uniq |wc -l" you get the total uniq numbers 
   with 2 base. that is 328,*/
/* modify it to get base 3, result is 240 */

/* then the answer is 85*99+328+240+4*50 */

#include <stdio.h>
int main(int argc, char *argv[])
{
     int i, j;
     for (i = 2; i <= 100; i++)
	  for (j = 1; j <= 6; j++)
	       printf("%d\n", i*j);
     
     return 0;
}


