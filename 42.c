/* use emacs org-mode to calc the word value, sort and "uniq -c" */

#include <stdio.h>
int A[193];
int main(int argc, char *argv[])
{
     int a, b;
     while(scanf("%d\t|\t%d\t|", &a, &b) != EOF)
	  A[b] = a;

     int i;
     int sum = 0;
     for (i = 0; i < 20; i++)
     	  sum += A[i*(i+1)/2];
     printf("%d\n", sum);
     
     return 0;
}
